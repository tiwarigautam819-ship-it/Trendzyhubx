package com.google.firebase.installations;

import com.getcapacitor.n;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.messaging.j0;
import e5.f;
import h5.d;
import h5.e;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import m1.j;
import t4.g;
import u4.a;
import u4.b;
import v4.c;
import v4.h;
import v4.p;
import w4.i;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    /* JADX INFO: Access modifiers changed from: private */
    public static e lambda$getComponents$0(c cVar) {
        return new d((g) cVar.a(g.class), cVar.f(f.class), (ExecutorService) cVar.d(new p(a.class, ExecutorService.class)), new i((Executor) cVar.d(new p(b.class, Executor.class))));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<v4.b> getComponents() {
        v4.a aVarA = v4.b.a(e.class);
        aVarA.f5581a = LIBRARY_NAME;
        aVarA.a(h.a(g.class));
        aVarA.a(new h(0, 1, f.class));
        aVarA.a(new h(new p(a.class, ExecutorService.class), 1, 0));
        aVarA.a(new h(new p(b.class, Executor.class), 1, 0));
        aVarA.f5586f = new n(7);
        v4.b bVarB = aVarA.b();
        e5.e eVar = new e5.e(0);
        v4.a aVarA2 = v4.b.a(e5.e.class);
        aVarA2.f5585e = 1;
        aVarA2.f5586f = new j0(11, eVar);
        return Arrays.asList(bVarB, aVarA2.b(), j.e(LIBRARY_NAME, "18.0.0"));
    }
}
