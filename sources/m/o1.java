package m;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o1 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p1 f4058b;

    public /* synthetic */ o1(p1 p1Var, int i6) {
        this.f4057a = i6;
        this.f4058b = p1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4057a) {
            case 0:
                ViewParent parent = this.f4058b.f4065d.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                break;
            default:
                p1 p1Var = this.f4058b;
                p1Var.a();
                View view = p1Var.f4065d;
                if (view.isEnabled() && !view.isLongClickable() && p1Var.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    p1Var.f4068g = true;
                    break;
                }
                break;
        }
    }
}
