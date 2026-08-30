package l;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import m.c2;
import m.i0;
import m.l0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3614b;

    public /* synthetic */ e(int i6, Object obj) {
        this.f3613a = i6;
        this.f3614b = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        switch (this.f3613a) {
            case 0:
                h hVar = (h) this.f3614b;
                ArrayList arrayList = hVar.h;
                if (hVar.a() && arrayList.size() > 0) {
                    int i6 = 0;
                    if (!((g) arrayList.get(0)).f3636a.F) {
                        View view = hVar.f3651w;
                        if (view != null && view.isShown()) {
                            int size = arrayList.size();
                            while (i6 < size) {
                                Object obj = arrayList.get(i6);
                                i6++;
                                ((g) obj).f3636a.c();
                            }
                        } else {
                            hVar.dismiss();
                        }
                    }
                    break;
                }
                break;
            case 1:
                e0 e0Var = (e0) this.f3614b;
                c2 c2Var = e0Var.h;
                if (e0Var.a() && !c2Var.F) {
                    View view2 = e0Var.f3625m;
                    if (view2 != null && view2.isShown()) {
                        c2Var.c();
                    } else {
                        e0Var.dismiss();
                    }
                    break;
                }
                break;
            case 2:
                l0 l0Var = (l0) this.f3614b;
                if (!l0Var.getInternalPopup().a()) {
                    l0Var.f4021f.k(l0Var.getTextDirection(), l0Var.getTextAlignment());
                }
                ViewTreeObserver viewTreeObserver = l0Var.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                }
                break;
            default:
                i0 i0Var = (i0) this.f3614b;
                l0 l0Var2 = i0Var.O;
                i0Var.getClass();
                if (l0Var2.isAttachedToWindow() && l0Var2.getGlobalVisibleRect(i0Var.M)) {
                    i0Var.s();
                    i0Var.c();
                } else {
                    i0Var.dismiss();
                }
                break;
        }
    }
}
