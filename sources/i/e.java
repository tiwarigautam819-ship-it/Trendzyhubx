package i;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.fragment.app.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends Drawable implements Drawable.Callback {
    public static final /* synthetic */ int B = 0;
    public boolean A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f3059a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Rect f3060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Drawable f3061c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Drawable f3062d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3064f;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p f3066i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f3067j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f3068k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public h1.b f3069l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public b f3070m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f3071v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public b f3072w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public android.support.v4.media.session.a f3073x;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3063e = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3065g = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f3074y = -1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f3075z = -1;

    public e(b bVar, Resources resources) {
        i(new b(bVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x0272, code lost:
    
        r5.onStateChange(r5.getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0279, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static i.e c(android.content.Context r24, android.content.res.Resources r25, android.content.res.XmlResourceParser r26, android.util.AttributeSet r27, android.content.res.Resources.Theme r28) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 664
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i.e.c(android.content.Context, android.content.res.Resources, android.content.res.XmlResourceParser, android.util.AttributeSet, android.content.res.Resources$Theme):i.e");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0066 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f3064f = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.f3061c
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r8 = 0
            if (r3 == 0) goto L36
            long r9 = r13.f3067j
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 == 0) goto L38
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.f3063e
            r3.setAlpha(r9)
            r13.f3067j = r6
            goto L38
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r9 = (int) r9
            i.b r10 = r13.f3059a
            int r10 = r10.f3052y
            int r9 = r9 / r10
            int r9 = 255 - r9
            int r10 = r13.f3063e
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = r0
            goto L39
        L36:
            r13.f3067j = r6
        L38:
            r3 = r8
        L39:
            android.graphics.drawable.Drawable r9 = r13.f3062d
            if (r9 == 0) goto L61
            long r10 = r13.f3068k
            int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r12 == 0) goto L63
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L50
            r9.setVisible(r8, r8)
            r0 = 0
            r13.f3062d = r0
            r13.f3068k = r6
            goto L63
        L50:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            i.b r4 = r13.f3059a
            int r4 = r4.f3053z
            int r3 = r3 / r4
            int r4 = r13.f3063e
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L64
        L61:
            r13.f3068k = r6
        L63:
            r0 = r3
        L64:
            if (r14 == 0) goto L70
            if (r0 == 0) goto L70
            androidx.fragment.app.p r14 = r13.f3066i
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: i.e.a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        b(theme);
        onStateChange(getState());
    }

    public final void b(Resources.Theme theme) {
        b bVar = this.f3059a;
        if (theme == null) {
            bVar.getClass();
            return;
        }
        bVar.c();
        int i6 = bVar.h;
        Drawable[] drawableArr = bVar.f3035g;
        for (int i9 = 0; i9 < i6; i9++) {
            Drawable drawable = drawableArr[i9];
            if (drawable != null && drawable.canApplyTheme()) {
                drawableArr[i9].applyTheme(theme);
                bVar.f3033e |= drawableArr[i9].getChangingConfigurations();
            }
        }
        Resources resources = theme.getResources();
        if (resources != null) {
            bVar.f3030b = resources;
            int i10 = resources.getDisplayMetrics().densityDpi;
            if (i10 == 0) {
                i10 = 160;
            }
            int i11 = bVar.f3031c;
            bVar.f3031c = i10;
            if (i11 != i10) {
                bVar.f3040m = false;
                bVar.f3037j = false;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return this.f3059a.canApplyTheme();
    }

    public final void d(Drawable drawable) {
        if (this.f3069l == null) {
            this.f3069l = new h1.b();
        }
        h1.b bVar = this.f3069l;
        bVar.f2897b = drawable.getCallback();
        drawable.setCallback(bVar);
        try {
            if (this.f3059a.f3052y <= 0 && this.f3064f) {
                drawable.setAlpha(this.f3063e);
            }
            b bVar2 = this.f3059a;
            if (bVar2.C) {
                drawable.setColorFilter(bVar2.B);
            } else {
                if (bVar2.F) {
                    drawable.setTintList(bVar2.D);
                }
                b bVar3 = this.f3059a;
                if (bVar3.G) {
                    drawable.setTintMode(bVar3.E);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f3059a.f3050w);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            drawable.setLayoutDirection(getLayoutDirection());
            drawable.setAutoMirrored(this.f3059a.A);
            Rect rect = this.f3060b;
            if (rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
            h1.b bVar4 = this.f3069l;
            Drawable.Callback callback = (Drawable.Callback) bVar4.f2897b;
            bVar4.f2897b = null;
            drawable.setCallback(callback);
        } catch (Throwable th) {
            h1.b bVar5 = this.f3069l;
            Drawable.Callback callback2 = (Drawable.Callback) bVar5.f2897b;
            bVar5.f2897b = null;
            drawable.setCallback(callback2);
            throw th;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f3061c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f3062d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    public final void e() {
        boolean z5;
        Drawable drawable = this.f3062d;
        boolean z8 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f3062d = null;
            z5 = true;
        } else {
            z5 = false;
        }
        Drawable drawable2 = this.f3061c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f3064f) {
                this.f3061c.setAlpha(this.f3063e);
            }
        }
        if (this.f3068k != 0) {
            this.f3068k = 0L;
            z5 = true;
        }
        if (this.f3067j != 0) {
            this.f3067j = 0L;
        } else {
            z8 = z5;
        }
        if (z8) {
            invalidateSelf();
        }
    }

    public final Drawable f() {
        if (!this.h && super.mutate() == this) {
            b bVar = new b(this.f3072w, this, null);
            bVar.I = bVar.I.clone();
            bVar.J = bVar.J.clone();
            i(bVar);
            this.h = true;
        }
        return this;
    }

    public final Drawable g() {
        if (!this.f3071v) {
            f();
            b bVar = this.f3070m;
            bVar.I = bVar.I.clone();
            bVar.J = bVar.J.clone();
            this.f3071v = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f3063e;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f3059a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        boolean z5;
        b bVar = this.f3059a;
        if (!bVar.f3048u) {
            bVar.c();
            bVar.f3048u = true;
            int i6 = bVar.h;
            Drawable[] drawableArr = bVar.f3035g;
            int i9 = 0;
            while (true) {
                if (i9 >= i6) {
                    bVar.f3049v = true;
                    z5 = true;
                    break;
                }
                if (drawableArr[i9].getConstantState() == null) {
                    bVar.f3049v = false;
                    z5 = false;
                    break;
                }
                i9++;
            }
        } else {
            z5 = bVar.f3049v;
        }
        if (!z5) {
            return null;
        }
        this.f3059a.f3032d = getChangingConfigurations();
        return this.f3059a;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable getCurrent() {
        return this.f3061c;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getHotspotBounds(Rect rect) {
        Rect rect2 = this.f3060b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        b bVar = this.f3059a;
        if (bVar.f3039l) {
            if (!bVar.f3040m) {
                bVar.b();
            }
            return bVar.f3042o;
        }
        Drawable drawable = this.f3061c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        b bVar = this.f3059a;
        if (bVar.f3039l) {
            if (!bVar.f3040m) {
                bVar.b();
            }
            return bVar.f3041n;
        }
        Drawable drawable = this.f3061c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        b bVar = this.f3059a;
        if (bVar.f3039l) {
            if (!bVar.f3040m) {
                bVar.b();
            }
            return bVar.f3044q;
        }
        Drawable drawable = this.f3061c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        b bVar = this.f3059a;
        if (bVar.f3039l) {
            if (!bVar.f3040m) {
                bVar.b();
            }
            return bVar.f3043p;
        }
        Drawable drawable = this.f3061c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f3061c;
        if (drawable != null && drawable.isVisible()) {
            b bVar = this.f3059a;
            if (bVar.f3045r) {
                return bVar.f3046s;
            }
            bVar.c();
            int i6 = bVar.h;
            Drawable[] drawableArr = bVar.f3035g;
            opacity = i6 > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i9 = 1; i9 < i6; i9++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i9].getOpacity());
            }
            bVar.f3046s = opacity;
            bVar.f3045r = true;
        }
        return opacity;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Drawable drawable = this.f3061c;
        if (drawable != null) {
            drawable.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        b bVar = this.f3059a;
        Rect rect2 = null;
        boolean padding = false;
        if (!bVar.f3036i) {
            Rect rect3 = bVar.f3038k;
            if (rect3 != null || bVar.f3037j) {
                rect2 = rect3;
            } else {
                bVar.c();
                Rect rect4 = new Rect();
                int i6 = bVar.h;
                Drawable[] drawableArr = bVar.f3035g;
                for (int i9 = 0; i9 < i6; i9++) {
                    if (drawableArr[i9].getPadding(rect4)) {
                        if (rect2 == null) {
                            rect2 = new Rect(0, 0, 0, 0);
                        }
                        int i10 = rect4.left;
                        if (i10 > rect2.left) {
                            rect2.left = i10;
                        }
                        int i11 = rect4.top;
                        if (i11 > rect2.top) {
                            rect2.top = i11;
                        }
                        int i12 = rect4.right;
                        if (i12 > rect2.right) {
                            rect2.right = i12;
                        }
                        int i13 = rect4.bottom;
                        if (i13 > rect2.bottom) {
                            rect2.bottom = i13;
                        }
                    }
                }
                bVar.f3037j = true;
                bVar.f3038k = rect2;
            }
        }
        if (rect2 != null) {
            rect.set(rect2);
            if ((rect2.left | rect2.top | rect2.bottom | rect2.right) != 0) {
                padding = true;
            }
        } else {
            Drawable drawable = this.f3061c;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (this.f3059a.A && getLayoutDirection() == 1) {
            int i14 = rect.left;
            rect.left = rect.right;
            rect.right = i14;
        }
        return padding;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean h(int r10) {
        /*
            r9 = this;
            int r0 = r9.f3065g
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            i.b r0 = r9.f3059a
            int r0 = r0.f3053z
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.f3062d
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.f3061c
            if (r0 == 0) goto L29
            r9.f3062d = r0
            i.b r0 = r9.f3059a
            int r0 = r0.f3053z
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.f3068k = r0
            goto L35
        L29:
            r9.f3062d = r4
            r9.f3068k = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.f3061c
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            i.b r0 = r9.f3059a
            int r1 = r0.h
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.d(r10)
            r9.f3061c = r0
            r9.f3065g = r10
            if (r0 == 0) goto L5a
            i.b r10 = r9.f3059a
            int r10 = r10.f3052y
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.f3067j = r2
        L51:
            r9.d(r0)
            goto L5a
        L55:
            r9.f3061c = r4
            r10 = -1
            r9.f3065g = r10
        L5a:
            long r0 = r9.f3067j
            int r10 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            r0 = 1
            if (r10 != 0) goto L67
            long r1 = r9.f3068k
            int r10 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r10 == 0) goto L7a
        L67:
            androidx.fragment.app.p r10 = r9.f3066i
            if (r10 != 0) goto L74
            androidx.fragment.app.p r10 = new androidx.fragment.app.p
            r1 = 5
            r10.<init>(r1, r9)
            r9.f3066i = r10
            goto L77
        L74:
            r9.unscheduleSelf(r10)
        L77:
            r9.a(r0)
        L7a:
            r9.invalidateSelf()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: i.e.h(int):boolean");
    }

    public final void i(b bVar) {
        this.f3059a = bVar;
        int i6 = this.f3065g;
        if (i6 >= 0) {
            Drawable drawableD = bVar.d(i6);
            this.f3061c = drawableD;
            if (drawableD != null) {
                d(drawableD);
            }
        }
        this.f3062d = null;
        this.f3070m = bVar;
        this.f3072w = bVar;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        b bVar = this.f3059a;
        if (bVar != null) {
            bVar.f3045r = false;
            bVar.f3047t = false;
        }
        if (drawable != this.f3061c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        return this.f3059a.A;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    public final boolean j(boolean z5, boolean z8) {
        boolean visible = super.setVisible(z5, z8);
        Drawable drawable = this.f3062d;
        if (drawable != null) {
            drawable.setVisible(z5, z8);
        }
        Drawable drawable2 = this.f3061c;
        if (drawable2 != null) {
            drawable2.setVisible(z5, z8);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        e();
        android.support.v4.media.session.a aVar = this.f3073x;
        if (aVar != null) {
            aVar.m();
            this.f3073x = null;
            h(this.f3074y);
            this.f3074y = -1;
            this.f3075z = -1;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.A) {
            g();
            b bVar = this.f3072w;
            bVar.I = bVar.I.clone();
            bVar.J = bVar.J.clone();
            this.A = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3062d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f3061c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i6) {
        b bVar = this.f3059a;
        int i9 = this.f3065g;
        int i10 = bVar.h;
        Drawable[] drawableArr = bVar.f3035g;
        boolean z5 = false;
        for (int i11 = 0; i11 < i10; i11++) {
            Drawable drawable = drawableArr[i11];
            if (drawable != null) {
                boolean layoutDirection = drawable.setLayoutDirection(i6);
                if (i11 == i9) {
                    z5 = layoutDirection;
                }
            }
        }
        bVar.f3051x = i6;
        return z5;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i6) {
        Drawable drawable = this.f3062d;
        if (drawable != null) {
            return drawable.setLevel(i6);
        }
        Drawable drawable2 = this.f3061c;
        if (drawable2 != null) {
            return drawable2.setLevel(i6);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d3  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onStateChange(int[] r15) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i.e.onStateChange(int[]):boolean");
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j3) {
        if (drawable != this.f3061c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j3);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        if (this.f3064f && this.f3063e == i6) {
            return;
        }
        this.f3064f = true;
        this.f3063e = i6;
        Drawable drawable = this.f3061c;
        if (drawable != null) {
            if (this.f3067j == 0) {
                drawable.setAlpha(i6);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z5) {
        b bVar = this.f3059a;
        if (bVar.A != z5) {
            bVar.A = z5;
            Drawable drawable = this.f3061c;
            if (drawable != null) {
                drawable.setAutoMirrored(z5);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        b bVar = this.f3059a;
        bVar.C = true;
        if (bVar.B != colorFilter) {
            bVar.B = colorFilter;
            Drawable drawable = this.f3061c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z5) {
        b bVar = this.f3059a;
        if (bVar.f3050w != z5) {
            bVar.f3050w = z5;
            Drawable drawable = this.f3061c;
            if (drawable != null) {
                drawable.setDither(z5);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspot(float f9, float f10) {
        Drawable drawable = this.f3061c;
        if (drawable != null) {
            drawable.setHotspot(f9, f10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setHotspotBounds(int i6, int i9, int i10, int i11) {
        Rect rect = this.f3060b;
        if (rect == null) {
            this.f3060b = new Rect(i6, i9, i10, i11);
        } else {
            rect.set(i6, i9, i10, i11);
        }
        Drawable drawable = this.f3061c;
        if (drawable != null) {
            drawable.setHotspotBounds(i6, i9, i10, i11);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i6) {
        setTintList(ColorStateList.valueOf(i6));
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        b bVar = this.f3059a;
        bVar.F = true;
        if (bVar.D != colorStateList) {
            bVar.D = colorStateList;
            this.f3061c.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        b bVar = this.f3059a;
        bVar.G = true;
        if (bVar.E != mode) {
            bVar.E = mode;
            this.f3061c.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z5, boolean z8) {
        boolean zJ = j(z5, z8);
        android.support.v4.media.session.a aVar = this.f3073x;
        if (aVar != null && (zJ || z8)) {
            if (z5) {
                aVar.l();
                return zJ;
            }
            jumpToCurrentState();
        }
        return zJ;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.f3061c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
