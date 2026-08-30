package com.engagelab.privates.common.utils;

import android.content.Context;
import android.text.TextUtils;
import com.engagelab.privates.common.global.MTGlobal;
import com.engagelab.privates.common.log.MTCommonLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import q2.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class FileUtils {
    private static final String TAG = "FileUtils";

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a implements Comparator<File> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            long jLastModified = file.lastModified() - file2.lastModified();
            if (jLastModified < 0) {
                return -1;
            }
            return jLastModified > 0 ? 1 : 0;
        }
    }

    public static String change(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                char[] charArray = str.toCharArray();
                for (int i6 = 0; i6 < charArray.length; i6++) {
                    charArray[i6] = (char) (charArray[i6] ^ 2000);
                }
                return new String(charArray);
            }
        } catch (Throwable unused) {
        }
        return str;
    }

    public static void createFileIfNeed(File file) {
        if (file == null || file.exists()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            file.createNewFile();
        } catch (Throwable unused) {
        }
    }

    public static boolean createHtmlFile(String str, String str2) {
        MTCommonLog.d(TAG, "action:createHtmlFile - filePath:" + str + ", content:" + str2);
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        return save(str, str2);
    }

    public static boolean createImgFile(String str, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return false;
        }
        return save(str, bArr);
    }

    public static void deleteCacheFileMaximum(String str, int i6) {
        File[] fileArrListFiles;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            File file = new File(str);
            if (file.exists() && !file.isFile() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length != 0) {
                MTCommonLog.d(TAG, "cacheFiles.length " + fileArrListFiles.length);
                if (fileArrListFiles.length <= i6) {
                    return;
                }
                List listAsList = Arrays.asList(fileArrListFiles);
                Collections.sort(listAsList, new a());
                for (int i9 = 0; i9 < listAsList.size() - i6; i9++) {
                    File file2 = (File) listAsList.get(i9);
                    if (file2.exists()) {
                        MTCommonLog.d(TAG, "Delete cacheFile " + file2.getAbsolutePath());
                        deleteDirectory(file2);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean deleteDirectory(File file) {
        try {
            if (!file.exists()) {
                return false;
            }
            if (file.isFile()) {
                return file.delete();
            }
            String[] list = file.list();
            if (list != null) {
                for (String str : list) {
                    File file2 = new File(file, str);
                    if (file2.isDirectory()) {
                        deleteDirectory(file2);
                    } else {
                        file2.delete();
                    }
                }
            }
            return file.delete();
        } catch (Exception unused) {
            MTCommonLog.e(TAG, "Delete dir error");
            return false;
        }
    }

    public static File getAppKeyDir(Context context, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(MTGlobal.getAppKey(context));
        String str3 = File.separator;
        sb.append(str3);
        sb.append(str);
        sb.append(str3);
        sb.append(str2);
        File fileInFiles = inFiles(context, sb.toString(), "cache");
        if (fileInFiles != null) {
            File parentFile = fileInFiles.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            return parentFile;
        }
        MTCommonLog.w(TAG, str2 + " can't be null");
        return null;
    }

    public static File getAppKeyFile(Context context, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(MTGlobal.getAppKey(context));
        return inFiles(context, x.h(sb, File.separator, str), str2);
    }

    private static File inFiles(Context context, String str, String str2) {
        File filesDir;
        if (context != null && (filesDir = context.getFilesDir()) != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(filesDir.getAbsolutePath());
            return new File(x.h(sb, File.separator, str), str2);
        }
        MTCommonLog.w(TAG, "can't get file :" + str2);
        return null;
    }

    public static boolean isFileExist(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return new File(str).exists();
        } catch (Throwable th) {
            MTCommonLog.w(TAG, "FileUtils e:" + th);
            return false;
        }
    }

    public static byte[] read2Bytes(File file) {
        FileInputStream fileInputStream;
        if (file != null && file.exists() && !file.isDirectory()) {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable unused) {
                fileInputStream = null;
            }
            try {
                byte[] available = Utils.readAvailable(fileInputStream);
                Utils.closeQuietly(fileInputStream);
                return available;
            } catch (Throwable unused2) {
                Utils.closeQuietly(fileInputStream);
                return null;
            }
        }
        return null;
    }

    public static String read2Str(File file) {
        byte[] bArr = read2Bytes(file);
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e9) {
            MTCommonLog.d(TAG, "can't encoding, give up read :" + e9);
            return null;
        }
    }

    public static Object readObject(File file) throws Throwable {
        ObjectInputStream objectInputStream = null;
        if (file == null || !file.exists() || file.isDirectory()) {
            return null;
        }
        try {
            ObjectInputStream objectInputStream2 = new ObjectInputStream(new FileInputStream(file));
            try {
                Object object = objectInputStream2.readObject();
                Utils.closeQuietly(objectInputStream2);
                return object;
            } catch (Throwable th) {
                th = th;
                objectInputStream = objectInputStream2;
                Utils.closeQuietly(objectInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean save(String str, String str2) {
        byte[] bytes;
        if (str2 != null) {
            try {
                bytes = str2.getBytes("UTF-8");
            } catch (Exception e9) {
                MTCommonLog.w(TAG, "getBytes exception:" + e9);
                return false;
            }
        } else {
            bytes = null;
        }
        return save(str, bytes);
    }

    public static boolean saveObject(File file, Object obj) {
        ObjectOutputStream objectOutputStream;
        if (file == null || file.isDirectory()) {
            MTCommonLog.w(TAG, "file should not be null or a directory");
            return false;
        }
        try {
            createFileIfNeed(file);
            objectOutputStream = new ObjectOutputStream(new FileOutputStream(file));
            try {
                objectOutputStream.writeObject(obj);
                Utils.closeQuietly(objectOutputStream);
                return true;
            } catch (Throwable th) {
                th = th;
                try {
                    MTCommonLog.w(TAG, "save to file exception:" + th + " path = " + file.getAbsolutePath());
                    return false;
                } finally {
                    Utils.closeQuietly(objectOutputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream = null;
        }
    }

    private static boolean save(String str, byte[] bArr) throws Throwable {
        FileOutputStream fileOutputStream;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (bArr == null) {
            bArr = new byte[0];
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                File file = new File(str);
                createFileIfNeed(file);
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e9) {
                e = e9;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(bArr);
            Utils.closeQuietly(fileOutputStream);
            return true;
        } catch (Exception e10) {
            e = e10;
            fileOutputStream2 = fileOutputStream;
            MTCommonLog.w(TAG, "save to file exception:" + e + " path = " + str);
            Utils.closeQuietly(fileOutputStream2);
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            Utils.closeQuietly(fileOutputStream2);
            throw th;
        }
    }

    public static File getAppKeyFile(Context context, String str) {
        return inFiles(context, MTGlobal.getAppKey(context), str);
    }
}
