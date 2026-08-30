package m;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b0 extends w {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a0 f3911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Drawable f3912f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f3913g;
    public PorterDuff.Mode h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3914i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3915j;

    public b0(a0 a0Var) {
        super(a0Var);
        this.f3913g = null;
        this.h = null;
        this.f3914i = false;
        this.f3915j = false;
        this.f3911e = a0Var;
    }

    @Override // m.w
    public final void b(AttributeSet attributeSet, int i6) {
        super.b(attributeSet, R.attr.seekBarStyle);
        a0 a0Var = this.f3911e;
        Context context = a0Var.getContext();
        int[] iArr = f.a.f2498g;
        c5.h hVarQ = c5.h.q(context, attributeSet, iArr, R.attr.seekBarStyle);
        TypedArray typedArray = (TypedArray) hVarQ.f1061c;
        j0.k0.g(a0Var, a0Var.getContext(), iArr, attributeSet, (TypedArray) hVarQ.f1061c, R.attr.seekBarStyle, 0);
        Drawable drawableL = hVarQ.l(0);
        if (drawableL != null) {
            a0Var.setThumb(drawableL);
        }
        Drawable drawableK = hVarQ.k(1);
        Drawable drawable = this.f3912f;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f3912f = drawableK;
        if (drawableK != null) {
            drawableK.setCallback(a0Var);
            drawableK.setLayoutDirection(a0Var.getLayoutDirection());
            if (drawableK.isStateful()) {
                drawableK.setState(a0Var.getDrawableState());
            }
            f();
        }
        a0Var.invalidate();
        if (typedArray.hasValue(3)) {
            this.h = g1.b(typedArray.getInt(3, -1), this.h);
            this.f3915j = true;
        }
        if (typedArray.hasValue(2)) {
            this.f3913g = hVarQ.j(2);
            this.f3914i = true;
        }
        hVarQ.s();
        f();
    }

    public final void f() {
        Drawable drawable = this.f3912f;
        if (drawable != null) {
            if (this.f3914i || this.f3915j) {
                Drawable drawableMutate = drawable.mutate();
                this.f3912f = drawableMutate;
                if (this.f3914i) {
                    drawableMutate.setTintList(this.f3913g);
                }
                if (this.f3915j) {
                    this.f3912f.setTintMode(this.h);
                }
                if (this.f3912f.isStateful()) {
                    this.f3912f.setState(this.f3911e.getDrawableState());
                }
            }
        }
    }

    public final void g(Canvas canvas) {
        if (this.f3912f != null) {
            int max = this.f3911e.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f3912f.getIntrinsicWidth();
                int intrinsicHeight = this.f3912f.getIntrinsicHeight();
                int i6 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i9 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f3912f.setBounds(-i6, -i9, i6, i9);
                float width = ((r0.getWidth() - r0.getPaddingLeft()) - r0.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(r0.getPaddingLeft(), r0.getHeight() / 2);
                for (int i10 = 0; i10 <= max; i10++) {
                    this.f3912f.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
