package j0;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b1 f3253b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z0 f3254a;

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f3253b = y0.f3331q;
        } else {
            f3253b = z0.f3333b;
        }
    }

    public b1(WindowInsets windowInsets) {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 30) {
            this.f3254a = new y0(this, windowInsets);
            return;
        }
        if (i6 >= 29) {
            this.f3254a = new x0(this, windowInsets);
        } else if (i6 >= 28) {
            this.f3254a = new w0(this, windowInsets);
        } else {
            this.f3254a = new v0(this, windowInsets);
        }
    }

    public static c0.c e(c0.c cVar, int i6, int i9, int i10, int i11) {
        int iMax = Math.max(0, cVar.f989a - i6);
        int iMax2 = Math.max(0, cVar.f990b - i9);
        int iMax3 = Math.max(0, cVar.f991c - i10);
        int iMax4 = Math.max(0, cVar.f992d - i11);
        return (iMax == i6 && iMax2 == i9 && iMax3 == i10 && iMax4 == i11) ? cVar : c0.c.a(iMax, iMax2, iMax3, iMax4);
    }

    public static b1 g(WindowInsets windowInsets, View view) {
        windowInsets.getClass();
        b1 b1Var = new b1(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            WeakHashMap weakHashMap = k0.f3286a;
            b1 b1VarA = e0.a(view);
            z0 z0Var = b1Var.f3254a;
            z0Var.p(b1VarA);
            z0Var.d(view.getRootView());
        }
        return b1Var;
    }

    public final int a() {
        return this.f3254a.j().f992d;
    }

    public final int b() {
        return this.f3254a.j().f989a;
    }

    public final int c() {
        return this.f3254a.j().f991c;
    }

    public final int d() {
        return this.f3254a.j().f990b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b1) {
            return Objects.equals(this.f3254a, ((b1) obj).f3254a);
        }
        return false;
    }

    public final WindowInsets f() {
        z0 z0Var = this.f3254a;
        if (z0Var instanceof u0) {
            return ((u0) z0Var).f3315c;
        }
        return null;
    }

    public final int hashCode() {
        z0 z0Var = this.f3254a;
        if (z0Var == null) {
            return 0;
        }
        return z0Var.hashCode();
    }

    public b1() {
        this.f3254a = new z0(this);
    }
}
