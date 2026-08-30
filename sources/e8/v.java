package e8;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v extends e {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Socket f2486m;

    public v(Socket socket) {
        this.f2486m = socket;
    }

    @Override // e8.e
    public final void j() {
        Socket socket = this.f2486m;
        try {
            socket.close();
        } catch (AssertionError e9) {
            if (!l2.e.n(e9)) {
                throw e9;
            }
            n.f2465a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e9);
        } catch (Exception e10) {
            n.f2465a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e10);
        }
    }

    public final IOException k(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }
}
