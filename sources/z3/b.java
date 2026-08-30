package z3;

import android.content.Context;
import android.os.Build;
import c5.h;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.internal.measurement.r0;
import java.util.Collections;
import java.util.Set;
import p4.j;
import p4.p;
import p4.q;
import s.f;
import u3.o;
import x1.w;
import x3.d;
import y1.n;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements r {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final o f6402i = new o(new m4.b(), new o3.a(24));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f6403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o f6405c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final s f6406d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final x3.a f6407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f6408f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final w f6409g;
    public final d h;

    public b(Context context, o oVar, s sVar, w3.b bVar) {
        d0.i("Null context is not permitted.", context);
        d0.i("Api must not be null.", oVar);
        d0.i("Settings must not be null; use Settings.DEFAULT_SETTINGS instead.", bVar);
        Context applicationContext = context.getApplicationContext();
        d0.i("The provided context did not have an application context.", applicationContext);
        this.f6403a = applicationContext;
        String attributionTag = Build.VERSION.SDK_INT >= 30 ? context.getAttributionTag() : null;
        this.f6404b = attributionTag;
        this.f6405c = oVar;
        this.f6406d = sVar;
        this.f6407e = new x3.a(oVar, sVar, attributionTag);
        d dVarD = d.d(applicationContext);
        this.h = dVarD;
        this.f6408f = dVarD.h.getAndIncrement();
        this.f6409g = bVar.f5722a;
        r0 r0Var = dVarD.f5977m;
        r0Var.sendMessage(r0Var.obtainMessage(7, this));
    }

    public final h a() {
        h hVar = new h(1);
        Set set = Collections.EMPTY_SET;
        if (((f) hVar.f1060b) == null) {
            hVar.f1060b = new f(0);
        }
        ((f) hVar.f1060b).addAll(set);
        Context context = this.f6403a;
        hVar.f1062d = context.getClass().getName();
        hVar.f1061c = context.getPackageName();
        return hVar;
    }

    public final q b(com.google.android.gms.common.internal.q qVar) {
        o5.c cVar = new o5.c(28);
        v3.c[] cVarArr = {h4.c.f2975a};
        cVar.f4446b = new n(qVar);
        p pVar = new p(cVar, cVarArr, false);
        j jVar = new j();
        d dVar = this.h;
        dVar.getClass();
        x3.q qVar2 = new x3.q(new x3.s(pVar, jVar, this.f6409g), dVar.f5973i.get(), this);
        r0 r0Var = dVar.f5977m;
        r0Var.sendMessage(r0Var.obtainMessage(4, qVar2));
        return jVar.f4641a;
    }
}
