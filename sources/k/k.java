package k;

import android.view.View;
import android.view.animation.Interpolator;
import j0.o0;
import j0.p0;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Interpolator f3478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p0 f3479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3480e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f3477b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final j f3481f = new j(this);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f3476a = new ArrayList();

    public final void a() {
        if (this.f3480e) {
            ArrayList arrayList = this.f3476a;
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                ((o0) obj).b();
            }
            this.f3480e = false;
        }
    }

    public final void b() {
        View view;
        if (this.f3480e) {
            return;
        }
        ArrayList arrayList = this.f3476a;
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            o0 o0Var = (o0) obj;
            long j3 = this.f3477b;
            if (j3 >= 0) {
                o0Var.c(j3);
            }
            Interpolator interpolator = this.f3478c;
            if (interpolator != null && (view = (View) o0Var.f3298a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f3479d != null) {
                o0Var.d(this.f3481f);
            }
            View view2 = (View) o0Var.f3298a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f3480e = true;
    }
}
