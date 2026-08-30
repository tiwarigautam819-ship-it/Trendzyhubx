package g;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import com.google.android.gms.internal.measurement.y4;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w extends m1.j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2816c;

    public /* synthetic */ w(int i6, Object obj) {
        this.f2815b = i6;
        this.f2816c = obj;
    }

    @Override // j0.p0
    public final void a() {
        int i6 = this.f2815b;
        Object obj = this.f2816c;
        switch (i6) {
            case 0:
                f0 f0Var = ((t) obj).f2812b;
                f0Var.D.setAlpha(1.0f);
                f0Var.G.d(null);
                f0Var.G = null;
                break;
            case 1:
                f0 f0Var2 = (f0) obj;
                f0Var2.D.setAlpha(1.0f);
                f0Var2.G.d(null);
                f0Var2.G = null;
                break;
            default:
                f0 f0Var3 = (f0) ((y4) obj).f1991c;
                f0Var3.D.setVisibility(8);
                PopupWindow popupWindow = f0Var3.E;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (f0Var3.D.getParent() instanceof View) {
                    View view = (View) f0Var3.D.getParent();
                    WeakHashMap weakHashMap = j0.k0.f3286a;
                    j0.b0.c(view);
                }
                f0Var3.D.e();
                f0Var3.G.d(null);
                f0Var3.G = null;
                ViewGroup viewGroup = f0Var3.I;
                WeakHashMap weakHashMap2 = j0.k0.f3286a;
                j0.b0.c(viewGroup);
                break;
        }
    }

    @Override // m1.j, j0.p0
    public void c() {
        int i6 = this.f2815b;
        Object obj = this.f2816c;
        switch (i6) {
            case 0:
                ((t) obj).f2812b.D.setVisibility(0);
                break;
            case 1:
                f0 f0Var = (f0) obj;
                f0Var.D.setVisibility(0);
                if (f0Var.D.getParent() instanceof View) {
                    View view = (View) f0Var.D.getParent();
                    WeakHashMap weakHashMap = j0.k0.f3286a;
                    j0.b0.c(view);
                }
                break;
        }
    }
}
