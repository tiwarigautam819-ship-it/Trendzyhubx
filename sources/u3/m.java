package u3;

import android.os.Bundle;
import android.util.Log;
import com.google.firebase.messaging.x;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5478a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p4.j f5479b = new p4.j();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Bundle f5481d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f5482e;

    public m(int i6, int i9, Bundle bundle, int i10) {
        this.f5482e = i10;
        this.f5478a = i6;
        this.f5480c = i9;
        this.f5481d = bundle;
    }

    public final boolean a() {
        switch (this.f5482e) {
            case 0:
                return true;
            default:
                return false;
        }
    }

    public final void b(x xVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            Log.d("MessengerIpcClient", "Failing " + toString() + " with " + xVar.toString());
        }
        this.f5479b.f4641a.l(xVar);
    }

    public final void c(Bundle bundle) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            Log.d("MessengerIpcClient", "Finishing " + toString() + " with " + String.valueOf(bundle));
        }
        this.f5479b.a(bundle);
    }

    public final String toString() {
        return "Request { what=" + this.f5480c + " id=" + this.f5478a + " oneWay=" + a() + "}";
    }
}
