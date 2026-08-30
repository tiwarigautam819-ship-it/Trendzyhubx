package m;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class a0 extends SeekBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b0 f3908a;

    public a0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarStyle);
        v2.a(getContext(), this);
        b0 b0Var = new b0(this);
        this.f3908a = b0Var;
        b0Var.b(attributeSet, R.attr.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        b0 b0Var = this.f3908a;
        a0 a0Var = b0Var.f3911e;
        Drawable drawable = b0Var.f3912f;
        if (drawable != null && drawable.isStateful() && drawable.setState(a0Var.getDrawableState())) {
            a0Var.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f3908a.f3912f;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f3908a.g(canvas);
    }
}
