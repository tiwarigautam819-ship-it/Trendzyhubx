package m;

import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class p1 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f4062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4064c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f4065d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public o1 f4066e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o1 f4067f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4068g;
    public int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f4069i = new int[2];

    public p1(View view) {
        this.f4065d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f4062a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f4063b = tapTimeout;
        this.f4064c = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        o1 o1Var = this.f4067f;
        View view = this.f4065d;
        if (o1Var != null) {
            view.removeCallbacks(o1Var);
        }
        o1 o1Var2 = this.f4066e;
        if (o1Var2 != null) {
            view.removeCallbacks(o1Var2);
        }
    }

    public abstract l.d0 b();

    public abstract boolean c();

    public boolean d() {
        l.d0 d0VarB = b();
        if (d0VarB == null || !d0VarB.a()) {
            return true;
        }
        d0VarB.dismiss();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0100  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouch(android.view.View r13, android.view.MotionEvent r14) {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: m.p1.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f4068g = false;
        this.h = -1;
        o1 o1Var = this.f4066e;
        if (o1Var != null) {
            this.f4065d.removeCallbacks(o1Var);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
