package b2;

import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c2.a f932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WeakReference f933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WeakReference f934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View.OnTouchListener f935d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f936e = true;

    public j(c2.a aVar, View view, View view2) {
        this.f932a = aVar;
        this.f933b = new WeakReference(view2);
        this.f934c = new WeakReference(view);
        this.f935d = c2.e.f(view2);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        d7.g.f("view", view);
        d7.g.f("motionEvent", motionEvent);
        View view2 = (View) this.f934c.get();
        View view3 = (View) this.f933b.get();
        if (view2 != null && view3 != null && motionEvent.getAction() == 1) {
            c.c(this.f932a, view2, view3);
        }
        View.OnTouchListener onTouchListener = this.f935d;
        return onTouchListener != null && onTouchListener.onTouch(view, motionEvent);
    }
}
