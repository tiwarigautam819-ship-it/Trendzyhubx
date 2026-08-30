package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Unsafe f1636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class f1637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e7 f1638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f1639d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f1640e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f1641f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final boolean f1642g;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    static {
        /*
            Method dump skipped, instruction units count: 353
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.f7.<clinit>():void");
    }

    public static Object a(Class cls) {
        try {
            return f1636a.allocateInstance(cls);
        } catch (InstantiationException e9) {
            throw new IllegalStateException(e9);
        }
    }

    public static void b(long j3, Object obj, Object obj2) {
        f1638c.f1585a.putObject(obj, j3, obj2);
    }

    public static void c(Object obj, long j3, int i6) {
        f1638c.e(obj, j3, i6);
    }

    public static int d(Class cls) {
        if (f1640e) {
            return f1638c.f1585a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static Unsafe e() {
        try {
            return (Unsafe) AccessController.doPrivileged(new g7());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void f(Class cls) {
        if (f1640e) {
            f1638c.f1585a.arrayIndexScale(cls);
        }
    }

    public static void g(Object obj, long j3, byte b3) {
        long j8 = (-4) & j3;
        int iJ = f1638c.j(j8, obj);
        int i6 = ((~((int) j3)) & 3) << 3;
        c(obj, j8, ((255 & b3) << i6) | (iJ & (~(255 << i6))));
    }

    public static void h(Object obj, long j3, byte b3) {
        long j8 = (-4) & j3;
        int i6 = (((int) j3) & 3) << 3;
        c(obj, j8, ((255 & b3) << i6) | (f1638c.j(j8, obj) & (~(255 << i6))));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean i(Class cls) {
        try {
            Class cls2 = f1637b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static Object j(long j3, Object obj) {
        return f1638c.f1585a.getObject(obj, j3);
    }

    public static Field k() {
        Field declaredField;
        Field declaredField2;
        try {
            declaredField = Buffer.class.getDeclaredField("effectiveDirectAddress");
        } catch (Throwable unused) {
            declaredField = null;
        }
        if (declaredField != null) {
            return declaredField;
        }
        try {
            declaredField2 = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            declaredField2 = null;
        }
        if (declaredField2 == null || declaredField2.getType() != Long.TYPE) {
            return null;
        }
        return declaredField2;
    }
}
