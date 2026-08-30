package f2;

import android.os.Bundle;
import android.os.OutcomeReceiver;
import android.util.Log;
import d7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements OutcomeReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2536a;

    public final void onError(Throwable th) {
        String str;
        e2.a aVar;
        String str2;
        e2.a aVar2;
        switch (this.f2536a) {
            case 0:
                Exception exc = (Exception) th;
                g.f("error", exc);
                if (!v2.a.b(d.class)) {
                    try {
                        str = d.f2538b;
                    } catch (Throwable th2) {
                        v2.a.a(th2, d.class);
                        str = null;
                    }
                    break;
                } else {
                    str = null;
                }
                Log.d(str, "OUTCOME_RECEIVER_TRIGGER_FAILURE");
                if (!v2.a.b(d.class)) {
                    try {
                        aVar = d.f2540d;
                    } catch (Throwable th3) {
                        v2.a.a(th3, d.class);
                        aVar = null;
                    }
                    break;
                } else {
                    aVar = null;
                }
                if (aVar == null) {
                    g.i("gpsDebugLogger");
                    throw null;
                }
                Bundle bundle = new Bundle();
                bundle.putString("gps_ara_failed_reason", exc.toString());
                aVar.a(bundle, "gps_ara_failed");
                return;
            default:
                Exception exc2 = (Exception) th;
                g.f("error", exc2);
                if (!v2.a.b(g2.b.class)) {
                    try {
                        str2 = g2.b.f2852b;
                    } catch (Throwable th4) {
                        v2.a.a(th4, g2.b.class);
                        str2 = null;
                    }
                    break;
                } else {
                    str2 = null;
                }
                Log.e(str2, exc2.toString());
                if (!v2.a.b(g2.b.class)) {
                    try {
                        aVar2 = g2.b.f2856f;
                    } catch (Throwable th5) {
                        v2.a.a(th5, g2.b.class);
                        aVar2 = null;
                    }
                    break;
                } else {
                    aVar2 = null;
                }
                if (aVar2 == null) {
                    g.i("gpsDebugLogger");
                    throw null;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("gps_pa_failed_reason", exc2.toString());
                aVar2.a(bundle2, "gps_pa_failed");
                return;
        }
    }

    public final void onResult(Object obj) {
        String str;
        e2.a aVar;
        String str2;
        e2.a aVar2;
        switch (this.f2536a) {
            case 0:
                g.f("result", obj);
                if (v2.a.b(d.class)) {
                    str = null;
                } else {
                    try {
                        str = d.f2538b;
                    } catch (Throwable th) {
                        v2.a.a(th, d.class);
                        str = null;
                    }
                }
                Log.d(str, "OUTCOME_RECEIVER_TRIGGER_SUCCESS");
                if (v2.a.b(d.class)) {
                    aVar = null;
                } else {
                    try {
                        aVar = d.f2540d;
                    } catch (Throwable th2) {
                        v2.a.a(th2, d.class);
                        aVar = null;
                    }
                }
                if (aVar != null) {
                    aVar.a(null, "gps_ara_succeed");
                    return;
                } else {
                    g.i("gpsDebugLogger");
                    throw null;
                }
            default:
                g.f("result", obj);
                if (v2.a.b(g2.b.class)) {
                    str2 = null;
                } else {
                    try {
                        str2 = g2.b.f2852b;
                    } catch (Throwable th3) {
                        v2.a.a(th3, g2.b.class);
                        str2 = null;
                    }
                }
                Log.i(str2, "Successfully joined custom audience");
                if (v2.a.b(g2.b.class)) {
                    aVar2 = null;
                } else {
                    try {
                        aVar2 = g2.b.f2856f;
                    } catch (Throwable th4) {
                        v2.a.a(th4, g2.b.class);
                        aVar2 = null;
                    }
                }
                if (aVar2 != null) {
                    aVar2.a(null, "gps_pa_succeed");
                    return;
                } else {
                    g.i("gpsDebugLogger");
                    throw null;
                }
        }
    }
}
