package w7;

import com.google.firebase.messaging.p;
import java.util.ArrayList;
import r7.m;
import r7.n;
import r7.o;
import r7.u;
import v7.i;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f5769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f5770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5771c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p f5772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.google.android.gms.common.internal.g f5773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5774f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f5775g;
    public final int h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5776i;

    public f(i iVar, ArrayList arrayList, int i6, p pVar, com.google.android.gms.common.internal.g gVar, int i9, int i10, int i11) {
        this.f5769a = iVar;
        this.f5770b = arrayList;
        this.f5771c = i6;
        this.f5772d = pVar;
        this.f5773e = gVar;
        this.f5774f = i9;
        this.f5775g = i10;
        this.h = i11;
    }

    public static f a(f fVar, int i6, p pVar, com.google.android.gms.common.internal.g gVar, int i9) {
        if ((i9 & 1) != 0) {
            i6 = fVar.f5771c;
        }
        int i10 = i6;
        if ((i9 & 2) != 0) {
            pVar = fVar.f5772d;
        }
        p pVar2 = pVar;
        if ((i9 & 4) != 0) {
            gVar = fVar.f5773e;
        }
        com.google.android.gms.common.internal.g gVar2 = gVar;
        int i11 = fVar.f5774f;
        int i12 = fVar.f5775g;
        int i13 = fVar.h;
        d7.g.f("request", gVar2);
        return new f(fVar.f5769a, fVar.f5770b, i10, pVar2, gVar2, i11, i12, i13);
    }

    public final u b(com.google.android.gms.common.internal.g gVar) {
        d7.g.f("request", gVar);
        ArrayList arrayList = this.f5770b;
        int size = arrayList.size();
        int i6 = this.f5771c;
        if (i6 >= size) {
            throw new IllegalStateException("Check failed.");
        }
        this.f5776i++;
        p pVar = this.f5772d;
        if (pVar != null) {
            if (!((v7.e) pVar.f2139c).b((m) gVar.f1409b)) {
                throw new IllegalStateException(("network interceptor " + arrayList.get(i6 - 1) + " must retain the same host and port").toString());
            }
            if (this.f5776i != 1) {
                throw new IllegalStateException(("network interceptor " + arrayList.get(i6 - 1) + " must call proceed() exactly once").toString());
            }
        }
        int i9 = i6 + 1;
        f fVarA = a(this, i9, null, gVar, 58);
        o oVar = (o) arrayList.get(i6);
        u uVarA = oVar.a(fVarA);
        if (uVarA == null) {
            throw new NullPointerException("interceptor " + oVar + " returned null");
        }
        if (pVar != null && i9 < arrayList.size() && fVarA.f5776i != 1) {
            throw new IllegalStateException(("network interceptor " + oVar + " must call proceed() exactly once").toString());
        }
        if (uVarA.f5155g != null) {
            return uVarA;
        }
        throw new IllegalStateException(("interceptor " + oVar + " returned a response with no body").toString());
    }
}
