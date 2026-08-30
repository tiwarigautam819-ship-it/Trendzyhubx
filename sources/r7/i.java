package r7;

import androidx.lifecycle.k0;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y f5066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f5067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f5068c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final r6.g f5069d;

    public i(y yVar, f fVar, List list, c7.a aVar) {
        this.f5066a = yVar;
        this.f5067b = fVar;
        this.f5068c = list;
        this.f5069d = new r6.g(new k0(aVar));
    }

    public final List a() {
        return (List) this.f5069d.getValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return iVar.f5066a == this.f5066a && d7.g.a(iVar.f5067b, this.f5067b) && d7.g.a(iVar.a(), a()) && d7.g.a(iVar.f5068c, this.f5068c);
    }

    public final int hashCode() {
        return this.f5068c.hashCode() + ((a().hashCode() + ((this.f5067b.hashCode() + ((this.f5066a.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String type;
        String type2;
        List<Certificate> listA = a();
        ArrayList arrayList = new ArrayList(s6.i.n(listA));
        for (Certificate certificate : listA) {
            if (certificate instanceof X509Certificate) {
                type2 = ((X509Certificate) certificate).getSubjectDN().toString();
            } else {
                type2 = certificate.getType();
                d7.g.e("type", type2);
            }
            arrayList.add(type2);
        }
        String string = arrayList.toString();
        StringBuilder sb = new StringBuilder("Handshake{tlsVersion=");
        sb.append(this.f5066a);
        sb.append(" cipherSuite=");
        sb.append(this.f5067b);
        sb.append(" peerCertificates=");
        sb.append(string);
        sb.append(" localCertificates=");
        List<Certificate> list = this.f5068c;
        ArrayList arrayList2 = new ArrayList(s6.i.n(list));
        for (Certificate certificate2 : list) {
            if (certificate2 instanceof X509Certificate) {
                type = ((X509Certificate) certificate2).getSubjectDN().toString();
            } else {
                type = certificate2.getType();
                d7.g.e("type", type);
            }
            arrayList2.add(type);
        }
        sb.append(arrayList2);
        sb.append('}');
        return sb.toString();
    }
}
