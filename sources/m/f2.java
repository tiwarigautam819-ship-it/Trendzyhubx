package m;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.TypedValue;
import com.YaarWin.app.R;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f2 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static f2 f3951i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakHashMap f3953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public s.j f3954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public s.k f3955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final WeakHashMap f3956d = new WeakHashMap(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TypedValue f3957e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3958f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public com.google.android.gms.common.internal.g f3959g;
    public static final PorterDuff.Mode h = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final d2 f3952j = new d2(6);

    public static synchronized f2 d() {
        try {
            if (f3951i == null) {
                f2 f2Var = new f2();
                f3951i = f2Var;
                j(f2Var);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f3951i;
    }

    public static synchronized PorterDuffColorFilter h(int i6, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        d2 d2Var = f3952j;
        d2Var.getClass();
        int i9 = (31 + i6) * 31;
        porterDuffColorFilter = (PorterDuffColorFilter) d2Var.get(Integer.valueOf(mode.hashCode() + i9));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i6, mode);
        }
        return porterDuffColorFilter;
    }

    public static void j(f2 f2Var) {
        if (Build.VERSION.SDK_INT < 24) {
            f2Var.a("vector", new e2(3));
            f2Var.a("animated-vector", new e2(2));
            f2Var.a("animated-selector", new e2(1));
            f2Var.a("drawable", new e2(0));
        }
    }

    public final void a(String str, e2 e2Var) {
        if (this.f3954b == null) {
            this.f3954b = new s.j(0);
        }
        this.f3954b.put(str, e2Var);
    }

    public final synchronized void b(Context context, long j3, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                s.g gVar = (s.g) this.f3956d.get(context);
                if (gVar == null) {
                    gVar = new s.g();
                    this.f3956d.put(context, gVar);
                }
                gVar.d(j3, new WeakReference(constantState));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final Drawable c(Context context, int i6) {
        if (this.f3957e == null) {
            this.f3957e = new TypedValue();
        }
        TypedValue typedValue = this.f3957e;
        context.getResources().getValue(i6, typedValue, true);
        long j3 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        Drawable drawableE = e(context, j3);
        if (drawableE != null) {
            return drawableE;
        }
        LayerDrawable layerDrawableF = null;
        if (this.f3959g != null) {
            if (i6 == R.drawable.abc_cab_background_top_material) {
                layerDrawableF = new LayerDrawable(new Drawable[]{f(context, R.drawable.abc_cab_background_internal_bg), f(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i6 == R.drawable.abc_ratingbar_material) {
                layerDrawableF = com.google.android.gms.common.internal.g.f(this, context, R.dimen.abc_star_big);
            } else if (i6 == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawableF = com.google.android.gms.common.internal.g.f(this, context, R.dimen.abc_star_medium);
            } else if (i6 == R.drawable.abc_ratingbar_small_material) {
                layerDrawableF = com.google.android.gms.common.internal.g.f(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawableF != null) {
            layerDrawableF.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, j3, layerDrawableF);
        }
        return layerDrawableF;
    }

    public final synchronized Drawable e(Context context, long j3) {
        Object obj;
        s.g gVar = (s.g) this.f3956d.get(context);
        if (gVar == null) {
            return null;
        }
        int iB = t.a.b(gVar.f5191b, gVar.f5193d, j3);
        if (iB < 0 || (obj = gVar.f5192c[iB]) == s.h.f5194a) {
            obj = null;
        }
        WeakReference weakReference = (WeakReference) obj;
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int iB2 = t.a.b(gVar.f5191b, gVar.f5193d, j3);
            if (iB2 >= 0) {
                Object[] objArr = gVar.f5192c;
                Object obj2 = objArr[iB2];
                Object obj3 = s.h.f5194a;
                if (obj2 != obj3) {
                    objArr[iB2] = obj3;
                    gVar.f5190a = true;
                }
            }
        }
        return null;
    }

    public final synchronized Drawable f(Context context, int i6) {
        return g(context, i6, false);
    }

    public final synchronized Drawable g(Context context, int i6, boolean z5) {
        Drawable drawableK;
        try {
            if (!this.f3958f) {
                this.f3958f = true;
                Drawable drawableF = f(context, R.drawable.abc_vector_test);
                if (drawableF == null || (!(drawableF instanceof h1.q) && !"android.graphics.drawable.VectorDrawable".equals(drawableF.getClass().getName()))) {
                    this.f3958f = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            drawableK = k(context, i6);
            if (drawableK == null) {
                drawableK = c(context, i6);
            }
            if (drawableK == null) {
                drawableK = context.getDrawable(i6);
            }
            if (drawableK != null) {
                drawableK = n(context, i6, z5, drawableK);
            }
            if (drawableK != null) {
                g1.a(drawableK);
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawableK;
    }

    public final synchronized ColorStateList i(Context context, int i6) {
        ColorStateList colorStateList;
        s.k kVar;
        Object obj;
        WeakHashMap weakHashMap = this.f3953a;
        ColorStateList colorStateListG = null;
        if (weakHashMap == null || (kVar = (s.k) weakHashMap.get(context)) == null) {
            colorStateList = null;
        } else {
            int iA = t.a.a(kVar.f5201c, i6, kVar.f5199a);
            if (iA < 0 || (obj = kVar.f5200b[iA]) == s.h.f5195b) {
                obj = null;
            }
            colorStateList = (ColorStateList) obj;
        }
        if (colorStateList == null) {
            com.google.android.gms.common.internal.g gVar = this.f3959g;
            if (gVar != null) {
                colorStateListG = gVar.g(context, i6);
            }
            if (colorStateListG != null) {
                if (this.f3953a == null) {
                    this.f3953a = new WeakHashMap();
                }
                s.k kVar2 = (s.k) this.f3953a.get(context);
                if (kVar2 == null) {
                    kVar2 = new s.k();
                    this.f3953a.put(context, kVar2);
                }
                kVar2.a(i6, colorStateListG);
            }
            colorStateList = colorStateListG;
        }
        return colorStateList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
    
        if (r10.f3954b.get(r0) != null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.drawable.Drawable k(android.content.Context r11, int r12) {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: m.f2.k(android.content.Context, int):android.graphics.drawable.Drawable");
    }

    public final synchronized void l(Context context) {
        s.g gVar = (s.g) this.f3956d.get(context);
        if (gVar != null) {
            int i6 = gVar.f5193d;
            Object[] objArr = gVar.f5192c;
            for (int i9 = 0; i9 < i6; i9++) {
                objArr[i9] = null;
            }
            gVar.f5193d = 0;
            gVar.f5190a = false;
        }
    }

    public final synchronized void m(com.google.android.gms.common.internal.g gVar) {
        this.f3959g = gVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.drawable.Drawable n(android.content.Context r8, int r9, boolean r10, android.graphics.drawable.Drawable r11) {
        /*
            Method dump skipped, instruction units count: 270
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: m.f2.n(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }
}
