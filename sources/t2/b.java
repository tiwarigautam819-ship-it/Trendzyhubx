package t2;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import s2.d;
import x1.c0;
import x1.v;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f5305b;

    public /* synthetic */ b(List list, int i6) {
        this.f5304a = i6;
        this.f5305b = list;
    }

    @Override // x1.v
    public final void a(c0 c0Var) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        switch (this.f5304a) {
            case 0:
                List list = this.f5305b;
                if (!v2.a.b(c.class)) {
                    try {
                        if (c0Var.f5818c == null && (jSONObject = c0Var.f5819d) != null && jSONObject.getBoolean(FirebaseAnalytics.Param.SUCCESS)) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                android.support.v4.media.session.a.c(((d) it.next()).f5214a);
                                break;
                            }
                            break;
                        }
                    } catch (JSONException unused) {
                        return;
                    } catch (Throwable th) {
                        v2.a.a(th, c.class);
                        return;
                    }
                }
                break;
            default:
                List list2 = this.f5305b;
                try {
                    if (c0Var.f5818c == null && (jSONObject2 = c0Var.f5819d) != null && jSONObject2.getBoolean(FirebaseAnalytics.Param.SUCCESS)) {
                        Iterator it2 = list2.iterator();
                        while (it2.hasNext()) {
                            android.support.v4.media.session.a.c(((d) it2.next()).f5214a);
                            break;
                        }
                        break;
                    }
                } catch (JSONException unused2) {
                    return;
                }
                break;
        }
    }
}
