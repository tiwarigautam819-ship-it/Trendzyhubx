package t4;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements x3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicReference f5315a = new AtomicReference();

    @Override // x3.b
    public final void a(boolean z5) {
        synchronized (g.f5318j) {
            try {
                ArrayList arrayList = new ArrayList(g.f5319k.values());
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    Object obj = arrayList.get(i6);
                    i6++;
                    g gVar = (g) obj;
                    if (gVar.f5324e.get()) {
                        Log.d("FirebaseApp", "Notifying background state change listeners.");
                        Iterator it = gVar.f5327i.iterator();
                        while (it.hasNext()) {
                            g gVar2 = ((d) it.next()).f5314a;
                            if (!z5) {
                                ((e5.d) gVar2.h.get()).c();
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
