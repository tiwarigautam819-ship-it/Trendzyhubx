package p2;

import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import d7.g;
import java.util.HashMap;
import q2.d0;
import q2.t;
import q2.w;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f4636a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f4637b = new HashMap();

    public static final void a(String str) {
        b bVar;
        HashMap map;
        if (v2.a.b(b.class)) {
            return;
        }
        try {
            bVar = f4636a;
            map = f4637b;
        } catch (Throwable th) {
            v2.a.a(th, b.class);
        }
        if (v2.a.b(bVar)) {
            return;
        }
        try {
            NsdManager.RegistrationListener registrationListener = (NsdManager.RegistrationListener) map.get(str);
            if (registrationListener != null) {
                Object systemService = r.a().getSystemService("servicediscovery");
                g.d("null cannot be cast to non-null type android.net.nsd.NsdManager", systemService);
                try {
                    ((NsdManager) systemService).unregisterService(registrationListener);
                } catch (IllegalArgumentException unused) {
                    r rVar = r.f5918a;
                }
                map.remove(str);
                return;
            }
            return;
        } catch (Throwable th2) {
            v2.a.a(th2, bVar);
            return;
        }
        v2.a.a(th, b.class);
    }

    public static final boolean b() {
        if (v2.a.b(b.class)) {
            return false;
        }
        try {
            t tVarB = w.b(r.b());
            if (tVarB != null) {
                if (tVarB.f4812c.contains(d0.Enabled)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            v2.a.a(th, b.class);
            return false;
        }
    }

    public final boolean c(String str) {
        if (v2.a.b(this)) {
            return false;
        }
        try {
            HashMap map = f4637b;
            if (map.containsKey(str)) {
                return true;
            }
            r rVar = r.f5918a;
            String strReplace = "18.1.3".replace('.', '|');
            g.e("replace(...)", strReplace);
            String str2 = "fbsdk_" + "android-".concat(strReplace) + '_' + str;
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceType("_fb._tcp.");
            nsdServiceInfo.setServiceName(str2);
            nsdServiceInfo.setPort(80);
            Object systemService = r.a().getSystemService("servicediscovery");
            g.d("null cannot be cast to non-null type android.net.nsd.NsdManager", systemService);
            a aVar = new a(str2, str);
            map.put(str, aVar);
            ((NsdManager) systemService).registerService(nsdServiceInfo, 1, aVar);
            return true;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return false;
        }
    }
}
