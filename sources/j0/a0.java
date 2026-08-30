package j0;

import android.os.Build;
import android.view.View;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3248c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f3249d;

    public a0() {
        if (o3.a.f4422b == null) {
            o3.a.f4422b = new o3.a(7);
        }
    }

    public int a(int i6) {
        if (i6 < this.f3248c) {
            return ((ByteBuffer) this.f3249d).getShort(this.f3247b + i6);
        }
        return 0;
    }

    public abstract Object b(View view);

    public abstract void c(View view, Object obj);

    public void d(View view, Object obj) {
        Object tag;
        if (Build.VERSION.SDK_INT >= this.f3247b) {
            c(view, obj);
            return;
        }
        if (Build.VERSION.SDK_INT >= this.f3247b) {
            tag = b(view);
        } else {
            tag = view.getTag(this.f3246a);
            if (!((Class) this.f3249d).isInstance(tag)) {
                tag = null;
            }
        }
        if (e(tag, obj)) {
            View.AccessibilityDelegate accessibilityDelegateC = k0.c(view);
            b bVar = accessibilityDelegateC == null ? null : accessibilityDelegateC instanceof a ? ((a) accessibilityDelegateC).f3245a : new b(accessibilityDelegateC);
            if (bVar == null) {
                bVar = new b();
            }
            k0.h(view, bVar);
            view.setTag(this.f3246a, obj);
            k0.e(view, this.f3248c);
        }
    }

    public abstract boolean e(Object obj, Object obj2);
}
