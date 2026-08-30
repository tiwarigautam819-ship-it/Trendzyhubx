package k;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import l.c0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends ActionMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f3437b;

    public f(Context context, b bVar) {
        this.f3436a = context;
        this.f3437b = bVar;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f3437b.a();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f3437b.b();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new c0(this.f3436a, this.f3437b.c());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f3437b.e();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f3437b.f();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f3437b.f3423a;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f3437b.g();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f3437b.f3424b;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f3437b.i();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f3437b.j();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f3437b.k(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f3437b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f3437b.f3423a = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f3437b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z5) {
        this.f3437b.p(z5);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i6) {
        this.f3437b.l(i6);
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i6) {
        this.f3437b.n(i6);
    }
}
