package a2;

import android.content.SharedPreferences;
import b2.n;
import com.engagelab.privates.core.constants.MTCoreConstants;
import i2.t;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g0;
import q2.z;
import x1.c0;
import x1.e0;
import x1.o;
import x1.r;
import x1.v;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26a;

    public /* synthetic */ b(int i6) {
        this.f26a = i6;
    }

    @Override // x1.v
    public final void a(c0 c0Var) {
        Object obj;
        SharedPreferences sharedPreferences;
        int i6 = this.f26a;
        e0 e0Var = e0.f5840d;
        switch (i6) {
            case 0:
                o oVar = c0Var.f5818c;
                boolean zBooleanValue = false;
                LinkedHashMap linkedHashMap = null;
                if (oVar != null) {
                    o3.a aVar = z.f4846c;
                    o3.a.j(e0Var, "a2.c", " \n\nGraph Response Error: \n================\nResponse Error: %s\nResponse Error Exception: %s\n\n ", oVar.toString(), String.valueOf(oVar.f5915i));
                    if (!v2.a.b(c.class)) {
                        try {
                            sharedPreferences = r.a().getSharedPreferences("com.facebook.sdk.CloudBridgeSavedCredentials", 0);
                        } catch (Throwable th) {
                            v2.a.a(th, c.class);
                        }
                        if (sharedPreferences != null) {
                            String string = sharedPreferences.getString("dataset_id", null);
                            String string2 = sharedPreferences.getString("endpoint", null);
                            String string3 = sharedPreferences.getString("access_key", null);
                            if (string == null || k7.o.r(string) || string2 == null || k7.o.r(string2) || string3 == null || k7.o.r(string3)) {
                                linkedHashMap = null;
                            } else {
                                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                                linkedHashMap2.put("endpoint", string2);
                                linkedHashMap2.put("dataset_id", string);
                                linkedHashMap2.put("access_key", string3);
                                o3.a.j(e0Var, "a2.c".toString(), " \n\nLoading Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n ", string, string2, string3);
                                linkedHashMap = linkedHashMap2;
                            }
                        }
                    }
                    if (linkedHashMap != null) {
                        URL url = new URL(String.valueOf(linkedHashMap.get("endpoint")));
                        j.a(String.valueOf(linkedHashMap.get("dataset_id")), url.getProtocol() + "://" + url.getHost(), String.valueOf(linkedHashMap.get("access_key")));
                        c.f27a = true;
                    }
                } else {
                    o3.a aVar2 = z.f4846c;
                    o3.a.j(e0Var, "a2.c", " \n\nGraph Response Received: \n================\n%s\n\n ", c0Var);
                    JSONObject jSONObject = c0Var.f5817b;
                    if (jSONObject != null) {
                        try {
                            obj = jSONObject.get(MTCoreConstants.Protocol.KEY_DATA);
                        } catch (NullPointerException e9) {
                            o3.a aVar3 = z.f4846c;
                            o3.a.j(e0Var, "a2.c", "CloudBridge Settings API response is not a valid json: \n%s ", t.q(e9));
                            return;
                        } catch (JSONException e10) {
                            o3.a aVar4 = z.f4846c;
                            o3.a.j(e0Var, "a2.c", "CloudBridge Settings API response is not a valid json: \n%s ", t.q(e10));
                            return;
                        }
                    } else {
                        obj = null;
                    }
                    d7.g.d("null cannot be cast to non-null type org.json.JSONArray", obj);
                    ArrayList arrayListG = g0.g((JSONArray) obj);
                    HashMap mapH = g0.h(new JSONObject((String) (arrayListG.isEmpty() ? null : arrayListG.get(0))));
                    String str = (String) mapH.get("endpoint");
                    String str2 = (String) mapH.get("dataset_id");
                    String str3 = (String) mapH.get("access_key");
                    if (str == null || str2 == null || str3 == null) {
                        o3.a.i(e0Var, "a2.c", "CloudBridge Settings API response doesn't have valid data");
                    } else {
                        try {
                            j.a(str2, str, str3);
                            c.k(mapH);
                            if (mapH.get("is_enabled") != null) {
                                Object obj2 = mapH.get("is_enabled");
                                d7.g.d("null cannot be cast to non-null type kotlin.Boolean", obj2);
                                zBooleanValue = ((Boolean) obj2).booleanValue();
                            }
                            c.f27a = zBooleanValue;
                        } catch (MalformedURLException e11) {
                            o3.a aVar5 = z.f4846c;
                            o3.a.j(e0Var, "a2.c", "CloudBridge Settings API response doesn't have valid url\n %s ", t.q(e11));
                            return;
                        }
                    }
                }
                break;
            case 1:
                o3.a aVar6 = z.f4846c;
                o3.a.i(e0Var, n.a(), "App index sent to FB!");
                break;
        }
    }

    private final void b(c0 c0Var) {
    }
}
