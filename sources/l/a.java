package l;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements e0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CharSequence f3588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CharSequence f3589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Intent f3590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public char f3591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3592e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public char f3593f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3594g;
    public Drawable h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Context f3595i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f3596j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f3597k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f3598l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public PorterDuff.Mode f3599m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f3600n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f3601o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3602p;

    @Override // e0.a
    public final q a() {
        return null;
    }

    @Override // e0.a
    public final e0.a b(q qVar) {
        throw new UnsupportedOperationException();
    }

    public final void c() {
        Drawable drawable = this.h;
        if (drawable != null) {
            if (this.f3600n || this.f3601o) {
                this.h = drawable;
                Drawable drawableMutate = drawable.mutate();
                this.h = drawableMutate;
                if (this.f3600n) {
                    drawableMutate.setTintList(this.f3598l);
                }
                if (this.f3601o) {
                    this.h.setTintMode(this.f3599m);
                }
            }
        }
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // e0.a, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f3594g;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f3593f;
    }

    @Override // e0.a, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f3596j;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.h;
    }

    @Override // e0.a, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f3598l;
    }

    @Override // e0.a, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f3599m;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f3590c;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return R.id.home;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // e0.a, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f3592e;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f3591d;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f3588a;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f3589b;
        return charSequence != null ? charSequence : this.f3588a;
    }

    @Override // e0.a, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f3597k;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f3602p & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f3602p & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f3602p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f3602p & 8) == 0;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c8) {
        this.f3593f = Character.toLowerCase(c8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z5) {
        this.f3602p = (z5 ? 1 : 0) | (this.f3602p & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z5) {
        this.f3602p = (z5 ? 2 : 0) | (this.f3602p & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f3596j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z5) {
        this.f3602p = (z5 ? 16 : 0) | (this.f3602p & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.h = drawable;
        c();
        return this;
    }

    @Override // e0.a, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f3598l = colorStateList;
        this.f3600n = true;
        c();
        return this;
    }

    @Override // e0.a, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f3599m = mode;
        this.f3601o = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f3590c = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c8) {
        this.f3591d = c8;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c8, char c9) {
        this.f3591d = c8;
        this.f3593f = Character.toLowerCase(c9);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f3588a = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f3589b = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f3597k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z5) {
        this.f3602p = (this.f3602p & 8) | (z5 ? 0 : 8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i6) {
        throw new UnsupportedOperationException();
    }

    @Override // e0.a, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c8, int i6) {
        this.f3593f = Character.toLowerCase(c8);
        this.f3594g = KeyEvent.normalizeMetaState(i6);
        return this;
    }

    @Override // e0.a, android.view.MenuItem
    public final e0.a setContentDescription(CharSequence charSequence) {
        this.f3596j = charSequence;
        return this;
    }

    @Override // e0.a, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c8, int i6) {
        this.f3591d = c8;
        this.f3592e = KeyEvent.normalizeMetaState(i6);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i6) {
        this.f3588a = this.f3595i.getResources().getString(i6);
        return this;
    }

    @Override // e0.a, android.view.MenuItem
    public final e0.a setTooltipText(CharSequence charSequence) {
        this.f3597k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i6) {
        this.h = this.f3595i.getDrawable(i6);
        c();
        return this;
    }

    @Override // e0.a, android.view.MenuItem
    public final MenuItem setShortcut(char c8, char c9, int i6, int i9) {
        this.f3591d = c8;
        this.f3592e = KeyEvent.normalizeMetaState(i6);
        this.f3593f = Character.toLowerCase(c9);
        this.f3594g = KeyEvent.normalizeMetaState(i9);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i6) {
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i6) {
        return this;
    }
}
