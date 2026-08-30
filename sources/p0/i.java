package p0;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4582a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4584c;

    public i(x3.j jVar, int i6) {
        this.f4584c = jVar;
        this.f4583b = i6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4582a) {
            case 0:
                ArrayList arrayList = (ArrayList) this.f4584c;
                int size = arrayList.size();
                int i6 = 0;
                if (this.f4583b == 1) {
                    while (i6 < size) {
                        ((h) arrayList.get(i6)).a();
                        i6++;
                    }
                } else {
                    while (i6 < size) {
                        ((h) arrayList.get(i6)).getClass();
                        i6++;
                    }
                }
                break;
            default:
                ((x3.j) this.f4584c).g(this.f4583b);
                break;
        }
    }

    public i(List list, int i6, Throwable th) {
        b2.k.b("initCallbacks cannot be null", list);
        this.f4584c = new ArrayList(list);
        this.f4583b = i6;
    }
}
