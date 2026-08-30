package androidx.lifecycle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k1.h f749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f751c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ y f752d;

    public x(y yVar, k1.h hVar) {
        this.f752d = yVar;
        this.f749a = hVar;
    }

    public final void a(boolean z5) {
        if (z5 == this.f750b) {
            return;
        }
        this.f750b = z5;
        int i6 = z5 ? 1 : -1;
        y yVar = this.f752d;
        int i9 = yVar.f756c;
        yVar.f756c = i6 + i9;
        if (!yVar.f757d) {
            yVar.f757d = true;
            while (true) {
                try {
                    int i10 = yVar.f756c;
                    if (i9 == i10) {
                        break;
                    } else {
                        i9 = i10;
                    }
                } finally {
                    yVar.f757d = false;
                }
            }
        }
        if (this.f750b) {
            yVar.c(this);
        }
    }
}
