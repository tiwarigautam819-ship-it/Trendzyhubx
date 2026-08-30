package h1;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Drawable.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2896a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f2897b;

    public /* synthetic */ b() {
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        switch (this.f2896a) {
            case 0:
                ((e) this.f2897b).invalidateSelf();
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j3) {
        switch (this.f2896a) {
            case 0:
                ((e) this.f2897b).scheduleSelf(runnable, j3);
                break;
            default:
                Drawable.Callback callback = (Drawable.Callback) this.f2897b;
                if (callback != null) {
                    callback.scheduleDrawable(drawable, runnable, j3);
                }
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        switch (this.f2896a) {
            case 0:
                ((e) this.f2897b).unscheduleSelf(runnable);
                break;
            default:
                Drawable.Callback callback = (Drawable.Callback) this.f2897b;
                if (callback != null) {
                    callback.unscheduleDrawable(drawable, runnable);
                }
                break;
        }
    }

    public b(e eVar) {
        this.f2897b = eVar;
    }

    private final void a(Drawable drawable) {
    }
}
