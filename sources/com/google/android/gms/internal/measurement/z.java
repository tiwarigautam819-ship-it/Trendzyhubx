package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f2000a;

    static {
        int[] iArr = new int[f0.values().length];
        f2000a = iArr;
        try {
            iArr[f0.AND.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f2000a[f0.NOT.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f2000a[f0.OR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
