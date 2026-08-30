package com.google.firebase.messaging;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q implements v4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v4.p f2143b;

    public /* synthetic */ q(v4.p pVar, int i6) {
        this.f2142a = i6;
        this.f2143b = pVar;
    }

    @Override // v4.d
    public final Object create(v4.c cVar) {
        switch (this.f2142a) {
            case 0:
                return FirebaseMessagingRegistrar.lambda$getComponents$0(this.f2143b, (y) cVar);
            default:
                y yVar = (y) cVar;
                return new e5.d((Context) yVar.a(Context.class), ((t4.g) yVar.a(t4.g.class)).d(), yVar.D(e5.e.class), yVar.f(o5.b.class), (Executor) yVar.d(this.f2143b));
        }
    }
}
