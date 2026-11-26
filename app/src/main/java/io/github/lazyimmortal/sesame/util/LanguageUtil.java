package io.github.lazyimmortal.sesame.util;

import android.content.Context;
import android.content.res.Configuration;
import io.github.lazyimmortal.sesame.data.AppConfig;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class LanguageUtil {
    public static Context setLocal(Context context) {
        AppConfig.load();
        if (AppConfig.INSTANCE.getLanguageSimplifiedChinese().booleanValue()) {
            return setLocal(context, new Locale("zh", "CN"));
        }
        return setLocal(context, Locale.getDefault());
    }

    public static Context setLocal(Context context, Locale locale) {
        Configuration configuration = new Configuration();
        configuration.setLocale(locale);
        return context.createConfigurationContext(configuration);
    }
}
