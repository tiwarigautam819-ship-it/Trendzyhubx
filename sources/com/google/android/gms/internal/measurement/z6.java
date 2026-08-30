package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class z6 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z6 f2007c = new z6();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o6 f2008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f2009b = new ConcurrentHashMap();

    public z6() {
        r6[] r6VarArr = {a6.f1518b, o6.f1791b};
        o6 o6Var = new o6();
        o6Var.f1792a = r6VarArr;
        o6 o6Var2 = new o6();
        Charset charset = b6.f1534a;
        o6Var2.f1792a = o6Var;
        this.f2008a = o6Var2;
    }

    public final b7 a(Class cls) {
        b7 b7VarK;
        Charset charset = b6.f1534a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f2009b;
        b7 b7Var = (b7) concurrentHashMap.get(cls);
        if (b7Var != null) {
            return b7Var;
        }
        o6 o6Var = this.f2008a;
        o6Var.getClass();
        z5.class.isAssignableFrom(cls);
        a7 a7VarA = ((o6) o6Var.f1792a).a(cls);
        if ((a7VarA.f1523d & 2) == 2) {
            b7VarK = new v6(a7VarA.f1520a);
        } else {
            b7VarK = u6.k(a7VarA, p6.f1809a[androidx.fragment.app.m1.e(a7VarA.a())] != 1 ? q0.f1818a : null);
        }
        b7 b7Var2 = (b7) concurrentHashMap.putIfAbsent(cls, b7VarK);
        return b7Var2 != null ? b7Var2 : b7VarK;
    }
}
