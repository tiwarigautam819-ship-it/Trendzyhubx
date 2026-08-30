package b;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.n0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o extends d7.h implements c7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.h0 f820c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o(androidx.fragment.app.h0 h0Var, int i6) {
        super(0);
        this.f819b = i6;
        this.f820c = h0Var;
    }

    @Override // c7.a
    public final Object b() {
        switch (this.f819b) {
            case 0:
                androidx.fragment.app.h0 h0Var = this.f820c;
                return new n0(h0Var.getApplication(), h0Var, h0Var.getIntent() != null ? h0Var.getIntent().getExtras() : null);
            case 1:
                this.f820c.reportFullyDrawn();
                return r6.j.f5000a;
            case 2:
                androidx.fragment.app.h0 h0Var2 = this.f820c;
                return new s(((p) h0Var2).reportFullyDrawnExecutor, new o(h0Var2, 1));
            default:
                androidx.fragment.app.h0 h0Var3 = this.f820c;
                i0 i0Var = new i0(new d(h0Var3, 1));
                if (Build.VERSION.SDK_INT >= 33) {
                    if (d7.g.a(Looper.myLooper(), Looper.getMainLooper())) {
                        h0Var3.getLifecycle().a(new g(i0Var, 0, h0Var3));
                    } else {
                        new Handler(Looper.getMainLooper()).post(new a2.i(h0Var3, 1, i0Var));
                    }
                }
                return i0Var;
        }
    }
}
