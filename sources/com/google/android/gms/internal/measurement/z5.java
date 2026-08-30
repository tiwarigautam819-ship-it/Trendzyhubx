package com.google.android.gms.internal.measurement;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class z5 extends i5 {
    private static Map<Class<?>, z5> zzc = new ConcurrentHashMap();
    protected c7 zzb;
    private int zzd;

    public z5() {
        this.zza = 0;
        this.zzd = -1;
        this.zzb = c7.f1549f;
    }

    public static z5 d(Class cls) {
        z5 z5Var = zzc.get(cls);
        if (z5Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                z5Var = zzc.get(cls);
            } catch (ClassNotFoundException e9) {
                throw new IllegalStateException("Class initialization cannot fail.", e9);
            }
        }
        if (z5Var != null) {
            return z5Var;
        }
        z5 z5Var2 = (z5) ((z5) f7.a(cls)).e(6);
        if (z5Var2 == null) {
            throw new IllegalStateException();
        }
        zzc.put(cls, z5Var2);
        return z5Var2;
    }

    public static Object f(Method method, z5 z5Var, Object... objArr) {
        try {
            return method.invoke(z5Var, objArr);
        } catch (IllegalAccessException e9) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e9);
        } catch (InvocationTargetException e10) {
            Throwable cause = e10.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static void g(Class cls, z5 z5Var) {
        z5Var.l();
        zzc.put(cls, z5Var);
    }

    public static final boolean h(z5 z5Var, boolean z5) {
        byte bByteValue = ((Byte) z5Var.e(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        z6 z6Var = z6.f2007c;
        z6Var.getClass();
        boolean zA = z6Var.a(z5Var.getClass()).a(z5Var);
        if (z5) {
            z5Var.e(2);
        }
        return zA;
    }

    @Override // com.google.android.gms.internal.measurement.i5
    public final int a(b7 b7Var) {
        int iD;
        int iD2;
        if (m()) {
            if (b7Var == null) {
                z6 z6Var = z6.f2007c;
                z6Var.getClass();
                iD2 = z6Var.a(getClass()).d(this);
            } else {
                iD2 = b7Var.d(this);
            }
            if (iD2 >= 0) {
                return iD2;
            }
            throw new IllegalStateException(a1.a.i(iD2, "serialized size must be non-negative, was "));
        }
        int i6 = this.zzd;
        if ((i6 & Integer.MAX_VALUE) != Integer.MAX_VALUE) {
            return i6 & Integer.MAX_VALUE;
        }
        if (b7Var == null) {
            z6 z6Var2 = z6.f2007c;
            z6Var2.getClass();
            iD = z6Var2.a(getClass()).d(this);
        } else {
            iD = b7Var.d(this);
        }
        i(iD);
        return iD;
    }

    public abstract Object e(int i6);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        z6 z6Var = z6.f2007c;
        z6Var.getClass();
        return z6Var.a(getClass()).f(this, (z5) obj);
    }

    public final int hashCode() {
        if (m()) {
            z6 z6Var = z6.f2007c;
            z6Var.getClass();
            return z6Var.a(getClass()).b(this);
        }
        if (this.zza == 0) {
            z6 z6Var2 = z6.f2007c;
            z6Var2.getClass();
            this.zza = z6Var2.a(getClass()).b(this);
        }
        return this.zza;
    }

    public final void i(int i6) {
        if (i6 < 0) {
            throw new IllegalStateException(a1.a.i(i6, "serialized size must be non-negative, was "));
        }
        this.zzd = (i6 & Integer.MAX_VALUE) | (this.zzd & Integer.MIN_VALUE);
    }

    public final y5 j() {
        return (y5) e(5);
    }

    public final y5 k() {
        y5 y5Var = (y5) e(5);
        if (y5Var.f1992a.equals(this)) {
            return y5Var;
        }
        if (!y5Var.f1993b.m()) {
            y5Var.f();
        }
        y5.a(y5Var.f1993b, this);
        return y5Var;
    }

    public final void l() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final boolean m() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = t6.f1911a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        t6.a(this, sb, 0);
        return sb.toString();
    }
}
