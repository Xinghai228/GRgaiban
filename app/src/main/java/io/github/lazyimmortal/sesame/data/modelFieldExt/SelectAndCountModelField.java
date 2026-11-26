package io.github.lazyimmortal.sesame.data.modelFieldExt;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc;
import io.github.lazyimmortal.sesame.entity.IdAndName;
import io.github.lazyimmortal.sesame.ui.ListDialog;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SelectAndCountModelField extends ModelField<Map<String, Integer>> implements SelectModelFieldFunc {
    private List<? extends IdAndName> expandValue;
    private SelectListFunc selectListFunc;

    public interface SelectListFunc {
        List<? extends IdAndName> getList();
    }

    public SelectAndCountModelField(String str, String str2, Map<String, Integer> map, List<? extends IdAndName> list) {
        super(str, str2, map);
        this.expandValue = list;
    }

    public SelectAndCountModelField(String str, String str2, Map<String, Integer> map, SelectListFunc selectListFunc) {
        super(str, str2, map);
        this.selectListFunc = selectListFunc;
    }

    public SelectAndCountModelField(String str, String str2, Map<String, Integer> map, List<? extends IdAndName> list, String str3) {
        super(str, str2, map, str3);
        this.expandValue = list;
    }

    public SelectAndCountModelField(String str, String str2, Map<String, Integer> map, SelectListFunc selectListFunc, String str3) {
        super(str, str2, map, str3);
        this.selectListFunc = selectListFunc;
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String getType() {
        return "SELECT_AND_COUNT";
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public List<? extends IdAndName> getExpandValue() {
        SelectListFunc selectListFunc = this.selectListFunc;
        return selectListFunc == null ? this.expandValue : selectListFunc.getList();
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public View getView(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setBackground(ContextCompat.getDrawable(context, R.drawable.button));
        linearLayout.setMinimumHeight(150);
        linearLayout.setPaddingRelative(40, 0, 40, 0);
        linearLayout.setGravity(16);
        TextView textView = new TextView(context);
        textView.setText(getName());
        textView.setTextColor(ContextCompat.getColor(context, R.color.button));
        textView.setTextSize(2, 14.0f);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        final TextView textView2 = new TextView(context);
        textView2.setTextColor(ContextCompat.getColor(context, R.color.button));
        textView2.setTextSize(2, 12.0f);
        textView2.setText("已设置数：" + getValue().size());
        textView2.setPaddingRelative((int) TypedValue.applyDimension(1, 12.0f, context.getResources().getDisplayMetrics()), 0, 0, 0);
        linearLayout.addView(textView);
        linearLayout.addView(textView2);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m103x307dbd1a(textView2, view);
            }
        });
        return linearLayout;
    }

    /* JADX INFO: renamed from: lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-SelectAndCountModelField, reason: not valid java name */
    /* synthetic */ void m102xfccf9259(TextView textView) {
        textView.setText("已设置数：" + getValue().size());
    }

    /* JADX INFO: renamed from: lambda$getView$1$io-github-lazyimmortal-sesame-data-modelFieldExt-SelectAndCountModelField, reason: not valid java name */
    /* synthetic */ void m103x307dbd1a(final TextView textView, View view) {
        ListDialog.setOnDismissCallback(new Runnable() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.SelectAndCountModelField$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m102xfccf9259(textView);
            }
        });
        ListDialog.show(view.getContext(), getName(), this);
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public void clear() {
        getValue().clear();
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public Integer get(String str) {
        return getValue().get(str);
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public void add(String str, Integer num) {
        getValue().put(str, num);
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public void remove(String str) {
        getValue().remove(str);
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public Boolean contains(String str) {
        return Boolean.valueOf(getValue().containsKey(str));
    }
}
