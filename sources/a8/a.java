package a8;

import android.net.ssl.SSLSockets;
import android.os.Build;
import java.io.IOException;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import x1.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements n {
    @Override // a8.n
    public final boolean a(SSLSocket sSLSocket) {
        return SSLSockets.isSupportedSocket(sSLSocket);
    }

    @Override // a8.n
    public final String b(SSLSocket sSLSocket) {
        String applicationProtocol = sSLSocket.getApplicationProtocol();
        if (applicationProtocol == null ? true : applicationProtocol.equals("")) {
            return null;
        }
        return applicationProtocol;
    }

    @Override // a8.n
    public final boolean c() {
        z7.n nVar = z7.n.f6440a;
        return w.r() && Build.VERSION.SDK_INT >= 29;
    }

    @Override // a8.n
    public final void d(SSLSocket sSLSocket, String str, List list) throws IOException {
        d7.g.f("protocols", list);
        try {
            SSLSockets.setUseSessionTickets(sSLSocket, true);
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            z7.n nVar = z7.n.f6440a;
            sSLParameters.setApplicationProtocols((String[]) w.h(list).toArray(new String[0]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalArgumentException e9) {
            throw new IOException("Android internal error", e9);
        }
    }
}
