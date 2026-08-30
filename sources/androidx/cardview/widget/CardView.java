package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.internal.measurement.y4;
import o3.a;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f343f = {R.attr.colorBackground};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f344g = new a(10);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final y4 f349e;

    public CardView(Context context, AttributeSet attributeSet) {
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, com.YaarWin.app.R.attr.cardViewStyle);
        Rect rect = new Rect();
        this.f347c = rect;
        this.f348d = new Rect();
        y4 y4Var = new y4((Object) this, 26, false);
        this.f349e = y4Var;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.a.f4706a, com.YaarWin.app.R.attr.cardViewStyle, com.YaarWin.app.R.style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(f343f);
            int color = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateListValueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(com.YaarWin.app.R.color.cardview_light_background) : getResources().getColor(com.YaarWin.app.R.color.cardview_dark_background));
        }
        float dimension = typedArrayObtainStyledAttributes.getDimension(3, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(4, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(5, 0.0f);
        this.f345a = typedArrayObtainStyledAttributes.getBoolean(7, false);
        this.f346b = typedArrayObtainStyledAttributes.getBoolean(6, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        r.a aVar = new r.a(colorStateListValueOf, dimension);
        y4Var.f1990b = aVar;
        setBackgroundDrawable(aVar);
        setClipToOutline(true);
        setElevation(dimension2);
        f344g.r(y4Var, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return ((r.a) ((Drawable) this.f349e.f1990b)).h;
    }

    public float getCardElevation() {
        return ((CardView) this.f349e.f1991c).getElevation();
    }

    public int getContentPaddingBottom() {
        return this.f347c.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f347c.left;
    }

    public int getContentPaddingRight() {
        return this.f347c.right;
    }

    public int getContentPaddingTop() {
        return this.f347c.top;
    }

    public float getMaxCardElevation() {
        return ((r.a) ((Drawable) this.f349e.f1990b)).f4934e;
    }

    public boolean getPreventCornerOverlap() {
        return this.f346b;
    }

    public float getRadius() {
        return ((r.a) ((Drawable) this.f349e.f1990b)).f4930a;
    }

    public boolean getUseCompatPadding() {
        return this.f345a;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i6, int i9) {
        super.onMeasure(i6, i9);
    }

    public void setCardBackgroundColor(int i6) {
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(i6);
        r.a aVar = (r.a) ((Drawable) this.f349e.f1990b);
        if (colorStateListValueOf == null) {
            aVar.getClass();
            colorStateListValueOf = ColorStateList.valueOf(0);
        }
        aVar.h = colorStateListValueOf;
        aVar.f4931b.setColor(colorStateListValueOf.getColorForState(aVar.getState(), aVar.h.getDefaultColor()));
        aVar.invalidateSelf();
    }

    public void setCardElevation(float f9) {
        ((CardView) this.f349e.f1991c).setElevation(f9);
    }

    public void setMaxCardElevation(float f9) {
        f344g.r(this.f349e, f9);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i6) {
        super.setMinimumHeight(i6);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i6) {
        super.setMinimumWidth(i6);
    }

    public void setPreventCornerOverlap(boolean z5) {
        if (z5 != this.f346b) {
            this.f346b = z5;
            y4 y4Var = this.f349e;
            f344g.r(y4Var, ((r.a) ((Drawable) y4Var.f1990b)).f4934e);
        }
    }

    public void setRadius(float f9) {
        r.a aVar = (r.a) ((Drawable) this.f349e.f1990b);
        if (f9 == aVar.f4930a) {
            return;
        }
        aVar.f4930a = f9;
        aVar.b(null);
        aVar.invalidateSelf();
    }

    public void setUseCompatPadding(boolean z5) {
        if (this.f345a != z5) {
            this.f345a = z5;
            y4 y4Var = this.f349e;
            f344g.r(y4Var, ((r.a) ((Drawable) y4Var.f1990b)).f4934e);
        }
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        r.a aVar = (r.a) ((Drawable) this.f349e.f1990b);
        if (colorStateList == null) {
            aVar.getClass();
            colorStateList = ColorStateList.valueOf(0);
        }
        aVar.h = colorStateList;
        aVar.f4931b.setColor(colorStateList.getColorForState(aVar.getState(), aVar.h.getDefaultColor()));
        aVar.invalidateSelf();
    }

    @Override // android.view.View
    public final void setPadding(int i6, int i9, int i10, int i11) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i6, int i9, int i10, int i11) {
    }
}
