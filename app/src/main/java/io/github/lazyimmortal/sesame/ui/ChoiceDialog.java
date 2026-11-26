package io.github.lazyimmortal.sesame.ui;

import android.content.Context;
import android.content.DialogInterface;
import androidx.appcompat.app.AlertDialog;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.modelFieldExt.ChoiceModelField;

/* JADX INFO: loaded from: classes.dex */
public class ChoiceDialog {
    public static void show(Context context, CharSequence charSequence, final ChoiceModelField choiceModelField) {
        new AlertDialog.Builder(context).setTitle(charSequence).setSingleChoiceItems(choiceModelField.getExpandKey(), choiceModelField.getValue().intValue(), new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.ChoiceDialog$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                choiceModelField.setObjectValue(Integer.valueOf(i));
            }
        }).setPositiveButton(context.getString(R.string.ok), (DialogInterface.OnClickListener) null).create().show();
    }
}
