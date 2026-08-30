package h1;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Drawable.ConstantState f2902a;

    public d(Drawable.ConstantState constantState) {
        this.f2902a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.f2902a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.f2902a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        e eVar = new e(null);
        Drawable drawableNewDrawable = this.f2902a.newDrawable();
        eVar.f2908a = drawableNewDrawable;
        drawableNewDrawable.setCallback(eVar.f2905d);
        return eVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        e eVar = new e(null);
        Drawable drawableNewDrawable = this.f2902a.newDrawable(resources);
        eVar.f2908a = drawableNewDrawable;
        drawableNewDrawable.setCallback(eVar.f2905d);
        return eVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        e eVar = new e(null);
        Drawable drawableNewDrawable = this.f2902a.newDrawable(resources, theme);
        eVar.f2908a = drawableNewDrawable;
        drawableNewDrawable.setCallback(eVar.f2905d);
        return eVar;
    }
}
