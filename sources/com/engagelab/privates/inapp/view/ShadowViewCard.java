package com.engagelab.privates.inapp.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class ShadowViewCard extends RelativeLayout {
    private static final int DEFAULT_VALUE_SHADOW_BOTTOM_HEIGHT = 20;
    private static final int DEFAULT_VALUE_SHADOW_COLOR = Color.parseColor("#1f253044");
    private static final int DEFAULT_VALUE_SHADOW_LEFT_HEIGHT = 5;
    private static final int DEFAULT_VALUE_SHADOW_OFFSET_X = 0;
    private static final int DEFAULT_VALUE_SHADOW_OFFSET_Y = 8;
    private static final int DEFAULT_VALUE_SHADOW_RADIUS = 11;
    private static final int DEFAULT_VALUE_SHADOW_RIGHT_HEIGHT = 5;
    private static final int DEFAULT_VALUE_SHADOW_ROUND = 52;
    private static final int DEFAULT_VALUE_SHADOW_TOP_HEIGHT = 15;
    private int shadowBottomHeight;
    private int shadowColor;
    private int shadowLeftHeight;
    private int shadowOffsetX;
    private int shadowOffsetY;
    private int shadowRadius;
    private int shadowRightHeight;
    private int shadowRound;
    private int shadowTopHeight;

    public ShadowViewCard(Context context) {
        this(context, null);
    }

    public static int dp2px(Context context, float f9) {
        return (int) ((f9 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void initView(Context context, AttributeSet attributeSet) {
        this.shadowRound = DEFAULT_VALUE_SHADOW_ROUND;
        this.shadowColor = DEFAULT_VALUE_SHADOW_COLOR;
        this.shadowTopHeight = DEFAULT_VALUE_SHADOW_TOP_HEIGHT;
        this.shadowRightHeight = 5;
        this.shadowLeftHeight = 5;
        this.shadowBottomHeight = DEFAULT_VALUE_SHADOW_BOTTOM_HEIGHT;
        this.shadowOffsetX = 0;
        this.shadowOffsetY = 8;
        this.shadowRadius = DEFAULT_VALUE_SHADOW_RADIUS;
        setPadding(5, DEFAULT_VALUE_SHADOW_TOP_HEIGHT, 5, DEFAULT_VALUE_SHADOW_BOTTOM_HEIGHT);
        setLayerType(1, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        float f9 = this.shadowLeftHeight;
        float f10 = this.shadowTopHeight;
        float width = getWidth() - this.shadowRightHeight;
        float height = getHeight() - this.shadowBottomHeight;
        paint.setShadowLayer(this.shadowRadius, this.shadowOffsetX, this.shadowOffsetY, this.shadowColor);
        RectF rectF = new RectF(f9, f10, width, height);
        float f11 = this.shadowRound;
        canvas.drawRoundRect(rectF, f11, f11, paint);
        canvas.save();
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i6, int i9) {
        super.onMeasure(i6, i9);
    }

    public ShadowViewCard(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShadowViewCard(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        initView(context, attributeSet);
    }
}
