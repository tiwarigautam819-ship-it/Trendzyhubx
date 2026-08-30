package c0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends x2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f1003a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Constructor f1004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Method f1005c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Method f1006d;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e9) {
            Log.e("TypefaceCompatApi24Impl", e9.getClass().getName(), e9);
            cls = null;
            method = null;
            method2 = null;
        }
        f1004b = constructor;
        f1003a = cls;
        f1005c = method2;
        f1006d = method;
    }

    public static boolean r(Object obj, ByteBuffer byteBuffer, int i6, int i9, boolean z5) {
        try {
            return ((Boolean) f1005c.invoke(obj, byteBuffer, Integer.valueOf(i6), null, Integer.valueOf(i9), Boolean.valueOf(z5))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface s(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f1003a, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f1006d.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // x2.a
    public final Typeface a(Context context, b0.f fVar, Resources resources, int i6) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Object objNewInstance;
        MappedByteBuffer map;
        FileInputStream fileInputStream;
        try {
            objNewInstance = f1004b.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance != null) {
            for (b0.g gVar : fVar.f857a) {
                int i9 = gVar.f863f;
                File fileQ = y1.g.q(context);
                if (fileQ != null) {
                    try {
                        if (y1.g.h(fileQ, resources, i9)) {
                            try {
                                fileInputStream = new FileInputStream(fileQ);
                            } catch (IOException unused2) {
                                map = null;
                            }
                            try {
                                FileChannel channel = fileInputStream.getChannel();
                                map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                fileInputStream.close();
                                if (map != null && r(objNewInstance, map, gVar.f862e, gVar.f859b, gVar.f860c)) {
                                }
                            } finally {
                            }
                        }
                    } finally {
                        fileQ.delete();
                    }
                }
                map = null;
                if (map != null) {
                }
            }
            return s(objNewInstance);
        }
        return null;
    }

    @Override // x2.a
    public final Typeface b(Context context, g0.j[] jVarArr, int i6) {
        Object objNewInstance;
        try {
            objNewInstance = f1004b.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance != null) {
            int i9 = 0;
            s.j jVar = new s.j(0);
            int length = jVarArr.length;
            while (true) {
                if (i9 < length) {
                    g0.j jVar2 = jVarArr[i9];
                    Uri uri = jVar2.f2841a;
                    ByteBuffer byteBufferS = (ByteBuffer) jVar.get(uri);
                    if (byteBufferS == null) {
                        byteBufferS = y1.g.s(context, uri);
                        jVar.put(uri, byteBufferS);
                    }
                    if (byteBufferS == null || !r(objNewInstance, byteBufferS, jVar2.f2842b, jVar2.f2843c, jVar2.f2844d)) {
                        break;
                    }
                    i9++;
                } else {
                    Typeface typefaceS = s(objNewInstance);
                    if (typefaceS != null) {
                        return Typeface.create(typefaceS, i6);
                    }
                }
            }
        }
        return null;
    }
}
