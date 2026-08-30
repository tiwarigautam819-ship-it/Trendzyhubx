package u3;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.firebase.messaging.x;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import q2.k0;
import y2.v;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o implements p4.a, p4.d, k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f5488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f5489b;

    public /* synthetic */ o(Object obj, Object obj2) {
        this.f5488a = obj;
        this.f5489b = obj2;
    }

    @Override // q2.k0
    public void a(Bundle bundle, x1.l lVar) {
        v vVar = (v) this.f5488a;
        y2.m mVar = (y2.m) this.f5489b;
        vVar.getClass();
        d7.g.f("request", mVar);
        vVar.q(mVar, bundle, lVar);
    }

    @Override // p4.a
    public Object b(p4.i iVar) {
        Bundle bundle;
        b bVar = (b) this.f5488a;
        Bundle bundle2 = (Bundle) this.f5489b;
        bVar.getClass();
        return (iVar.g() && (bundle = (Bundle) iVar.e()) != null && bundle.containsKey("google.messenger")) ? bVar.a(bundle2).k(h.f5463c, d.f5458d) : iVar;
    }

    public void c(boolean z5, Status status) {
        HashMap map;
        HashMap map2;
        synchronized (((Map) this.f5488a)) {
            map = new HashMap((Map) this.f5488a);
        }
        synchronized (((Map) this.f5489b)) {
            map2 = new HashMap((Map) this.f5489b);
        }
        for (Map.Entry entry : map.entrySet()) {
            if (z5 || ((Boolean) entry.getValue()).booleanValue()) {
                entry.getKey().getClass();
                throw new ClassCastException();
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (z5 || ((Boolean) entry2.getValue()).booleanValue()) {
                ((p4.j) entry2.getKey()).b(new x(status));
            }
        }
    }

    @Override // p4.d
    public void onComplete(p4.i iVar) {
        ((Map) ((o) this.f5489b).f5489b).remove((p4.j) this.f5488a);
    }

    public /* synthetic */ o(Object obj, Object obj2, boolean z5) {
        this.f5489b = obj;
        this.f5488a = obj2;
    }

    public o() {
        this.f5488a = Collections.synchronizedMap(new WeakHashMap());
        this.f5489b = Collections.synchronizedMap(new WeakHashMap());
    }

    public o(m4.b bVar, o3.a aVar) {
        this.f5489b = "ClientTelemetry.API";
        this.f5488a = bVar;
    }
}
