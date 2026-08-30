package b;

import android.window.BackEvent;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f776c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f777d;

    public b(BackEvent backEvent) {
        a aVar = a.f771a;
        float fD = aVar.d(backEvent);
        float fE = aVar.e(backEvent);
        float fB = aVar.b(backEvent);
        int iC = aVar.c(backEvent);
        this.f774a = fD;
        this.f775b = fE;
        this.f776c = fB;
        this.f777d = iC;
    }

    public final String toString() {
        return "BackEventCompat{touchX=" + this.f774a + ", touchY=" + this.f775b + ", progress=" + this.f776c + ", swipeEdge=" + this.f777d + '}';
    }
}
