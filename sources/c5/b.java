package c5;

import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends OutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f1046a;

    @Override // java.io.OutputStream
    public final void write(int i6) {
        this.f1046a++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f1046a += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i6, int i9) {
        int i10;
        if (i6 >= 0 && i6 <= bArr.length && i9 >= 0 && (i10 = i6 + i9) <= bArr.length && i10 >= 0) {
            this.f1046a += (long) i9;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
