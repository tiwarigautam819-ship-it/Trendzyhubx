package g;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import com.google.android.gms.internal.measurement.y4;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r0 extends k.b implements l.l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f2773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l.n f2774d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public y4 f2775e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public WeakReference f2776f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ s0 f2777g;

    public r0(s0 s0Var, Context context, y4 y4Var) {
        this.f2777g = s0Var;
        this.f2773c = context;
        this.f2775e = y4Var;
        l.n nVar = new l.n(context);
        nVar.f3680l = 1;
        this.f2774d = nVar;
        nVar.f3674e = this;
    }

    @Override // k.b
    public final void a() {
        s0 s0Var = this.f2777g;
        if (s0Var.f2795i != this) {
            return;
        }
        if (s0Var.f2802p) {
            s0Var.f2796j = this;
            s0Var.f2797k = this.f2775e;
        } else {
            this.f2775e.i(this);
        }
        this.f2775e = null;
        s0Var.p(false);
        ActionBarContextView actionBarContextView = s0Var.f2793f;
        if (actionBarContextView.f201k == null) {
            actionBarContextView.e();
        }
        s0Var.f2790c.setHideOnContentScrollEnabled(s0Var.f2807u);
        s0Var.f2795i = null;
    }

    @Override // k.b
    public final View b() {
        WeakReference weakReference = this.f2776f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // k.b
    public final l.n c() {
        return this.f2774d;
    }

    @Override // l.l
    public final boolean d(l.n nVar, MenuItem menuItem) {
        y4 y4Var = this.f2775e;
        if (y4Var != null) {
            return ((k.a) y4Var.f1990b).b(this, menuItem);
        }
        return false;
    }

    @Override // k.b
    public final MenuInflater e() {
        return new k.i(this.f2773c);
    }

    @Override // k.b
    public final CharSequence f() {
        return this.f2777g.f2793f.getSubtitle();
    }

    @Override // k.b
    public final CharSequence g() {
        return this.f2777g.f2793f.getTitle();
    }

    @Override // l.l
    public final void h(l.n nVar) {
        if (this.f2775e == null) {
            return;
        }
        i();
        androidx.appcompat.widget.a aVar = this.f2777g.f2793f.f195d;
        if (aVar != null) {
            aVar.l();
        }
    }

    @Override // k.b
    public final void i() {
        if (this.f2777g.f2795i != this) {
            return;
        }
        l.n nVar = this.f2774d;
        nVar.w();
        try {
            this.f2775e.h(this, nVar);
        } finally {
            nVar.v();
        }
    }

    @Override // k.b
    public final boolean j() {
        return this.f2777g.f2793f.A;
    }

    @Override // k.b
    public final void k(View view) {
        this.f2777g.f2793f.setCustomView(view);
        this.f2776f = new WeakReference(view);
    }

    @Override // k.b
    public final void l(int i6) {
        m(this.f2777g.f2788a.getResources().getString(i6));
    }

    @Override // k.b
    public final void m(CharSequence charSequence) {
        this.f2777g.f2793f.setSubtitle(charSequence);
    }

    @Override // k.b
    public final void n(int i6) {
        o(this.f2777g.f2788a.getResources().getString(i6));
    }

    @Override // k.b
    public final void o(CharSequence charSequence) {
        this.f2777g.f2793f.setTitle(charSequence);
    }

    @Override // k.b
    public final void p(boolean z5) {
        this.f3424b = z5;
        this.f2777g.f2793f.setTitleOptional(z5);
    }
}
