package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i0 extends AnimationSet implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewGroup f547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f551e;

    public i0(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f551e = true;
        this.f547a = viewGroup;
        this.f548b = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public final boolean getTransformation(long j3, Transformation transformation) {
        this.f551e = true;
        if (this.f549c) {
            return !this.f550d;
        }
        if (!super.getTransformation(j3, transformation)) {
            this.f549c = true;
            j0.t.a(this.f547a, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z5 = this.f549c;
        ViewGroup viewGroup = this.f547a;
        if (z5 || !this.f551e) {
            viewGroup.endViewTransition(this.f548b);
            this.f550d = true;
        } else {
            this.f551e = false;
            viewGroup.post(this);
        }
    }

    @Override // android.view.animation.Animation
    public final boolean getTransformation(long j3, Transformation transformation, float f9) {
        this.f551e = true;
        if (this.f549c) {
            return !this.f550d;
        }
        if (!super.getTransformation(j3, transformation, f9)) {
            this.f549c = true;
            j0.t.a(this.f547a, this);
        }
        return true;
    }
}
