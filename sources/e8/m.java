package e8;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q f2461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Inflater f2462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2464d;

    public m(q qVar, Inflater inflater) {
        this.f2461a = qVar;
        this.f2462b = inflater;
    }

    @Override // e8.w
    public final y b() {
        return this.f2461a.f2471a.b();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f2464d) {
            return;
        }
        this.f2462b.end();
        this.f2464d = true;
        this.f2461a.close();
    }

    @Override // e8.w
    public final long h(long j3, g gVar) throws IOException {
        long j8;
        Inflater inflater = this.f2462b;
        d7.g.f("sink", gVar);
        while (!this.f2464d) {
            try {
                r rVarV = gVar.v(1);
                int iMin = (int) Math.min(8192L, 8192 - rVarV.f2476c);
                boolean zNeedsInput = inflater.needsInput();
                q qVar = this.f2461a;
                if (zNeedsInput && !qVar.a()) {
                    r rVar = qVar.f2472b.f2449a;
                    d7.g.c(rVar);
                    int i6 = rVar.f2476c;
                    int i9 = rVar.f2475b;
                    int i10 = i6 - i9;
                    this.f2463c = i10;
                    inflater.setInput(rVar.f2474a, i9, i10);
                }
                int iInflate = inflater.inflate(rVarV.f2474a, rVarV.f2476c, iMin);
                int i11 = this.f2463c;
                if (i11 != 0) {
                    int remaining = i11 - inflater.getRemaining();
                    this.f2463c -= remaining;
                    qVar.skip(remaining);
                }
                if (iInflate > 0) {
                    rVarV.f2476c += iInflate;
                    j8 = iInflate;
                    gVar.f2450b += j8;
                } else {
                    if (rVarV.f2475b == rVarV.f2476c) {
                        gVar.f2449a = rVarV.a();
                        s.a(rVarV);
                    }
                    j8 = 0;
                }
                if (j8 > 0) {
                    return j8;
                }
                if (inflater.finished() || inflater.needsDictionary()) {
                    return -1L;
                }
                if (qVar.a()) {
                    throw new EOFException("source exhausted prematurely");
                }
            } catch (DataFormatException e9) {
                throw new IOException(e9);
            }
        }
        throw new IllegalStateException("closed");
    }
}
