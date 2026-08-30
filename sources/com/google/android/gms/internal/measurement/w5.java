package com.google.android.gms.internal.measurement;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class w5 {
    public static int a(int i6, byte[] bArr, int i9, int i10, j6 j6Var, m5 m5Var) {
        c6 c6Var = (c6) j6Var;
        int iL = l(bArr, i9, m5Var);
        c6Var.c(m5Var.f1736a);
        while (iL < i10) {
            int iL2 = l(bArr, iL, m5Var);
            if (i6 != m5Var.f1736a) {
                break;
            }
            iL = l(bArr, iL2, m5Var);
            c6Var.c(m5Var.f1736a);
        }
        return iL;
    }

    public static int b(int i6, byte[] bArr, int i9, int i10, c7 c7Var, m5 m5Var) throws i6 {
        if ((i6 >>> 3) == 0) {
            throw new i6("Protocol message contained an invalid tag (zero).");
        }
        int i11 = i6 & 7;
        if (i11 == 0) {
            int iM = m(bArr, i9, m5Var);
            c7Var.c(i6, Long.valueOf(m5Var.f1737b));
            return iM;
        }
        if (i11 == 1) {
            c7Var.c(i6, Long.valueOf(n(bArr, i9)));
            return i9 + 8;
        }
        if (i11 == 2) {
            int iL = l(bArr, i9, m5Var);
            int i12 = m5Var.f1736a;
            if (i12 < 0) {
                throw i6.b();
            }
            if (i12 > bArr.length - iL) {
                throw i6.d();
            }
            if (i12 == 0) {
                c7Var.c(i6, p5.f1805c);
            } else {
                c7Var.c(i6, p5.c(bArr, iL, i12));
            }
            return iL + i12;
        }
        if (i11 != 3) {
            if (i11 != 5) {
                throw new i6("Protocol message contained an invalid tag (zero).");
            }
            c7Var.c(i6, Integer.valueOf(k(bArr, i9)));
            return i9 + 4;
        }
        c7 c7VarE = c7.e();
        int i13 = (i6 & (-8)) | 4;
        int i14 = m5Var.f1739d + 1;
        m5Var.f1739d = i14;
        if (i14 >= 100) {
            throw new i6("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i15 = 0;
        while (true) {
            if (i9 >= i10) {
                break;
            }
            int iL2 = l(bArr, i9, m5Var);
            int i16 = m5Var.f1736a;
            if (i16 == i13) {
                i15 = i16;
                i9 = iL2;
                break;
            }
            i9 = b(i16, bArr, iL2, i10, c7VarE, m5Var);
            i15 = i16;
        }
        m5Var.f1739d--;
        if (i9 > i10 || i15 != i13) {
            throw i6.c();
        }
        c7Var.c(i6, c7VarE);
        return i9;
    }

    public static int c(int i6, byte[] bArr, int i9, m5 m5Var) {
        int i10 = i6 & ModuleDescriptor.MODULE_VERSION;
        int i11 = i9 + 1;
        byte b3 = bArr[i9];
        if (b3 >= 0) {
            m5Var.f1736a = i10 | (b3 << 7);
            return i11;
        }
        int i12 = i10 | ((b3 & 127) << 7);
        int i13 = i9 + 2;
        byte b7 = bArr[i11];
        if (b7 >= 0) {
            m5Var.f1736a = i12 | (b7 << 14);
            return i13;
        }
        int i14 = i12 | ((b7 & 127) << 14);
        int i15 = i9 + 3;
        byte b9 = bArr[i13];
        if (b9 >= 0) {
            m5Var.f1736a = i14 | (b9 << 21);
            return i15;
        }
        int i16 = i14 | ((b9 & 127) << 21);
        int i17 = i9 + 4;
        byte b10 = bArr[i15];
        if (b10 >= 0) {
            m5Var.f1736a = i16 | (b10 << 28);
            return i17;
        }
        int i18 = i16 | ((b10 & 127) << 28);
        while (true) {
            int i19 = i17 + 1;
            if (bArr[i17] >= 0) {
                m5Var.f1736a = i18;
                return i19;
            }
            i17 = i19;
        }
    }

    public static int d(Object obj, b7 b7Var, byte[] bArr, int i6, int i9, int i10, m5 m5Var) throws i6 {
        u6 u6Var = (u6) b7Var;
        int i11 = m5Var.f1739d + 1;
        m5Var.f1739d = i11;
        if (i11 >= 100) {
            throw new i6("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int iJ = u6Var.j(obj, bArr, i6, i9, i10, m5Var);
        m5Var.f1739d--;
        m5Var.f1738c = obj;
        return iJ;
    }

    public static int e(Object obj, b7 b7Var, byte[] bArr, int i6, int i9, m5 m5Var) throws i6 {
        int iC = i6 + 1;
        int i10 = bArr[i6];
        if (i10 < 0) {
            iC = c(i10, bArr, iC, m5Var);
            i10 = m5Var.f1736a;
        }
        int i11 = iC;
        if (i10 < 0 || i10 > i9 - i11) {
            throw i6.d();
        }
        int i12 = m5Var.f1739d + 1;
        m5Var.f1739d = i12;
        if (i12 >= 100) {
            throw new i6("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i13 = i11 + i10;
        b7Var.g(obj, bArr, i11, i13, m5Var);
        m5Var.f1739d--;
        m5Var.f1738c = obj;
        return i13;
    }

    public static int f(byte[] bArr, int i6, m5 m5Var) throws i6 {
        int iL = l(bArr, i6, m5Var);
        int i9 = m5Var.f1736a;
        if (i9 < 0) {
            throw i6.b();
        }
        if (i9 > bArr.length - iL) {
            throw i6.d();
        }
        if (i9 == 0) {
            m5Var.f1738c = p5.f1805c;
            return iL;
        }
        m5Var.f1738c = p5.c(bArr, iL, i9);
        return iL + i9;
    }

    public static n g(i iVar, p pVar, com.google.firebase.messaging.y yVar, ArrayList arrayList) {
        String str = pVar.f1798a;
        if (iVar.zzc(str)) {
            n nVarZza = iVar.zza(str);
            if (nVarZza instanceof j) {
                return ((j) nVarZza).e(yVar, arrayList);
            }
            throw new IllegalArgumentException(q2.x.f(str, " is not a function"));
        }
        if (!"hasOwnProperty".equals(str)) {
            throw new IllegalArgumentException(q2.x.k("Object has no function ", str));
        }
        p4.g(1, "hasOwnProperty", arrayList);
        return iVar.zzc(((y4) yVar.f2163b).G(yVar, (n) arrayList.get(0)).zzf()) ? n.f1748s : n.f1749t;
    }

    public static t5 h() {
        String str;
        ClassLoader classLoader = w5.class.getClassLoader();
        if (t5.class.equals(t5.class)) {
            str = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";
        } else {
            if (!t5.class.getPackage().equals(w5.class.getPackage())) {
                throw new IllegalArgumentException(t5.class.getName());
            }
            str = t5.class.getPackage().getName() + ".BlazeGenerated" + t5.class.getSimpleName() + "Loader";
        }
        try {
            try {
                try {
                    a1.a.o(Class.forName(str, true, classLoader).getConstructor(null).newInstance(null));
                    throw null;
                } catch (IllegalAccessException e9) {
                    throw new IllegalStateException(e9);
                } catch (InvocationTargetException e10) {
                    throw new IllegalStateException(e10);
                }
            } catch (InstantiationException e11) {
                throw new IllegalStateException(e11);
            } catch (NoSuchMethodException e12) {
                throw new IllegalStateException(e12);
            }
        } catch (ClassNotFoundException unused) {
            try {
                Iterator it = Arrays.asList(new w5[0]).iterator();
                ArrayList arrayList = new ArrayList();
                while (it.hasNext()) {
                    try {
                        if (it.next() == null) {
                            throw null;
                        }
                        throw new ClassCastException();
                    } catch (ServiceConfigurationError e13) {
                        Logger.getLogger(q5.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat(t5.class.getSimpleName()), (Throwable) e13);
                    }
                }
                if (arrayList.size() == 1) {
                    return (t5) arrayList.get(0);
                }
                if (arrayList.size() == 0) {
                    return null;
                }
                try {
                    return (t5) t5.class.getMethod("combine", Collection.class).invoke(null, arrayList);
                } catch (IllegalAccessException e14) {
                    throw new IllegalStateException(e14);
                } catch (NoSuchMethodException e15) {
                    throw new IllegalStateException(e15);
                } catch (InvocationTargetException e16) {
                    throw new IllegalStateException(e16);
                }
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    public static q6 i(Object obj, Object obj2) {
        q6 q6Var = (q6) obj;
        q6 q6Var2 = (q6) obj2;
        if (!q6Var2.isEmpty()) {
            if (!q6Var.f1838a) {
                if (q6Var.isEmpty()) {
                    q6Var = new q6();
                } else {
                    q6 q6Var3 = new q6(q6Var);
                    q6Var3.f1838a = true;
                    q6Var = q6Var3;
                }
            }
            q6Var.b();
            if (!q6Var2.isEmpty()) {
                q6Var.putAll(q6Var2);
            }
        }
        return q6Var;
    }

    public static int j(b7 b7Var, int i6, byte[] bArr, int i9, int i10, j6 j6Var, m5 m5Var) throws i6 {
        z5 z5VarZza = b7Var.zza();
        b7 b7Var2 = b7Var;
        byte[] bArr2 = bArr;
        int i11 = i10;
        m5 m5Var2 = m5Var;
        int iE = e(z5VarZza, b7Var2, bArr2, i9, i11, m5Var2);
        b7Var2.c(z5VarZza);
        m5Var2.f1738c = z5VarZza;
        j6Var.add(z5VarZza);
        while (iE < i11) {
            m5 m5Var3 = m5Var2;
            int i12 = i11;
            int iL = l(bArr2, iE, m5Var3);
            if (i6 != m5Var3.f1736a) {
                break;
            }
            byte[] bArr3 = bArr2;
            b7 b7Var3 = b7Var2;
            z5 z5VarZza2 = b7Var3.zza();
            iE = e(z5VarZza2, b7Var3, bArr3, iL, i12, m5Var3);
            b7Var2 = b7Var3;
            bArr2 = bArr3;
            i11 = i12;
            m5Var2 = m5Var3;
            b7Var2.c(z5VarZza2);
            m5Var2.f1738c = z5VarZza2;
            j6Var.add(z5VarZza2);
        }
        return iE;
    }

    public static int k(byte[] bArr, int i6) {
        return ((bArr[i6 + 3] & 255) << 24) | (bArr[i6] & 255) | ((bArr[i6 + 1] & 255) << 8) | ((bArr[i6 + 2] & 255) << 16);
    }

    public static int l(byte[] bArr, int i6, m5 m5Var) {
        int i9 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 < 0) {
            return c(b3, bArr, i9, m5Var);
        }
        m5Var.f1736a = b3;
        return i9;
    }

    public static int m(byte[] bArr, int i6, m5 m5Var) {
        int i9 = i6 + 1;
        long j3 = bArr[i6];
        if (j3 >= 0) {
            m5Var.f1737b = j3;
            return i9;
        }
        int i10 = i6 + 2;
        byte b3 = bArr[i9];
        long j8 = (j3 & 127) | (((long) (b3 & 127)) << 7);
        int i11 = 7;
        while (b3 < 0) {
            int i12 = i10 + 1;
            byte b7 = bArr[i10];
            i11 += 7;
            j8 |= ((long) (b7 & 127)) << i11;
            b3 = b7;
            i10 = i12;
        }
        m5Var.f1737b = j8;
        return i10;
    }

    public static long n(byte[] bArr, int i6) {
        return ((((long) bArr[i6 + 7]) & 255) << 56) | (((long) bArr[i6]) & 255) | ((((long) bArr[i6 + 1]) & 255) << 8) | ((((long) bArr[i6 + 2]) & 255) << 16) | ((((long) bArr[i6 + 3]) & 255) << 24) | ((((long) bArr[i6 + 4]) & 255) << 32) | ((((long) bArr[i6 + 5]) & 255) << 40) | ((((long) bArr[i6 + 6]) & 255) << 48);
    }
}
