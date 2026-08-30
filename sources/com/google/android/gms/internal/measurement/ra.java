package com.google.android.gms.internal.measurement;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class ra {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ra f1889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ra f1890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ra f1891c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ra f1892d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ra f1893e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ ra[] f1894f;

    static {
        ra raVar = new ra("DEBUG", 0);
        f1889a = raVar;
        ra raVar2 = new ra("ERROR", 1);
        f1890b = raVar2;
        ra raVar3 = new ra("INFO", 2);
        f1891c = raVar3;
        ra raVar4 = new ra("VERBOSE", 3);
        f1892d = raVar4;
        ra raVar5 = new ra("WARN", 4);
        f1893e = raVar5;
        f1894f = new ra[]{raVar, raVar2, raVar3, raVar4, raVar5};
    }

    public static ra[] values() {
        return (ra[]) f1894f.clone();
    }
}
