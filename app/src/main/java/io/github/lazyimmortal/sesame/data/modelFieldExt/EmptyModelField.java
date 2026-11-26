package io.github.lazyimmortal.sesame.data.modelFieldExt;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.util.ToastUtil;

/* JADX INFO: loaded from: classes.dex */
public class EmptyModelField extends ModelField<Object> {
    private final Runnable clickRunner;

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public void setObjectValue(Object obj) {
    }

    public EmptyModelField(String str, String str2) {
        super(str, str2, null);
        this.clickRunner = null;
    }

    public EmptyModelField(String str, String str2, Runnable runnable) {
        super(str, str2, null);
        this.clickRunner = runnable;
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    public String getType() {
        return "EMPTY";
    }

    @Override // io.github.lazyimmortal.sesame.data.ModelField
    @JsonIgnore
    public View getView(final Context context) {
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
        if (this.clickRunner != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.EmptyModelField$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m99x2a68e8e8(context, view);
                }
            });
        } else {
            button.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.EmptyModelField$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToastUtil.show(context, "无配置项");
                }
            });
        }
        return button;
    }

    /* JADX INFO: renamed from: lambda$getView$2$io-github-lazyimmortal-sesame-data-modelFieldExt-EmptyModelField, reason: not valid java name */
    /* synthetic */ void m99x2a68e8e8(Context context, View view) {
        new AlertDialog.Builder(context).setTitle("警告").setMessage("确认执行该操作？").setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.EmptyModelField$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m98x5609d8aa(dialogInterface, i);
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.modelFieldExt.EmptyModelField$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    /* JADX INFO: renamed from: lambda$getView$0$io-github-lazyimmortal-sesame-data-modelFieldExt-EmptyModelField, reason: not valid java name */
    /* synthetic */ void m98x5609d8aa(DialogInterface dialogInterface, int i) {
        this.clickRunner.run();
    }
}
