package r;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f4930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f4931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RectF f4932c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f4933d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f4934e;
    public ColorStateList h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuffColorFilter f4937i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f4938j;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4935f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4936g = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PorterDuff.Mode f4939k = PorterDuff.Mode.SRC_IN;

    public a(ColorStateList colorStateList, float f9) {
        this.f4930a = f9;
        Paint paint = new Paint(5);
        this.f4931b = paint;
        colorStateList = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.h = colorStateList;
        paint.setColor(colorStateList.getColorForState(getState(), this.h.getDefaultColor()));
        this.f4932c = new RectF();
        this.f4933d = new Rect();
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public final void b(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        float f9 = rect.left;
        float f10 = rect.top;
        float f11 = rect.right;
        float f12 = rect.bottom;
        RectF rectF = this.f4932c;
        rectF.set(f9, f10, f11, f12);
        Rect rect2 = this.f4933d;
        rect2.set(rect);
        if (this.f4935f) {
            rect2.inset((int) Math.ceil(b.a(this.f4934e, this.f4930a, this.f4936g)), (int) Math.ceil(b.b(this.f4934e, this.f4930a, this.f4936g)));
            rectF.set(rect2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z5;
        PorterDuffColorFilter porterDuffColorFilter = this.f4937i;
        Paint paint = this.f4931b;
        if (porterDuffColorFilter == null || paint.getColorFilter() != null) {
            z5 = false;
        } else {
            paint.setColorFilter(this.f4937i);
            z5 = true;
        }
        RectF rectF = this.f4932c;
        float f9 = this.f4930a;
        canvas.drawRoundRect(rectF, f9, f9, paint);
        if (z5) {
            paint.setColorFilter(null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        outline.setRoundRect(this.f4933d, this.f4930a);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f4938j;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.h;
        return (colorStateList2 != null && colorStateList2.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        b(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        Paint paint = this.f4931b;
        boolean z5 = colorForState != paint.getColor();
        if (z5) {
            paint.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f4938j;
        if (colorStateList2 == null || (mode = this.f4939k) == null) {
            return z5;
        }
        this.f4937i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        this.f4931b.setAlpha(i6);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f4931b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        this.f4938j = colorStateList;
        this.f4937i = a(colorStateList, this.f4939k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        this.f4939k = mode;
        this.f4937i = a(this.f4938j, mode);
        invalidateSelf();
    }
}
