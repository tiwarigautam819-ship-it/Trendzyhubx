package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t9 implements q9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e5 f1914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e5 f1915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e5 f1916c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e5 f1917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e5 f1918e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final e5 f1919f;

    static {
        f5 f5Var = new f5(c5.a("com.google.android.gms.measurement"), "", "", true, true);
        f1914a = f5Var.c("measurement.test.boolean_flag", false);
        f1915b = f5Var.a("measurement.test.cached_long_flag", -1L);
        Double dValueOf = Double.valueOf(-3.0d);
        Object obj = e5.f1577g;
        f1916c = new e5(f5Var, "measurement.test.double_flag", dValueOf, 1);
        f1917d = f5Var.a("measurement.test.int_flag", -2L);
        f1918e = f5Var.a("measurement.test.long_flag", -1L);
        f1919f = f5Var.b("measurement.test.string_flag", "---");
    }
}
