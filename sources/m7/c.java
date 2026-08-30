package m7;

import android.os.Handler;
import android.os.Looper;
import d7.g;
import java.util.concurrent.CancellationException;
import l7.n;
import l7.r;
import l7.v;
import l7.x;
import u6.k;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends n implements v {
    private volatile c _immediate;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f4306c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f4307d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c f4308e;

    public c(Handler handler, boolean z5) {
        this.f4306c = handler;
        this.f4307d = z5;
        this._immediate = z5 ? this : null;
        c cVar = this._immediate;
        if (cVar == null) {
            cVar = new c(handler, true);
            this._immediate = cVar;
        }
        this.f4308e = cVar;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c) && ((c) obj).f4306c == this.f4306c;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f4306c);
    }

    @Override // l7.n
    public final void t(k kVar, Runnable runnable) {
        if (this.f4306c.post(runnable)) {
            return;
        }
        r.c(kVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        x.f3902b.t(kVar, runnable);
    }

    @Override // l7.n
    public final String toString() {
        c cVar;
        String str;
        q7.d dVar = x.f3901a;
        c cVar2 = p7.n.f4696a;
        if (this == cVar2) {
            str = "Dispatchers.Main";
        } else {
            try {
                cVar = cVar2.f4308e;
            } catch (UnsupportedOperationException unused) {
                cVar = null;
            }
            str = this == cVar ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String string = this.f4306c.toString();
        return this.f4307d ? q2.x.f(string, ".immediate") : string;
    }

    @Override // l7.n
    public final boolean u() {
        return (this.f4307d && g.a(Looper.myLooper(), this.f4306c.getLooper())) ? false : true;
    }
}
