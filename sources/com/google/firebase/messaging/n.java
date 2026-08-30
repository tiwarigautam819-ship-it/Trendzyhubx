package com.google.firebase.messaging;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n implements p4.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FirebaseMessaging f2126b;

    public /* synthetic */ n(FirebaseMessaging firebaseMessaging, int i6) {
        this.f2125a = i6;
        this.f2126b = firebaseMessaging;
    }

    @Override // p4.f
    public final void onSuccess(Object obj) {
        boolean z5;
        switch (this.f2125a) {
            case 0:
                g0 g0Var = (g0) obj;
                if (!this.f2126b.f2036e.f() || g0Var.h.a() == null) {
                    return;
                }
                synchronized (g0Var) {
                    z5 = g0Var.f2092g;
                }
                if (z5) {
                    return;
                }
                g0Var.h(0L);
                return;
            default:
                FirebaseMessaging firebaseMessaging = this.f2126b;
                u3.a aVar = (u3.a) obj;
                b0 b0Var = FirebaseMessaging.f2029k;
                firebaseMessaging.getClass();
                if (aVar != null) {
                    z7.d.g(aVar.f5445a);
                    firebaseMessaging.f();
                    return;
                }
                return;
        }
    }
}
