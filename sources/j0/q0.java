package j0;

import android.graphics.Rect;
import android.util.Log;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q0 extends t0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Field f3301c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f3302d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Constructor f3303e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f3304f = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WindowInsets f3305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c0.c f3306b;

    public q0() {
        this.f3305a = e();
    }

    private static WindowInsets e() {
        if (!f3302d) {
            try {
                f3301c = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException e9) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e9);
            }
            f3302d = true;
        }
        Field field = f3301c;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException e10) {
                Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e10);
            }
        }
        if (!f3304f) {
            try {
                f3303e = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException e11) {
                Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e11);
            }
            f3304f = true;
        }
        Constructor constructor = f3303e;
        if (constructor != null) {
            try {
                return (WindowInsets) constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e12) {
                Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e12);
            }
        }
        return null;
    }

    @Override // j0.t0
    public b1 b() {
        a();
        b1 b1VarG = b1.g(this.f3305a, null);
        z0 z0Var = b1VarG.f3254a;
        z0Var.o(null);
        z0Var.q(this.f3306b);
        return b1VarG;
    }

    @Override // j0.t0
    public void c(c0.c cVar) {
        this.f3306b = cVar;
    }

    @Override // j0.t0
    public void d(c0.c cVar) {
        WindowInsets windowInsets = this.f3305a;
        if (windowInsets != null) {
            this.f3305a = windowInsets.replaceSystemWindowInsets(cVar.f989a, cVar.f990b, cVar.f991c, cVar.f992d);
        }
    }

    public q0(b1 b1Var) {
        super(b1Var);
        this.f3305a = b1Var.f();
    }
}
