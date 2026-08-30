package h1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends h implements Animatable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f2904c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f2905d = new b(this);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f2903b = new c();

    public e(Context context) {
        this.f2904c = context;
    }

    @Override // h1.h, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.applyTheme(theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        c cVar = this.f2903b;
        cVar.f2898a.draw(canvas);
        if (cVar.f2899b.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.getAlpha() : this.f2903b.f2898a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f2903b.getClass();
        return changingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.getColorFilter() : this.f2903b.f2898a.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f2908a == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new d(this.f2908a.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f2903b.f2898a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f2903b.f2898a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.getOpacity() : this.f2903b.f2898a.getOpacity();
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x0182, code lost:
    
        if (r8.f2899b != null) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0184, code lost:
    
        r8.f2899b = new android.animation.AnimatorSet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x018b, code lost:
    
        r8.f2899b.playTogether(r8.f2900c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0192, code lost:
    
        return;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void inflate(android.content.res.Resources r22, org.xmlpull.v1.XmlPullParser r23, android.util.AttributeSet r24, android.content.res.Resources.Theme r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 403
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h1.e.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.isAutoMirrored() : this.f2903b.f2898a.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Drawable drawable = this.f2908a;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f2903b.f2899b.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.isStateful() : this.f2903b.f2898a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f2903b.f2898a.setBounds(rect);
        }
    }

    @Override // h1.h, android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i6) {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.setLevel(i6) : this.f2903b.f2898a.setLevel(i6);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f2908a;
        return drawable != null ? drawable.setState(iArr) : this.f2903b.f2898a.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.setAlpha(i6);
        } else {
            this.f2903b.f2898a.setAlpha(i6);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z5) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.setAutoMirrored(z5);
        } else {
            this.f2903b.f2898a.setAutoMirrored(z5);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f2903b.f2898a.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i6) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            android.support.v4.media.session.a.k(drawable, i6);
        } else {
            this.f2903b.f2898a.setTint(i6);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        } else {
            this.f2903b.f2898a.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            drawable.setTintMode(mode);
        } else {
            this.f2903b.f2898a.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z5, boolean z8) {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            return drawable.setVisible(z5, z8);
        }
        this.f2903b.f2898a.setVisible(z5, z8);
        return super.setVisible(z5, z8);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
            return;
        }
        c cVar = this.f2903b;
        if (cVar.f2899b.isStarted()) {
            return;
        }
        cVar.f2899b.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Drawable drawable = this.f2908a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f2903b.f2899b.end();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws Throwable {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
