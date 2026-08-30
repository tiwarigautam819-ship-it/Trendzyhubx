package m;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.AppCompatImageView;
import com.YaarWin.app.R;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends AppCompatImageView implements i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ androidx.appcompat.widget.a f3979d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(androidx.appcompat.widget.a aVar, Context context) {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.f3979d = aVar;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        f4.f.e(this, getContentDescription());
        setOnTouchListener(new l.b(this, this));
    }

    @Override // m.i
    public final boolean a() {
        return false;
    }

    @Override // m.i
    public final boolean c() {
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.f3979d.l();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i6, int i9, int i10, int i11) {
        boolean frame = super.setFrame(i6, i9, i10, i11);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int iMax = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            background.setHotspotBounds(paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
        }
        return frame;
    }
}
