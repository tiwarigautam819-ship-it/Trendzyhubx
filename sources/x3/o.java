package x3;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6001a;

    public o(int i6) {
        this.f6001a = i6;
    }

    public static Status g(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage(), null, null);
    }

    public abstract boolean a(j jVar);

    public abstract v3.c[] b(j jVar);

    public abstract void c(Status status);

    public abstract void d(Exception exc);

    public abstract void e(j jVar);

    public abstract void f(u3.o oVar, boolean z5);
}
