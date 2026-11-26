package io.github.lazyimmortal.sesame.hook;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class ViewHierarchyAnalyzer {
    private static final String TAG = "ViewHierarchyAnalyzer";

    private ViewHierarchyAnalyzer() {
    }

    public static void logViewHierarchy(View view, int i) {
        String str;
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
        String string = sb.toString();
        String name = view.getClass().getName();
        try {
            str = "ID: " + view.getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            str = "ID: (无)";
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        String str2 = String.format("loc=[%d,%d] size=[%dx%d] visible=%b enabled=%b", Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]), Integer.valueOf(view.getWidth()), Integer.valueOf(view.getHeight()), Boolean.valueOf(view.isShown()), Boolean.valueOf(view.isEnabled()));
        StringBuilder sb2 = new StringBuilder();
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            sb2.append("text='");
            sb2.append(textView.getText());
            sb2.append("' desc='");
            sb2.append(textView.getContentDescription());
            sb2.append("'");
        }
        Log.d(TAG, String.format("%s- %s, %s, %s %s", string, name, str, str2, sb2));
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                logViewHierarchy(viewGroup.getChildAt(i3), i + 1);
            }
        }
    }

    public static View findActualSliderView(SimpleViewImage simpleViewImage) {
        View originView = simpleViewImage.getOriginView();
        if (!(originView.getParent() instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) originView.getParent();
        Log.d(TAG, "========= 分析滑块父视图层次结构 =========");
        logViewHierarchy(viewGroup, 0);
        Log.d(TAG, "========= 视图层次结构分析结束 =========");
        View viewFindSliderInGroup = findSliderInGroup(viewGroup);
        if (viewFindSliderInGroup != null) {
            int[] iArr = new int[2];
            viewFindSliderInGroup.getLocationOnScreen(iArr);
            Log.d(TAG, String.format("找到可拖动滑块视图: %s 位置=[%d,%d]", viewFindSliderInGroup.getClass().getName(), Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1])));
        } else {
            Log.e(TAG, "无法找到实际的滑块视图。请检查上面的层次结构日志。");
        }
        return viewFindSliderInGroup;
    }

    private static View findSliderInGroup(ViewGroup viewGroup) {
        View viewFindSliderInGroup;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof ImageView) && childAt.isShown()) {
                Log.d(TAG, "找到滑块图标 (ImageView)。返回其父视图作为可拖动视图。");
                if (childAt.getParent() instanceof View) {
                    return (View) childAt.getParent();
                }
                return null;
            }
            if ((childAt instanceof ViewGroup) && (viewFindSliderInGroup = findSliderInGroup((ViewGroup) childAt)) != null) {
                return viewFindSliderInGroup;
            }
        }
        return null;
    }
}
