package m;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w1 implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x1 f4148a;

    public w1(x1 x1Var) {
        this.f4148a = x1Var;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        x1 x1Var = this.f4148a;
        t1 t1Var = x1Var.f4169y;
        Handler handler = x1Var.C;
        v vVar = x1Var.G;
        int action = motionEvent.getAction();
        int x8 = (int) motionEvent.getX();
        int y4 = (int) motionEvent.getY();
        if (action == 0 && vVar != null && vVar.isShowing() && x8 >= 0 && x8 < vVar.getWidth() && y4 >= 0 && y4 < vVar.getHeight()) {
            handler.postDelayed(t1Var, 250L);
            return false;
        }
        if (action != 1) {
            return false;
        }
        handler.removeCallbacks(t1Var);
        return false;
    }
}
