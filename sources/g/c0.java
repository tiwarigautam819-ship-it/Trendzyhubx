package g;

import android.content.Context;
import android.content.IntentFilter;
import android.view.MenuItem;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f2648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f2649b;

    public c0(Context context) {
        this.f2648a = context;
    }

    public void c() {
        q2.d dVar = (q2.d) this.f2648a;
        if (dVar != null) {
            try {
                ((f0) this.f2649b).f2693k.unregisterReceiver(dVar);
            } catch (IllegalArgumentException unused) {
            }
            this.f2648a = null;
        }
    }

    public abstract IntentFilter d();

    public abstract int e();

    public MenuItem f(MenuItem menuItem) {
        if (!(menuItem instanceof e0.a)) {
            return menuItem;
        }
        e0.a aVar = (e0.a) menuItem;
        if (((s.j) this.f2649b) == null) {
            this.f2649b = new s.j(0);
        }
        MenuItem menuItem2 = (MenuItem) ((s.j) this.f2649b).get(aVar);
        if (menuItem2 != null) {
            return menuItem2;
        }
        l.u uVar = new l.u((Context) this.f2648a, aVar);
        ((s.j) this.f2649b).put(aVar, uVar);
        return uVar;
    }

    public abstract void g();

    public void h() {
        c();
        IntentFilter intentFilterD = d();
        if (intentFilterD.countActions() == 0) {
            return;
        }
        if (((q2.d) this.f2648a) == null) {
            this.f2648a = new q2.d(2, this);
        }
        ((f0) this.f2649b).f2693k.registerReceiver((q2.d) this.f2648a, intentFilterD);
    }

    public c0(f0 f0Var) {
        this.f2649b = f0Var;
    }
}
