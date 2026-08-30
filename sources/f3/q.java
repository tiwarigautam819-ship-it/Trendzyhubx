package f3;

import android.content.Context;
import com.google.firebase.messaging.y;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile j f2586e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o3.a f2587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o3.a f2588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final k3.b f2589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l3.i f2590d;

    public q(o3.a aVar, o3.a aVar2, k3.b bVar, l3.i iVar, y yVar) {
        this.f2587a = aVar;
        this.f2588b = aVar2;
        this.f2589c = bVar;
        this.f2590d = iVar;
        ((Executor) yVar.f2162a).execute(new a2.g(8, yVar));
    }

    public static q a() {
        j jVar = f2586e;
        if (jVar != null) {
            return (q) jVar.f2576f.get();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static void b(Context context) {
        if (f2586e == null) {
            synchronized (q.class) {
                try {
                    if (f2586e == null) {
                        k1.h hVar = new k1.h(7, (byte) 0);
                        context.getClass();
                        hVar.f3502b = context;
                        f2586e = hVar.q();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final p c(k kVar) {
        byte[] bytes;
        Set setUnmodifiableSet = kVar != null ? Collections.unmodifiableSet(d3.a.f2259d) : Collections.singleton(new c3.c("proto"));
        c5.h hVarA = i.a();
        kVar.getClass();
        hVarA.f1060b = "cct";
        d3.a aVar = (d3.a) kVar;
        String str = aVar.f2262a;
        String str2 = aVar.f2263b;
        if (str2 == null && str == null) {
            bytes = null;
        } else {
            if (str2 == null) {
                str2 = "";
            }
            bytes = ("1$" + str + "\\" + str2).getBytes(Charset.forName("UTF-8"));
        }
        hVarA.f1061c = bytes;
        return new p(setUnmodifiableSet, hVarA.g(), this);
    }
}
