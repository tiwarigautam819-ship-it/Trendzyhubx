package l;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.fragment.app.f1;
import com.YaarWin.app.R;
import java.util.ArrayList;
import m.c2;
import m.m1;
import m.z1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends v implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public int A;
    public int B;
    public boolean D;
    public y E;
    public ViewTreeObserver F;
    public PopupWindow.OnDismissListener G;
    public boolean H;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f3639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3640c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3641d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f3642e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Handler f3643f;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public View f3650v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public View f3651w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f3652x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f3653y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f3654z;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f3644g = new ArrayList();
    public final ArrayList h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e f3645i = new e(0, this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final f1 f3646j = new f1(1, this);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final k1.h f3647k = new k1.h(15, this);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3648l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f3649m = 0;
    public boolean C = false;

    public h(Context context, View view, int i6, boolean z5) {
        this.f3639b = context;
        this.f3650v = view;
        this.f3641d = i6;
        this.f3642e = z5;
        this.f3652x = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.f3640c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f3643f = new Handler();
    }

    @Override // l.d0
    public final boolean a() {
        ArrayList arrayList = this.h;
        return arrayList.size() > 0 && ((g) arrayList.get(0)).f3636a.G.isShowing();
    }

    @Override // l.z
    public final void b(n nVar, boolean z5) {
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                i6 = -1;
                break;
            } else if (nVar == ((g) arrayList.get(i6)).f3637b) {
                break;
            } else {
                i6++;
            }
        }
        if (i6 < 0) {
            return;
        }
        int i9 = i6 + 1;
        if (i9 < arrayList.size()) {
            ((g) arrayList.get(i9)).f3637b.c(false);
        }
        g gVar = (g) arrayList.remove(i6);
        n nVar2 = gVar.f3637b;
        c2 c2Var = gVar.f3636a;
        m.v vVar = c2Var.G;
        nVar2.r(this);
        if (this.H) {
            z1.b(vVar, null);
            vVar.setAnimationStyle(0);
        }
        c2Var.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.f3652x = ((g) arrayList.get(size2 - 1)).f3638c;
        } else {
            this.f3652x = this.f3650v.getLayoutDirection() == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z5) {
                ((g) arrayList.get(0)).f3637b.c(false);
                return;
            }
            return;
        }
        dismiss();
        y yVar = this.E;
        if (yVar != null) {
            yVar.b(nVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.F;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.F.removeGlobalOnLayoutListener(this.f3645i);
            }
            this.F = null;
        }
        this.f3651w.removeOnAttachStateChangeListener(this.f3646j);
        this.G.onDismiss();
    }

    @Override // l.d0
    public final void c() {
        if (a()) {
            return;
        }
        ArrayList arrayList = this.f3644g;
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            u((n) obj);
        }
        arrayList.clear();
        View view = this.f3650v;
        this.f3651w = view;
        if (view != null) {
            boolean z5 = this.F == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.F = viewTreeObserver;
            if (z5) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f3645i);
            }
            this.f3651w.addOnAttachStateChangeListener(this.f3646j);
        }
    }

    @Override // l.z
    public final void d() {
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            ListAdapter adapter = ((g) obj).f3636a.f4156c.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((k) adapter).notifyDataSetChanged();
        }
    }

    @Override // l.d0
    public final void dismiss() {
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        if (size > 0) {
            g[] gVarArr = (g[]) arrayList.toArray(new g[size]);
            for (int i6 = size - 1; i6 >= 0; i6--) {
                g gVar = gVarArr[i6];
                if (gVar.f3636a.G.isShowing()) {
                    gVar.f3636a.dismiss();
                }
            }
        }
    }

    @Override // l.d0
    public final m1 e() {
        ArrayList arrayList = this.h;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((g) arrayList.get(arrayList.size() - 1)).f3636a.f4156c;
    }

    @Override // l.z
    public final void f(y yVar) {
        this.E = yVar;
    }

    @Override // l.z
    public final boolean i() {
        return false;
    }

    @Override // l.z
    public final boolean j(f0 f0Var) {
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            g gVar = (g) obj;
            if (f0Var == gVar.f3637b) {
                gVar.f3636a.f4156c.requestFocus();
                return true;
            }
        }
        if (!f0Var.hasVisibleItems()) {
            return false;
        }
        l(f0Var);
        y yVar = this.E;
        if (yVar != null) {
            yVar.f(f0Var);
        }
        return true;
    }

    @Override // l.v
    public final void l(n nVar) {
        nVar.b(this, this.f3639b);
        if (a()) {
            u(nVar);
        } else {
            this.f3644g.add(nVar);
        }
    }

    @Override // l.v
    public final void n(View view) {
        if (this.f3650v != view) {
            this.f3650v = view;
            this.f3649m = Gravity.getAbsoluteGravity(this.f3648l, view.getLayoutDirection());
        }
    }

    @Override // l.v
    public final void o(boolean z5) {
        this.C = z5;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        g gVar;
        ArrayList arrayList = this.h;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                gVar = null;
                break;
            }
            gVar = (g) arrayList.get(i6);
            if (!gVar.f3636a.G.isShowing()) {
                break;
            } else {
                i6++;
            }
        }
        if (gVar != null) {
            gVar.f3637b.c(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i6 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // l.v
    public final void p(int i6) {
        if (this.f3648l != i6) {
            this.f3648l = i6;
            this.f3649m = Gravity.getAbsoluteGravity(i6, this.f3650v.getLayoutDirection());
        }
    }

    @Override // l.v
    public final void q(int i6) {
        this.f3653y = true;
        this.A = i6;
    }

    @Override // l.v
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.G = onDismissListener;
    }

    @Override // l.v
    public final void s(boolean z5) {
        this.D = z5;
    }

    @Override // l.v
    public final void t(int i6) {
        this.f3654z = true;
        this.B = i6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void u(l.n r20) {
        /*
            Method dump skipped, instruction units count: 572
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: l.h.u(l.n):void");
    }
}
