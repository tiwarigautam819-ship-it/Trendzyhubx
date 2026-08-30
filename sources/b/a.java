package b;

import android.window.BackEvent;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f771a = new a();

    public final BackEvent a(float f9, float f10, float f11, int i6) {
        return new BackEvent(f9, f10, f11, i6);
    }

    public final float b(BackEvent backEvent) {
        d7.g.f("backEvent", backEvent);
        return backEvent.getProgress();
    }

    public final int c(BackEvent backEvent) {
        d7.g.f("backEvent", backEvent);
        return backEvent.getSwipeEdge();
    }

    public final float d(BackEvent backEvent) {
        d7.g.f("backEvent", backEvent);
        return backEvent.getTouchX();
    }

    public final float e(BackEvent backEvent) {
        d7.g.f("backEvent", backEvent);
        return backEvent.getTouchY();
    }
}
