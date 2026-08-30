package androidx.lifecycle;

import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c0 implements t {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final c0 f679i = new c0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f681b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Handler f684e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f682c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f683d = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final v f685f = new v(this);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a2.g f686g = new a2.g(1, this);
    public final o5.c h = new o5.c(3, this);

    public final void a() {
        int i6 = this.f681b + 1;
        this.f681b = i6;
        if (i6 == 1) {
            if (this.f682c) {
                this.f685f.e(m.ON_RESUME);
                this.f682c = false;
            } else {
                Handler handler = this.f684e;
                d7.g.c(handler);
                handler.removeCallbacks(this.f686g);
            }
        }
    }

    @Override // androidx.lifecycle.t
    public final o getLifecycle() {
        return this.f685f;
    }
}
