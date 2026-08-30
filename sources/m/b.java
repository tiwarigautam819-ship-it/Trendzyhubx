package m;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f3910b;

    public /* synthetic */ b(ActionBarOverlayLayout actionBarOverlayLayout, int i6) {
        this.f3909a = i6;
        this.f3910b = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3909a) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = this.f3910b;
                actionBarOverlayLayout.h();
                actionBarOverlayLayout.E = actionBarOverlayLayout.f212d.animate().translationY(0.0f).setListener(actionBarOverlayLayout.F);
                break;
            default:
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.f3910b;
                actionBarOverlayLayout2.h();
                actionBarOverlayLayout2.E = actionBarOverlayLayout2.f212d.animate().translationY(-actionBarOverlayLayout2.f212d.getHeight()).setListener(actionBarOverlayLayout2.F);
                break;
        }
    }
}
