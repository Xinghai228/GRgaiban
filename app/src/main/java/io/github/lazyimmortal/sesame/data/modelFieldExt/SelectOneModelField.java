package io.github.lazyimmortal.sesame.data.modelFieldExt;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc;
import io.github.lazyimmortal.sesame.entity.IdAndName;
import io.github.lazyimmortal.sesame.ui.ListDialog;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class SelectOneModelField extends ModelField<String> implements SelectModelFieldFunc {
    private List<? extends IdAndName> expandValue;
    private SelectListFunc selectListFunc;

    public interface SelectListFunc {
        List<? extends IdAndName> getList();
    }

    public SelectOneModelField(String str, String str2, String str3, List<? extends IdAndName> list) {
        super(str, str2, str3);
        this.expandValue = list;
    }

    public SelectOneModelField(String str, String str2, String str3, SelectListFunc selectListFunc) {
        super(str, str2, str3);
        this.selectListFunc = selectListFunc;
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String getType() {
        return "SELECT_ONE";
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public List<? extends IdAndName> getExpandValue() {
        SelectListFunc selectListFunc = this.selectListFunc;
        return selectListFunc == null ? this.expandValue : selectListFunc.getList();
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public View getView(Context context) {
        Button button = new Button(context);
        button.setText(getName());
        button.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        button.setTextColor(ContextCompat.getColor(context, R.color.button));
        button.setBackground(ContextCompat.getDrawable(context, R.drawable.button));
        button.setGravity(8388627);
        button.setMinHeight(150);
        button.setPaddingRelative(40, 0, 40, 0);
        button.setAllCaps(false);
        button.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.SelectOneModelField$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m107x4fc34e7(view);
            }
        });
        return button;
    }

    /* JADX INFO: renamed from: lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-SelectOneModelField, reason: not valid java name */
    /* synthetic */ void m107x4fc34e7(View view) {
        ListDialog.show(view.getContext(), ((Button) view).getText(), this, ListDialog.ListType.RADIO);
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public void clear() {
        this.value = this.defaultValue;
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public Integer get(String str) {
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public void add(String str, Integer num) {
        this.value = str;
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public void remove(String str) {
        if (Objects.equals(this.value, str)) {
            this.value = this.defaultValue;
        }
    }

    @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.common.SelectModelFieldFunc
    public Boolean contains(String str) {
        return Boolean.valueOf(Objects.equals(this.value, str));
    }
}
