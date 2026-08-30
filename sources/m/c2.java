package m;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c2 extends x1 implements y1 {
    public static final Method L;
    public k1.h K;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                L = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    @Override // m.y1
    public final void l(l.n nVar, l.p pVar) {
        k1.h hVar = this.K;
        if (hVar != null) {
            hVar.l(nVar, pVar);
        }
    }

    @Override // m.y1
    public final void n(l.n nVar, MenuItem menuItem) {
        k1.h hVar = this.K;
        if (hVar != null) {
            hVar.n(nVar, menuItem);
        }
    }

    @Override // m.x1
    public final m1 q(Context context, boolean z5) {
        b2 b2Var = new b2(context, z5);
        b2Var.setHoverListener(this);
        return b2Var;
    }
}
