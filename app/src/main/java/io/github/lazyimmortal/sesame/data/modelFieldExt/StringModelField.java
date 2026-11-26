package io.github.lazyimmortal.sesame.data.modelFieldExt;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.ui.StringDialog;

/* JADX INFO: loaded from: classes.dex */
public class StringModelField extends ModelField<String> {
    public StringModelField(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String getType() {
        return "STRING";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String getConfigValue() {
        return (String) this.value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public void setConfigValue(String str) {
        this.value = str;
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
        button.setMaxHeight(180);
        button.setPaddingRelative(40, 0, 40, 0);
        button.setAllCaps(false);
        button.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.StringModelField$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m108xd6cd3b96(view);
            }
        });
        return button;
    }

    /* JADX INFO: renamed from: lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-StringModelField, reason: not valid java name */
    /* synthetic */ void m108xd6cd3b96(View view) {
        StringDialog.showEditDialog(view.getContext(), ((Button) view).getText(), this);
    }
}
