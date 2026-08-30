package v7;

import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import m.x2;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f5638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5640c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5641d;

    public b(List list) {
        d7.g.f("connectionSpecs", list);
        this.f5638a = list;
    }

    public final r7.g a(SSLSocket sSLSocket) throws UnknownServiceException {
        r7.g gVar;
        int i6;
        boolean z5;
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        int i9 = this.f5639b;
        List list = this.f5638a;
        int size = list.size();
        while (true) {
            if (i9 >= size) {
                gVar = null;
                break;
            }
            gVar = (r7.g) list.get(i9);
            if (gVar.b(sSLSocket)) {
                this.f5639b = i9 + 1;
                break;
            }
            i9++;
        }
        if (gVar == null) {
            StringBuilder sb = new StringBuilder("Unable to find acceptable protocols. isFallback=");
            sb.append(this.f5641d);
            sb.append(", modes=");
            sb.append(list);
            sb.append(", supported protocols=");
            String[] enabledProtocols2 = sSLSocket.getEnabledProtocols();
            d7.g.c(enabledProtocols2);
            String string = Arrays.toString(enabledProtocols2);
            d7.g.e("toString(this)", string);
            sb.append(string);
            throw new UnknownServiceException(sb.toString());
        }
        int i10 = this.f5639b;
        int size2 = list.size();
        while (true) {
            i6 = 0;
            if (i10 >= size2) {
                z5 = false;
                break;
            }
            if (((r7.g) list.get(i10)).b(sSLSocket)) {
                z5 = true;
                break;
            }
            i10++;
        }
        this.f5640c = z5;
        boolean z8 = this.f5641d;
        String[] strArr = gVar.f5053d;
        String[] strArr2 = gVar.f5052c;
        if (strArr2 != null) {
            String[] enabledCipherSuites2 = sSLSocket.getEnabledCipherSuites();
            d7.g.e("sslSocket.enabledCipherSuites", enabledCipherSuites2);
            enabledCipherSuites = s7.b.o(enabledCipherSuites2, strArr2, r7.f.f5030c);
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (strArr != null) {
            String[] enabledProtocols3 = sSLSocket.getEnabledProtocols();
            d7.g.e("sslSocket.enabledProtocols", enabledProtocols3);
            enabledProtocols = s7.b.o(enabledProtocols3, strArr, t6.a.f5409b);
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        d7.g.e("supportedCipherSuites", supportedCipherSuites);
        r7.e eVar = r7.f.f5030c;
        byte[] bArr = s7.b.f5287a;
        int length = supportedCipherSuites.length;
        while (true) {
            if (i6 >= length) {
                i6 = -1;
                break;
            }
            if (eVar.compare(supportedCipherSuites[i6], "TLS_FALLBACK_SCSV") == 0) {
                break;
            }
            i6++;
        }
        if (z8 && i6 != -1) {
            d7.g.e("cipherSuitesIntersection", enabledCipherSuites);
            String str = supportedCipherSuites[i6];
            d7.g.e("supportedCipherSuites[indexOfFallbackScsv]", str);
            Object[] objArrCopyOf = Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length + 1);
            d7.g.e("copyOf(this, newSize)", objArrCopyOf);
            enabledCipherSuites = (String[]) objArrCopyOf;
            enabledCipherSuites[enabledCipherSuites.length - 1] = str;
        }
        x2 x2Var = new x2();
        x2Var.f4171a = gVar.f5050a;
        x2Var.f4173c = strArr2;
        x2Var.f4174d = strArr;
        x2Var.f4172b = gVar.f5051b;
        d7.g.e("cipherSuitesIntersection", enabledCipherSuites);
        x2Var.c((String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length));
        d7.g.e("tlsVersionsIntersection", enabledProtocols);
        x2Var.e((String[]) Arrays.copyOf(enabledProtocols, enabledProtocols.length));
        r7.g gVarB = x2Var.b();
        if (gVarB.c() != null) {
            sSLSocket.setEnabledProtocols(gVarB.f5053d);
        }
        if (gVarB.a() != null) {
            sSLSocket.setEnabledCipherSuites(gVarB.f5052c);
        }
        return gVar;
    }
}
