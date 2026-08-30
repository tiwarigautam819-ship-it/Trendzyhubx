package s2;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.s;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;
import x1.c0;
import x1.v;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5205b;

    public /* synthetic */ a(int i6, Object obj) {
        this.f5204a = i6;
        this.f5205b = obj;
    }

    @Override // x1.v
    public final void a(c0 c0Var) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        switch (this.f5204a) {
            case 0:
                d dVar = (d) this.f5205b;
                try {
                    if (c0Var.f5818c == null && (jSONObject = c0Var.f5819d) != null && jSONObject.getBoolean(FirebaseAnalytics.Param.SUCCESS)) {
                        android.support.v4.media.session.a.c(dVar.f5214a);
                        break;
                    }
                } catch (JSONException unused) {
                    return;
                }
                break;
            case 1:
                ArrayList arrayList = (ArrayList) this.f5205b;
                try {
                    if (c0Var.f5818c == null && (jSONObject2 = c0Var.f5819d) != null && jSONObject2.getBoolean(FirebaseAnalytics.Param.SUCCESS)) {
                        int size = arrayList.size();
                        int i6 = 0;
                        while (i6 < size) {
                            Object obj = arrayList.get(i6);
                            i6++;
                            android.support.v4.media.session.a.c(((w2.a) obj).f5718a);
                        }
                        break;
                    }
                } catch (JSONException unused2) {
                    return;
                }
                break;
            default:
                s sVar = (s) this.f5205b;
                JSONObject jSONObject3 = c0Var.f5819d;
                if (jSONObject3 != null) {
                    sVar.f2147a = jSONObject3.optString("access_token");
                    sVar.f2148b = jSONObject3.optInt("expires_at");
                    sVar.f2149c = jSONObject3.optInt("expires_in");
                    sVar.f2151e = Long.valueOf(jSONObject3.optLong("data_access_expiration_time"));
                    sVar.f2150d = jSONObject3.optString("graph_domain", null);
                    break;
                }
                break;
        }
    }
}
