package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o5 extends p5 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1790f;

    public o5(byte[] bArr, int i6, int i9) {
        super(bArr);
        p5.b(i6, i6 + i9, bArr.length);
        this.f1789e = i6;
        this.f1790f = i9;
    }

    @Override // com.google.android.gms.internal.measurement.p5
    public final byte a(int i6) {
        int i9 = this.f1790f;
        if (((i9 - (i6 + 1)) | i6) >= 0) {
            return this.f1808b[this.f1789e + i6];
        }
        if (i6 < 0) {
            throw new ArrayIndexOutOfBoundsException(a1.a.i(i6, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(q2.x.e(i6, i9, "Index > length: ", ", "));
    }

    @Override // com.google.android.gms.internal.measurement.p5
    public final byte d(int i6) {
        return this.f1808b[this.f1789e + i6];
    }

    @Override // com.google.android.gms.internal.measurement.p5
    public final int e() {
        return this.f1790f;
    }

    @Override // com.google.android.gms.internal.measurement.p5
    public final int f() {
        return this.f1789e;
    }
}
