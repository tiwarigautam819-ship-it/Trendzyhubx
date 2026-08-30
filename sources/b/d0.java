package b;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d0 implements OnBackAnimationCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c7.l f783a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c7.l f784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c7.a f785c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ c7.a f786d;

    public d0(c7.l lVar, c7.l lVar2, c7.a aVar, c7.a aVar2) {
        this.f783a = lVar;
        this.f784b = lVar2;
        this.f785c = aVar;
        this.f786d = aVar2;
    }

    public final void onBackCancelled() {
        this.f786d.b();
    }

    public final void onBackInvoked() {
        this.f785c.b();
    }

    public final void onBackProgressed(BackEvent backEvent) {
        d7.g.f("backEvent", backEvent);
        this.f784b.g(new b(backEvent));
    }

    public final void onBackStarted(BackEvent backEvent) {
        d7.g.f("backEvent", backEvent);
        this.f783a.g(new b(backEvent));
    }
}
