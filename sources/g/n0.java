package g;

import android.content.Context;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.Window;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n0 extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.i f2753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Window.Callback f2754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l0 f2755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2756d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2757e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2758f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f2759g = new ArrayList();
    public final androidx.fragment.app.p h = new androidx.fragment.app.p(3, this);

    public n0(Toolbar toolbar, CharSequence charSequence, a0 a0Var) {
        l0 l0Var = new l0(this);
        androidx.appcompat.widget.i iVar = new androidx.appcompat.widget.i(toolbar, false);
        this.f2753a = iVar;
        a0Var.getClass();
        this.f2754b = a0Var;
        iVar.f336k = a0Var;
        toolbar.setOnMenuItemClickListener(l0Var);
        if (!iVar.f333g) {
            iVar.h = charSequence;
            if ((iVar.f328b & 8) != 0) {
                toolbar.setTitle(charSequence);
                if (iVar.f333g) {
                    j0.k0.i(toolbar.getRootView(), charSequence);
                }
            }
        }
        this.f2755c = new l0(this);
    }

    @Override // g.b
    public final boolean a() {
        androidx.appcompat.widget.a aVar;
        ActionMenuView actionMenuView = this.f2753a.f327a.f270a;
        return (actionMenuView == null || (aVar = actionMenuView.B) == null || !aVar.c()) ? false : true;
    }

    @Override // g.b
    public final boolean b() {
        l.p pVar;
        androidx.appcompat.widget.h hVar = this.f2753a.f327a.U;
        if (hVar == null || (pVar = hVar.f325b) == null) {
            return false;
        }
        if (hVar == null) {
            pVar = null;
        }
        if (pVar == null) {
            return true;
        }
        pVar.collapseActionView();
        return true;
    }

    @Override // g.b
    public final void c(boolean z5) {
        if (z5 == this.f2758f) {
            return;
        }
        this.f2758f = z5;
        ArrayList arrayList = this.f2759g;
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    @Override // g.b
    public final int d() {
        return this.f2753a.f328b;
    }

    @Override // g.b
    public final Context e() {
        return this.f2753a.f327a.getContext();
    }

    @Override // g.b
    public final boolean f() {
        androidx.appcompat.widget.i iVar = this.f2753a;
        Toolbar toolbar = iVar.f327a;
        androidx.fragment.app.p pVar = this.h;
        toolbar.removeCallbacks(pVar);
        Toolbar toolbar2 = iVar.f327a;
        WeakHashMap weakHashMap = j0.k0.f3286a;
        toolbar2.postOnAnimation(pVar);
        return true;
    }

    @Override // g.b
    public final void h() {
        this.f2753a.f327a.removeCallbacks(this.h);
    }

    @Override // g.b
    public final boolean i(int i6, KeyEvent keyEvent) {
        Menu menuP = p();
        if (menuP == null) {
            return false;
        }
        menuP.setQwertyMode(KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() != 1);
        return menuP.performShortcut(i6, keyEvent, 0);
    }

    @Override // g.b
    public final boolean j(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            k();
        }
        return true;
    }

    @Override // g.b
    public final boolean k() {
        return this.f2753a.f327a.u();
    }

    @Override // g.b
    public final void n(CharSequence charSequence) {
        androidx.appcompat.widget.i iVar = this.f2753a;
        if (iVar.f333g) {
            return;
        }
        Toolbar toolbar = iVar.f327a;
        iVar.h = charSequence;
        if ((iVar.f328b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (iVar.f333g) {
                j0.k0.i(toolbar.getRootView(), charSequence);
            }
        }
    }

    public final Menu p() {
        boolean z5 = this.f2757e;
        androidx.appcompat.widget.i iVar = this.f2753a;
        if (!z5) {
            m0 m0Var = new m0(this);
            o5.c cVar = new o5.c(7, this);
            Toolbar toolbar = iVar.f327a;
            toolbar.V = m0Var;
            toolbar.W = cVar;
            ActionMenuView actionMenuView = toolbar.f270a;
            if (actionMenuView != null) {
                actionMenuView.C = m0Var;
                actionMenuView.D = cVar;
            }
            this.f2757e = true;
        }
        return iVar.f327a.getMenu();
    }

    @Override // g.b
    public final void g() {
    }

    @Override // g.b
    public final void l(boolean z5) {
    }

    @Override // g.b
    public final void m(boolean z5) {
    }
}
