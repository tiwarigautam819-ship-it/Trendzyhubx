package i;

import android.animation.ObjectAnimator;
import android.graphics.drawable.AnimationDrawable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends android.support.v4.media.session.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ObjectAnimator f3054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f3055b;

    public c(AnimationDrawable animationDrawable, boolean z5, boolean z8) {
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        int i6 = z5 ? numberOfFrames - 1 : 0;
        int i9 = z5 ? 0 : numberOfFrames - 1;
        d dVar = new d();
        int numberOfFrames2 = animationDrawable.getNumberOfFrames();
        dVar.f3057b = numberOfFrames2;
        int[] iArr = dVar.f3056a;
        if (iArr == null || iArr.length < numberOfFrames2) {
            dVar.f3056a = new int[numberOfFrames2];
        }
        int[] iArr2 = dVar.f3056a;
        int i10 = 0;
        for (int i11 = 0; i11 < numberOfFrames2; i11++) {
            int duration = animationDrawable.getDuration(z5 ? (numberOfFrames2 - i11) - 1 : i11);
            iArr2[i11] = duration;
            i10 += duration;
        }
        dVar.f3058c = i10;
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i6, i9);
        objectAnimatorOfInt.setAutoCancel(true);
        objectAnimatorOfInt.setDuration(dVar.f3058c);
        objectAnimatorOfInt.setInterpolator(dVar);
        this.f3055b = z8;
        this.f3054a = objectAnimatorOfInt;
    }

    @Override // android.support.v4.media.session.a
    public final boolean b() {
        return this.f3055b;
    }

    @Override // android.support.v4.media.session.a
    public final void i() {
        this.f3054a.reverse();
    }

    @Override // android.support.v4.media.session.a
    public final void l() {
        this.f3054a.start();
    }

    @Override // android.support.v4.media.session.a
    public final void m() {
        this.f3054a.cancel();
    }
}
