package l;

import android.view.MenuItem;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t implements MenuItem.OnMenuItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MenuItem.OnMenuItemClickListener f3726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f3727b;

    public t(u uVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f3727b = uVar;
        this.f3726a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.f3726a.onMenuItemClick(this.f3727b.f(menuItem));
    }
}
