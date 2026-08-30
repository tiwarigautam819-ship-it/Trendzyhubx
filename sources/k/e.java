package k;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import com.google.android.gms.internal.measurement.y4;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends b implements l.l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f3431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ActionBarContextView f3432d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public y4 f3433e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public WeakReference f3434f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3435g;
    public l.n h;

    @Override // k.b
    public final void a() {
        if (this.f3435g) {
            return;
        }
        this.f3435g = true;
        this.f3433e.i(this);
    }

    @Override // k.b
    public final View b() {
        WeakReference weakReference = this.f3434f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // k.b
    public final l.n c() {
        return this.h;
    }

    @Override // l.l
    public final boolean d(l.n nVar, MenuItem menuItem) {
        return ((a) this.f3433e.f1990b).b(this, menuItem);
    }

    @Override // k.b
    public final MenuInflater e() {
        return new i(this.f3432d.getContext());
    }

    @Override // k.b
    public final CharSequence f() {
        return this.f3432d.getSubtitle();
    }

    @Override // k.b
    public final CharSequence g() {
        return this.f3432d.getTitle();
    }

    @Override // l.l
    public final void h(l.n nVar) {
        i();
        androidx.appcompat.widget.a aVar = this.f3432d.f195d;
        if (aVar != null) {
            aVar.l();
        }
    }

    @Override // k.b
    public final void i() {
        this.f3433e.h(this, this.h);
    }

    @Override // k.b
    public final boolean j() {
        return this.f3432d.A;
    }

    @Override // k.b
    public final void k(View view) {
        this.f3432d.setCustomView(view);
        this.f3434f = view != null ? new WeakReference(view) : null;
    }

    @Override // k.b
    public final void l(int i6) {
        m(this.f3431c.getString(i6));
    }

    @Override // k.b
    public final void m(CharSequence charSequence) {
        this.f3432d.setSubtitle(charSequence);
    }

    @Override // k.b
    public final void n(int i6) {
        o(this.f3431c.getString(i6));
    }

    @Override // k.b
    public final void o(CharSequence charSequence) {
        this.f3432d.setTitle(charSequence);
    }

    @Override // k.b
    public final void p(boolean z5) {
        this.f3424b = z5;
        this.f3432d.setTitleOptional(z5);
    }
}
