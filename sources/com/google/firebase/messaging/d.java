package com.google.firebase.messaging;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f2067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f2068b;

    public d(InputStream inputStream) {
        super(inputStream);
        this.f2068b = -1L;
        this.f2067a = 1048577L;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        return (int) Math.min(((FilterInputStream) this).in.available(), this.f2067a);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i6) {
        ((FilterInputStream) this).in.mark(i6);
        this.f2068b = this.f2067a;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (this.f2067a == 0) {
            return -1;
        }
        int i6 = ((FilterInputStream) this).in.read();
        if (i6 != -1) {
            this.f2067a--;
        }
        return i6;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.f2068b == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.f2067a = this.f2068b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j3) throws IOException {
        long jSkip = ((FilterInputStream) this).in.skip(Math.min(j3, this.f2067a));
        this.f2067a -= jSkip;
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i6, int i9) throws IOException {
        long j3 = this.f2067a;
        if (j3 == 0) {
            return -1;
        }
        int i10 = ((FilterInputStream) this).in.read(bArr, i6, (int) Math.min(i9, j3));
        if (i10 != -1) {
            this.f2067a -= (long) i10;
        }
        return i10;
    }
}
