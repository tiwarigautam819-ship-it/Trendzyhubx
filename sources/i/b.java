package i;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.StateSet;
import s.g;
import s.h;
import s.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends Drawable.ConstantState {
    public boolean A;
    public ColorFilter B;
    public boolean C;
    public ColorStateList D;
    public PorterDuff.Mode E;
    public boolean F;
    public boolean G;
    public int[][] H;
    public g I;
    public k J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f3029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Resources f3030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SparseArray f3034f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Drawable[] f3035g;
    public int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3036i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3037j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Rect f3038k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3039l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3040m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3041n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3042o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3043p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3044q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f3045r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f3046s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f3047t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f3048u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f3049v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f3050w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f3051x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f3052y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f3053z;

    public b(b bVar, e eVar, Resources resources) {
        this.f3036i = false;
        this.f3039l = false;
        this.f3050w = true;
        this.f3052y = 0;
        this.f3053z = 0;
        this.f3029a = eVar;
        this.f3030b = resources != null ? resources : bVar != null ? bVar.f3030b : null;
        int i6 = bVar != null ? bVar.f3031c : 0;
        int i9 = e.B;
        i6 = resources != null ? resources.getDisplayMetrics().densityDpi : i6;
        i6 = i6 == 0 ? 160 : i6;
        this.f3031c = i6;
        if (bVar != null) {
            this.f3032d = bVar.f3032d;
            this.f3033e = bVar.f3033e;
            this.f3048u = true;
            this.f3049v = true;
            this.f3036i = bVar.f3036i;
            this.f3039l = bVar.f3039l;
            this.f3050w = bVar.f3050w;
            this.f3051x = bVar.f3051x;
            this.f3052y = bVar.f3052y;
            this.f3053z = bVar.f3053z;
            this.A = bVar.A;
            this.B = bVar.B;
            this.C = bVar.C;
            this.D = bVar.D;
            this.E = bVar.E;
            this.F = bVar.F;
            this.G = bVar.G;
            if (bVar.f3031c == i6) {
                if (bVar.f3037j) {
                    this.f3038k = bVar.f3038k != null ? new Rect(bVar.f3038k) : null;
                    this.f3037j = true;
                }
                if (bVar.f3040m) {
                    this.f3041n = bVar.f3041n;
                    this.f3042o = bVar.f3042o;
                    this.f3043p = bVar.f3043p;
                    this.f3044q = bVar.f3044q;
                    this.f3040m = true;
                }
            }
            if (bVar.f3045r) {
                this.f3046s = bVar.f3046s;
                this.f3045r = true;
            }
            if (bVar.f3047t) {
                this.f3047t = true;
            }
            Drawable[] drawableArr = bVar.f3035g;
            this.f3035g = new Drawable[drawableArr.length];
            this.h = bVar.h;
            SparseArray sparseArray = bVar.f3034f;
            if (sparseArray != null) {
                this.f3034f = sparseArray.clone();
            } else {
                this.f3034f = new SparseArray(this.h);
            }
            int i10 = this.h;
            for (int i11 = 0; i11 < i10; i11++) {
                Drawable drawable = drawableArr[i11];
                if (drawable != null) {
                    Drawable.ConstantState constantState = drawable.getConstantState();
                    if (constantState != null) {
                        this.f3034f.put(i11, constantState);
                    } else {
                        this.f3035g[i11] = drawableArr[i11];
                    }
                }
            }
        } else {
            this.f3035g = new Drawable[10];
            this.h = 0;
        }
        if (bVar != null) {
            this.H = bVar.H;
        } else {
            this.H = new int[this.f3035g.length][];
        }
        if (bVar != null) {
            this.I = bVar.I;
            this.J = bVar.J;
        } else {
            this.I = new g();
            this.J = new k();
        }
    }

    public final int a(Drawable drawable) {
        int i6 = this.h;
        if (i6 >= this.f3035g.length) {
            int i9 = i6 + 10;
            Drawable[] drawableArr = new Drawable[i9];
            Drawable[] drawableArr2 = this.f3035g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i6);
            }
            this.f3035g = drawableArr;
            int[][] iArr = new int[i9][];
            System.arraycopy(this.H, 0, iArr, 0, i6);
            this.H = iArr;
        }
        drawable.mutate();
        drawable.setVisible(false, true);
        drawable.setCallback(this.f3029a);
        this.f3035g[i6] = drawable;
        this.h++;
        this.f3033e = drawable.getChangingConfigurations() | this.f3033e;
        this.f3045r = false;
        this.f3047t = false;
        this.f3038k = null;
        this.f3037j = false;
        this.f3040m = false;
        this.f3048u = false;
        return i6;
    }

    public final void b() {
        this.f3040m = true;
        c();
        int i6 = this.h;
        Drawable[] drawableArr = this.f3035g;
        this.f3042o = -1;
        this.f3041n = -1;
        this.f3044q = 0;
        this.f3043p = 0;
        for (int i9 = 0; i9 < i6; i9++) {
            Drawable drawable = drawableArr[i9];
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (intrinsicWidth > this.f3041n) {
                this.f3041n = intrinsicWidth;
            }
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicHeight > this.f3042o) {
                this.f3042o = intrinsicHeight;
            }
            int minimumWidth = drawable.getMinimumWidth();
            if (minimumWidth > this.f3043p) {
                this.f3043p = minimumWidth;
            }
            int minimumHeight = drawable.getMinimumHeight();
            if (minimumHeight > this.f3044q) {
                this.f3044q = minimumHeight;
            }
        }
    }

    public final void c() {
        SparseArray sparseArray = this.f3034f;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i6 = 0; i6 < size; i6++) {
                int iKeyAt = this.f3034f.keyAt(i6);
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.f3034f.valueAt(i6);
                Drawable[] drawableArr = this.f3035g;
                Drawable drawableNewDrawable = constantState.newDrawable(this.f3030b);
                drawableNewDrawable.setLayoutDirection(this.f3051x);
                Drawable drawableMutate = drawableNewDrawable.mutate();
                drawableMutate.setCallback(this.f3029a);
                drawableArr[iKeyAt] = drawableMutate;
            }
            this.f3034f = null;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        int i6 = this.h;
        Drawable[] drawableArr = this.f3035g;
        for (int i9 = 0; i9 < i6; i9++) {
            Drawable drawable = drawableArr[i9];
            if (drawable == null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.f3034f.get(i9);
                if (constantState != null && constantState.canApplyTheme()) {
                    return true;
                }
            } else if (drawable.canApplyTheme()) {
                return true;
            }
        }
        return false;
    }

    public final Drawable d(int i6) {
        int iIndexOfKey;
        Drawable drawable = this.f3035g[i6];
        if (drawable != null) {
            return drawable;
        }
        SparseArray sparseArray = this.f3034f;
        if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i6)) < 0) {
            return null;
        }
        Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f3034f.valueAt(iIndexOfKey)).newDrawable(this.f3030b);
        drawableNewDrawable.setLayoutDirection(this.f3051x);
        Drawable drawableMutate = drawableNewDrawable.mutate();
        drawableMutate.setCallback(this.f3029a);
        this.f3035g[i6] = drawableMutate;
        this.f3034f.removeAt(iIndexOfKey);
        if (this.f3034f.size() == 0) {
            this.f3034f = null;
        }
        return drawableMutate;
    }

    public final int e(int i6) {
        Object obj;
        if (i6 < 0) {
            return 0;
        }
        k kVar = this.J;
        Object obj2 = 0;
        int iA = t.a.a(kVar.f5201c, i6, kVar.f5199a);
        if (iA >= 0 && (obj = kVar.f5200b[iA]) != h.f5195b) {
            obj2 = obj;
        }
        return ((Integer) obj2).intValue();
    }

    public final int f(int[] iArr) {
        int[][] iArr2 = this.H;
        int i6 = this.h;
        for (int i9 = 0; i9 < i6; i9++) {
            if (StateSet.stateSetMatches(iArr2[i9], iArr)) {
                return i9;
            }
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.f3032d | this.f3033e;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new e(this, null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new e(this, resources);
    }
}
