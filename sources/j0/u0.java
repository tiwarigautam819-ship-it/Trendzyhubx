package j0;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class u0 extends z0 {
    public static boolean h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Method f3311i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Class f3312j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Field f3313k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static Field f3314l;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WindowInsets f3315c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c0.c[] f3316d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c0.c f3317e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public b1 f3318f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c0.c f3319g;

    public u0(b1 b1Var, WindowInsets windowInsets) {
        super(b1Var);
        this.f3317e = null;
        this.f3315c = windowInsets;
    }

    private c0.c r(int i6, boolean z5) {
        c0.c cVarA = c0.c.f988e;
        for (int i9 = 1; i9 <= 256; i9 <<= 1) {
            if ((i6 & i9) != 0) {
                c0.c cVarS = s(i9, z5);
                cVarA = c0.c.a(Math.max(cVarA.f989a, cVarS.f989a), Math.max(cVarA.f990b, cVarS.f990b), Math.max(cVarA.f991c, cVarS.f991c), Math.max(cVarA.f992d, cVarS.f992d));
            }
        }
        return cVarA;
    }

    private c0.c t() {
        b1 b1Var = this.f3318f;
        return b1Var != null ? b1Var.f3254a.h() : c0.c.f988e;
    }

    private c0.c u(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }
        if (!h) {
            v();
        }
        Method method = f3311i;
        if (method != null && f3312j != null && f3313k != null) {
            try {
                Object objInvoke = method.invoke(view, null);
                if (objInvoke == null) {
                    Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                    return null;
                }
                Rect rect = (Rect) f3313k.get(f3314l.get(objInvoke));
                if (rect != null) {
                    return c0.c.a(rect.left, rect.top, rect.right, rect.bottom);
                }
            } catch (ReflectiveOperationException e9) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e9.getMessage(), e9);
            }
        }
        return null;
    }

    private static void v() {
        try {
            f3311i = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            f3312j = cls;
            f3313k = cls.getDeclaredField("mVisibleInsets");
            f3314l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            f3313k.setAccessible(true);
            f3314l.setAccessible(true);
        } catch (ReflectiveOperationException e9) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e9.getMessage(), e9);
        }
        h = true;
    }

    @Override // j0.z0
    public void d(View view) {
        c0.c cVarU = u(view);
        if (cVarU == null) {
            cVarU = c0.c.f988e;
        }
        w(cVarU);
    }

    @Override // j0.z0
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return Objects.equals(this.f3319g, ((u0) obj).f3319g);
        }
        return false;
    }

    @Override // j0.z0
    public c0.c f(int i6) {
        return r(i6, false);
    }

    @Override // j0.z0
    public final c0.c j() {
        if (this.f3317e == null) {
            WindowInsets windowInsets = this.f3315c;
            this.f3317e = c0.c.a(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.f3317e;
    }

    @Override // j0.z0
    public b1 l(int i6, int i9, int i10, int i11) {
        b1 b1VarG = b1.g(this.f3315c, null);
        int i12 = Build.VERSION.SDK_INT;
        t0 s0Var = i12 >= 30 ? new s0(b1VarG) : i12 >= 29 ? new r0(b1VarG) : new q0(b1VarG);
        s0Var.d(b1.e(j(), i6, i9, i10, i11));
        s0Var.c(b1.e(h(), i6, i9, i10, i11));
        return s0Var.b();
    }

    @Override // j0.z0
    public boolean n() {
        return this.f3315c.isRound();
    }

    @Override // j0.z0
    public void o(c0.c[] cVarArr) {
        this.f3316d = cVarArr;
    }

    @Override // j0.z0
    public void p(b1 b1Var) {
        this.f3318f = b1Var;
    }

    public c0.c s(int i6, boolean z5) {
        c0.c cVarH;
        int i9;
        if (i6 == 1) {
            return z5 ? c0.c.a(0, Math.max(t().f990b, j().f990b), 0, 0) : c0.c.a(0, j().f990b, 0, 0);
        }
        if (i6 == 2) {
            if (z5) {
                c0.c cVarT = t();
                c0.c cVarH2 = h();
                return c0.c.a(Math.max(cVarT.f989a, cVarH2.f989a), 0, Math.max(cVarT.f991c, cVarH2.f991c), Math.max(cVarT.f992d, cVarH2.f992d));
            }
            c0.c cVarJ = j();
            b1 b1Var = this.f3318f;
            cVarH = b1Var != null ? b1Var.f3254a.h() : null;
            int iMin = cVarJ.f992d;
            if (cVarH != null) {
                iMin = Math.min(iMin, cVarH.f992d);
            }
            return c0.c.a(cVarJ.f989a, 0, cVarJ.f991c, iMin);
        }
        c0.c cVar = c0.c.f988e;
        if (i6 == 8) {
            c0.c[] cVarArr = this.f3316d;
            cVarH = cVarArr != null ? cVarArr[3] : null;
            if (cVarH != null) {
                return cVarH;
            }
            c0.c cVarJ2 = j();
            c0.c cVarT2 = t();
            int i10 = cVarJ2.f992d;
            if (i10 > cVarT2.f992d) {
                return c0.c.a(0, 0, 0, i10);
            }
            c0.c cVar2 = this.f3319g;
            if (cVar2 != null && !cVar2.equals(cVar) && (i9 = this.f3319g.f992d) > cVarT2.f992d) {
                return c0.c.a(0, 0, 0, i9);
            }
        } else {
            if (i6 == 16) {
                return i();
            }
            if (i6 == 32) {
                return g();
            }
            if (i6 == 64) {
                return k();
            }
            if (i6 == 128) {
                b1 b1Var2 = this.f3318f;
                h hVarE = b1Var2 != null ? b1Var2.f3254a.e() : e();
                if (hVarE != null) {
                    int i11 = Build.VERSION.SDK_INT;
                    return c0.c.a(i11 >= 28 ? a0.a.f(hVarE.f3276a) : 0, i11 >= 28 ? a0.a.h(hVarE.f3276a) : 0, i11 >= 28 ? a0.a.g(hVarE.f3276a) : 0, i11 >= 28 ? a0.a.e(hVarE.f3276a) : 0);
                }
            }
        }
        return cVar;
    }

    public void w(c0.c cVar) {
        this.f3319g = cVar;
    }
}
