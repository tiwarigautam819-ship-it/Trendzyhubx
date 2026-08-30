package p0;

import android.os.Trace;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        try {
            int i6 = f0.j.f2525a;
            Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
            if (k.f4586k != null) {
                k.a().c();
            }
            Trace.endSection();
        } catch (Throwable th) {
            int i9 = f0.j.f2525a;
            Trace.endSection();
            throw th;
        }
    }
}
