package com.google.firebase.ktx;

import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
import java.util.concurrent.Executor;
import l7.n;
import u4.c;
import u4.d;
import v4.a;
import v4.b;
import v4.h;
import v4.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<b> getComponents() {
        a aVarB = b.b(new p(u4.a.class, n.class));
        aVarB.a(new h(new p(u4.a.class, Executor.class), 1, 0));
        aVarB.f5586f = m5.b.f4280b;
        b bVarB = aVarB.b();
        a aVarB2 = b.b(new p(c.class, n.class));
        aVarB2.a(new h(new p(c.class, Executor.class), 1, 0));
        aVarB2.f5586f = m5.b.f4281c;
        b bVarB2 = aVarB2.b();
        a aVarB3 = b.b(new p(u4.b.class, n.class));
        aVarB3.a(new h(new p(u4.b.class, Executor.class), 1, 0));
        aVarB3.f5586f = m5.b.f4282d;
        b bVarB3 = aVarB3.b();
        a aVarB4 = b.b(new p(d.class, n.class));
        aVarB4.a(new h(new p(d.class, Executor.class), 1, 0));
        aVarB4.f5586f = m5.b.f4283e;
        return s6.h.k(bVarB, bVarB2, bVarB3, aVarB4.b());
    }
}
