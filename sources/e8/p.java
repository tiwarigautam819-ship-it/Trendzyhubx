package e8;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f2468a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f2469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2470c;

    public p(u uVar) {
        d7.g.f("sink", uVar);
        this.f2468a = uVar;
        this.f2469b = new g();
    }

    public final h a() {
        if (this.f2470c) {
            throw new IllegalStateException("closed");
        }
        g gVar = this.f2469b;
        long j3 = gVar.f2450b;
        if (j3 == 0) {
            j3 = 0;
        } else {
            r rVar = gVar.f2449a;
            d7.g.c(rVar);
            r rVar2 = rVar.f2480g;
            d7.g.c(rVar2);
            int i6 = rVar2.f2476c;
            if (i6 < 8192 && rVar2.f2478e) {
                j3 -= (long) (i6 - rVar2.f2475b);
            }
        }
        if (j3 > 0) {
            this.f2468a.n(j3, gVar);
        }
        return this;
    }

    @Override // e8.u
    public final y b() {
        return this.f2468a.b();
    }

    @Override // e8.u, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        u uVar = this.f2468a;
        if (this.f2470c) {
            return;
        }
        try {
            g gVar = this.f2469b;
            long j3 = gVar.f2450b;
            if (j3 > 0) {
                uVar.n(j3, gVar);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            uVar.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f2470c = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // e8.h
    public final h d(long j3) {
        if (this.f2470c) {
            throw new IllegalStateException("closed");
        }
        this.f2469b.A(j3);
        a();
        return this;
    }

    @Override // e8.h, e8.u, java.io.Flushable
    public final void flush() {
        if (this.f2470c) {
            throw new IllegalStateException("closed");
        }
        g gVar = this.f2469b;
        long j3 = gVar.f2450b;
        u uVar = this.f2468a;
        if (j3 > 0) {
            uVar.n(j3, gVar);
        }
        uVar.flush();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f2470c;
    }

    @Override // e8.h
    public final h j(j jVar) {
        d7.g.f("byteString", jVar);
        if (this.f2470c) {
            throw new IllegalStateException("closed");
        }
        this.f2469b.w(jVar);
        a();
        return this;
    }

    @Override // e8.h
    public final h m(String str) {
        d7.g.f("string", str);
        if (this.f2470c) {
            throw new IllegalStateException("closed");
        }
        this.f2469b.E(str);
        a();
        return this;
    }

    @Override // e8.u
    public final void n(long j3, g gVar) {
        d7.g.f(FirebaseAnalytics.Param.SOURCE, gVar);
        if (this.f2470c) {
            throw new IllegalStateException("closed");
        }
        this.f2469b.n(j3, gVar);
        a();
    }

    public final String toString() {
        return "buffer(" + this.f2468a + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        d7.g.f(FirebaseAnalytics.Param.SOURCE, byteBuffer);
        if (this.f2470c) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.f2469b.write(byteBuffer);
        a();
        return iWrite;
    }

    @Override // e8.h
    public final h writeByte(int i6) {
        if (this.f2470c) {
            throw new IllegalStateException("closed");
        }
        this.f2469b.z(i6);
        a();
        return this;
    }

    @Override // e8.h
    public final h writeInt(int i6) {
        if (this.f2470c) {
            throw new IllegalStateException("closed");
        }
        this.f2469b.B(i6);
        a();
        return this;
    }

    @Override // e8.h
    public final h writeShort(int i6) {
        if (this.f2470c) {
            throw new IllegalStateException("closed");
        }
        this.f2469b.C(i6);
        a();
        return this;
    }

    @Override // e8.h
    public final h write(byte[] bArr) {
        if (!this.f2470c) {
            this.f2469b.x(bArr, bArr.length);
            a();
            return this;
        }
        throw new IllegalStateException("closed");
    }
}
