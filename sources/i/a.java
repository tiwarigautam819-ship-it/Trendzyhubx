package i;

import android.graphics.drawable.Animatable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends android.support.v4.media.session.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Animatable f3028b;

    public /* synthetic */ a(Animatable animatable, int i6) {
        this.f3027a = i6;
        this.f3028b = animatable;
    }

    @Override // android.support.v4.media.session.a
    public final void l() {
        switch (this.f3027a) {
            case 0:
                this.f3028b.start();
                break;
            default:
                ((h1.e) this.f3028b).start();
                break;
        }
    }

    @Override // android.support.v4.media.session.a
    public final void m() {
        switch (this.f3027a) {
            case 0:
                this.f3028b.stop();
                break;
            default:
                ((h1.e) this.f3028b).stop();
                break;
        }
    }
}
