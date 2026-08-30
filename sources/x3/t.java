package x3;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.firebase.messaging.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class t extends o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p4.j f6015b;

    public t(p4.j jVar) {
        super(4);
        this.f6015b = jVar;
    }

    @Override // x3.o
    public final boolean a(j jVar) {
        if (jVar.f5985g.get(null) == null) {
            return false;
        }
        throw new ClassCastException();
    }

    @Override // x3.o
    public final v3.c[] b(j jVar) {
        if (jVar.f5985g.get(null) == null) {
            return null;
        }
        throw new ClassCastException();
    }

    @Override // x3.o
    public final void c(Status status) {
        this.f6015b.b(new x(status));
    }

    @Override // x3.o
    public final void d(Exception exc) {
        this.f6015b.b(exc);
    }

    @Override // x3.o
    public final void e(j jVar) throws DeadObjectException {
        try {
            h(jVar);
        } catch (DeadObjectException e9) {
            c(o.g(e9));
            throw e9;
        } catch (RemoteException e10) {
            c(o.g(e10));
        } catch (RuntimeException e11) {
            this.f6015b.b(e11);
        }
    }

    public final void h(j jVar) {
        if (jVar.f5985g.remove(null) != null) {
            throw new ClassCastException();
        }
        this.f6015b.c(Boolean.FALSE);
    }

    @Override // x3.o
    public final /* bridge */ /* synthetic */ void f(u3.o oVar, boolean z5) {
    }
}
