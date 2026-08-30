package r7;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;
import m.x2;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final g f5048e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final g f5049f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f5050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f5052c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String[] f5053d;

    static {
        f fVar = f.f5044r;
        f fVar2 = f.f5045s;
        f fVar3 = f.f5046t;
        f fVar4 = f.f5038l;
        f fVar5 = f.f5040n;
        f fVar6 = f.f5039m;
        f fVar7 = f.f5041o;
        f fVar8 = f.f5043q;
        f fVar9 = f.f5042p;
        f[] fVarArr = {fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, fVar8, fVar9};
        f[] fVarArr2 = {fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, fVar8, fVar9, f.f5036j, f.f5037k, f.h, f.f5035i, f.f5033f, f.f5034g, f.f5032e};
        x2 x2Var = new x2();
        x2Var.d((f[]) Arrays.copyOf(fVarArr, 9));
        y yVar = y.TLS_1_3;
        y yVar2 = y.TLS_1_2;
        x2Var.f(yVar, yVar2);
        x2Var.f4172b = true;
        x2Var.b();
        x2 x2Var2 = new x2();
        x2Var2.d((f[]) Arrays.copyOf(fVarArr2, 16));
        x2Var2.f(yVar, yVar2);
        x2Var2.f4172b = true;
        f5048e = x2Var2.b();
        x2 x2Var3 = new x2();
        x2Var3.d((f[]) Arrays.copyOf(fVarArr2, 16));
        x2Var3.f(yVar, yVar2, y.TLS_1_1, y.TLS_1_0);
        x2Var3.f4172b = true;
        x2Var3.b();
        f5049f = new g(false, false, null, null);
    }

    public g(boolean z5, boolean z8, String[] strArr, String[] strArr2) {
        this.f5050a = z5;
        this.f5051b = z8;
        this.f5052c = strArr;
        this.f5053d = strArr2;
    }

    public final List a() {
        String[] strArr = this.f5052c;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(f.f5029b.c(str));
        }
        return s6.g.w(arrayList);
    }

    public final boolean b(SSLSocket sSLSocket) {
        if (!this.f5050a) {
            return false;
        }
        String[] strArr = this.f5053d;
        if (strArr != null && !s7.b.i(strArr, sSLSocket.getEnabledProtocols(), t6.a.f5409b)) {
            return false;
        }
        String[] strArr2 = this.f5052c;
        return strArr2 == null || s7.b.i(strArr2, sSLSocket.getEnabledCipherSuites(), f.f5030c);
    }

    public final List c() {
        String[] strArr = this.f5053d;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(z7.d.e(str));
        }
        return s6.g.w(arrayList);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        g gVar = (g) obj;
        boolean z5 = gVar.f5050a;
        boolean z8 = this.f5050a;
        if (z8 != z5) {
            return false;
        }
        if (z8) {
            return Arrays.equals(this.f5052c, gVar.f5052c) && Arrays.equals(this.f5053d, gVar.f5053d) && this.f5051b == gVar.f5051b;
        }
        return true;
    }

    public final int hashCode() {
        if (!this.f5050a) {
            return 17;
        }
        String[] strArr = this.f5052c;
        int iHashCode = (527 + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
        String[] strArr2 = this.f5053d;
        return ((iHashCode + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.f5051b ? 1 : 0);
    }

    public final String toString() {
        if (!this.f5050a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + Objects.toString(a(), "[all enabled]") + ", tlsVersions=" + Objects.toString(c(), "[all enabled]") + ", supportsTlsExtensions=" + this.f5051b + ')';
    }
}
