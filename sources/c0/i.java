package c0;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class i extends g {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Class f1007f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Constructor f1008g;
    public final Method h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Method f1009i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Method f1010j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Method f1011k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Method f1012l;

    public i() throws NoSuchMethodException {
        Method methodX;
        Constructor<?> constructor;
        Method methodW;
        Method method;
        Method method2;
        Method method3;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            methodW = w(cls2);
            Class<?> cls3 = Integer.TYPE;
            method = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method2 = cls2.getMethod("freeze", null);
            method3 = cls2.getMethod("abortCreation", null);
            methodX = x(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e9) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e9.getClass().getName()), e9);
            methodX = null;
            constructor = null;
            methodW = null;
            method = null;
            method2 = null;
            method3 = null;
        }
        this.f1007f = cls;
        this.f1008g = constructor;
        this.h = methodW;
        this.f1009i = method;
        this.f1010j = method2;
        this.f1011k = method3;
        this.f1012l = methodX;
    }

    public static Method w(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    @Override // c0.g, x2.a
    public final Typeface a(Context context, b0.f fVar, Resources resources, int i6) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Object objNewInstance;
        Method method = this.h;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method == null) {
            return super.a(context, fVar, resources, i6);
        }
        try {
            objNewInstance = this.f1008g.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance != null) {
            b0.g[] gVarArr = fVar.f857a;
            int length = gVarArr.length;
            int i9 = 0;
            while (true) {
                if (i9 < length) {
                    b0.g gVar = gVarArr[i9];
                    Context context2 = context;
                    if (t(context2, objNewInstance, gVar.f858a, gVar.f862e, gVar.f859b, gVar.f860c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(gVar.f861d))) {
                        i9++;
                        context = context2;
                    } else {
                        try {
                            this.f1011k.invoke(objNewInstance, null);
                            break;
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                        }
                    }
                } else if (v(objNewInstance)) {
                    return u(objNewInstance);
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    @Override // c0.g, x2.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.Typeface b(android.content.Context r18, g0.j[] r19, int r20) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 261
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c0.i.b(android.content.Context, g0.j[], int):android.graphics.Typeface");
    }

    @Override // x2.a
    public final Typeface e(Context context, Resources resources, int i6, String str, int i9) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Object objNewInstance;
        Method method = this.h;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method == null) {
            return super.e(context, resources, i6, str, i9);
        }
        try {
            objNewInstance = this.f1008g.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance != null) {
            if (!t(context, objNewInstance, str, 0, -1, -1, null)) {
                try {
                    this.f1011k.invoke(objNewInstance, null);
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
            } else if (v(objNewInstance)) {
                return u(objNewInstance);
            }
        }
        return null;
    }

    public final boolean t(Context context, Object obj, String str, int i6, int i9, int i10, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.h.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i6), Integer.valueOf(i9), Integer.valueOf(i10), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface u(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f1007f, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f1012l.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean v(Object obj) {
        try {
            return ((Boolean) this.f1010j.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Method x(Class cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
