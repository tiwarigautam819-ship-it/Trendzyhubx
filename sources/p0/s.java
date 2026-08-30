package p0;

import android.util.SparseArray;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray f4614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public v f4615b;

    public s(int i6) {
        this.f4614a = new SparseArray(i6);
    }

    public final void a(v vVar, int i6, int i9) {
        int iA = vVar.a(i6);
        SparseArray sparseArray = this.f4614a;
        s sVar = sparseArray == null ? null : (s) sparseArray.get(iA);
        if (sVar == null) {
            sVar = new s(1);
            sparseArray.put(vVar.a(i6), sVar);
        }
        if (i9 > i6) {
            sVar.a(vVar, i6 + 1, i9);
        } else {
            sVar.f4615b = vVar;
        }
    }
}
