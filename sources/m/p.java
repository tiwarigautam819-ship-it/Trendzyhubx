package m;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PorterDuff.Mode f4059b = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static p f4060c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f2 f4061a;

    public static synchronized p a() {
        try {
            if (f4060c == null) {
                c();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f4060c;
    }

    public static synchronized void c() {
        if (f4060c == null) {
            p pVar = new p();
            f4060c = pVar;
            pVar.f4061a = f2.d();
            f4060c.f4061a.m(new com.google.android.gms.common.internal.g(3));
        }
    }

    public static void d(Drawable drawable, x2 x2Var, int[] iArr) {
        PorterDuff.Mode mode = f2.h;
        int[] state = drawable.getState();
        if (drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z5 = x2Var.f4172b;
        if (z5 || x2Var.f4171a) {
            PorterDuffColorFilter porterDuffColorFilterH = null;
            ColorStateList colorStateList = z5 ? (ColorStateList) x2Var.f4173c : null;
            PorterDuff.Mode mode2 = x2Var.f4171a ? (PorterDuff.Mode) x2Var.f4174d : f2.h;
            if (colorStateList != null && mode2 != null) {
                porterDuffColorFilterH = f2.h(colorStateList.getColorForState(iArr, 0), mode2);
            }
            drawable.setColorFilter(porterDuffColorFilterH);
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    public final synchronized Drawable b(Context context, int i6) {
        return this.f4061a.f(context, i6);
    }
}
