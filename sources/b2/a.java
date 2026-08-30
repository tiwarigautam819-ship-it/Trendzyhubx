package b2;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c2.a f896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WeakReference f897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference f898c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View.OnClickListener f899d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f900e;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            d7.g.f("view", view);
            View.OnClickListener onClickListener = this.f899d;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            View view2 = (View) this.f898c.get();
            View view3 = (View) this.f897b.get();
            if (view2 == null || view3 == null) {
                return;
            }
            c2.a aVar = this.f896a;
            d7.g.d("null cannot be cast to non-null type com.facebook.appevents.codeless.internal.EventBinding", aVar);
            c.c(aVar, view2, view3);
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
