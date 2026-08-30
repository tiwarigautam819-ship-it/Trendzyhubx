package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class i5 {
    protected int zza;

    public static void b(Iterable iterable, List list) {
        Charset charset = b6.f1534a;
        iterable.getClass();
        if (iterable instanceof m6) {
            List listM0zza = ((m6) iterable).m0zza();
            m6 m6Var = (m6) list;
            int size = list.size();
            for (Object obj : listM0zza) {
                if (obj == null) {
                    String strJ = a1.a.j(m6Var.size() - size, "Element at index ", " is null.");
                    for (int size2 = m6Var.size() - 1; size2 >= size; size2--) {
                        m6Var.remove(size2);
                    }
                    throw new NullPointerException(strJ);
                }
                if (obj instanceof p5) {
                    m6Var.m1zza();
                } else if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    p5.c(bArr, 0, bArr.length);
                    m6Var.m1zza();
                } else {
                    m6Var.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof x6) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size3 = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size3);
            }
            if (list instanceof y6) {
                y6 y6Var = (y6) list;
                int i6 = y6Var.f1997c + size3;
                Object[] objArr = y6Var.f1996b;
                if (i6 > objArr.length) {
                    if (objArr.length == 0) {
                        y6Var.f1996b = new Object[Math.max(i6, 10)];
                    } else {
                        int length = objArr.length;
                        while (length < i6) {
                            length = Math.max(((length * 3) / 2) + 1, 10);
                        }
                        y6Var.f1996b = Arrays.copyOf(y6Var.f1996b, length);
                    }
                }
            }
        }
        int size4 = list.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    y5.b(list, size4);
                    throw null;
                }
                list.add(obj2);
            }
            return;
        }
        List list2 = (List) iterable;
        int size5 = list2.size();
        for (int i9 = 0; i9 < size5; i9++) {
            Object obj3 = list2.get(i9);
            if (obj3 == null) {
                y5.b(list, size4);
                throw null;
            }
            list.add(obj3);
        }
    }

    public abstract int a(b7 b7Var);

    public final byte[] c() {
        try {
            int iA = ((z5) this).a(null);
            byte[] bArr = new byte[iA];
            q5 q5Var = new q5(bArr, iA);
            z5 z5Var = (z5) this;
            z6 z6Var = z6.f2007c;
            z6Var.getClass();
            b7 b7VarA = z6Var.a(z5Var.getClass());
            o6 o6Var = q5Var.f1833b;
            if (o6Var == null) {
                o6Var = new o6();
                Charset charset = b6.f1534a;
                o6Var.f1792a = q5Var;
                q5Var.f1833b = o6Var;
            }
            b7VarA.h(z5Var, o6Var);
            if (q5Var.i() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e9) {
            throw new RuntimeException(q2.x.g("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e9);
        }
    }
}
