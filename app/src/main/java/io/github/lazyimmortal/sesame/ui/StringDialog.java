package io.github.lazyimmortal.sesame.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.widget.EditText;
import androidx.appcompat.app.AlertDialog;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.data.ModelField;
import io.github.lazyimmortal.sesame.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class StringDialog {
    private static ModelField<?> modelField;

    public static void showEditDialog(Context context, CharSequence charSequence, ModelField<?> modelField2) {
        showEditDialog(context, charSequence, modelField2, null);
    }

    public static void showEditDialog(Context context, CharSequence charSequence, ModelField<?> modelField2, String str) {
        modelField = modelField2;
        AlertDialog editDialog = getEditDialog(context);
        if (str != null) {
            editDialog.setTitle(charSequence);
            editDialog.setMessage(str);
        } else {
            editDialog.setTitle(charSequence);
        }
        editDialog.show();
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [io.github.lazyimmortal.sesame.ui.StringDialog$1] */
    private static AlertDialog getEditDialog(Context context) {
        final EditText editText = new EditText(context);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setTitle("title").setView(editText).setPositiveButton(context.getString(R.string.ok), new DialogInterface.OnClickListener() { // from class: io.github.lazyimmortal.sesame.ui.StringDialog.1
            Context context;

            public DialogInterface.OnClickListener setData(Context context2) {
                this.context = context2;
                return this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    Editable text = editText.getText();
                    if (text == null) {
                        StringDialog.modelField.setConfigValue(null);
                        return;
                    }
                    String string = text.toString();
                    if (string.isEmpty()) {
                        StringDialog.modelField.setConfigValue(null);
                    } else {
                        StringDialog.modelField.setConfigValue(string);
                    }
                } catch (Throwable th) {
                    Log.printStackTrace(th);
                }
            }
        }.setData(context)).create();
        editText.setText(String.valueOf(modelField.getConfigValue()));
        return alertDialogCreate;
    }

    public static void showReadDialog(Context context, CharSequence charSequence, ModelField<?> modelField2) {
        showReadDialog(context, charSequence, modelField2, null);
    }

    public static void showReadDialog(Context context, CharSequence charSequence, ModelField<?> modelField2, String str) {
        modelField = modelField2;
        AlertDialog readDialog = getReadDialog(context);
        if (str != null) {
            readDialog.setTitle(charSequence);
            readDialog.setMessage(str);
        } else {
            readDialog.setTitle(charSequence);
        }
        readDialog.show();
    }

    private static AlertDialog getReadDialog(Context context) {
        EditText editText = new EditText(context);
        editText.setInputType(0);
        editText.setTextColor(-7829368);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setTitle("title").setView(editText).create();
        editText.setText(String.valueOf(modelField.getConfigValue()));
        return alertDialogCreate;
    }
}
