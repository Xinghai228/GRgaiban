package io.github.lazyimmortal.sesame.data.modelFieldExt;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.ui.ChoiceDialog;

/* JADX INFO: loaded from: classes.dex */
public class ChoiceModelField extends ModelField<Integer> {
    private String[] choiceArray;

    public ChoiceModelField(String str, String str2, Integer num) {
        super(str, str2, num);
    }

    public ChoiceModelField(String str, String str2, Integer num, String[] strArr) {
        super(str, str2, num);
        this.choiceArray = strArr;
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String getType() {
        return "CHOICE";
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String[] getExpandKey() {
        return this.choiceArray;
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
        button.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.ChoiceModelField$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m97x63618526(view);
            }
        });
        return button;
    }

    /* JADX INFO: renamed from: lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-ChoiceModelField, reason: not valid java name */
    /* synthetic */ void m97x63618526(View view) {
        ChoiceDialog.show(view.getContext(), ((Button) view).getText(), this);
    }
}
