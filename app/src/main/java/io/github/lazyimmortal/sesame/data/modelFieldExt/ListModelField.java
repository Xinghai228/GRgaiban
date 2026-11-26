package io.github.lazyimmortal.sesame.data.modelFieldExt;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.core.type.TypeReference;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.hook.SimplePageManager$$ExternalSyntheticBackport0;
import io.github.lazyimmortal.sesame.ui.StringDialog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListModelField extends ModelField<List<String>> {
    private static final TypeReference<List<String>> typeReference = new TypeReference<List<String>>() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.ListModelField.1
    };

    public ListModelField(String str, String str2, List<String> list) {
        super(str, str2, list);
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String getType() {
        return "LIST";
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
        button.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.ListModelField$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m101x4b8b44e3(view);
            }
        });
        return button;
    }

    /* JADX INFO: renamed from: lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-ListModelField, reason: not valid java name */
    /* synthetic */ void m101x4b8b44e3(View view) {
        StringDialog.showEditDialog(view.getContext(), ((Button) view).getText(), this);
    }

    public static class ListJoinCommaToStringModelField extends ListModelField {
        public ListJoinCommaToStringModelField(String str, String str2, List<String> list) {
            super(str, str2, list);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayList, java.util.List] */
        @Override // io.github.lazyimmortal.sesame.data.ModelField
        public void setConfigValue(String str) {
            if (str == null) {
                reset();
                return;
            }
            ?? arrayList = new ArrayList();
            String[] strArrSplit = str.split(",");
            if (strArrSplit.length == 1) {
                String str2 = strArrSplit[0];
                if (!str2.isEmpty()) {
                    arrayList.add(str2);
                }
            } else {
                for (String str3 : strArrSplit) {
                    if (!str3.isEmpty()) {
                        arrayList.add(str3);
                    }
                }
            }
            this.value = arrayList;
        }

        @Override // io.github.lazyimmortal.sesame.data.ModelField
        public String getConfigValue() {
            return SimplePageManager$$ExternalSyntheticBackport0.m(",", (Iterable) this.value);
        }
    }
}
