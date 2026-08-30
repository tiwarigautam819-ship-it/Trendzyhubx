package f2;

import android.adservices.measurement.MeasurementManager;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import d7.g;
import j7.f;
import j7.k;
import java.util.Iterator;
import org.json.JSONObject;
import x1.r;
import y1.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f2537a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f2538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f2539c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static e2.a f2540d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f2541e;

    static {
        String string = d.class.toString();
        g.e("GpsAraTriggersManager::class.java.toString()", string);
        f2538b = string;
    }

    public final boolean a() {
        String str = f2538b;
        if (v2.a.b(this)) {
            return false;
        }
        try {
            if (!f2539c) {
                return false;
            }
            try {
                Class.forName("android.adservices.measurement.MeasurementManager");
                return true;
            } catch (Error e9) {
                Log.i(str, "FAILURE_NO_MEASUREMENT_MANAGER_CLASS");
                e2.a aVar = f2540d;
                if (aVar == null) {
                    g.i("gpsDebugLogger");
                    throw null;
                }
                Bundle bundle = new Bundle();
                bundle.putString("gps_ara_failed_reason", e9.toString());
                aVar.a(bundle, "gps_ara_failed");
                return false;
            } catch (Exception e10) {
                Log.i(str, "FAILURE_NO_MEASUREMENT_MANAGER_CLASS");
                e2.a aVar2 = f2540d;
                if (aVar2 == null) {
                    g.i("gpsDebugLogger");
                    throw null;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("gps_ara_failed_reason", e10.toString());
                aVar2.a(bundle2, "gps_ara_failed");
                return false;
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
            return false;
        }
    }

    public final String b(e eVar) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            JSONObject jSONObject = eVar.f6118a;
            if (jSONObject != null && jSONObject.length() != 0) {
                Iterator<String> itKeys = jSONObject.keys();
                g.e("params.keys()", itKeys);
                return f.z(new j7.d(0, new k(new j7.a(new j7.d(2, itKeys)), new b(0, jSONObject))), "&");
            }
            return "";
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public final void c(String str, e eVar) {
        String str2 = f2538b;
        if (v2.a.b(this)) {
            return;
        }
        try {
            if (v2.a.b(this)) {
                return;
            }
            try {
                String string = eVar.f6118a.getString("_eventName");
                if (g.a(string, "_removed_")) {
                    return;
                }
                g.e("eventName", string);
                if (!k7.g.x(string, "gps") && a()) {
                    Context contextA = r.a();
                    try {
                        MeasurementManager measurementManagerQ = c1.b.q(contextA.getSystemService(c1.b.r()));
                        if (measurementManagerQ == null) {
                            measurementManagerQ = MeasurementManager.get(contextA.getApplicationContext());
                        }
                        if (measurementManagerQ == null) {
                            Log.w(str2, "FAILURE_GET_MEASUREMENT_MANAGER");
                            e2.a aVar = f2540d;
                            if (aVar == null) {
                                g.i("gpsDebugLogger");
                                throw null;
                            }
                            Bundle bundle = new Bundle();
                            bundle.putString("gps_ara_failed_reason", "Failed to get measurement manager");
                            aVar.a(bundle, "gps_ara_failed");
                            return;
                        }
                        String strB = b(eVar);
                        StringBuilder sb = new StringBuilder();
                        String str3 = f2541e;
                        if (str3 == null) {
                            g.i("serverUri");
                            throw null;
                        }
                        sb.append(str3);
                        sb.append("?app_id=");
                        sb.append(str);
                        sb.append('&');
                        sb.append(strB);
                        Uri uri = Uri.parse(sb.toString());
                        g.e("parse(\"$serverUri?$appId…=$applicationId&$params\")", uri);
                        measurementManagerQ.registerTrigger(uri, r.c(), new c(0));
                    } catch (Error e9) {
                        Log.w(str2, "FAILURE_TRIGGER_REGISTRATION_FAILED");
                        e2.a aVar2 = f2540d;
                        if (aVar2 == null) {
                            g.i("gpsDebugLogger");
                            throw null;
                        }
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("gps_ara_failed_reason", e9.toString());
                        aVar2.a(bundle2, "gps_ara_failed");
                    } catch (Exception e10) {
                        Log.w(str2, "FAILURE_TRIGGER_REGISTRATION_FAILED");
                        e2.a aVar3 = f2540d;
                        if (aVar3 == null) {
                            g.i("gpsDebugLogger");
                            throw null;
                        }
                        Bundle bundle3 = new Bundle();
                        bundle3.putString("gps_ara_failed_reason", e10.toString());
                        aVar3.a(bundle3, "gps_ara_failed");
                    }
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
            }
        } catch (Throwable th2) {
            v2.a.a(th2, this);
        }
    }

    public final void d(String str, e eVar) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            r.c().execute(new a(str, eVar, 0));
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
