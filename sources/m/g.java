package m;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f3962a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.appcompat.widget.a f3963b;

    public g(androidx.appcompat.widget.a aVar, e eVar) {
        this.f3963b = aVar;
        this.f3962a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l.l lVar;
        androidx.appcompat.widget.a aVar = this.f3963b;
        l.n nVar = aVar.f3608c;
        if (nVar != null && (lVar = nVar.f3674e) != null) {
            lVar.h(nVar);
        }
        View view = (View) aVar.h;
        if (view != null && view.getWindowToken() != null) {
            e eVar = this.f3962a;
            if (eVar.b()) {
                aVar.A = eVar;
            } else if (eVar.f3736e != null) {
                eVar.d(0, 0, false, false);
                aVar.A = eVar;
            }
        }
        aVar.C = null;
    }
}
