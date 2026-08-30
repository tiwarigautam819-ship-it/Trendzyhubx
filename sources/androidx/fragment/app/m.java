package androidx.fragment.app;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f583a;

    public m(l1 l1Var) {
        d7.g.f("operation", l1Var);
        this.f583a = l1Var;
    }

    public abstract void a(com.google.firebase.messaging.y yVar);

    public abstract String b();

    public boolean c() {
        int i6;
        l1 l1Var = (l1) this.f583a;
        View view = l1Var.f574c.P;
        if (view != null) {
            i6 = 4;
            if (view.getAlpha() != 0.0f || view.getVisibility() != 0) {
                int visibility = view.getVisibility();
                if (visibility == 0) {
                    i6 = 2;
                } else if (visibility != 4) {
                    if (visibility != 8) {
                        throw new IllegalArgumentException(a1.a.i(visibility, "Unknown visibility "));
                    }
                    i6 = 3;
                }
            }
        } else {
            i6 = 0;
        }
        int i9 = l1Var.f572a;
        if (i6 != i9) {
            return (i6 == 2 || i9 == 2) ? false : true;
        }
        return true;
    }
}
