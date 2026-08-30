package com.google.firebase.datatransport;

import android.content.Context;
import c3.e;
import com.google.firebase.components.ComponentRegistrar;
import d3.a;
import f3.q;
import java.util.Arrays;
import java.util.List;
import m1.j;
import v4.b;
import v4.c;
import v4.h;
import v4.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e lambda$getComponents$0(c cVar) {
        q.b((Context) cVar.a(Context.class));
        return q.a().c(a.f2261f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e lambda$getComponents$1(c cVar) {
        q.b((Context) cVar.a(Context.class));
        return q.a().c(a.f2261f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e lambda$getComponents$2(c cVar) {
        q.b((Context) cVar.a(Context.class));
        return q.a().c(a.f2260e);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<b> getComponents() {
        v4.a aVarA = b.a(e.class);
        aVarA.f5581a = LIBRARY_NAME;
        aVarA.a(h.a(Context.class));
        aVarA.f5586f = new x1.q(4);
        b bVarB = aVarA.b();
        v4.a aVarB = b.b(new p(x4.a.class, e.class));
        aVarB.a(h.a(Context.class));
        aVarB.f5586f = new x1.q(5);
        b bVarB2 = aVarB.b();
        v4.a aVarB2 = b.b(new p(x4.b.class, e.class));
        aVarB2.a(h.a(Context.class));
        aVarB2.f5586f = new x1.q(6);
        return Arrays.asList(bVarB, bVarB2, aVarB2.b(), j.e(LIBRARY_NAME, "18.2.0"));
    }
}
