package com.getcapacitor;

import android.content.ContentUris;
import android.content.Context;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class FileUtils {
    private static String CapacitorFileScheme = "/_capacitor_file_";

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public enum Type {
        IMAGE("image");

        private String type;

        Type(String str) {
            this.type = str;
        }
    }

    private static String getCopyFilePath(Uri uri, Context context) {
        Cursor cursorQuery = context.getContentResolver().query(uri, null, null, null, null);
        int columnIndex = cursorQuery.getColumnIndex("_display_name");
        cursorQuery.moveToFirst();
        File file = new File(context.getFilesDir(), sanitizeFilename(cursorQuery.getString(columnIndex)));
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[Math.min(inputStreamOpenInputStream.available(), 1048576)];
            while (true) {
                int i6 = inputStreamOpenInputStream.read(bArr);
                if (i6 == -1) {
                    inputStreamOpenInputStream.close();
                    fileOutputStream.close();
                    cursorQuery.close();
                    return file.getPath();
                }
                fileOutputStream.write(bArr, 0, i6);
            }
        } catch (Exception unused) {
            cursorQuery.close();
            return null;
        } catch (Throwable th) {
            cursorQuery.close();
            throw th;
        }
    }

    private static String getDataColumn(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Uri uri2;
        Throwable th;
        Cursor cursor = null;
        string = null;
        String string = null;
        cursor = null;
        cursor = null;
        try {
            try {
                uri2 = uri;
                try {
                    Cursor cursorQuery = context.getContentResolver().query(uri2, new String[]{"_data"}, str, strArr, null);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                            }
                        } catch (IllegalArgumentException unused) {
                            cursor = cursorQuery;
                            String copyFilePath = getCopyFilePath(uri2, context);
                            if (cursor != null) {
                                cursor.close();
                            }
                            return copyFilePath;
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = cursorQuery;
                            if (cursor == null) {
                                throw th;
                            }
                            cursor.close();
                            throw th;
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return string == null ? getCopyFilePath(uri2, context) : string;
                } catch (IllegalArgumentException unused2) {
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IllegalArgumentException unused3) {
            uri2 = uri;
        }
    }

    public static String getFileUrlForUri(Context context, Uri uri) {
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (isExternalStorageDocument(uri)) {
                String documentId = DocumentsContract.getDocumentId(uri);
                String[] strArrSplit = documentId.split(":");
                if ("primary".equalsIgnoreCase(strArrSplit[0])) {
                    return legacyPrimaryPath(strArrSplit[1]);
                }
                int iIndexOf = documentId.indexOf(58, 1);
                String strSubstring = documentId.substring(0, iIndexOf);
                String strSubstring2 = documentId.substring(iIndexOf + 1);
                String pathToNonPrimaryVolume = getPathToNonPrimaryVolume(context, strSubstring);
                if (pathToNonPrimaryVolume != null) {
                    String str = pathToNonPrimaryVolume + "/" + strSubstring2;
                    File file = new File(str);
                    if (file.exists() && file.canRead()) {
                        return str;
                    }
                    return null;
                }
            } else {
                if (isDownloadsDocument(uri)) {
                    return getDataColumn(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
                }
                if (isMediaDocument(uri)) {
                    String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                    String str2 = strArrSplit2[0];
                    if ("image".equals(str2)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if ("video".equals(str2)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str2)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return getDataColumn(context, uri2, "_id=?", new String[]{strArrSplit2[1]});
                }
            }
        } else {
            if (FirebaseAnalytics.Param.CONTENT.equalsIgnoreCase(uri.getScheme())) {
                return isGooglePhotosUri(uri) ? uri.getLastPathSegment() : getDataColumn(context, uri, null, null);
            }
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }

    private static String getPathToNonPrimaryVolume(Context context, String str) {
        String absolutePath;
        int iIndexOf;
        File[] externalCacheDirs = context.getExternalCacheDirs();
        if (externalCacheDirs == null) {
            return null;
        }
        for (File file : externalCacheDirs) {
            if (file != null && (absolutePath = file.getAbsolutePath()) != null && (iIndexOf = absolutePath.indexOf(str)) != -1) {
                return absolutePath.substring(0, iIndexOf) + str;
            }
        }
        return null;
    }

    public static String getPortablePath(Context context, String str, Uri uri) {
        String fileUrlForUri = getFileUrlForUri(context, uri);
        if (fileUrlForUri.startsWith("file://")) {
            fileUrlForUri = fileUrlForUri.replace("file://", "");
        }
        return str + Bridge.CAPACITOR_FILE_START + fileUrlForUri;
    }

    private static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    private static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    private static boolean isGooglePhotosUri(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    private static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    private static String legacyPrimaryPath(String str) {
        return Environment.getExternalStorageDirectory() + "/" + str;
    }

    public static String readFileFromAssets(AssetManager assetManager, String str) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assetManager.open(str)));
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    String string = sb.toString();
                    bufferedReader.close();
                    return string;
                }
                sb.append(line);
                sb.append("\n");
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static String readFileFromDisk(File file) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    String string = sb.toString();
                    bufferedReader.close();
                    return string;
                }
                sb.append(line);
                sb.append("\n");
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String sanitizeFilename(String str) {
        String[] strArr = {"..", "/"};
        String strReplace = str.split("/")[r4.length - 1];
        for (int i6 = 0; i6 < 2; i6++) {
            strReplace = strReplace.replace(strArr[i6], "_");
        }
        return strReplace;
    }
}
