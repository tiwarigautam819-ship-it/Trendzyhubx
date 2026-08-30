package j0;

import android.os.Build;
import android.view.View;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class z0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b1 f3333b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b1 f3334a;

    static {
        int i6 = Build.VERSION.SDK_INT;
        f3333b = (i6 >= 30 ? new s0() : i6 >= 29 ? new r0() : new q0()).b().f3254a.a().f3254a.b().f3254a.c();
    }

    public z0(b1 b1Var) {
        this.f3334a = b1Var;
    }

    public b1 a() {
        return this.f3334a;
    }

    public b1 b() {
        return this.f3334a;
    }

    public b1 c() {
        return this.f3334a;
    }

    public h e() {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z0)) {
            return false;
        }
        z0 z0Var = (z0) obj;
        return n() == z0Var.n() && m() == z0Var.m() && Objects.equals(j(), z0Var.j()) && Objects.equals(h(), z0Var.h()) && Objects.equals(e(), z0Var.e());
    }

    public c0.c f(int i6) {
        return c0.c.f988e;
    }

    public c0.c g() {
        return j();
    }

    public c0.c h() {
        return c0.c.f988e;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(n()), Boolean.valueOf(m()), j(), h(), e());
    }

    public c0.c i() {
        return j();
    }

    public c0.c j() {
        return c0.c.f988e;
    }

    public c0.c k() {
        return j();
    }

    public b1 l(int i6, int i9, int i10, int i11) {
        return f3333b;
    }

    public boolean m() {
        return false;
    }

    public boolean n() {
        return false;
    }

    public void d(View view) {
    }

    public void o(c0.c[] cVarArr) {
    }

    public void p(b1 b1Var) {
    }

    public void q(c0.c cVar) {
    }
}
