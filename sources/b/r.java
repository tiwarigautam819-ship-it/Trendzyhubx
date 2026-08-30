package b;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class r extends Dialog implements androidx.lifecycle.t, j0, e1.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.lifecycle.v f821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e1.f f822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i0 f823c;

    public r(Context context, int i6) {
        super(context, i6);
        this.f822b = new e1.f(this);
        this.f823c = new i0(new a2.g(3, this));
    }

    public static void a(r rVar) {
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d7.g.f("view", view);
        b();
        super.addContentView(view, layoutParams);
    }

    public final void b() {
        Window window = getWindow();
        d7.g.c(window);
        View decorView = window.getDecorView();
        d7.g.e("window!!.decorView", decorView);
        androidx.lifecycle.j0.f(decorView, this);
        Window window2 = getWindow();
        d7.g.c(window2);
        View decorView2 = window2.getDecorView();
        d7.g.e("window!!.decorView", decorView2);
        i2.t.l(decorView2, this);
        Window window3 = getWindow();
        d7.g.c(window3);
        View decorView3 = window3.getDecorView();
        d7.g.e("window!!.decorView", decorView3);
        f4.f.d(decorView3, this);
    }

    @Override // androidx.lifecycle.t
    public final androidx.lifecycle.o getLifecycle() {
        androidx.lifecycle.v vVar = this.f821a;
        if (vVar != null) {
            return vVar;
        }
        androidx.lifecycle.v vVar2 = new androidx.lifecycle.v(this);
        this.f821a = vVar2;
        return vVar2;
    }

    @Override // e1.g
    public final e1.e getSavedStateRegistry() {
        return this.f822b.f2314b;
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.f823c.c();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            d7.g.e("onBackInvokedDispatcher", onBackInvokedDispatcher);
            i0 i0Var = this.f823c;
            i0Var.getClass();
            i0Var.f806e = onBackInvokedDispatcher;
            i0Var.d(i0Var.f808g);
        }
        this.f822b.b(bundle);
        androidx.lifecycle.v vVar = this.f821a;
        if (vVar == null) {
            vVar = new androidx.lifecycle.v(this);
            this.f821a = vVar;
        }
        vVar.e(androidx.lifecycle.m.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        d7.g.e("super.onSaveInstanceState()", bundleOnSaveInstanceState);
        this.f822b.c(bundleOnSaveInstanceState);
        return bundleOnSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        androidx.lifecycle.v vVar = this.f821a;
        if (vVar == null) {
            vVar = new androidx.lifecycle.v(this);
            this.f821a = vVar;
        }
        vVar.e(androidx.lifecycle.m.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        androidx.lifecycle.v vVar = this.f821a;
        if (vVar == null) {
            vVar = new androidx.lifecycle.v(this);
            this.f821a = vVar;
        }
        vVar.e(androidx.lifecycle.m.ON_DESTROY);
        this.f821a = null;
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setContentView(int i6) {
        b();
        super.setContentView(i6);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        d7.g.f("view", view);
        b();
        super.setContentView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        d7.g.f("view", view);
        b();
        super.setContentView(view, layoutParams);
    }
}
