package androidx.fragment.app;

import android.animation.AnimatorSet;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f569a = new l();

    public final void a(AnimatorSet animatorSet) {
        d7.g.f("animatorSet", animatorSet);
        animatorSet.reverse();
    }

    public final void b(AnimatorSet animatorSet, long j3) {
        d7.g.f("animatorSet", animatorSet);
        animatorSet.setCurrentPlayTime(j3);
    }
}
