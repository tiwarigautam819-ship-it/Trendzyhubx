package com.engagelab.privates.common;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.engagelab.privates.common.log.MTCommonLog;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class b0 implements View.OnTouchListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1094a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f1095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f1096c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public e f1097d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1098e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f1099f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f1100g;
    public boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1101i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Object f1102j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public VelocityTracker f1103k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f1104l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1105m;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b0.this.b();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ float f1107a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ float f1108b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ float f1109c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ float f1110d;

        public b(float f9, float f10, float f11, float f12) {
            this.f1107a = f9;
            this.f1108b = f10;
            this.f1109c = f11;
            this.f1110d = f12;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            float f9 = (animatedFraction * this.f1108b) + this.f1107a;
            float animatedFraction2 = (valueAnimator.getAnimatedFraction() * this.f1110d) + this.f1109c;
            b0.this.b(f9);
            b0.this.a(animatedFraction2);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup.LayoutParams f1112a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f1113b;

        public c(ViewGroup.LayoutParams layoutParams, int i6) {
            this.f1112a = layoutParams;
            this.f1113b = i6;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            MTCommonLog.d("InAppSWTouchListener", "[onAnimationEnd] ...");
            if (b0.this.f1097d != null) {
                b0.this.f1097d.a(b0.this.f1096c, b0.this.f1102j);
            }
            b0.this.f1096c.setAlpha(1.0f);
            b0.this.f1096c.setTranslationY(0.0f);
            this.f1112a.width = this.f1113b;
            b0.this.f1096c.setLayoutParams(this.f1112a);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class d implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewGroup.LayoutParams f1115a;

        public d(ViewGroup.LayoutParams layoutParams) {
            this.f1115a = layoutParams;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f1115a.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            b0.this.f1096c.setLayoutParams(this.f1115a);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface e {
        void a(View view, Object obj);

        boolean a(Object obj);
    }

    public b0(f0 f0Var, Object obj, int i6, e eVar) {
        View viewD = f0Var.d();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(viewD.getContext());
        this.f1094a = viewConfiguration.getScaledTouchSlop();
        viewConfiguration.getScaledMinimumFlingVelocity();
        viewConfiguration.getScaledMaximumFlingVelocity();
        this.f1095b = 500L;
        this.f1096c = viewD;
        this.f1105m = i6;
        this.f1102j = obj;
        this.f1097d = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0087 A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:3:0x0001, B:5:0x000c, B:8:0x0018, B:16:0x0029, B:19:0x002f, B:20:0x003e, B:23:0x0044, B:25:0x0062, B:27:0x006f, B:36:0x0081, B:38:0x0087, B:40:0x008d, B:39:0x008a, B:41:0x00ae, B:43:0x00b2, B:45:0x00d5, B:48:0x00db, B:50:0x00fa, B:58:0x010a, B:62:0x0115, B:64:0x0119, B:65:0x011c, B:59:0x010e, B:61:0x0112, B:66:0x0127, B:68:0x0137, B:70:0x013f), top: B:74:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008a A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:3:0x0001, B:5:0x000c, B:8:0x0018, B:16:0x0029, B:19:0x002f, B:20:0x003e, B:23:0x0044, B:25:0x0062, B:27:0x006f, B:36:0x0081, B:38:0x0087, B:40:0x008d, B:39:0x008a, B:41:0x00ae, B:43:0x00b2, B:45:0x00d5, B:48:0x00db, B:50:0x00fa, B:58:0x010a, B:62:0x0115, B:64:0x0119, B:65:0x011c, B:59:0x010e, B:61:0x0112, B:66:0x0127, B:68:0x0137, B:70:0x013f), top: B:74:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b2 A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:3:0x0001, B:5:0x000c, B:8:0x0018, B:16:0x0029, B:19:0x002f, B:20:0x003e, B:23:0x0044, B:25:0x0062, B:27:0x006f, B:36:0x0081, B:38:0x0087, B:40:0x008d, B:39:0x008a, B:41:0x00ae, B:43:0x00b2, B:45:0x00d5, B:48:0x00db, B:50:0x00fa, B:58:0x010a, B:62:0x0115, B:64:0x0119, B:65:0x011c, B:59:0x010e, B:61:0x0112, B:66:0x0127, B:68:0x0137, B:70:0x013f), top: B:74:0x0001 }] */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            Method dump skipped, instruction units count: 342
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.engagelab.privates.common.b0.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public float a() {
        return this.f1096c.getTranslationY();
    }

    public void b(float f9) {
        this.f1096c.setTranslationY(f9);
    }

    public void c() {
        a(0.0f, 1.0f, null);
    }

    public void a(float f9) {
        this.f1096c.setAlpha(f9);
    }

    public final void b() {
        try {
            View view = this.f1096c;
            if (view != null) {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                this.f1096c.getHeight();
                int width = this.f1096c.getWidth();
                ValueAnimator duration = ValueAnimator.ofInt(width, 1).setDuration(this.f1095b);
                duration.addListener(new c(layoutParams, width));
                duration.addUpdateListener(new d(layoutParams));
                duration.start();
            }
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("[performDismiss] failed."), "InAppSWTouchListener");
        }
    }

    public void a(boolean z5) {
        float f9 = z5 ? -this.f1098e : this.f1098e;
        MTCommonLog.d("InAppSWTouchListener", "[startDismissAnimationY] dismissTop: " + z5 + ", viewHeight: " + this.f1098e);
        a(f9, 0.0f, new a());
    }

    public final void a(float f9, float f10, AnimatorListenerAdapter animatorListenerAdapter) {
        try {
            float fA = a();
            float f11 = f9 - fA;
            float alpha = this.f1096c.getAlpha();
            float f12 = f10 - alpha;
            MTCommonLog.i("InAppSWTouchListener", "animateTo, beginTranslation: " + fA + ", translationDiff: " + f11 + ", beginAlpha: , alphaDiff: " + f12);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            if (valueAnimatorOfFloat != null) {
                valueAnimatorOfFloat.setDuration(this.f1095b);
                valueAnimatorOfFloat.addUpdateListener(new b(fA, f11, alpha, f12));
                if (animatorListenerAdapter != null) {
                    valueAnimatorOfFloat.addListener(animatorListenerAdapter);
                }
                valueAnimatorOfFloat.start();
            }
        } catch (Throwable th) {
            q2.x.j(th, new StringBuilder("[animateTo] failed"), "InAppSWTouchListener");
        }
    }
}
