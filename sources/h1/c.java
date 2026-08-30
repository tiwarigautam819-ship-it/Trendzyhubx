package h1;

import android.animation.AnimatorSet;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public q f2898a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AnimatorSet f2899b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList f2900c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s.e f2901d;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        throw new IllegalStateException("No constant state support for SDK < 24.");
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        throw new IllegalStateException("No constant state support for SDK < 24.");
    }
}
