package z7;

import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import r7.s;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f6436c;

    static {
        String property = System.getProperty("java.specification.version");
        Integer numP = property != null ? k7.n.p(property) : null;
        boolean z5 = false;
        if (numP == null) {
            try {
                SSLSocket.class.getMethod("getApplicationProtocol", null);
                z5 = true;
            } catch (NoSuchMethodException unused) {
            }
        } else if (numP.intValue() >= 9) {
            z5 = true;
        }
        f6436c = z5;
    }

    @Override // z7.n
    public final void d(SSLSocket sSLSocket, String str, List list) {
        d7.g.f("protocols", list);
        SSLParameters sSLParameters = sSLSocket.getSSLParameters();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((s) obj) != s.HTTP_1_0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(s6.i.n(arrayList));
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj2 = arrayList.get(i6);
            i6++;
            arrayList2.add(((s) obj2).f5136a);
        }
        sSLParameters.setApplicationProtocols((String[]) arrayList2.toArray(new String[0]));
        sSLSocket.setSSLParameters(sSLParameters);
    }

    @Override // z7.n
    public final String f(SSLSocket sSLSocket) {
        try {
            String applicationProtocol = sSLSocket.getApplicationProtocol();
            if (applicationProtocol == null ? true : applicationProtocol.equals("")) {
                return null;
            }
            return applicationProtocol;
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }
}
