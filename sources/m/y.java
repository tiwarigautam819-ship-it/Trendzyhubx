package m;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class y extends RatingBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f4175a;

    public y(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.ratingBarStyle);
        v2.a(getContext(), this);
        w wVar = new w(this);
        this.f4175a = wVar;
        wVar.b(attributeSet, R.attr.ratingBarStyle);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i6, int i9) {
        super.onMeasure(i6, i9);
        Bitmap bitmap = (Bitmap) this.f4175a.f4140c;
        if (bitmap != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i6, 0), getMeasuredHeight());
        }
    }
}
