package l7;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l0 extends CancellationException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final transient s0 f3867a;

    public l0(String str, Throwable th, s0 s0Var) {
        super(str);
        this.f3867a = s0Var;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l0)) {
            return false;
        }
        l0 l0Var = (l0) obj;
        return d7.g.a(l0Var.getMessage(), getMessage()) && d7.g.a(l0Var.f3867a, this.f3867a) && d7.g.a(l0Var.getCause(), getCause());
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        d7.g.c(message);
        int iHashCode = (this.f3867a.hashCode() + (message.hashCode() * 31)) * 31;
        Throwable cause = getCause();
        return iHashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return super.toString() + "; job=" + this.f3867a;
    }
}
