package p7;

import java.util.Iterator;
import java.util.concurrent.CancellationException;
import l7.c0;
import l7.k0;
import l7.s0;
import l7.w0;
import l7.x0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n6.d f4664a = new n6.d("NO_DECISION", 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final n6.d f4665b = new n6.d("UNDEFINED", 2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n6.d f4666c = new n6.d("REUSABLE_CLAIMED", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final n6.d f4667d = new n6.d("CONDITION_FALSE", 2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final n6.d f4668e = new n6.d("NO_THREAD_ELEMENTS", 2);

    public static final void a(u6.k kVar, Throwable th) {
        Throwable runtimeException;
        Iterator it = e.f4672a.iterator();
        while (it.hasNext()) {
            try {
                ((m7.b) it.next()).t(th);
            } catch (Throwable th2) {
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    i2.t.a(runtimeException, th);
                }
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, runtimeException);
            }
        }
        try {
            i2.t.a(th, new f(kVar));
        } catch (Throwable unused) {
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }

    public static final void b(u6.k kVar, Object obj) {
        if (obj == f4668e) {
            return;
        }
        if (!(obj instanceof u)) {
            Object objC = kVar.c(null, s.f4700d);
            d7.g.d("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>", objC);
            a1.a.o(objC);
            throw null;
        }
        u uVar = (u) obj;
        w0[] w0VarArr = uVar.f4705b;
        int length = w0VarArr.length - 1;
        if (length < 0) {
            return;
        }
        w0 w0Var = w0VarArr[length];
        d7.g.c(null);
        Object obj2 = uVar.f4704a[length];
        throw null;
    }

    public static final void c(u6.f fVar) {
        boolean z5 = fVar instanceof g;
        r6.j jVar = r6.j.f5000a;
        if (!z5) {
            fVar.e(jVar);
            return;
        }
        g gVar = (g) fVar;
        l7.n nVar = gVar.f4674d;
        w6.e eVar = gVar.f4675e;
        Throwable thA = r6.f.a(jVar);
        Object iVar = thA == null ? jVar : new l7.i(thA);
        eVar.getContext();
        u6.k kVar = eVar.f5763b;
        if (nVar.u()) {
            gVar.f4676f = iVar;
            gVar.f3900c = 1;
            d7.g.c(kVar);
            nVar.t(kVar, gVar);
            return;
        }
        c0 c0VarA = x0.a();
        if (c0VarA.f3845c >= 4294967296L) {
            gVar.f4676f = iVar;
            gVar.f3900c = 1;
            s6.e eVar2 = c0VarA.f3847e;
            if (eVar2 == null) {
                eVar2 = new s6.e();
                c0VarA.f3847e = eVar2;
            }
            eVar2.addLast(gVar);
            return;
        }
        c0VarA.x(true);
        try {
            d7.g.c(kVar);
            k0 k0Var = (k0) kVar.g(l7.o.f3873b);
            if (k0Var == null || k0Var.a()) {
                Object obj = gVar.f4677g;
                d7.g.c(kVar);
                Object objF = f(kVar, obj);
                if (objF != f4668e) {
                    l7.r.i(eVar, kVar);
                }
                try {
                    eVar.e(jVar);
                } finally {
                    b(kVar, objF);
                }
            } else {
                CancellationException cancellationExceptionK = ((s0) k0Var).k();
                gVar.b(iVar, cancellationExceptionK);
                gVar.e(k2.e.c(cancellationExceptionK));
            }
            while (c0VarA.y()) {
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public static final long d(String str, long j3, long j8, long j9) {
        String property;
        boolean z5;
        String str2;
        Long lValueOf;
        int i6 = r.f4698a;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return j3;
        }
        a2.c.d(10);
        int length = property.length();
        if (length == 0) {
            str2 = property;
            lValueOf = null;
            break;
        }
        int i9 = 0;
        char cCharAt = property.charAt(0);
        long j10 = -9223372036854775807L;
        if (d7.g.g(cCharAt, 48) < 0) {
            z5 = true;
            if (length != 1) {
                if (cCharAt == '-') {
                    j10 = Long.MIN_VALUE;
                    i9 = 1;
                } else if (cCharAt == '+') {
                    z5 = false;
                    i9 = 1;
                }
            }
            str2 = property;
            lValueOf = null;
            break;
        }
        z5 = false;
        long j11 = 0;
        long j12 = -256204778801521550L;
        while (i9 < length) {
            int iDigit = Character.digit((int) property.charAt(i9), 10);
            if (iDigit >= 0) {
                if (j11 >= j12) {
                    str2 = property;
                } else if (j12 == -256204778801521550L) {
                    str2 = property;
                    j12 = j10 / ((long) 10);
                    if (j11 < j12) {
                    }
                    lValueOf = null;
                    break;
                }
                long j13 = j11 * ((long) 10);
                long j14 = iDigit;
                if (j13 < j10 + j14) {
                    lValueOf = null;
                    break;
                }
                j11 = j13 - j14;
                i9++;
                property = str2;
            }
            str2 = property;
            lValueOf = null;
            break;
        }
        str2 = property;
        lValueOf = z5 ? Long.valueOf(j11) : Long.valueOf(-j11);
        if (lValueOf == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + str2 + '\'').toString());
        }
        long jLongValue = lValueOf.longValue();
        if (j8 <= jLongValue && jLongValue <= j9) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j8 + ".." + j9 + ", but is '" + jLongValue + '\'').toString());
    }

    public static int e(int i6, String str, int i9) {
        return (int) d(str, i6, 1, (i9 & 8) != 0 ? Integer.MAX_VALUE : 2097150);
    }

    public static final Object f(u6.k kVar, Object obj) {
        if (obj == null) {
            obj = kVar.c(0, s.f4699c);
            d7.g.c(obj);
        }
        if (obj == 0) {
            return f4668e;
        }
        if (obj instanceof Integer) {
            return kVar.c(new u(kVar, ((Number) obj).intValue()), s.f4701e);
        }
        a1.a.o(obj);
        throw null;
    }
}
