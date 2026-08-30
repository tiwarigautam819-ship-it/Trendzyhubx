package com.engagelab.privates.common.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ImageUtils {
    private static final String TAG = "ImageUtils";

    public static void compressImage(String str, String str2) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inSampleSize = 1;
            BitmapFactory.decodeFile(str, options);
            int iComputeSize = computeSize(options.outWidth, options.outHeight);
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inSampleSize = iComputeSize;
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options2);
            if (bitmapDecodeFile == null) {
                return;
            }
            String typeFromUrl = Utils.getTypeFromUrl(str2);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if (bitmapDecodeFile.compress(getCompressFormat(typeFromUrl), 60, byteArrayOutputStream)) {
                File file = new File(str);
                if (file.exists()) {
                    file.delete();
                }
                bitmapDecodeFile.recycle();
                FileOutputStream fileOutputStream = new FileOutputStream(str);
                fileOutputStream.write(byteArrayOutputStream.toByteArray());
                fileOutputStream.flush();
                fileOutputStream.close();
                byteArrayOutputStream.close();
            }
        } catch (Throwable unused) {
        }
    }

    private static int computeSize(int i6, int i9) {
        if (i6 % 2 == 1) {
            i6++;
        }
        if (i9 % 2 == 1) {
            i9++;
        }
        int iMax = Math.max(i6, i9);
        float fMin = Math.min(i6, i9) / iMax;
        if (fMin > 1.0f || fMin <= 0.5625d) {
            double d6 = fMin;
            if (d6 > 0.5625d || d6 <= 0.5d) {
                return (int) Math.ceil(((double) iMax) / (1280.0d / d6));
            }
            int i10 = iMax / 1280;
            if (i10 == 0) {
                return 1;
            }
            return i10;
        }
        if (iMax < 1664) {
            return 1;
        }
        if (iMax < 4990) {
            return 2;
        }
        if (iMax > 4990 && iMax < 10240) {
            return 4;
        }
        int i11 = iMax / 1280;
        if (i11 == 0) {
            return 1;
        }
        return i11;
    }

    public static Bitmap getBitmap(String str, int i6, int i9) {
        return BitmapFactory.decodeFile(str, new BitmapFactory.Options());
    }

    private static Bitmap.CompressFormat getCompressFormat(String str) {
        str.getClass();
        return !str.equals("image/png") ? Bitmap.CompressFormat.JPEG : Bitmap.CompressFormat.PNG;
    }
}
