package u3;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.io.IOException;
import p4.q;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements p4.a, p4.h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ d f5456b = new d(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ d f5457c = new d(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ d f5458d = new d(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5459a;

    public /* synthetic */ d(int i6) {
        this.f5459a = i6;
    }

    @Override // p4.a
    public Object b(p4.i iVar) throws IOException {
        switch (this.f5459a) {
            case 0:
                if (iVar.g()) {
                    return (Bundle) iVar.e();
                }
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Error making request: ".concat(String.valueOf(iVar.d())));
                }
                throw new IOException("SERVICE_NOT_AVAILABLE", iVar.d());
            default:
                Intent intent = (Intent) ((Bundle) iVar.e()).getParcelable("notification_data");
                if (intent != null) {
                    return new a(intent);
                }
                return null;
        }
    }

    @Override // p4.h
    public q c(Object obj) {
        Bundle bundle = (Bundle) obj;
        int i6 = b.h;
        return (bundle == null || !bundle.containsKey("google.messenger")) ? j7.g.l(bundle) : j7.g.l(null);
    }
}
