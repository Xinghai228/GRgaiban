package io.github.lazyimmortal.sesame.data.modelFieldExt;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Switch;
import io.github.lazyimmortal.sesame.data.ModelField;

/* JADX INFO: loaded from: classes.dex */
public class BooleanModelField extends ModelField<Boolean> {
    public BooleanModelField(String str, String str2, Boolean bool) {
        super(str, str2, bool);
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String getType() {
        return "BOOLEAN";
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public View getView(Context context) {
        Switch r0 = new Switch(context);
        r0.setText(getName());
        r0.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        r0.setMinHeight(150);
        r0.setMaxHeight(180);
        r0.setPaddingRelative(40, 0, 40, 0);
        r0.setChecked(getValue().booleanValue());
        r0.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.BooleanModelField$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m96xca65cec5(view);
            }
        });
        return r0;
    }

    /* JADX INFO: renamed from: lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-BooleanModelField, reason: not valid java name */
    /* synthetic */ void m96xca65cec5(View view) {
        setObjectValue(Boolean.valueOf(((Switch) view).isChecked()));
    }
}
