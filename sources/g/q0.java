package g;

import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import com.google.android.gms.internal.measurement.y4;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q0 extends m1.j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ s0 f2771c;

    public /* synthetic */ q0(s0 s0Var, int i6) {
        this.f2770b = i6;
        this.f2771c = s0Var;
    }

    @Override // j0.p0
    public final void a() {
        View view;
        int i6 = this.f2770b;
        s0 s0Var = this.f2771c;
        switch (i6) {
            case 0:
                if (s0Var.f2801o && (view = s0Var.f2794g) != null) {
                    view.setTranslationY(0.0f);
                    s0Var.f2791d.setTranslationY(0.0f);
                }
                s0Var.f2791d.setVisibility(8);
                s0Var.f2791d.setTransitioning(false);
                s0Var.f2805s = null;
                y4 y4Var = s0Var.f2797k;
                if (y4Var != null) {
                    y4Var.i(s0Var.f2796j);
                    s0Var.f2796j = null;
                    s0Var.f2797k = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = s0Var.f2790c;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = j0.k0.f3286a;
                    j0.b0.c(actionBarOverlayLayout);
                }
                break;
            default:
                s0Var.f2805s = null;
                s0Var.f2791d.requestLayout();
                break;
        }
    }
}
