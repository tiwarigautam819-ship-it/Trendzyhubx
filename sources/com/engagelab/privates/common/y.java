package com.engagelab.privates.common;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Point;
import android.view.View;
import com.engagelab.privates.common.log.MTCommonLog;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class y {

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c f1297a;

        public a(c cVar) {
            this.f1297a = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            try {
                c cVar = this.f1297a;
                if (cVar != null) {
                    cVar.a();
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f1298a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Point f1299b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ long f1300c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ c f1301d;

        public b(View view, Point point, long j3, c cVar) {
            this.f1298a = view;
            this.f1299b = point;
            this.f1300c = j3;
            this.f1301d = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            try {
                this.f1298a.animate().translationX(this.f1299b.x).translationY(this.f1299b.y).alpha(1.0f).setDuration(this.f1300c).setListener(null);
                c cVar = this.f1301d;
                if (cVar != null) {
                    cVar.a();
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface c {
        void a();
    }

    public static void a(View view, Point point, long j3, c cVar) {
        if (view == null) {
            MTCommonLog.w("InAppAnimator", "[slideOutOfView] view is null");
        } else {
            view.animate().translationX(point.x).translationY(point.y).setDuration(j3).setListener(new a(cVar));
        }
    }

    public static void a(View view, Point point, Point point2, long j3, c cVar) {
        if (view == null) {
            MTCommonLog.w("InAppAnimator", "[slideIntoView] view is null");
        } else {
            view.setAlpha(0.0f);
            view.animate().translationX(point.x).translationY(point.y).setDuration(10L).setListener(new b(view, point2, j3, cVar));
        }
    }
}
