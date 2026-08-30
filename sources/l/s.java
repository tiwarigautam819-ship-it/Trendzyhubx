package l;

import android.view.MenuItem;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s implements MenuItem.OnActionExpandListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MenuItem.OnActionExpandListener f3724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f3725b;

    public s(u uVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f3725b = uVar;
        this.f3724a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f3724a.onMenuItemActionCollapse(this.f3725b.f(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f3724a.onMenuItemActionExpand(this.f3725b.f(menuItem));
    }
}
