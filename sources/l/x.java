package l;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n f3733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f3736e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3738g;
    public y h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public v f3739i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public PopupWindow.OnDismissListener f3740j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3737f = 8388611;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final w f3741k = new w(this);

    public x(Context context, n nVar, View view, boolean z5, int i6, int i9) {
        this.f3732a = context;
        this.f3733b = nVar;
        this.f3736e = view;
        this.f3734c = z5;
        this.f3735d = i6;
    }

    public final v a() {
        v e0Var;
        if (this.f3739i == null) {
            Context context = this.f3732a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                e0Var = new h(context, this.f3736e, this.f3735d, this.f3734c);
            } else {
                e0Var = new e0(this.f3732a, this.f3733b, this.f3736e, this.f3735d, this.f3734c);
            }
            e0Var.l(this.f3733b);
            e0Var.r(this.f3741k);
            e0Var.n(this.f3736e);
            e0Var.f(this.h);
            e0Var.o(this.f3738g);
            e0Var.p(this.f3737f);
            this.f3739i = e0Var;
        }
        return this.f3739i;
    }

    public final boolean b() {
        v vVar = this.f3739i;
        return vVar != null && vVar.a();
    }

    public void c() {
        this.f3739i = null;
        PopupWindow.OnDismissListener onDismissListener = this.f3740j;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(int i6, int i9, boolean z5, boolean z8) {
        v vVarA = a();
        vVarA.s(z8);
        if (z5) {
            if ((Gravity.getAbsoluteGravity(this.f3737f, this.f3736e.getLayoutDirection()) & 7) == 5) {
                i6 -= this.f3736e.getWidth();
            }
            vVarA.q(i6);
            vVarA.t(i9);
            int i10 = (int) ((this.f3732a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            vVarA.f3730a = new Rect(i6 - i10, i9 - i10, i6 + i10, i9 + i10);
        }
        vVarA.c();
    }
}
