package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j1 extends Writer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringBuilder f564b = new StringBuilder(128);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f563a = "FragmentManager";

    public final void a() {
        StringBuilder sb = this.f564b;
        if (sb.length() > 0) {
            Log.d(this.f563a, sb.toString());
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        a();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i6, int i9) {
        for (int i10 = 0; i10 < i9; i10++) {
            char c8 = cArr[i6 + i10];
            if (c8 == '\n') {
                a();
            } else {
                this.f564b.append(c8);
            }
        }
    }
}
