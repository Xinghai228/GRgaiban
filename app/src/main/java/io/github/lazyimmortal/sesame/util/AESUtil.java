package io.github.lazyimmortal.sesame.util;

import android.content.Context;
import android.util.Base64;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class AESUtil {
    private static final String ALGORITHM = "AES";
    private static final String CHARSET = "UTF-8";
    private static final String CIPHER_ALGORITHM = "AES/CBC/PKCS5Padding";
    private static final String DEFAULT_IV = "1234567890123456";

    public static native String decryptData(String str);

    public static native String encryptData(String str);

    private static SecretKey generateKey() throws Exception {
        KeyGenerator keyGenerator = KeyGenerator.getInstance(ALGORITHM);
        keyGenerator.init(256);
        return keyGenerator.generateKey();
    }

    private static String keyToString(SecretKey secretKey) {
        return Base64.encodeToString(secretKey.getEncoded(), 0);
    }

    private static SecretKey stringToKey(String str) {
        byte[] bArrDecode = Base64.decode(str, 0);
        return new SecretKeySpec(bArrDecode, 0, bArrDecode.length, ALGORITHM);
    }

    private static String encrypt(String str, SecretKey secretKey, String str2) throws Exception {
        Cipher cipher = Cipher.getInstance(CIPHER_ALGORITHM);
        cipher.init(1, secretKey, new IvParameterSpec(str2.getBytes(CHARSET)));
        return Base64.encodeToString(cipher.doFinal(str.getBytes(CHARSET)), 0);
    }

    private static String decrypt(String str, SecretKey secretKey, String str2) throws Exception {
        Cipher cipher = Cipher.getInstance(CIPHER_ALGORITHM);
        cipher.init(2, secretKey, new IvParameterSpec(str2.getBytes(CHARSET)));
        return new String(cipher.doFinal(Base64.decode(str, 0)), CHARSET);
    }

    private static String encryptData(String str, String str2, String str3) {
        try {
            return encrypt(str, stringToKey(str2), str3);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static String decryptData(String str, String str2, String str3) {
        try {
            return decrypt(str, stringToKey(str2), str3);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String readZipFile(String str, String str2) {
        try {
            ZipFile zipFile = new ZipFile(str);
            ZipEntry entry = zipFile.getEntry(str2);
            if (entry == null) {
                return null;
            }
            InputStream inputStream = zipFile.getInputStream(entry);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(line);
                    sb.append("\n");
                } else {
                    bufferedReader.close();
                    inputStream.close();
                    return sb.toString();
                }
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static String readAssetFile(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            InputStream inputStreamOpen = context.getAssets().open(str.substring(22));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen));
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(line);
                    sb.append("\n");
                } else {
                    bufferedReader.close();
                    inputStreamOpen.close();
                    return sb.toString();
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String loadDecryptHtmlData(Context context) {
        return "<!DOCTYPE html><html lang=\"en\"><script>" + decryptData(readAssetFile(context, "file:///android_asset/web/js/index.js")) + "</script></html>";
    }
}
