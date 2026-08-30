package com.engagelab.privates.inapp.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class RoundedImageView extends ImageView {
    private int defaultRadius;
    private float height;
    private int leftBottomRadius;
    private int leftTopRadius;
    private int radius;
    private int rightBottomRadius;
    private int rightTopRadius;
    private float width;

    public RoundedImageView(Context context) {
        this(context, null);
        init(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        int i6 = this.defaultRadius;
        this.leftTopRadius = i6;
        this.rightTopRadius = i6;
        this.rightBottomRadius = i6;
        this.leftBottomRadius = i6;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        int iMax = Math.max(this.rightTopRadius, this.rightBottomRadius) + Math.max(this.leftTopRadius, this.leftBottomRadius);
        int iMax2 = Math.max(this.leftBottomRadius, this.rightBottomRadius) + Math.max(this.leftTopRadius, this.rightTopRadius);
        if (this.width >= iMax && this.height > iMax2) {
            Path path = new Path();
            path.moveTo(this.leftTopRadius, 0.0f);
            path.lineTo(this.width - this.rightTopRadius, 0.0f);
            float f9 = this.width;
            path.quadTo(f9, 0.0f, f9, this.rightTopRadius);
            path.lineTo(this.width, this.height - this.rightBottomRadius);
            float f10 = this.width;
            float f11 = this.height;
            path.quadTo(f10, f11, f10 - this.rightBottomRadius, f11);
            path.lineTo(this.leftBottomRadius, this.height);
            float f12 = this.height;
            path.quadTo(0.0f, f12, 0.0f, f12 - this.leftBottomRadius);
            path.lineTo(0.0f, this.leftTopRadius);
            path.quadTo(0.0f, 0.0f, this.leftTopRadius, 0.0f);
            canvas.clipPath(path);
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onLayout(boolean z5, int i6, int i9, int i10, int i11) {
        super.onLayout(z5, i6, i9, i10, i11);
        this.width = getWidth();
        this.height = getHeight();
    }

    public void setRadius(int i6, int i9, int i10, int i11) {
        this.leftTopRadius = i6;
        this.rightTopRadius = i9;
        this.rightBottomRadius = i10;
        this.leftBottomRadius = i11;
        invalidate();
    }

    public RoundedImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        init(context, attributeSet);
    }

    public RoundedImageView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.defaultRadius = 45;
        init(context, attributeSet);
    }
}
