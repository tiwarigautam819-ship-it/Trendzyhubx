package r7;

import java.io.Closeable;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class w implements Closeable {
    public abstract long a();

    public abstract p c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        s7.b.d(g());
    }

    public abstract e8.i g();

    public final String o() {
        Charset charsetA;
        e8.i iVarG = g();
        try {
            p pVarC = c();
            if (pVarC == null || (charsetA = pVarC.a(k7.a.f3570a)) == null) {
                charsetA = k7.a.f3570a;
            }
            String strQ = iVarG.q(s7.b.r(iVarG, charsetA));
            iVarG.close();
            return strQ;
        } finally {
        }
    }
}
