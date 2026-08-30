package h1;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c0.e[] f2929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2931c;

    public m() {
        this.f2929a = null;
        this.f2931c = 0;
    }

    public c0.e[] getPathData() {
        return this.f2929a;
    }

    public String getPathName() {
        return this.f2930b;
    }

    public void setPathData(c0.e[] eVarArr) {
        if (!t4.b.a(this.f2929a, eVarArr)) {
            this.f2929a = t4.b.f(eVarArr);
            return;
        }
        c0.e[] eVarArr2 = this.f2929a;
        for (int i6 = 0; i6 < eVarArr.length; i6++) {
            eVarArr2[i6].f994a = eVarArr[i6].f994a;
            int i9 = 0;
            while (true) {
                float[] fArr = eVarArr[i6].f995b;
                if (i9 < fArr.length) {
                    eVarArr2[i6].f995b[i9] = fArr[i9];
                    i9++;
                }
            }
        }
    }

    public m(m mVar) {
        this.f2929a = null;
        this.f2931c = 0;
        this.f2930b = mVar.f2930b;
        this.f2929a = t4.b.f(mVar.f2929a);
    }
}
