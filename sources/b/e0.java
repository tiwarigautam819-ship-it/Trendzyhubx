package b;

import android.window.OnBackInvokedCallback;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e0 f789a = new e0();

    public final OnBackInvokedCallback a(c7.l lVar, c7.l lVar2, c7.a aVar, c7.a aVar2) {
        d7.g.f("onBackStarted", lVar);
        d7.g.f("onBackProgressed", lVar2);
        d7.g.f("onBackInvoked", aVar);
        d7.g.f("onBackCancelled", aVar2);
        return new d0(lVar, lVar2, aVar, aVar2);
    }
}
