package l;

import android.view.ActionProvider;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements ActionProvider.VisibilityListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o5.c f3721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ActionProvider f3722b;

    public q(u uVar, ActionProvider actionProvider) {
        this.f3722b = actionProvider;
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z5) {
        o5.c cVar = this.f3721a;
        if (cVar != null) {
            n nVar = ((p) cVar.f4446b).f3708n;
            nVar.h = true;
            nVar.p(true);
        }
    }
}
