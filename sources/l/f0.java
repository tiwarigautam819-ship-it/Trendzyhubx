package l;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f0 extends n implements SubMenu {
    public final p A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final n f3635z;

    public f0(Context context, n nVar, p pVar) {
        super(context);
        this.f3635z = nVar;
        this.A = pVar;
    }

    @Override // l.n
    public final boolean d(p pVar) {
        return this.f3635z.d(pVar);
    }

    @Override // l.n
    public final boolean e(n nVar, MenuItem menuItem) {
        return super.e(nVar, menuItem) || this.f3635z.e(nVar, menuItem);
    }

    @Override // l.n
    public final boolean f(p pVar) {
        return this.f3635z.f(pVar);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.A;
    }

    @Override // l.n
    public final String j() {
        p pVar = this.A;
        int i6 = pVar != null ? pVar.f3696a : 0;
        if (i6 == 0) {
            return null;
        }
        return a1.a.i(i6, "android:menu:actionviewstates:");
    }

    @Override // l.n
    public final n k() {
        return this.f3635z.k();
    }

    @Override // l.n
    public final boolean m() {
        return this.f3635z.m();
    }

    @Override // l.n
    public final boolean n() {
        return this.f3635z.n();
    }

    @Override // l.n
    public final boolean o() {
        return this.f3635z.o();
    }

    @Override // l.n, android.view.Menu
    public final void setGroupDividerEnabled(boolean z5) {
        this.f3635z.setGroupDividerEnabled(z5);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.A.setIcon(drawable);
        return this;
    }

    @Override // l.n, android.view.Menu
    public final void setQwertyMode(boolean z5) {
        this.f3635z.setQwertyMode(z5);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i6) {
        u(0, null, i6, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i6) {
        u(i6, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i6) {
        this.A.setIcon(i6);
        return this;
    }
}
