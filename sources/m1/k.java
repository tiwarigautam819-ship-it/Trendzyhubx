package m1;

import android.util.Log;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InputStream f4235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileOutputStream f4236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d f4237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.fragment.app.e f4238d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f4240f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4241g = false;
    public boolean h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4242i = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f4239e = 52428800;

    public k(InputStream inputStream, FileOutputStream fileOutputStream, d dVar, androidx.fragment.app.e eVar) {
        this.f4235a = inputStream;
        this.f4236b = fileOutputStream;
        this.f4237c = dVar;
        this.f4238d = eVar;
    }

    public final void a() {
        FileOutputStream fileOutputStream = this.f4236b;
        if (this.f4241g) {
            return;
        }
        this.f4241g = true;
        try {
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Throwable unused) {
        }
        if (this.h) {
            return;
        }
        try {
            this.f4237c.run();
        } catch (Throwable th) {
            Log.w("TeeInputStream", "onComplete failed", th);
        }
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f4235a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f4242i) {
            return;
        }
        this.f4242i = true;
        try {
            this.f4235a.close();
        } catch (Throwable unused) {
        }
        try {
            this.f4236b.close();
        } catch (Throwable unused2) {
        }
        if (!this.f4241g || this.h) {
            try {
                this.f4238d.run();
            } catch (Throwable th) {
                Log.w("TeeInputStream", "onAbort failed", th);
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        int i6 = this.f4235a.read();
        if (i6 == -1) {
            a();
            return -1;
        }
        long j3 = this.f4240f + 1;
        this.f4240f = j3;
        if (j3 > this.f4239e) {
            this.h = true;
            Log.w("TeeInputStream", "exceeded max bytes, abort tee");
            return -1;
        }
        try {
            this.f4236b.write(i6);
            return i6;
        } catch (IOException e9) {
            this.h = true;
            throw e9;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i6, int i9) throws IOException {
        int i10 = this.f4235a.read(bArr, i6, i9);
        if (i10 == -1) {
            a();
            return -1;
        }
        if (i10 <= 0) {
            return i10;
        }
        long j3 = this.f4240f + ((long) i10);
        this.f4240f = j3;
        if (j3 > this.f4239e) {
            this.h = true;
            Log.w("TeeInputStream", "exceeded max bytes, abort tee");
            return -1;
        }
        try {
            this.f4236b.write(bArr, i6, i10);
            return i10;
        } catch (IOException e9) {
            this.h = true;
            throw e9;
        }
    }
}
