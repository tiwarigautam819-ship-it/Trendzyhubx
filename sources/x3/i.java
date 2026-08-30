package x3;

import com.google.android.gms.internal.measurement.r0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f5979a;

    public i(d dVar) {
        this.f5979a = dVar;
    }

    @Override // x3.b
    public final void a(boolean z5) {
        r0 r0Var = this.f5979a.f5977m;
        r0Var.sendMessage(r0Var.obtainMessage(1, Boolean.valueOf(z5)));
    }
}
