package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.d0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzlh {
    public static Object zza(Object obj) {
        ObjectInputStream objectInputStream;
        ObjectOutputStream objectOutputStream;
        try {
            if (obj == null) {
                return null;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeObject(obj);
                    objectOutputStream.flush();
                    objectInputStream = new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                    try {
                        Object object = objectInputStream.readObject();
                        objectOutputStream.close();
                        objectInputStream.close();
                        return object;
                    } catch (Throwable th) {
                        th = th;
                        if (objectOutputStream != null) {
                            objectOutputStream.close();
                        }
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    objectInputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                objectInputStream = null;
                objectOutputStream = null;
            }
        } catch (IOException | ClassNotFoundException unused) {
            return null;
        }
    }

    public static String zza(String str, String[] strArr, String[] strArr2) {
        boolean zEquals;
        d0.h(strArr);
        d0.h(strArr2);
        int iMin = Math.min(strArr.length, strArr2.length);
        for (int i6 = 0; i6 < iMin; i6++) {
            String str2 = strArr[i6];
            if (str == null && str2 == null) {
                zEquals = true;
            } else {
                zEquals = str == null ? false : str.equals(str2);
            }
            if (zEquals) {
                return strArr2[i6];
            }
        }
        return null;
    }
}
