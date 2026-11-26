package io.github.lazyimmortal.sesame.data.modelFieldExt;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.ui.HtmlViewerActivity;
import io.github.lazyimmortal.sesame.ui.StringDialog;

/* JADX INFO: loaded from: classes.dex */
public class TextModelField extends ModelField<String> {
    public TextModelField(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String getType() {
        return "TEXT";
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
    @JsonIgnore
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
        button.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.TextModelField$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m109xc6e5b2b2(view);
            }
        });
        return button;
    }

    /* JADX INFO: renamed from: lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-TextModelField, reason: not valid java name */
    /* synthetic */ void m109xc6e5b2b2(View view) {
        StringDialog.showReadDialog(view.getContext(), ((Button) view).getText(), this);
    }

    public static class ReadOnlyTextModelField extends TextModelField {
        @Override // io.github.lazyimmortal.sesame.data.ModelField
        public String getValue() {
            return null;
        }

        @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.TextModelField, io.github.lazyimmortal.sesame.data.ModelField
        public void setConfigValue(String str) {
        }

        public ReadOnlyTextModelField(String str, String str2, String str3) {
            super(str, str2, str3);
        }

        @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.TextModelField, io.github.lazyimmortal.sesame.data.ModelField
        public String getType() {
            return "READ_TEXT";
        }
    }

    public static class UrlTextModelField extends ReadOnlyTextModelField {
        public UrlTextModelField(String str, String str2, String str3) {
            super(str, str2, str3);
        }

        @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.TextModelField.ReadOnlyTextModelField, io.github.lazyimmortal.sesame.data.modelFieldExt.TextModelField, io.github.lazyimmortal.sesame.data.ModelField
        public String getType() {
            return "URL_TEXT";
        }

        @Override // io.github.lazyimmortal.sesame.data.modelFieldExt.TextModelField, io.github.lazyimmortal.sesame.data.ModelField
        @JsonIgnore
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
            button.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.TextModelField$UrlTextModelField$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m110x34c8ae1b(view);
                }
            });
            return button;
        }

        /* JADX INFO: renamed from: lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-TextModelField$UrlTextModelField, reason: not valid java name */
        /* synthetic */ void m110x34c8ae1b(View view) {
            Context context = view.getContext();
            Intent intent = new Intent(context, (Class<?>) HtmlViewerActivity.class);
            intent.setData(Uri.parse(getConfigValue()));
            context.startActivity(intent);
        }
    }
}
