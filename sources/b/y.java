package b;

import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f835b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public h0 f836c;

    public y(boolean z5) {
        this.f834a = z5;
    }

    public abstract void b();

    public void c(b bVar) {
        d7.g.f("backEvent", bVar);
    }

    public void d(b bVar) {
        d7.g.f("backEvent", bVar);
    }

    public void a() {
    }
}
