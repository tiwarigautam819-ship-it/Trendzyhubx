package p4;

import com.google.android.gms.common.internal.d0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q f4641a = new q();

    public final void a(Object obj) {
        this.f4641a.m(obj);
    }

    public final boolean b(Exception exc) {
        q qVar = this.f4641a;
        qVar.getClass();
        d0.i("Exception must not be null", exc);
        synchronized (qVar.f4657a) {
            try {
                if (qVar.f4659c) {
                    return false;
                }
                qVar.f4659c = true;
                qVar.f4662f = exc;
                qVar.f4658b.e(qVar);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(Object obj) {
        q qVar = this.f4641a;
        synchronized (qVar.f4657a) {
            try {
                if (qVar.f4659c) {
                    return;
                }
                qVar.f4659c = true;
                qVar.f4661e = obj;
                qVar.f4658b.e(qVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
