package x3;

import com.google.android.gms.common.ConnectionResult;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements com.google.android.gms.common.internal.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w3.a f5993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f5994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.google.android.gms.common.internal.l f5995c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Set f5996d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5997e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ d f5998f;

    public l(d dVar, w3.a aVar, a aVar2) {
        this.f5998f = dVar;
        this.f5993a = aVar;
        this.f5994b = aVar2;
    }

    @Override // com.google.android.gms.common.internal.d
    public final void a(ConnectionResult connectionResult) {
        this.f5998f.f5977m.post(new s4.b(this, connectionResult, 18, false));
    }

    public final void b(ConnectionResult connectionResult) {
        j jVar = (j) this.f5998f.f5974j.get(this.f5994b);
        if (jVar != null) {
            jVar.n(connectionResult);
        }
    }
}
