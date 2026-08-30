package c0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class g extends x2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Class f998a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Constructor f999b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Method f1000c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Method f1001d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f1002e = false;

    public static boolean r(Object obj, String str, int i6, boolean z5) throws NoSuchMethodException {
        s();
        try {
            try {
                return ((Boolean) f1000c.invoke(obj, str, Integer.valueOf(i6), Boolean.valueOf(z5))).booleanValue();
            } catch (InvocationTargetException e9) {
                e = e9;
                throw new RuntimeException(e);
            }
        } catch (IllegalAccessException | InvocationTargetException e10) {
            e = e10;
        }
    }

    public static void s() throws NoSuchMethodException {
        Method method;
        Class<?> cls;
        Method method2;
        if (f1002e) {
            return;
        }
        f1002e = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e9) {
            Log.e("TypefaceCompatApi21Impl", e9.getClass().getName(), e9);
            method = null;
            cls = null;
            method2 = null;
        }
        f999b = constructor;
        f998a = cls;
        f1000c = method2;
        f1001d = method;
    }

    @Override // x2.a
    public Typeface a(Context context, b0.f fVar, Resources resources, int i6) throws NoSuchMethodException {
        s();
        try {
            Object objNewInstance = f999b.newInstance(null);
            for (b0.g gVar : fVar.f857a) {
                File fileQ = y1.g.q(context);
                if (fileQ == null) {
                    return null;
                }
                try {
                    if (!y1.g.h(fileQ, resources, gVar.f863f)) {
                        return null;
                    }
                    if (!r(objNewInstance, fileQ.getPath(), gVar.f859b, gVar.f860c)) {
                        return null;
                    }
                    fileQ.delete();
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    fileQ.delete();
                }
            }
            s();
            try {
                Object objNewInstance2 = Array.newInstance((Class<?>) f998a, 1);
                Array.set(objNewInstance2, 0, objNewInstance);
                return (Typeface) f1001d.invoke(null, objNewInstance2);
            } catch (IllegalAccessException | InvocationTargetException e9) {
                throw new RuntimeException(e9);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // x2.a
    public Typeface b(Context context, g0.j[] jVarArr, int i6) {
        String str;
        if (jVarArr.length >= 1) {
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(f(jVarArr, i6).f2841a, "r", null);
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    try {
                        try {
                            str = Os.readlink("/proc/self/fd/" + parcelFileDescriptorOpenFileDescriptor.getFd());
                        } finally {
                        }
                    } catch (ErrnoException unused) {
                    }
                    File file = OsConstants.S_ISREG(Os.stat(str).st_mode) ? new File(str) : null;
                    if (file != null && file.canRead()) {
                        Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                        parcelFileDescriptorOpenFileDescriptor.close();
                        return typefaceCreateFromFile;
                    }
                    FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                    try {
                        Typeface typefaceD = d(context, fileInputStream);
                        fileInputStream.close();
                        parcelFileDescriptorOpenFileDescriptor.close();
                        return typefaceD;
                    } finally {
                    }
                }
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return null;
                }
            } catch (IOException unused2) {
            }
        }
        return null;
    }
}
