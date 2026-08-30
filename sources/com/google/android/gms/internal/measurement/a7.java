package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i5 f1520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f1522c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1523d;

    public a7(i5 i5Var, String str, Object[] objArr) {
        this.f1520a = i5Var;
        this.f1521b = str;
        this.f1522c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f1523d = cCharAt;
            return;
        }
        int i6 = cCharAt & 8191;
        int i9 = 13;
        int i10 = 1;
        while (true) {
            int i11 = i10 + 1;
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 < 55296) {
                this.f1523d = i6 | (cCharAt2 << i9);
                return;
            } else {
                i6 |= (cCharAt2 & 8191) << i9;
                i9 += 13;
                i10 = i11;
            }
        }
    }

    public final int a() {
        int i6 = this.f1523d;
        if ((i6 & 1) != 0) {
            return 1;
        }
        return (i6 & 4) == 4 ? 3 : 2;
    }
}
