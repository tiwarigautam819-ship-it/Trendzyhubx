package m;

import androidx.appcompat.widget.SearchView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j2 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4003a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchView f4004b;

    public /* synthetic */ j2(SearchView searchView, int i6) {
        this.f4003a = i6;
        this.f4004b = searchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4003a) {
            case 0:
                this.f4004b.r();
                break;
            default:
                n0.a aVar = this.f4004b.W;
                if (aVar instanceof u2) {
                    aVar.b(null);
                }
                break;
        }
    }
}
