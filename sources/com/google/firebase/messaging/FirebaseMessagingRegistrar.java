package com.google.firebase.messaging;

import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-fcm";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FirebaseMessaging lambda$getComponents$0(v4.p pVar, v4.c cVar) {
        t4.g gVar = (t4.g) cVar.a(t4.g.class);
        if (cVar.a(f5.a.class) == null) {
            return new FirebaseMessaging(gVar, cVar.f(o5.b.class), cVar.f(e5.g.class), (h5.e) cVar.a(h5.e.class), cVar.c(pVar), (d5.d) cVar.a(d5.d.class));
        }
        throw new ClassCastException();
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<v4.b> getComponents() {
        v4.p pVar = new v4.p(x4.b.class, c3.e.class);
        v4.a aVarA = v4.b.a(FirebaseMessaging.class);
        aVarA.f5581a = LIBRARY_NAME;
        aVarA.a(v4.h.a(t4.g.class));
        aVarA.a(new v4.h(0, 0, f5.a.class));
        aVarA.a(new v4.h(0, 1, o5.b.class));
        aVarA.a(new v4.h(0, 1, e5.g.class));
        aVarA.a(v4.h.a(h5.e.class));
        aVarA.a(new v4.h(pVar, 0, 1));
        aVarA.a(v4.h.a(d5.d.class));
        aVarA.f5586f = new q(pVar, 0);
        if (!(aVarA.f5584d == 0)) {
            throw new IllegalStateException("Instantiation type has already been set.");
        }
        aVarA.f5584d = 1;
        return Arrays.asList(aVarA.b(), m1.j.e(LIBRARY_NAME, "24.0.2"));
    }
}
