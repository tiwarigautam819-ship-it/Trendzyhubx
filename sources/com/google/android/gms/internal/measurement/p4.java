package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class p4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static q4 f1803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f1804b = {1, 2, 3, 4, 5, 6, 7};

    public static double a(double d6) {
        if (Double.isNaN(d6)) {
            return 0.0d;
        }
        if (Double.isInfinite(d6) || d6 == 0.0d || d6 == -0.0d) {
            return d6;
        }
        return Math.floor(Math.abs(d6)) * ((double) (d6 > 0.0d ? 1 : -1));
    }

    public static int b(int i6) {
        return (-(i6 & 1)) ^ (i6 >>> 1);
    }

    public static long c(long j3) {
        return (-(j3 & 1)) ^ (j3 >>> 1);
    }

    public static f0 d(String str) {
        f0 f0Var;
        if (str == null || str.isEmpty()) {
            f0Var = null;
        } else {
            f0Var = (f0) f0.f1619t0.get(Integer.valueOf(Integer.parseInt(str)));
        }
        if (f0Var != null) {
            return f0Var;
        }
        throw new IllegalArgumentException(q2.x.k("Unsupported commandId ", str));
    }

    public static Object e(n nVar) {
        if (n.f1744o.equals(nVar)) {
            return null;
        }
        if (n.f1743n.equals(nVar)) {
            return "";
        }
        if (nVar instanceof m) {
            return f((m) nVar);
        }
        if (!(nVar instanceof e)) {
            return !nVar.c().isNaN() ? nVar.c() : nVar.zzf();
        }
        ArrayList arrayList = new ArrayList();
        e eVar = (e) nVar;
        int i6 = 0;
        while (i6 < eVar.g()) {
            if (i6 >= eVar.g()) {
                throw new NoSuchElementException(a1.a.i(i6, "Out of bounds index: "));
            }
            int i9 = i6 + 1;
            Object objE = e(eVar.e(i6));
            if (objE != null) {
                arrayList.add(objE);
            }
            i6 = i9;
        }
        return arrayList;
    }

    public static HashMap f(m mVar) {
        HashMap map = new HashMap();
        mVar.getClass();
        ArrayList arrayList = new ArrayList(mVar.f1723a.keySet());
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            String str = (String) obj;
            Object objE = e(mVar.zza(str));
            if (objE != null) {
                map.put(str, objE);
            }
        }
        return map;
    }

    public static void g(int i6, String str, List list) {
        if (list.size() == i6) {
            return;
        }
        throw new IllegalArgumentException(str + " operation requires " + i6 + " parameters found " + list.size());
    }

    public static void h(f0 f0Var, int i6, List list) {
        g(i6, f0Var.name(), list);
    }

    public static synchronized void i(q4 q4Var) {
        if (f1803a != null) {
            throw new IllegalStateException("init() already called");
        }
        f1803a = q4Var;
    }

    public static void j(com.google.firebase.messaging.y yVar) {
        int iM = m(yVar.I("runtime.counter").c().doubleValue() + 1.0d);
        if (iM > 1000000) {
            throw new IllegalStateException("Instructions allowed exceeded");
        }
        yVar.M("runtime.counter", new g(Double.valueOf(iM)));
    }

    public static boolean k(byte b3) {
        return b3 > -65;
    }

    public static boolean l(n nVar, n nVar2) {
        if (!nVar.getClass().equals(nVar2.getClass())) {
            return false;
        }
        if ((nVar instanceof t) || (nVar instanceof l)) {
            return true;
        }
        if (!(nVar instanceof g)) {
            return nVar instanceof p ? nVar.zzf().equals(nVar2.zzf()) : nVar instanceof f ? nVar.zzd().equals(nVar2.zzd()) : nVar == nVar2;
        }
        if (Double.isNaN(nVar.c().doubleValue()) || Double.isNaN(nVar2.c().doubleValue())) {
            return false;
        }
        return nVar.c().equals(nVar2.c());
    }

    public static int m(double d6) {
        if (Double.isNaN(d6) || Double.isInfinite(d6) || d6 == 0.0d) {
            return 0;
        }
        return (int) ((Math.floor(Math.abs(d6)) * ((double) (d6 > 0.0d ? 1 : -1))) % 4.294967296E9d);
    }

    public static void n(int i6, String str, List list) {
        if (list.size() >= i6) {
            return;
        }
        throw new IllegalArgumentException(str + " operation requires at least " + i6 + " parameters found " + list.size());
    }

    public static void o(f0 f0Var, int i6, List list) {
        n(i6, f0Var.name(), list);
    }

    public static boolean p(n nVar) {
        if (nVar == null) {
            return false;
        }
        Double dC = nVar.c();
        return !dC.isNaN() && dC.doubleValue() >= 0.0d && dC.equals(Double.valueOf(Math.floor(dC.doubleValue())));
    }

    public static void q(String str, int i6, ArrayList arrayList) {
        if (arrayList.size() <= i6) {
            return;
        }
        throw new IllegalArgumentException(str + " operation requires at most " + i6 + " parameters found " + arrayList.size());
    }
}
