package x3;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.firebase.messaging.x;
import java.util.Map;
import x1.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s extends o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p4.p f6012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p4.j f6013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final w f6014d;

    public s(p4.p pVar, p4.j jVar, w wVar) {
        super(2);
        this.f6013c = jVar;
        this.f6012b = pVar;
        this.f6014d = wVar;
        if (pVar.f4654b) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // x3.o
    public final boolean a(j jVar) {
        return this.f6012b.f4654b;
    }

    @Override // x3.o
    public final v3.c[] b(j jVar) {
        return (v3.c[]) this.f6012b.f4655c;
    }

    @Override // x3.o
    public final void c(Status status) {
        this.f6014d.getClass();
        this.f6013c.b(status.f1398c != null ? new w3.f(status) : new x(status));
    }

    @Override // x3.o
    public final void d(Exception exc) {
        this.f6013c.b(exc);
    }

    @Override // x3.o
    public final void e(j jVar) throws DeadObjectException {
        p4.j jVar2 = this.f6013c;
        try {
            this.f6012b.b(jVar.f5981c, jVar2);
        } catch (DeadObjectException e9) {
            throw e9;
        } catch (RemoteException e10) {
            c(o.g(e10));
        } catch (RuntimeException e11) {
            jVar2.b(e11);
        }
    }

    @Override // x3.o
    public final void f(u3.o oVar, boolean z5) {
        Boolean boolValueOf = Boolean.valueOf(z5);
        Map map = (Map) oVar.f5489b;
        p4.j jVar = this.f6013c;
        map.put(jVar, boolValueOf);
        jVar.f4641a.h(new u3.o(oVar, jVar, false));
    }
}
