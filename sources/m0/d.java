package m0;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import androidx.fragment.app.p;
import m.m1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements View.OnTouchListener {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f4186z = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f4187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AccelerateInterpolator f4188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m1 f4189c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p f4190d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float[] f4191e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float[] f4192f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f4193g;
    public final int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f4194i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float[] f4195j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float[] f4196k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4197l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4198m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f4199v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f4200w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f4201x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final m1 f4202y;

    public d(m1 m1Var) {
        a aVar = new a();
        aVar.f4182e = Long.MIN_VALUE;
        aVar.f4184g = -1L;
        aVar.f4183f = 0L;
        this.f4187a = aVar;
        this.f4188b = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.f4191e = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f4192f = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.f4194i = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.f4195j = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f4196k = fArr5;
        this.f4189c = m1Var;
        float f9 = Resources.getSystem().getDisplayMetrics().density;
        float f10 = ((int) ((1575.0f * f9) + 0.5f)) / 1000.0f;
        fArr5[0] = f10;
        fArr5[1] = f10;
        float f11 = ((int) ((f9 * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f11;
        fArr4[1] = f11;
        this.f4193g = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.h = f4186z;
        aVar.f4178a = 500;
        aVar.f4179b = 500;
        this.f4202y = m1Var;
    }

    public static float b(float f9, float f10, float f11) {
        return f9 > f11 ? f11 : f9 < f10 ? f10 : f9;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final float a(float r4, float r5, float r6, int r7) {
        /*
            r3 = this;
            float[] r0 = r3.f4191e
            r0 = r0[r7]
            float[] r1 = r3.f4192f
            r1 = r1[r7]
            float r0 = r0 * r5
            r2 = 0
            float r0 = b(r0, r2, r1)
            float r1 = r3.c(r4, r0)
            float r5 = r5 - r4
            float r4 = r3.c(r5, r0)
            float r4 = r4 - r1
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            android.view.animation.AccelerateInterpolator r0 = r3.f4188b
            if (r5 >= 0) goto L25
            float r4 = -r4
            float r4 = r0.getInterpolation(r4)
            float r4 = -r4
            goto L2d
        L25:
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r5 <= 0) goto L36
            float r4 = r0.getInterpolation(r4)
        L2d:
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r4 = b(r4, r5, r0)
            goto L37
        L36:
            r4 = r2
        L37:
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r5 != 0) goto L3c
            return r2
        L3c:
            float[] r0 = r3.f4194i
            r0 = r0[r7]
            float[] r1 = r3.f4195j
            r1 = r1[r7]
            float[] r2 = r3.f4196k
            r7 = r2[r7]
            float r0 = r0 * r6
            if (r5 <= 0) goto L51
            float r4 = r4 * r0
            float r4 = b(r4, r1, r7)
            return r4
        L51:
            float r4 = -r4
            float r4 = r4 * r0
            float r4 = b(r4, r1, r7)
            float r4 = -r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: m0.d.a(float, float, float, int):float");
    }

    public final float c(float f9, float f10) {
        if (f10 != 0.0f) {
            int i6 = this.f4193g;
            if (i6 == 0 || i6 == 1) {
                if (f9 < f10) {
                    if (f9 >= 0.0f) {
                        return 1.0f - (f9 / f10);
                    }
                    if (this.f4200w && i6 == 1) {
                        return 1.0f;
                    }
                }
            } else if (i6 == 2 && f9 < 0.0f) {
                return f9 / (-f10);
            }
        }
        return 0.0f;
    }

    public final void d() {
        int i6 = 0;
        if (this.f4198m) {
            this.f4200w = false;
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        a aVar = this.f4187a;
        int i9 = (int) (jCurrentAnimationTimeMillis - aVar.f4182e);
        int i10 = aVar.f4179b;
        if (i9 > i10) {
            i6 = i10;
        } else if (i9 >= 0) {
            i6 = i9;
        }
        aVar.f4185i = i6;
        aVar.h = aVar.a(jCurrentAnimationTimeMillis);
        aVar.f4184g = jCurrentAnimationTimeMillis;
    }

    public final boolean e() {
        m1 m1Var;
        int count;
        a aVar = this.f4187a;
        float f9 = aVar.f4181d;
        int iAbs = (int) (f9 / Math.abs(f9));
        Math.abs(aVar.f4180c);
        if (iAbs != 0 && (count = (m1Var = this.f4202y).getCount()) != 0) {
            int childCount = m1Var.getChildCount();
            int firstVisiblePosition = m1Var.getFirstVisiblePosition();
            int i6 = firstVisiblePosition + childCount;
            if (iAbs <= 0 ? !(iAbs >= 0 || (firstVisiblePosition <= 0 && m1Var.getChildAt(0).getTop() >= 0)) : !(i6 >= count && m1Var.getChildAt(childCount - 1).getBottom() <= m1Var.getHeight())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0014, code lost:
    
        if (r0 != 3) goto L30;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            r7 = this;
            boolean r0 = r7.f4201x
            r1 = 0
            if (r0 != 0) goto L7
            goto L7e
        L7:
            int r0 = r9.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1b
            if (r0 == r2) goto L17
            r3 = 2
            if (r0 == r3) goto L1f
            r8 = 3
            if (r0 == r8) goto L17
            goto L7e
        L17:
            r7.d()
            return r1
        L1b:
            r7.f4199v = r2
            r7.f4197l = r1
        L1f:
            float r0 = r9.getX()
            int r3 = r8.getWidth()
            float r3 = (float) r3
            m.m1 r4 = r7.f4189c
            int r5 = r4.getWidth()
            float r5 = (float) r5
            float r0 = r7.a(r0, r3, r5, r1)
            float r9 = r9.getY()
            int r8 = r8.getHeight()
            float r8 = (float) r8
            int r3 = r4.getHeight()
            float r3 = (float) r3
            float r8 = r7.a(r9, r8, r3, r2)
            m0.a r9 = r7.f4187a
            r9.f4180c = r0
            r9.f4181d = r8
            boolean r8 = r7.f4200w
            if (r8 != 0) goto L7e
            boolean r8 = r7.e()
            if (r8 == 0) goto L7e
            androidx.fragment.app.p r8 = r7.f4190d
            if (r8 != 0) goto L62
            androidx.fragment.app.p r8 = new androidx.fragment.app.p
            r9 = 8
            r8.<init>(r9, r7)
            r7.f4190d = r8
        L62:
            r7.f4200w = r2
            r7.f4198m = r2
            boolean r8 = r7.f4197l
            if (r8 != 0) goto L77
            int r8 = r7.h
            if (r8 <= 0) goto L77
            androidx.fragment.app.p r9 = r7.f4190d
            long r5 = (long) r8
            java.util.WeakHashMap r8 = j0.k0.f3286a
            r4.postOnAnimationDelayed(r9, r5)
            goto L7c
        L77:
            androidx.fragment.app.p r8 = r7.f4190d
            r8.run()
        L7c:
            r7.f4197l = r2
        L7e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: m0.d.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
