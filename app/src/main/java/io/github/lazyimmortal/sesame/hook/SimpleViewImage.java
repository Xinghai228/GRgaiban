package io.github.lazyimmortal.sesame.hook;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SimpleViewImage {
    public static final String CONTENT_DESCRIPTION = "contentDescription";
    public static final String TEXT = "text";
    private SimpleViewImage[] children;
    private int indexOfParent = -1;
    private final View originView;
    private SimpleViewImage parent;

    public SimpleViewImage(View view) {
        this.originView = view;
    }

    public String getText() {
        View view = this.originView;
        if (view instanceof TextView) {
            CharSequence text = ((TextView) view).getText();
            if (text != null) {
                return text.toString();
            }
            return null;
        }
        CharSequence contentDescription = view.getContentDescription();
        if (contentDescription != null) {
            return contentDescription.toString();
        }
        return null;
    }

    public int[] locationOnScreen() {
        int[] iArr = new int[2];
        this.originView.getLocationOnScreen(iArr);
        return iArr;
    }

    public int X() {
        return locationOnScreen()[0];
    }

    public int Y() {
        return locationOnScreen()[1];
    }

    public int childCount() {
        View view = this.originView;
        if (view instanceof ViewGroup) {
            return ((ViewGroup) view).getChildCount();
        }
        return 0;
    }

    public SimpleViewImage childAt(int i) {
        if (childCount() < 0) {
            throw new IllegalStateException("can not parse child node for none ViewGroup object!!");
        }
        if (this.children == null) {
            this.children = new SimpleViewImage[childCount()];
        }
        SimpleViewImage simpleViewImage = this.children[i];
        if (simpleViewImage != null) {
            return simpleViewImage;
        }
        SimpleViewImage simpleViewImage2 = new SimpleViewImage(((ViewGroup) this.originView).getChildAt(i));
        simpleViewImage2.parent = this;
        simpleViewImage2.indexOfParent = i;
        this.children[i] = simpleViewImage2;
        return simpleViewImage2;
    }

    public SimpleViewImage getParentNode() {
        return this.parent;
    }

    public SimpleViewImage getParentNode(int i) {
        if (i == 1) {
            return getParentNode();
        }
        SimpleViewImage parentNode = getParentNode();
        if (parentNode != null) {
            return parentNode.getParentNode(i - 1);
        }
        return null;
    }

    public List<SimpleViewImage> getChildren() {
        int iChildCount = childCount();
        if (iChildCount <= 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList(iChildCount);
        for (int i = 0; i < iChildCount; i++) {
            arrayList.add(childAt(i));
        }
        return arrayList;
    }

    public SimpleViewImage xpath2One(String str) {
        List<SimpleViewImage> listEvaluate = SimpleXpathParser.evaluate(this, str);
        if (!listEvaluate.isEmpty()) {
            return listEvaluate.get(0);
        }
        return SimplePageManager.tryGetTopView(str);
    }

    public String getType() {
        return this.originView.getClass().getSimpleName();
    }

    public Object attribute(String str) {
        str.hashCode();
        if (!str.equals(CONTENT_DESCRIPTION)) {
            if (str.equals(TEXT)) {
                return getText();
            }
            return null;
        }
        CharSequence contentDescription = this.originView.getContentDescription();
        if (contentDescription != null) {
            return contentDescription.toString();
        }
        return null;
    }

    public View getOriginView() {
        return this.originView;
    }

    public int getIndexOfParent() {
        return this.indexOfParent;
    }

    public void setParent(SimpleViewImage simpleViewImage) {
        this.parent = simpleViewImage;
    }

    public void setIndexOfParent(int i) {
        this.indexOfParent = i;
    }
}
