package h1;

import android.animation.TypeEvaluator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements TypeEvaluator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c0.e[] f2906a;

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f9, Object obj, Object obj2) {
        c0.e[] eVarArr = (c0.e[]) obj;
        c0.e[] eVarArr2 = (c0.e[]) obj2;
        if (!t4.b.a(eVarArr, eVarArr2)) {
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
        if (!t4.b.a(this.f2906a, eVarArr)) {
            this.f2906a = t4.b.f(eVarArr);
        }
        for (int i6 = 0; i6 < eVarArr.length; i6++) {
            c0.e eVar = this.f2906a[i6];
            c0.e eVar2 = eVarArr[i6];
            c0.e eVar3 = eVarArr2[i6];
            eVar.getClass();
            eVar.f994a = eVar2.f994a;
            int i9 = 0;
            while (true) {
                float[] fArr = eVar2.f995b;
                if (i9 < fArr.length) {
                    eVar.f995b[i9] = (eVar3.f995b[i9] * f9) + ((1.0f - f9) * fArr[i9]);
                    i9++;
                }
            }
        }
        return this.f2906a;
    }
}
