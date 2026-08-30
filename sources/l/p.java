package l;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p implements e0.a {
    public q A;
    public MenuItem.OnActionExpandListener B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3697b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3698c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3699d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f3700e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CharSequence f3701f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Intent f3702g;
    public char h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public char f3704j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Drawable f3706l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final n f3708n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public f0 f3709o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f3710p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f3711q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public CharSequence f3712r;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f3719y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public View f3720z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3703i = 4096;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3705k = 4096;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3707m = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ColorStateList f3713s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public PorterDuff.Mode f3714t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f3715u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f3716v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f3717w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f3718x = 16;
    public boolean C = false;

    public p(n nVar, int i6, int i9, int i10, int i11, CharSequence charSequence, int i12) {
        this.f3708n = nVar;
        this.f3696a = i9;
        this.f3697b = i6;
        this.f3698c = i10;
        this.f3699d = i11;
        this.f3700e = charSequence;
        this.f3719y = i12;
    }

    public static void c(int i6, int i9, String str, StringBuilder sb) {
        if ((i6 & i9) == i9) {
            sb.append(str);
        }
    }

    @Override // e0.a
    public final q a() {
        return this.A;
    }

    @Override // e0.a
    public final e0.a b(q qVar) {
        this.f3720z = null;
        this.A = qVar;
        this.f3708n.p(true);
        q qVar2 = this.A;
        if (qVar2 != null) {
            qVar2.f3721a = new o5.c(16, this);
            qVar2.f3722b.setVisibilityListener(qVar2);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f3719y & 8) == 0) {
            return false;
        }
        if (this.f3720z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f3708n.d(this);
        }
        return false;
    }

    public final Drawable d(Drawable drawable) {
        if (drawable != null && this.f3717w && (this.f3715u || this.f3716v)) {
            drawable = drawable.mutate();
            if (this.f3715u) {
                drawable.setTintList(this.f3713s);
            }
            if (this.f3716v) {
                drawable.setTintMode(this.f3714t);
            }
            this.f3717w = false;
        }
        return drawable;
    }

    public final boolean e() {
        q qVar;
        if ((this.f3719y & 8) != 0) {
            if (this.f3720z == null && (qVar = this.A) != null) {
                this.f3720z = qVar.f3722b.onCreateActionView(this);
            }
            if (this.f3720z != null) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        if (!e()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f3708n.f(this);
        }
        return false;
    }

    public final void f(boolean z5) {
        if (z5) {
            this.f3718x |= 32;
        } else {
            this.f3718x &= -33;
        }
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View view = this.f3720z;
        if (view != null) {
            return view;
        }
        q qVar = this.A;
        if (qVar == null) {
            return null;
        }
        View viewOnCreateActionView = qVar.f3722b.onCreateActionView(this);
        this.f3720z = viewOnCreateActionView;
        return viewOnCreateActionView;
    }

    @Override // e0.a, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f3705k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f3704j;
    }

    @Override // e0.a, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f3711q;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f3697b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f3706l;
        if (drawable != null) {
            return d(drawable);
        }
        int i6 = this.f3707m;
        if (i6 == 0) {
            return null;
        }
        Drawable drawableJ = z7.l.j(this.f3708n.f3670a, i6);
        this.f3707m = 0;
        this.f3706l = drawableJ;
        return d(drawableJ);
    }

    @Override // e0.a, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f3713s;
    }

    @Override // e0.a, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f3714t;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f3702g;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f3696a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // e0.a, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f3703i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f3698c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f3709o;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f3700e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f3701f;
        return charSequence != null ? charSequence : this.f3700e;
    }

    @Override // e0.a, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f3712r;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f3709o != null;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.C;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f3718x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f3718x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f3718x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        q qVar = this.A;
        return (qVar == null || !qVar.f3722b.overridesItemVisibility()) ? (this.f3718x & 8) == 0 : (this.f3718x & 8) == 0 && this.A.f3722b.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i6;
        this.f3720z = view;
        this.A = null;
        if (view != null && view.getId() == -1 && (i6 = this.f3696a) > 0) {
            view.setId(i6);
        }
        n nVar = this.f3708n;
        nVar.f3679k = true;
        nVar.p(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c8) {
        if (this.f3704j == c8) {
            return this;
        }
        this.f3704j = Character.toLowerCase(c8);
        this.f3708n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z5) {
        int i6 = this.f3718x;
        int i9 = (z5 ? 1 : 0) | (i6 & (-2));
        this.f3718x = i9;
        if (i6 != i9) {
            this.f3708n.p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z5) {
        int i6 = this.f3718x;
        int i9 = i6 & 4;
        n nVar = this.f3708n;
        if (i9 == 0) {
            int i10 = (i6 & (-3)) | (z5 ? 2 : 0);
            this.f3718x = i10;
            if (i6 != i10) {
                nVar.p(false);
            }
            return this;
        }
        ArrayList arrayList = nVar.f3675f;
        int size = arrayList.size();
        nVar.w();
        for (int i11 = 0; i11 < size; i11++) {
            p pVar = (p) arrayList.get(i11);
            if (pVar.f3697b == this.f3697b && (pVar.f3718x & 4) != 0 && pVar.isCheckable()) {
                boolean z8 = pVar == this;
                int i12 = pVar.f3718x;
                int i13 = (z8 ? 2 : 0) | (i12 & (-3));
                pVar.f3718x = i13;
                if (i12 != i13) {
                    pVar.f3708n.p(false);
                }
            }
        }
        nVar.v();
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z5) {
        if (z5) {
            this.f3718x |= 16;
        } else {
            this.f3718x &= -17;
        }
        this.f3708n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f3707m = 0;
        this.f3706l = drawable;
        this.f3717w = true;
        this.f3708n.p(false);
        return this;
    }

    @Override // e0.a, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f3713s = colorStateList;
        this.f3715u = true;
        this.f3717w = true;
        this.f3708n.p(false);
        return this;
    }

    @Override // e0.a, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f3714t = mode;
        this.f3716v = true;
        this.f3717w = true;
        this.f3708n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f3702g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c8) {
        if (this.h == c8) {
            return this;
        }
        this.h = c8;
        this.f3708n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f3710p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c8, char c9) {
        this.h = c8;
        this.f3704j = Character.toLowerCase(c9);
        this.f3708n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i6) {
        int i9 = i6 & 3;
        if (i9 != 0 && i9 != 1 && i9 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f3719y = i6;
        n nVar = this.f3708n;
        nVar.f3679k = true;
        nVar.p(true);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i6) {
        setShowAsAction(i6);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f3700e = charSequence;
        this.f3708n.p(false);
        f0 f0Var = this.f3709o;
        if (f0Var != null) {
            f0Var.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f3701f = charSequence;
        this.f3708n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z5) {
        int i6 = this.f3718x;
        int i9 = (z5 ? 0 : 8) | (i6 & (-9));
        this.f3718x = i9;
        if (i6 != i9) {
            n nVar = this.f3708n;
            nVar.h = true;
            nVar.p(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f3700e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // e0.a, android.view.MenuItem
    public final e0.a setContentDescription(CharSequence charSequence) {
        this.f3711q = charSequence;
        this.f3708n.p(false);
        return this;
    }

    @Override // e0.a, android.view.MenuItem
    public final e0.a setTooltipText(CharSequence charSequence) {
        this.f3712r = charSequence;
        this.f3708n.p(false);
        return this;
    }

    @Override // e0.a, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c8, int i6) {
        if (this.f3704j == c8 && this.f3705k == i6) {
            return this;
        }
        this.f3704j = Character.toLowerCase(c8);
        this.f3705k = KeyEvent.normalizeMetaState(i6);
        this.f3708n.p(false);
        return this;
    }

    @Override // e0.a, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c8, int i6) {
        if (this.h == c8 && this.f3703i == i6) {
            return this;
        }
        this.h = c8;
        this.f3703i = KeyEvent.normalizeMetaState(i6);
        this.f3708n.p(false);
        return this;
    }

    @Override // e0.a, android.view.MenuItem
    public final MenuItem setShortcut(char c8, char c9, int i6, int i9) {
        this.h = c8;
        this.f3703i = KeyEvent.normalizeMetaState(i6);
        this.f3704j = Character.toLowerCase(c9);
        this.f3705k = KeyEvent.normalizeMetaState(i9);
        this.f3708n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i6) {
        this.f3706l = null;
        this.f3707m = i6;
        this.f3717w = true;
        this.f3708n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i6) {
        setTitle(this.f3708n.f3670a.getString(i6));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i6) {
        int i9;
        n nVar = this.f3708n;
        Context context = nVar.f3670a;
        View viewInflate = LayoutInflater.from(context).inflate(i6, (ViewGroup) new LinearLayout(context), false);
        this.f3720z = viewInflate;
        this.A = null;
        if (viewInflate != null && viewInflate.getId() == -1 && (i9 = this.f3696a) > 0) {
            viewInflate.setId(i9);
        }
        nVar.f3679k = true;
        nVar.p(true);
        return this;
    }
}
