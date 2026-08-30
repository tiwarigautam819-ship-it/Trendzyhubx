package g;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView;
import com.YaarWin.app.R;
import j0.b1;
import j0.t0;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import m.k3;
import m.l3;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u implements j0.r, l.y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f0 f2813a;

    public /* synthetic */ u(f0 f0Var) {
        this.f2813a = f0Var;
    }

    @Override // l.y
    public void b(l.n nVar, boolean z5) {
        this.f2813a.s(nVar);
    }

    @Override // j0.r
    public b1 e(View view, b1 b1Var) {
        int i6;
        int i9;
        boolean z5;
        b1 b1VarB;
        boolean z8;
        boolean z9;
        Object[] objArr;
        boolean z10;
        int iD = b1Var.d();
        f0 f0Var = this.f2813a;
        Context context = f0Var.f2693k;
        int iD2 = b1Var.d();
        ActionBarContextView actionBarContextView = f0Var.D;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            i6 = 8;
            i9 = 0;
            z5 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) f0Var.D.getLayoutParams();
            if (f0Var.D.isShown()) {
                if (f0Var.f2694k0 == null) {
                    f0Var.f2694k0 = new Rect();
                    f0Var.f2696l0 = new Rect();
                }
                Rect rect = f0Var.f2694k0;
                Rect rect2 = f0Var.f2696l0;
                rect.set(b1Var.b(), b1Var.d(), b1Var.c(), b1Var.a());
                ViewGroup viewGroup = f0Var.I;
                if (Build.VERSION.SDK_INT >= 29) {
                    boolean z11 = l3.f4025a;
                    k3.a(viewGroup, rect, rect2);
                    z9 = true;
                } else {
                    if (!l3.f4025a) {
                        l3.f4025a = true;
                        try {
                            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                            l3.f4026b = declaredMethod;
                            if (!declaredMethod.isAccessible()) {
                                l3.f4026b.setAccessible(true);
                            }
                        } catch (NoSuchMethodException unused) {
                            Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
                        }
                    }
                    Method method = l3.f4026b;
                    if (method != null) {
                        try {
                            objArr = new Object[2];
                            objArr[0] = rect;
                            z9 = true;
                        } catch (Exception e9) {
                            e = e9;
                            z9 = true;
                        }
                        try {
                            objArr[1] = rect2;
                            method.invoke(viewGroup, objArr);
                        } catch (Exception e10) {
                            e = e10;
                            Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e);
                        }
                    } else {
                        z9 = true;
                    }
                }
                int i10 = rect.top;
                int i11 = rect.left;
                int i12 = rect.right;
                ViewGroup viewGroup2 = f0Var.I;
                WeakHashMap weakHashMap = j0.k0.f3286a;
                b1 b1VarA = j0.e0.a(viewGroup2);
                int iB = b1VarA == null ? 0 : b1VarA.b();
                int iC = b1VarA == null ? 0 : b1VarA.c();
                if (marginLayoutParams.topMargin == i10 && marginLayoutParams.leftMargin == i11 && marginLayoutParams.rightMargin == i12) {
                    z10 = false;
                } else {
                    marginLayoutParams.topMargin = i10;
                    marginLayoutParams.leftMargin = i11;
                    marginLayoutParams.rightMargin = i12;
                    z10 = z9;
                }
                if (i10 <= 0 || f0Var.K != null) {
                    i6 = 8;
                    View view2 = f0Var.K;
                    if (view2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        int i13 = marginLayoutParams2.height;
                        int i14 = marginLayoutParams.topMargin;
                        if (i13 != i14 || marginLayoutParams2.leftMargin != iB || marginLayoutParams2.rightMargin != iC) {
                            marginLayoutParams2.height = i14;
                            marginLayoutParams2.leftMargin = iB;
                            marginLayoutParams2.rightMargin = iC;
                            f0Var.K.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view3 = new View(context);
                    f0Var.K = view3;
                    i6 = 8;
                    view3.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iB;
                    layoutParams.rightMargin = iC;
                    f0Var.I.addView(f0Var.K, -1, layoutParams);
                }
                View view4 = f0Var.K;
                boolean z12 = view4 != null ? z9 : false;
                if (z12 && view4.getVisibility() != 0) {
                    View view5 = f0Var.K;
                    view5.setBackgroundColor((view5.getWindowSystemUiVisibility() & 8192) != 0 ? context.getColor(R.color.abc_decor_view_status_guard_light) : context.getColor(R.color.abc_decor_view_status_guard));
                }
                if (!f0Var.P && z12) {
                    iD2 = 0;
                }
                z8 = z10;
                z5 = z12;
                i9 = 0;
            } else {
                z8 = true;
                i6 = 8;
                i9 = 0;
                if (marginLayoutParams.topMargin != 0) {
                    marginLayoutParams.topMargin = 0;
                    z5 = false;
                } else {
                    z5 = false;
                    z8 = false;
                }
            }
            if (z8) {
                f0Var.D.setLayoutParams(marginLayoutParams);
            }
        }
        View view6 = f0Var.K;
        if (view6 != null) {
            if (z5) {
                i6 = i9;
            }
            view6.setVisibility(i6);
        }
        if (iD != iD2) {
            int iB2 = b1Var.b();
            int iC2 = b1Var.c();
            int iA = b1Var.a();
            int i15 = Build.VERSION.SDK_INT;
            t0 s0Var = i15 >= 30 ? new j0.s0(b1Var) : i15 >= 29 ? new j0.r0(b1Var) : new j0.q0(b1Var);
            s0Var.d(c0.c.a(iB2, iD2, iC2, iA));
            b1VarB = s0Var.b();
        } else {
            b1VarB = b1Var;
        }
        WeakHashMap weakHashMap2 = j0.k0.f3286a;
        WindowInsets windowInsetsF = b1VarB.f();
        if (windowInsetsF == null) {
            return b1VarB;
        }
        WindowInsets windowInsetsB = j0.b0.b(view, windowInsetsF);
        return !windowInsetsB.equals(windowInsetsF) ? b1.g(windowInsetsB, view) : b1VarB;
    }

    @Override // l.y
    public boolean f(l.n nVar) {
        Window.Callback callback = this.f2813a.f2695l.getCallback();
        if (callback == null) {
            return true;
        }
        callback.onMenuOpened(108, nVar);
        return true;
    }
}
