package m;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s2 extends TouchDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f4095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rect f4096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f4097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f4098d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4099e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4100f;

    public s2(View view, Rect rect, Rect rect2) {
        super(rect, view);
        int scaledTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.f4099e = scaledTouchSlop;
        Rect rect3 = new Rect();
        this.f4096b = rect3;
        Rect rect4 = new Rect();
        this.f4098d = rect4;
        Rect rect5 = new Rect();
        this.f4097c = rect5;
        rect3.set(rect);
        rect4.set(rect);
        int i6 = -scaledTouchSlop;
        rect4.inset(i6, i6);
        rect5.set(rect2);
        this.f4095a = view;
    }

    @Override // android.view.TouchDelegate
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z5;
        boolean z8;
        int x8 = (int) motionEvent.getX();
        int y4 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z9 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                z8 = this.f4100f;
                if (z8 && !this.f4098d.contains(x8, y4)) {
                    z9 = z8;
                    z5 = false;
                }
            } else {
                if (action == 3) {
                    z8 = this.f4100f;
                    this.f4100f = false;
                }
                z5 = true;
                z9 = false;
            }
            z9 = z8;
            z5 = true;
        } else if (this.f4096b.contains(x8, y4)) {
            this.f4100f = true;
            z5 = true;
        } else {
            z5 = true;
            z9 = false;
        }
        if (!z9) {
            return false;
        }
        Rect rect = this.f4097c;
        View view = this.f4095a;
        if (!z5 || rect.contains(x8, y4)) {
            motionEvent.setLocation(x8 - rect.left, y4 - rect.top);
        } else {
            motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
        }
        return view.dispatchTouchEvent(motionEvent);
    }
}
