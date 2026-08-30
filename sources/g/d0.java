package g;

import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.widget.ContentFrameLayout;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d0 extends ContentFrameLayout {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ f0 f2652i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(f0 f0Var, k.d dVar) {
        super(dVar, null);
        this.f2652i = f0Var;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f2652i.v(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x8 = (int) motionEvent.getX();
            int y4 = (int) motionEvent.getY();
            if (x8 < -5 || y4 < -5 || x8 > getWidth() + 5 || y4 > getHeight() + 5) {
                f0 f0Var = this.f2652i;
                f0Var.t(f0Var.B(0), true);
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i6) {
        setBackgroundDrawable(z7.l.j(getContext(), i6));
    }
}
