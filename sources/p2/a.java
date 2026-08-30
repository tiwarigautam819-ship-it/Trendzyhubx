package p2;

import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import d7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements NsdManager.RegistrationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f4635b;

    public a(String str, String str2) {
        this.f4634a = str;
        this.f4635b = str2;
    }

    @Override // android.net.nsd.NsdManager.RegistrationListener
    public final void onRegistrationFailed(NsdServiceInfo nsdServiceInfo, int i6) {
        g.f("serviceInfo", nsdServiceInfo);
        b.a(this.f4635b);
    }

    @Override // android.net.nsd.NsdManager.RegistrationListener
    public final void onServiceRegistered(NsdServiceInfo nsdServiceInfo) {
        g.f("NsdServiceInfo", nsdServiceInfo);
        if (g.a(this.f4634a, nsdServiceInfo.getServiceName())) {
            return;
        }
        b.a(this.f4635b);
    }

    @Override // android.net.nsd.NsdManager.RegistrationListener
    public final void onServiceUnregistered(NsdServiceInfo nsdServiceInfo) {
        g.f("serviceInfo", nsdServiceInfo);
    }

    @Override // android.net.nsd.NsdManager.RegistrationListener
    public final void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo, int i6) {
        g.f("serviceInfo", nsdServiceInfo);
    }
}
