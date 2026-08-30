package androidx.fragment.app;

import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f568b;

    public abstract void a(ViewGroup viewGroup);

    public abstract void b(ViewGroup viewGroup);

    public void c(b.b bVar, ViewGroup viewGroup) {
        d7.g.f("backEvent", bVar);
        d7.g.f("container", viewGroup);
    }

    public void d(ViewGroup viewGroup) {
        d7.g.f("container", viewGroup);
    }
}
