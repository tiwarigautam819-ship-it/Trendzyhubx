package h1;

import android.graphics.Paint;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b0.d f2909d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2910e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public b0.d f2911f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f2912g;
    public float h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2913i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f2914j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f2915k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Paint.Cap f2916l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Paint.Join f2917m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f2918n;

    @Override // h1.l
    public final boolean a() {
        return this.f2911f.e() || this.f2909d.e();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    @Override // h1.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean b(int[] r7) {
        /*
            r6 = this;
            b0.d r0 = r6.f2911f
            boolean r1 = r0.e()
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1e
            java.lang.Object r1 = r0.f856d
            android.content.res.ColorStateList r1 = (android.content.res.ColorStateList) r1
            int r4 = r1.getDefaultColor()
            int r1 = r1.getColorForState(r7, r4)
            int r4 = r0.f854b
            if (r1 == r4) goto L1e
            r0.f854b = r1
            r0 = r2
            goto L1f
        L1e:
            r0 = r3
        L1f:
            b0.d r1 = r6.f2909d
            boolean r4 = r1.e()
            if (r4 == 0) goto L3a
            java.lang.Object r4 = r1.f856d
            android.content.res.ColorStateList r4 = (android.content.res.ColorStateList) r4
            int r5 = r4.getDefaultColor()
            int r7 = r4.getColorForState(r7, r5)
            int r4 = r1.f854b
            if (r7 == r4) goto L3a
            r1.f854b = r7
            goto L3b
        L3a:
            r2 = r3
        L3b:
            r7 = r0 | r2
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: h1.j.b(int[]):boolean");
    }

    public float getFillAlpha() {
        return this.h;
    }

    public int getFillColor() {
        return this.f2911f.f854b;
    }

    public float getStrokeAlpha() {
        return this.f2912g;
    }

    public int getStrokeColor() {
        return this.f2909d.f854b;
    }

    public float getStrokeWidth() {
        return this.f2910e;
    }

    public float getTrimPathEnd() {
        return this.f2914j;
    }

    public float getTrimPathOffset() {
        return this.f2915k;
    }

    public float getTrimPathStart() {
        return this.f2913i;
    }

    public void setFillAlpha(float f9) {
        this.h = f9;
    }

    public void setFillColor(int i6) {
        this.f2911f.f854b = i6;
    }

    public void setStrokeAlpha(float f9) {
        this.f2912g = f9;
    }

    public void setStrokeColor(int i6) {
        this.f2909d.f854b = i6;
    }

    public void setStrokeWidth(float f9) {
        this.f2910e = f9;
    }

    public void setTrimPathEnd(float f9) {
        this.f2914j = f9;
    }

    public void setTrimPathOffset(float f9) {
        this.f2915k = f9;
    }

    public void setTrimPathStart(float f9) {
        this.f2913i = f9;
    }
}
