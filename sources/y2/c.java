package y2;

import com.engagelab.privates.push.constants.MTPushConstants;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import x1.c0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements x1.v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f6163b;

    public /* synthetic */ c(g gVar, int i6) {
        this.f6162a = i6;
        this.f6163b = gVar;
    }

    @Override // x1.v
    public final void a(c0 c0Var) {
        switch (this.f6162a) {
            case 0:
                g gVar = this.f6163b;
                if (!gVar.B0) {
                    x1.o oVar = c0Var.f5818c;
                    if (oVar != null) {
                        x1.l lVar = oVar.f5915i;
                        if (lVar == null) {
                            lVar = new x1.l();
                        }
                        gVar.P(lVar);
                    } else {
                        JSONObject jSONObject = c0Var.f5817b;
                        if (jSONObject == null) {
                            jSONObject = new JSONObject();
                        }
                        e eVar = new e();
                        try {
                            String string = jSONObject.getString("user_code");
                            eVar.f6171b = string;
                            eVar.f6170a = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", Arrays.copyOf(new Object[]{string}, 1));
                            eVar.f6172c = jSONObject.getString("code");
                            eVar.f6173d = jSONObject.getLong(MTPushConstants.Geofence.KEY_INTERVAL);
                            gVar.T(eVar);
                        } catch (JSONException e9) {
                            gVar.P(new x1.l(e9));
                            return;
                        }
                    }
                    break;
                }
                break;
            default:
                g gVar2 = this.f6163b;
                if (!gVar2.f6180x0.get()) {
                    x1.o oVar2 = c0Var.f5818c;
                    if (oVar2 != null) {
                        int i6 = oVar2.f5910c;
                        if (i6 == 1349174 || i6 == 1349172) {
                            gVar2.S();
                        } else if (i6 == 1349152) {
                            e eVar2 = gVar2.A0;
                            if (eVar2 != null) {
                                p2.b.a(eVar2.f6171b);
                            }
                            m mVar = gVar2.D0;
                            if (mVar == null) {
                                gVar2.O();
                            } else {
                                gVar2.U(mVar);
                            }
                        } else if (i6 != 1349173) {
                            x1.l lVar2 = oVar2.f5915i;
                            if (lVar2 == null) {
                                lVar2 = new x1.l();
                            }
                            gVar2.P(lVar2);
                        } else {
                            gVar2.O();
                        }
                    } else {
                        try {
                            JSONObject jSONObject2 = c0Var.f5817b;
                            if (jSONObject2 == null) {
                                jSONObject2 = new JSONObject();
                            }
                            String string2 = jSONObject2.getString("access_token");
                            d7.g.e("resultObject.getString(\"access_token\")", string2);
                            gVar2.Q(string2, jSONObject2.getLong("expires_in"), Long.valueOf(jSONObject2.optLong("data_access_expiration_time")));
                        } catch (JSONException e10) {
                            gVar2.P(new x1.l(e10));
                        }
                    }
                    break;
                }
                break;
        }
    }
}
