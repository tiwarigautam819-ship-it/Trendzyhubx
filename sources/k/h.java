package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.lang.reflect.Constructor;
import l.p;
import l.q;
import l.u;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h {
    public CharSequence A;
    public CharSequence B;
    public final /* synthetic */ i E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Menu f3441a;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3448i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f3449j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f3450k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CharSequence f3451l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3452m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public char f3453n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3454o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public char f3455p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3456q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3457r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f3458s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f3459t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f3460u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f3461v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f3462w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f3463x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f3464y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public q f3465z;
    public ColorStateList C = null;
    public PorterDuff.Mode D = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3442b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3443c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3444d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3445e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3446f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3447g = true;

    public h(i iVar, Menu menu) {
        this.E = iVar;
        this.f3441a = menu;
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.E.f3470c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e9) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e9);
            return null;
        }
    }

    public final void b(MenuItem menuItem) {
        i iVar = this.E;
        Context context = iVar.f3470c;
        boolean z5 = false;
        menuItem.setChecked(this.f3458s).setVisible(this.f3459t).setEnabled(this.f3460u).setCheckable(this.f3457r >= 1).setTitleCondensed(this.f3451l).setIcon(this.f3452m);
        int i6 = this.f3461v;
        if (i6 >= 0) {
            menuItem.setShowAsAction(i6);
        }
        if (this.f3464y != null) {
            if (context.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (iVar.f3471d == null) {
                iVar.f3471d = i.a(context);
            }
            Object obj = iVar.f3471d;
            String str = this.f3464y;
            g gVar = new g();
            gVar.f3439a = obj;
            Class<?> cls = obj.getClass();
            try {
                gVar.f3440b = cls.getMethod(str, g.f3438c);
                menuItem.setOnMenuItemClickListener(gVar);
            } catch (Exception e9) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e9);
                throw inflateException;
            }
        }
        if (this.f3457r >= 2) {
            if (menuItem instanceof p) {
                p pVar = (p) menuItem;
                pVar.f3718x = (pVar.f3718x & (-5)) | 4;
            } else if (menuItem instanceof u) {
                u uVar = (u) menuItem;
                e0.a aVar = uVar.f3728c;
                try {
                    if (uVar.f3729d == null) {
                        uVar.f3729d = aVar.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    uVar.f3729d.invoke(aVar, Boolean.TRUE);
                } catch (Exception e10) {
                    Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e10);
                }
            }
        }
        String str2 = this.f3463x;
        if (str2 != null) {
            menuItem.setActionView((View) a(str2, i.f3466e, iVar.f3468a));
            z5 = true;
        }
        int i9 = this.f3462w;
        if (i9 > 0) {
            if (z5) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            } else {
                menuItem.setActionView(i9);
            }
        }
        q qVar = this.f3465z;
        if (qVar != null) {
            if (menuItem instanceof e0.a) {
                ((e0.a) menuItem).b(qVar);
            } else {
                Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
            }
        }
        CharSequence charSequence = this.A;
        boolean z8 = menuItem instanceof e0.a;
        if (z8) {
            ((e0.a) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            d0.a.c(menuItem, charSequence);
        }
        CharSequence charSequence2 = this.B;
        if (z8) {
            ((e0.a) menuItem).setTooltipText(charSequence2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            d0.a.g(menuItem, charSequence2);
        }
        char c8 = this.f3453n;
        int i10 = this.f3454o;
        if (z8) {
            ((e0.a) menuItem).setAlphabeticShortcut(c8, i10);
        } else if (Build.VERSION.SDK_INT >= 26) {
            d0.a.b(menuItem, c8, i10);
        }
        char c9 = this.f3455p;
        int i11 = this.f3456q;
        if (z8) {
            ((e0.a) menuItem).setNumericShortcut(c9, i11);
        } else if (Build.VERSION.SDK_INT >= 26) {
            d0.a.f(menuItem, c9, i11);
        }
        PorterDuff.Mode mode = this.D;
        if (mode != null) {
            if (z8) {
                ((e0.a) menuItem).setIconTintMode(mode);
            } else if (Build.VERSION.SDK_INT >= 26) {
                d0.a.e(menuItem, mode);
            }
        }
        ColorStateList colorStateList = this.C;
        if (colorStateList != null) {
            if (z8) {
                ((e0.a) menuItem).setIconTintList(colorStateList);
            } else if (Build.VERSION.SDK_INT >= 26) {
                d0.a.d(menuItem, colorStateList);
            }
        }
    }
}
