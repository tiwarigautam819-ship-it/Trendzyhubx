package l;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.fragment.app.f1;
import com.YaarWin.app.R;
import m.c2;
import m.m1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e0 extends v implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public boolean B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f3615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final n f3616c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final k f3617d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f3618e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3619f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3620g;
    public final c2 h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PopupWindow.OnDismissListener f3623k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f3624l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f3625m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public y f3626v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ViewTreeObserver f3627w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f3628x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f3629y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f3630z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e f3621i = new e(1, this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final f1 f3622j = new f1(2, this);
    public int A = 0;

    public e0(Context context, n nVar, View view, int i6, boolean z5) {
        this.f3615b = context;
        this.f3616c = nVar;
        this.f3618e = z5;
        this.f3617d = new k(nVar, LayoutInflater.from(context), z5, R.layout.abc_popup_menu_item_layout);
        this.f3620g = i6;
        Resources resources = context.getResources();
        this.f3619f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f3624l = view;
        this.h = new c2(context, null, i6, 0);
        nVar.b(this, context);
    }

    @Override // l.d0
    public final boolean a() {
        return !this.f3628x && this.h.G.isShowing();
    }

    @Override // l.z
    public final void b(n nVar, boolean z5) {
        if (nVar != this.f3616c) {
            return;
        }
        dismiss();
        y yVar = this.f3626v;
        if (yVar != null) {
            yVar.b(nVar, z5);
        }
    }

    @Override // l.d0
    public final void c() {
        View view;
        if (a()) {
            return;
        }
        if (this.f3628x || (view = this.f3624l) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        this.f3625m = view;
        c2 c2Var = this.h;
        m.v vVar = c2Var.G;
        m.v vVar2 = c2Var.G;
        vVar.setOnDismissListener(this);
        c2Var.f4168x = this;
        c2Var.F = true;
        vVar2.setFocusable(true);
        View view2 = this.f3625m;
        boolean z5 = this.f3627w == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f3627w = viewTreeObserver;
        if (z5) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f3621i);
        }
        view2.addOnAttachStateChangeListener(this.f3622j);
        c2Var.f4167w = view2;
        c2Var.f4164l = this.A;
        boolean z8 = this.f3629y;
        Context context = this.f3615b;
        k kVar = this.f3617d;
        if (!z8) {
            this.f3630z = v.m(kVar, context, this.f3619f);
            this.f3629y = true;
        }
        c2Var.r(this.f3630z);
        vVar2.setInputMethodMode(2);
        Rect rect = this.f3730a;
        c2Var.E = rect != null ? new Rect(rect) : null;
        c2Var.c();
        m1 m1Var = c2Var.f4156c;
        m1Var.setOnKeyListener(this);
        if (this.B) {
            n nVar = this.f3616c;
            if (nVar.f3681m != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) m1Var, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(nVar.f3681m);
                }
                frameLayout.setEnabled(false);
                m1Var.addHeaderView(frameLayout, null, false);
            }
        }
        c2Var.p(kVar);
        c2Var.c();
    }

    @Override // l.z
    public final void d() {
        this.f3629y = false;
        k kVar = this.f3617d;
        if (kVar != null) {
            kVar.notifyDataSetChanged();
        }
    }

    @Override // l.d0
    public final void dismiss() {
        if (a()) {
            this.h.dismiss();
        }
    }

    @Override // l.d0
    public final m1 e() {
        return this.h.f4156c;
    }

    @Override // l.z
    public final void f(y yVar) {
        this.f3626v = yVar;
    }

    @Override // l.z
    public final boolean i() {
        return false;
    }

    @Override // l.z
    public final boolean j(f0 f0Var) {
        boolean z5;
        if (f0Var.hasVisibleItems()) {
            x xVar = new x(this.f3615b, f0Var, this.f3625m, this.f3618e, this.f3620g, 0);
            y yVar = this.f3626v;
            xVar.h = yVar;
            v vVar = xVar.f3739i;
            if (vVar != null) {
                vVar.f(yVar);
            }
            int size = f0Var.f3675f.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size) {
                    z5 = false;
                    break;
                }
                MenuItem item = f0Var.getItem(i6);
                if (item.isVisible() && item.getIcon() != null) {
                    z5 = true;
                    break;
                }
                i6++;
            }
            xVar.f3738g = z5;
            v vVar2 = xVar.f3739i;
            if (vVar2 != null) {
                vVar2.o(z5);
            }
            xVar.f3740j = this.f3623k;
            this.f3623k = null;
            this.f3616c.c(false);
            c2 c2Var = this.h;
            int width = c2Var.f4159f;
            int iM = c2Var.m();
            if ((Gravity.getAbsoluteGravity(this.A, this.f3624l.getLayoutDirection()) & 7) == 5) {
                width += this.f3624l.getWidth();
            }
            if (!xVar.b()) {
                if (xVar.f3736e != null) {
                    xVar.d(width, iM, true, true);
                }
            }
            y yVar2 = this.f3626v;
            if (yVar2 != null) {
                yVar2.f(f0Var);
            }
            return true;
        }
        return false;
    }

    @Override // l.v
    public final void n(View view) {
        this.f3624l = view;
    }

    @Override // l.v
    public final void o(boolean z5) {
        this.f3617d.f3665c = z5;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f3628x = true;
        this.f3616c.c(true);
        ViewTreeObserver viewTreeObserver = this.f3627w;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f3627w = this.f3625m.getViewTreeObserver();
            }
            this.f3627w.removeGlobalOnLayoutListener(this.f3621i);
            this.f3627w = null;
        }
        this.f3625m.removeOnAttachStateChangeListener(this.f3622j);
        PopupWindow.OnDismissListener onDismissListener = this.f3623k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        this.A = i6;
    }

    @Override // l.v
    public final void q(int i6) {
        this.h.f4159f = i6;
    }

    @Override // l.v
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.f3623k = onDismissListener;
    }

    @Override // l.v
    public final void s(boolean z5) {
        this.B = z5;
    }

    @Override // l.v
    public final void t(int i6) {
        this.h.h(i6);
    }

    @Override // l.v
    public final void l(n nVar) {
    }
}
