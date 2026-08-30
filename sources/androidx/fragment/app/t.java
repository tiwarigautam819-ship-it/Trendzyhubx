package androidx.fragment.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class t extends c0 implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final q f610f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final r f611g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f612h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f613i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f614j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f615k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f616l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f617m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final k1.h f618n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public Dialog f619o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public boolean f620p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f621q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public boolean f622r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public boolean f623s0;

    public t() {
        int i6 = 0;
        new p(i6, this);
        this.f610f0 = new q(i6, this);
        this.f611g0 = new r(this);
        this.f612h0 = 0;
        this.f613i0 = 0;
        this.f614j0 = true;
        this.f615k0 = true;
        this.f616l0 = -1;
        this.f618n0 = new k1.h(1, this);
        this.f623s0 = false;
    }

    @Override // androidx.fragment.app.c0
    public final void A() {
        this.N = true;
        Dialog dialog = this.f619o0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.c0
    public final void B(Bundle bundle) {
        Bundle bundle2;
        this.N = true;
        if (this.f619o0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f619o0.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.c0
    public final void C(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.C(layoutInflater, viewGroup, bundle);
        if (this.P != null || this.f619o0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f619o0.onRestoreInstanceState(bundle2);
    }

    public Dialog K(Bundle bundle) {
        if (y0.J(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new b.r(F(), this.f613i0);
    }

    public void L(y0 y0Var, String str) {
        this.f621q0 = false;
        this.f622r0 = true;
        y0Var.getClass();
        a aVar = new a(y0Var);
        aVar.f431o = true;
        aVar.e(0, this, str);
        aVar.d(false, true);
    }

    @Override // androidx.fragment.app.c0
    public final h8.b a() {
        return new s(this, new x(this));
    }

    @Override // androidx.fragment.app.c0
    public final void n() {
        this.N = true;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f620p0) {
            return;
        }
        if (y0.J(3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        if (this.f621q0) {
            return;
        }
        this.f621q0 = true;
        this.f622r0 = false;
        Dialog dialog = this.f619o0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f619o0.dismiss();
        }
        this.f620p0 = true;
        if (this.f616l0 >= 0) {
            y0 y0VarG = g();
            int i6 = this.f616l0;
            if (i6 < 0) {
                throw new IllegalArgumentException(a1.a.i(i6, "Bad id: "));
            }
            y0VarG.x(new w0(y0VarG, i6), true);
            this.f616l0 = -1;
            return;
        }
        a aVar = new a(g());
        aVar.f431o = true;
        y0 y0Var = this.B;
        if (y0Var == null || y0Var == aVar.f433q) {
            aVar.b(new h1(3, this));
            aVar.d(true, true);
        } else {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + toString() + " is already attached to a FragmentManager.");
        }
    }

    @Override // androidx.fragment.app.c0
    public final void p(Context context) {
        Object obj;
        super.p(context);
        androidx.lifecycle.y yVar = this.Z;
        yVar.getClass();
        androidx.lifecycle.y.a("observeForever");
        k1.h hVar = this.f618n0;
        androidx.lifecycle.x xVar = new androidx.lifecycle.x(yVar, hVar);
        o.f fVar = yVar.f755b;
        o.c cVarA = fVar.a(hVar);
        if (cVarA != null) {
            obj = cVarA.f4384b;
        } else {
            o.c cVar = new o.c(hVar, xVar);
            fVar.f4393d++;
            o.c cVar2 = fVar.f4391b;
            if (cVar2 == null) {
                fVar.f4390a = cVar;
                fVar.f4391b = cVar;
            } else {
                cVar2.f4385c = cVar;
                cVar.f4386d = cVar2;
                fVar.f4391b = cVar;
            }
            obj = null;
        }
        if (((androidx.lifecycle.x) obj) == null) {
            xVar.a(true);
        }
        if (this.f622r0) {
            return;
        }
        this.f621q0 = false;
    }

    @Override // androidx.fragment.app.c0
    public void q(Bundle bundle) {
        super.q(bundle);
        new Handler();
        this.f615k0 = this.G == 0;
        if (bundle != null) {
            this.f612h0 = bundle.getInt("android:style", 0);
            this.f613i0 = bundle.getInt("android:theme", 0);
            this.f614j0 = bundle.getBoolean("android:cancelable", true);
            this.f615k0 = bundle.getBoolean("android:showsDialog", this.f615k0);
            this.f616l0 = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // androidx.fragment.app.c0
    public void t() {
        this.N = true;
        Dialog dialog = this.f619o0;
        if (dialog != null) {
            this.f620p0 = true;
            dialog.setOnDismissListener(null);
            this.f619o0.dismiss();
            if (!this.f621q0) {
                onDismiss(this.f619o0);
            }
            this.f619o0 = null;
            this.f623s0 = false;
        }
    }

    @Override // androidx.fragment.app.c0
    public final void u() {
        this.N = true;
        if (!this.f622r0 && !this.f621q0) {
            this.f621q0 = true;
        }
        androidx.lifecycle.y yVar = this.Z;
        yVar.getClass();
        androidx.lifecycle.y.a("removeObserver");
        androidx.lifecycle.x xVar = (androidx.lifecycle.x) yVar.f755b.b(this.f618n0);
        if (xVar == null) {
            return;
        }
        xVar.a(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0048 A[Catch: all -> 0x0050, TryCatch #0 {all -> 0x0050, blocks: (B:12:0x001a, B:14:0x0026, B:24:0x003e, B:26:0x0048, B:29:0x0052, B:20:0x0030, B:22:0x0036, B:23:0x003b, B:30:0x006a), top: B:49:0x001a }] */
    @Override // androidx.fragment.app.c0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.LayoutInflater v(android.os.Bundle r8) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.t.v(android.os.Bundle):android.view.LayoutInflater");
    }

    @Override // androidx.fragment.app.c0
    public void y(Bundle bundle) {
        Dialog dialog = this.f619o0;
        if (dialog != null) {
            Bundle bundleOnSaveInstanceState = dialog.onSaveInstanceState();
            bundleOnSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", bundleOnSaveInstanceState);
        }
        int i6 = this.f612h0;
        if (i6 != 0) {
            bundle.putInt("android:style", i6);
        }
        int i9 = this.f613i0;
        if (i9 != 0) {
            bundle.putInt("android:theme", i9);
        }
        boolean z5 = this.f614j0;
        if (!z5) {
            bundle.putBoolean("android:cancelable", z5);
        }
        boolean z8 = this.f615k0;
        if (!z8) {
            bundle.putBoolean("android:showsDialog", z8);
        }
        int i10 = this.f616l0;
        if (i10 != -1) {
            bundle.putInt("android:backStackId", i10);
        }
    }

    @Override // androidx.fragment.app.c0
    public final void z() {
        this.N = true;
        Dialog dialog = this.f619o0;
        if (dialog != null) {
            this.f620p0 = false;
            dialog.show();
            View decorView = this.f619o0.getWindow().getDecorView();
            androidx.lifecycle.j0.f(decorView, this);
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
            f4.f.d(decorView, this);
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }
}
