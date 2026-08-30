package k;

import j0.p0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends m1.j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3475e;

    public j(androidx.appcompat.widget.i iVar, int i6) {
        this.f3472b = 1;
        this.f3475e = iVar;
        this.f3474d = i6;
        this.f3473c = false;
    }

    @Override // j0.p0
    public final void a() {
        switch (this.f3472b) {
            case 0:
                int i6 = this.f3474d + 1;
                this.f3474d = i6;
                k kVar = (k) this.f3475e;
                if (i6 == kVar.f3476a.size()) {
                    p0 p0Var = kVar.f3479d;
                    if (p0Var != null) {
                        p0Var.a();
                    }
                    this.f3474d = 0;
                    this.f3473c = false;
                    kVar.f3480e = false;
                }
                break;
            default:
                if (!this.f3473c) {
                    ((androidx.appcompat.widget.i) this.f3475e).f327a.setVisibility(this.f3474d);
                }
                break;
        }
    }

    @Override // m1.j, j0.p0
    public void b() {
        switch (this.f3472b) {
            case 1:
                this.f3473c = true;
                break;
        }
    }

    @Override // m1.j, j0.p0
    public final void c() {
        switch (this.f3472b) {
            case 0:
                if (!this.f3473c) {
                    this.f3473c = true;
                    p0 p0Var = ((k) this.f3475e).f3479d;
                    if (p0Var != null) {
                        p0Var.c();
                    }
                    break;
                }
                break;
            default:
                ((androidx.appcompat.widget.i) this.f3475e).f327a.setVisibility(0);
                break;
        }
    }

    public j(k kVar) {
        this.f3472b = 0;
        this.f3475e = kVar;
        this.f3473c = false;
        this.f3474d = 0;
    }
}
