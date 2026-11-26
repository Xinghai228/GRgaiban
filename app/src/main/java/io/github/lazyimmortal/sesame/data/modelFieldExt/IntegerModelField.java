package io.github.lazyimmortal.sesame.data.modelFieldExt;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.ui.StringDialog;
import io.github.lazyimmortal.sesame.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class IntegerModelField extends ModelField<Integer> {
    protected final Integer maxLimit;
    protected final Integer minLimit;

    public Integer getMinLimit() {
        return this.minLimit;
    }

    public Integer getMaxLimit() {
        return this.maxLimit;
    }

    public IntegerModelField(String str, String str2, Integer num) {
        super(str, str2, num);
        this.minLimit = null;
        this.maxLimit = null;
    }

    public IntegerModelField(String str, String str2, Integer num, Integer num2, Integer num3) {
        super(str, str2, num);
        this.minLimit = num2;
        this.maxLimit = num3;
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String getType() {
        return "INTEGER";
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String getConfigValue() {
        return String.valueOf(this.value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public void setConfigValue(String str) {
        Integer numValueOf;
        if (str == null) {
            numValueOf = (Integer) this.defaultValue;
        } else {
            try {
                numValueOf = Integer.valueOf(Integer.parseInt(str));
            } catch (Exception e) {
                Log.printStackTrace(e);
                numValueOf = (Integer) this.defaultValue;
            }
        }
        Integer num = this.minLimit;
        Integer numValueOf2 = numValueOf;
        if (num != null) {
            numValueOf2 = Integer.valueOf(Math.max(num.intValue(), numValueOf.intValue()));
        }
        Integer num2 = this.maxLimit;
        T tValueOf = numValueOf2;
        if (num2 != null) {
            tValueOf = Integer.valueOf(Math.min(num2.intValue(), numValueOf2.intValue()));
        }
        this.value = tValueOf;
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
        button.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.IntegerModelField$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m100x111005b(view);
            }
        });
        return button;
    }

    /* JADX INFO: renamed from: lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-IntegerModelField, reason: not valid java name */
    /* synthetic */ void m100x111005b(View view) {
        StringDialog.showEditDialog(view.getContext(), ((Button) view).getText(), this);
    }

    public static class MultiplyIntegerModelField extends IntegerModelField {
        private final Integer multiple;

        public Integer getMultiple() {
            return this.multiple;
        }

        public MultiplyIntegerModelField(String str, String str2, Integer num, Integer num2, Integer num3, Integer num4) {
            super(str, str2, Integer.valueOf(num.intValue() * num4.intValue()), num2, num3);
            this.multiple = num4;
        }

        @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.IntegerModelField, io.github.lazyimmortal.sesame.data.ModelField
        public String getType() {
            return "MULTIPLY_INTEGER";
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v6, types: [T, java.lang.Integer] */
        @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.IntegerModelField, io.github.lazyimmortal.sesame.data.ModelField
        public void setConfigValue(String str) {
            if (str == null) {
                reset();
                return;
            }
            super.setConfigValue(str);
            try {
                this.value = Integer.valueOf(((Integer) this.value).intValue() * this.multiple.intValue());
            } catch (Exception e) {
                Log.printStackTrace(e);
                reset();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.IntegerModelField, io.github.lazyimmortal.sesame.data.ModelField
        public String getConfigValue() {
            return String.valueOf(((Integer) this.value).intValue() / this.multiple.intValue());
        }
    }
}
