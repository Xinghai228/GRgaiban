package io.github.lazyimmortal.sesame.data.modelFieldExt;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.ConfigV2;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc;
import io.github.lazyimmortal.sesame.entity.IdAndName;
import io.github.lazyimmortal.sesame.ui.ListDialog;
import io.github.lazyimmortal.sesame.util.idMap.UserIdMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class SelectModelField extends ModelField<Set<String>> implements SelectModelFieldFunc {
    private List<? extends IdAndName> expandValue;
    private SelectListFunc selectListFunc;

    public interface SelectListFunc {
        List<? extends IdAndName> getList();
    }

    public SelectModelField(String str, String str2, Set<String> set, List<? extends IdAndName> list) {
        super(str, str2, set);
        this.expandValue = list;
    }

    public SelectModelField(String str, String str2, Set<String> set, SelectListFunc selectListFunc) {
        super(str, str2, set);
        this.selectListFunc = selectListFunc;
    }

    public SelectModelField(String str, String str2, Set<String> set, List<? extends IdAndName> list, String str3) {
        super(str, str2, set, str3);
        this.expandValue = list;
    }

    public SelectModelField(String str, String str2, Set<String> set, SelectListFunc selectListFunc, String str3) {
        super(str, str2, set, str3);
        this.selectListFunc = selectListFunc;
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String getType() {
        return "SELECT";
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
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m106xa46fa282(textView2, view);
            }
        });
        return linearLayout;
    }

    /* JADX INFO: renamed from: lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-SelectModelField, reason: not valid java name */
    /* synthetic */ void m105xc8ae26c1(TextView textView) {
        textView.setText("已设置数：" + getValue().size());
    }

    /* JADX INFO: renamed from: lambda$getView$1$io-github-lazyimmortal-sesame-data-modelFieldExt-SelectModelField, reason: not valid java name */
    /* synthetic */ void m106xa46fa282(final TextView textView, View view) {
        List<? extends IdAndName> expandValue;
        Set<String> value;
        ListDialog.setOnDismissCallback(new Runnable() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.SelectModelField$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m105xc8ae26c1(textView);
            }
        });
        try {
            String code = getCode();
            if (code != null && "deleteFriendList".equals(code) && (expandValue = getExpandValue()) != null && expandValue.isEmpty() && (value = getValue()) != null && value.isEmpty()) {
                HashSet hashSet = new HashSet();
                for (IdAndName idAndName : expandValue) {
                    if (idAndName != null) {
                        hashSet.add(idAndName.id);
                    }
                }
                if (value.retainAll(hashSet)) {
                    ConfigV2.save(UserIdMap.getCurrentUid(), true);
                }
            }
        } catch (Throwable th) {
        }
        ListDialog.show(view.getContext(), getName(), this);
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public void clear() {
        getValue().clear();
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public Integer get(String str) {
        return 0;
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public void add(String str, Integer num) {
        getValue().add(str);
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public void remove(String str) {
        getValue().remove(str);
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public Boolean contains(String str) {
        return Boolean.valueOf(getValue().contains(str));
    }
}
