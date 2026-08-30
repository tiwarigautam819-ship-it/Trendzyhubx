package i;

import android.animation.TimeInterpolator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements TimeInterpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f3056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3058c;

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f9) {
        int i6 = (int) ((f9 * this.f3058c) + 0.5f);
        int i9 = this.f3057b;
        int[] iArr = this.f3056a;
        int i10 = 0;
        while (i10 < i9) {
            int i11 = iArr[i10];
            if (i6 < i11) {
                break;
            }
            i6 -= i11;
            i10++;
        }
        return (i10 / i9) + (i10 < i9 ? i6 / this.f3058c : 0.0f);
    }
}
