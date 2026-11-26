package io.github.lazyimmortal.sesame.hook;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class SimpleXpathParser {
    private static final Pattern XPATH_PATTERN = Pattern.compile("//([\\w.]+)\\[contains\\(@(\\w+),'([^']*)'\\)]", 2);
    private static final Pattern XPATH_ATTR_PATTERN = Pattern.compile("//([\\w.]+)\\[@(\\w+)='([^']*)']", 2);
    private static final Pattern TAG_PATTERN = Pattern.compile("//([\\w.]+)", 2);

    private SimpleXpathParser() {
    }

    public static List<SimpleViewImage> evaluate(SimpleViewImage simpleViewImage, String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = XPATH_PATTERN.matcher(str);
        if (matcher.find()) {
            return findElements(simpleViewImage, matcher.group(1), matcher.group(2), matcher.group(3), true);
        }
        Matcher matcher2 = XPATH_ATTR_PATTERN.matcher(str);
        if (matcher2.find()) {
            return findElements(simpleViewImage, matcher2.group(1), matcher2.group(2), matcher2.group(3), false);
        }
        Matcher matcher3 = TAG_PATTERN.matcher(str);
        return matcher3.find() ? findElementsByTag(simpleViewImage, matcher3.group(1)) : arrayList;
    }

    private static List<SimpleViewImage> findElements(SimpleViewImage simpleViewImage, String str, String str2, String str3, boolean z) {
        ArrayList arrayList = new ArrayList();
        findElementsRecursive(simpleViewImage, str, str2, str3, z, arrayList);
        return arrayList;
    }

    private static void findElementsRecursive(SimpleViewImage simpleViewImage, String str, String str2, String str3, boolean z, List<SimpleViewImage> list) {
        Object objAttribute;
        boolean zEquals;
        if ((simpleViewImage.getType().equals(str) || "*".equals(str)) && (objAttribute = simpleViewImage.attribute(str2)) != null) {
            String string = objAttribute.toString();
            if (z) {
                zEquals = string.contains(str3);
            } else {
                zEquals = string.equals(str3);
            }
            if (zEquals) {
                list.add(simpleViewImage);
            }
        }
        Iterator<SimpleViewImage> it = simpleViewImage.getChildren().iterator();
        while (it.hasNext()) {
            findElementsRecursive(it.next(), str, str2, str3, z, list);
        }
    }

    private static List<SimpleViewImage> findElementsByTag(SimpleViewImage simpleViewImage, String str) {
        ArrayList arrayList = new ArrayList();
        findElementsByTagRecursive(simpleViewImage, str, arrayList);
        return arrayList;
    }

    private static void findElementsByTagRecursive(SimpleViewImage simpleViewImage, String str, List<SimpleViewImage> list) {
        if (simpleViewImage.getType().equals(str) || "*".equals(str)) {
            list.add(simpleViewImage);
        }
        Iterator<SimpleViewImage> it = simpleViewImage.getChildren().iterator();
        while (it.hasNext()) {
            findElementsByTagRecursive(it.next(), str, list);
        }
    }
}
