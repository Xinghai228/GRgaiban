package io.github.lazyimmortal.sesame.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import fi.iki.elonen.NanoHTTPD;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import kotlin.UByte;

/* JADX INFO: loaded from: classes.dex */
public class ImageZipCache {
    private static final String TAG = "ImageZipCache";
    private final File zipFile;
    private static final ExecutorService downloadPool = Executors.newFixedThreadPool(4);
    private static final ExecutorService writer = Executors.newSingleThreadExecutor();
    private static final Object writeLock = new Object();

    public ImageZipCache(File file) {
        this.zipFile = file;
    }

    public Bitmap load(String str) {
        byte[] entry = readEntry(str);
        if (entry == null) {
            return null;
        }
        return BitmapFactory.decodeByteArray(entry, 0, entry.length);
    }

    public Bitmap loadOrDownload(String str) {
        Bitmap bitmapLoad = load(str);
        if (bitmapLoad != null) {
            return bitmapLoad;
        }
        byte[] bArrDownload = download(str);
        if (bArrDownload == null) {
            return null;
        }
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDownload, 0, bArrDownload.length);
        if (bitmapDecodeByteArray != null) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(new ImageEntry(entryName(str, bArrDownload), bArrDownload));
            writeEntries(arrayList);
        }
        return bitmapDecodeByteArray;
    }

    public void predownload(Collection<String> collection) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        final ArrayList arrayList = new ArrayList(collection);
        writer.execute(new Runnable() { // from class: io.github.lazyimmortal.sesame.util.ImageZipCache$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m152xc8b4572c(arrayList);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$predownload$1$io-github-lazyimmortal-sesame-util-ImageZipCache, reason: not valid java name */
    /* synthetic */ void m152xc8b4572c(List list) {
        try {
            Set<String> setCachedDigests = cachedDigests();
            ArrayList<String> arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str != null && str.startsWith("http") && !setCachedDigests.contains(digest(str))) {
                    arrayList.add(str);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            for (final String str2 : arrayList) {
                arrayList2.add(downloadPool.submit(new Callable() { // from class: io.github.lazyimmortal.sesame.util.ImageZipCache$$ExternalSyntheticLambda0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return ImageZipCache.download(str2);
                    }
                }));
            }
            ArrayList arrayList3 = new ArrayList();
            for (int i = 0; i < arrayList2.size(); i++) {
                byte[] bArr = (byte[]) ((Future) arrayList2.get(i)).get();
                if (bArr != null) {
                    arrayList3.add(new ImageEntry(entryName((String) arrayList.get(i), bArr), bArr));
                }
            }
            if (arrayList3.isEmpty()) {
                return;
            }
            writeEntries(arrayList3);
        } catch (Throwable th) {
            Log.printStackTrace(TAG, th);
        }
    }

    private byte[] readEntry(String str) {
        ZipFile zipFile;
        ZipEntry zipEntryNextElement;
        String name;
        if (str == null || str.isEmpty() || !this.zipFile.isFile()) {
            return null;
        }
        String strDigest = digest(str);
        try {
            zipFile = new ZipFile(this.zipFile);
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                do {
                    if (!enumerationEntries.hasMoreElements()) {
                        return null;
                    }
                    zipEntryNextElement = enumerationEntries.nextElement();
                    name = zipEntryNextElement.getName();
                    if (name.equals(strDigest)) {
                        break;
                    }
                } while (!name.startsWith(strDigest + "."));
                InputStream inputStream = zipFile.getInputStream(zipEntryNextElement);
                try {
                    byte[] all = readAll(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    closeQuietly(zipFile);
                    return all;
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                try {
                    Log.printStackTrace(TAG, th);
                    return null;
                } finally {
                    closeQuietly(zipFile);
                }
            }
        } catch (Throwable th4) {
            th = th4;
            zipFile = null;
        }
    }

    private Set<String> cachedDigests() {
        ZipFile zipFile;
        Throwable th;
        HashSet hashSet = new HashSet();
        if (!this.zipFile.isFile()) {
            return hashSet;
        }
        try {
            zipFile = new ZipFile(this.zipFile);
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    String name = enumerationEntries.nextElement().getName();
                    if (name.contains(".")) {
                        name = name.substring(0, name.indexOf(46));
                    }
                    hashSet.add(name);
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    Log.printStackTrace(TAG, th);
                } finally {
                    closeQuietly(zipFile);
                }
            }
        } catch (Throwable th3) {
            zipFile = null;
            th = th3;
        }
        return hashSet;
    }

    private void writeEntries(List<ImageEntry> list) {
        synchronized (writeLock) {
            File file = new File(this.zipFile.getAbsolutePath() + ".tmp");
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            for (ImageEntry imageEntry : list) {
                hashSet.add(imageEntry.name);
                hashSet2.add(digestOfEntry(imageEntry.name));
            }
            ZipFile zipFile = null;
            ZipFile zipFile2 = this.zipFile.isFile() ? new ZipFile(this.zipFile) : null;
            try {
                ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(file));
                if (zipFile2 != null) {
                    try {
                        Enumeration<? extends ZipEntry> enumerationEntries = zipFile2.entries();
                        while (enumerationEntries.hasMoreElements()) {
                            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                            String name = zipEntryNextElement.getName();
                            if (!hashSet.contains(name) && !hashSet2.contains(digestOfEntry(name))) {
                                zipOutputStream.putNextEntry(new ZipEntry(name));
                                InputStream inputStream = zipFile2.getInputStream(zipEntryNextElement);
                                try {
                                    copy(inputStream, zipOutputStream);
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    zipOutputStream.closeEntry();
                                } catch (Throwable th) {
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                        }
                                    }
                                    throw th;
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            zipOutputStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
                for (ImageEntry imageEntry2 : list) {
                    zipOutputStream.putNextEntry(new ZipEntry(imageEntry2.name));
                    zipOutputStream.write(imageEntry2.data);
                    zipOutputStream.closeEntry();
                }
                zipOutputStream.close();
                closeQuietly(zipFile2);
                if (this.zipFile.exists() && !this.zipFile.delete()) {
                    Log.printStackTrace(TAG, new IOException("旧缓存包删除失败"));
                }
                if (!file.renameTo(this.zipFile)) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(this.zipFile);
                        try {
                            copy(fileInputStream, fileOutputStream);
                            fileOutputStream.close();
                            fileInputStream.close();
                        } catch (Throwable th5) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th6) {
                                th5.addSuppressed(th6);
                            }
                            throw th5;
                        }
                    } catch (Throwable th7) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th8) {
                            th7.addSuppressed(th8);
                        }
                        throw th7;
                    }
                }
                closeQuietly(null);
            } catch (Throwable th9) {
                th = th9;
                zipFile = zipFile2;
                try {
                    Log.printStackTrace(TAG, th);
                    closeQuietly(zipFile);
                    file.delete();
                } catch (Throwable th10) {
                    closeQuietly(zipFile);
                    file.delete();
                    throw th10;
                }
            }
            file.delete();
        }
    }

    private static String digestOfEntry(String str) {
        return str.contains(".") ? str.substring(0, str.indexOf(46)) : str;
    }

    private static String entryName(String str, byte[] bArr) {
        return digest(str) + "." + sniffExt(bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] download(String str) {
        HttpURLConnection httpURLConnection;
        if (str == null || !str.startsWith("http")) {
            return null;
        }
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setConnectTimeout(NanoHTTPD.SOCKET_READ_TIMEOUT);
                httpURLConnection.setReadTimeout(NanoHTTPD.SOCKET_READ_TIMEOUT);
                if (httpURLConnection.getResponseCode() != 200) {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return null;
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    byte[] all = readAll(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return all;
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                try {
                    Log.printStackTrace(TAG, th);
                    return null;
                } finally {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
        }
    }

    private static String sniffExt(byte[] bArr) {
        if (bArr != null && bArr.length >= 4) {
            byte b = bArr[0];
            if ((b & UByte.MAX_VALUE) == 137 && bArr[1] == 80 && bArr[2] == 78 && bArr[3] == 71) {
                return "png";
            }
            if ((b & UByte.MAX_VALUE) == 255 && (bArr[1] & UByte.MAX_VALUE) == 216 && (bArr[2] & UByte.MAX_VALUE) == 255) {
                return "jpg";
            }
            if (b == 71 && bArr[1] == 73 && bArr[2] == 70 && bArr[3] == 56) {
                return "gif";
            }
            if (bArr.length >= 12 && b == 82 && bArr[1] == 73 && bArr[2] == 70 && bArr[3] == 70 && bArr[8] == 87 && bArr[9] == 69 && bArr[10] == 66 && bArr[11] == 80) {
                return "webp";
            }
            if (b == 66 && bArr[1] == 77) {
                return "bmp";
            }
        }
        return "img";
    }

    private static byte[] readAll(InputStream inputStream) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr);
            if (i != -1) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    private static void copy(InputStream inputStream, OutputStream outputStream) throws Exception {
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr);
            if (i != -1) {
                outputStream.write(bArr, 0, i);
            } else {
                outputStream.flush();
                return;
            }
        }
    }

    private static void closeQuietly(ZipFile zipFile) {
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (Throwable unused) {
            }
        }
    }

    private static String digest(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                sb.append(String.format("%02x", Byte.valueOf(b)));
            }
            return sb.toString();
        } catch (Throwable unused) {
            return String.valueOf(str.hashCode());
        }
    }

    private static final class ImageEntry {
        final byte[] data;
        final String name;

        ImageEntry(String str, byte[] bArr) {
            this.name = str;
            this.data = bArr;
        }
    }
}
