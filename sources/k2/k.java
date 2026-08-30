package k2;

import android.os.Bundle;
import i2.q;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Currency;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q2.t;
import q2.w;
import x1.j0;
import x1.r;
import y1.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y1.n f3540a = new y1.n(r.a());

    public static final synchronized Bundle a(ArrayList arrayList) {
        j jVar;
        jVar = (j) arrayList.get(0);
        return q.c(f4.f.b(new i2.a("fb_mobile_purchase", jVar.f3536a.doubleValue(), jVar.f3537b)), System.currentTimeMillis(), true, f4.f.b(new r6.d(jVar.f3538c, jVar.f3539d)));
    }

    public static j b(String str, Bundle bundle, y1.o oVar, JSONObject jSONObject, JSONObject jSONObject2) {
        if (str.equals("subs")) {
            Map map = y1.o.f6140b;
            String string = Boolean.toString(jSONObject.optBoolean("autoRenewing", false));
            d7.g.e("toString(\n              …      )\n                )", string);
            y1.g.b("fb_iap_subs_auto_renewing", string, bundle, oVar);
            String strOptString = jSONObject2.optString("subscriptionPeriod");
            d7.g.e("skuDetailsJSON.optString…_IAP_SUBSCRIPTION_PERIOD)", strOptString);
            y1.g.b("fb_iap_subs_period", strOptString, bundle, oVar);
            String strOptString2 = jSONObject2.optString("freeTrialPeriod");
            d7.g.e("skuDetailsJSON.optString…GP_IAP_FREE_TRIAL_PERIOD)", strOptString2);
            y1.g.b("fb_free_trial_period", strOptString2, bundle, oVar);
            String strOptString3 = jSONObject2.optString("introductoryPriceCycles");
            d7.g.e("introductoryPriceCycles", strOptString3);
            if (strOptString3.length() > 0) {
                y1.g.b("fb_intro_price_cycles", strOptString3, bundle, oVar);
            }
            String strOptString4 = jSONObject2.optString("introductoryPricePeriod");
            d7.g.e("introductoryPricePeriod", strOptString4);
            if (strOptString4.length() > 0) {
                y1.g.b("fb_intro_period", strOptString4, bundle, oVar);
            }
            String strOptString5 = jSONObject2.optString("introductoryPriceAmountMicros");
            d7.g.e("introductoryPriceAmountMicros", strOptString5);
            if (strOptString5.length() > 0) {
                y1.g.b("fb_intro_price_amount_micros", strOptString5, bundle, oVar);
            }
        }
        BigDecimal bigDecimal = new BigDecimal(jSONObject2.getLong("price_amount_micros") / 1000000.0d);
        Currency currency = Currency.getInstance(jSONObject2.getString("price_currency_code"));
        d7.g.e("getInstance(skuDetailsJS…RICE_CURRENCY_CODE_V2V4))", currency);
        return new j(bigDecimal, currency, bundle, oVar);
    }

    public static ArrayList c(String str, Bundle bundle, y1.o oVar, JSONObject jSONObject) throws JSONException {
        int i6 = 0;
        if (!str.equals("subs")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("oneTimePurchaseOfferDetails");
            if (jSONObject2 == null) {
                return null;
            }
            BigDecimal bigDecimal = new BigDecimal(jSONObject2.getLong("priceAmountMicros") / 1000000.0d);
            Currency currency = Currency.getInstance(jSONObject2.getString("priceCurrencyCode"));
            d7.g.e("getInstance(oneTimePurch…RICE_CURRENCY_CODE_V5V7))", currency);
            return s6.h.l(new j(bigDecimal, currency, bundle, oVar));
        }
        ArrayList arrayList = new ArrayList();
        String str2 = "subscriptionOfferDetails";
        JSONArray jSONArray = jSONObject.getJSONArray("subscriptionOfferDetails");
        if (jSONArray == null) {
            return null;
        }
        int length = jSONArray.length();
        while (i6 < length) {
            JSONObject jSONObject3 = jSONObject.getJSONArray(str2).getJSONObject(i6);
            if (jSONObject3 == null) {
                return null;
            }
            Bundle bundle2 = new Bundle(bundle);
            y1.o oVar2 = new y1.o();
            LinkedHashMap linkedHashMap = oVar.f6141a;
            for (p pVar : linkedHashMap.keySet()) {
                Map map = (Map) linkedHashMap.get(pVar);
                if (map != null) {
                    for (String str3 : map.keySet()) {
                        int i9 = i6;
                        Object obj = map.get(str3);
                        if (obj != null) {
                            oVar2.a(pVar, str3, obj);
                        }
                        i6 = i9;
                    }
                }
            }
            int i10 = i6;
            String string = jSONObject3.getString("basePlanId");
            Map map2 = y1.o.f6140b;
            d7.g.e("basePlanId", string);
            y1.g.b("fb_iap_base_plan", string, bundle2, oVar2);
            JSONObject jSONObject4 = jSONObject3.getJSONArray("pricingPhases").getJSONObject(r4.length() - 1);
            if (jSONObject4 == null) {
                return null;
            }
            String strOptString = jSONObject4.optString("billingPeriod");
            d7.g.e("subscriptionJSON.optStri…IOD\n                    )", strOptString);
            y1.g.b("fb_iap_subs_period", strOptString, bundle2, oVar2);
            if (!jSONObject4.has("recurrenceMode") || jSONObject4.getInt("recurrenceMode") == 3) {
                y1.g.b("fb_iap_subs_auto_renewing", "false", bundle2, oVar2);
            } else {
                y1.g.b("fb_iap_subs_auto_renewing", "true", bundle2, oVar2);
            }
            BigDecimal bigDecimal2 = new BigDecimal(jSONObject4.getLong("priceAmountMicros") / 1000000.0d);
            Currency currency2 = Currency.getInstance(jSONObject4.getString("priceCurrencyCode"));
            d7.g.e("getInstance(subscription…RICE_CURRENCY_CODE_V5V7))", currency2);
            arrayList.add(new j(bigDecimal2, currency2, bundle2, oVar2));
            i6 = i10 + 1;
            str2 = str2;
        }
        return arrayList;
    }

    public static final boolean d() {
        t tVarB = w.b(r.b());
        return tVarB != null && j0.c() && tVarB.f4815f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0104 A[Catch: Exception -> 0x0060, JSONException -> 0x0063, TryCatch #11 {JSONException -> 0x0063, Exception -> 0x0060, blocks: (B:20:0x005c, B:30:0x0072, B:38:0x0104, B:39:0x010b, B:40:0x0113, B:42:0x0119, B:43:0x0131, B:45:0x0139, B:46:0x0146, B:48:0x014e, B:52:0x015a, B:36:0x00fe, B:16:0x004f, B:33:0x00fa), top: B:144:0x003c, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0119 A[Catch: Exception -> 0x0060, JSONException -> 0x0063, LOOP:0: B:40:0x0113->B:42:0x0119, LOOP_END, TryCatch #11 {JSONException -> 0x0063, Exception -> 0x0060, blocks: (B:20:0x005c, B:30:0x0072, B:38:0x0104, B:39:0x010b, B:40:0x0113, B:42:0x0119, B:43:0x0131, B:45:0x0139, B:46:0x0146, B:48:0x014e, B:52:0x015a, B:36:0x00fe, B:16:0x004f, B:33:0x00fa), top: B:144:0x003c, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0139 A[Catch: Exception -> 0x0060, JSONException -> 0x0063, TryCatch #11 {JSONException -> 0x0063, Exception -> 0x0060, blocks: (B:20:0x005c, B:30:0x0072, B:38:0x0104, B:39:0x010b, B:40:0x0113, B:42:0x0119, B:43:0x0131, B:45:0x0139, B:46:0x0146, B:48:0x014e, B:52:0x015a, B:36:0x00fe, B:16:0x004f, B:33:0x00fa), top: B:144:0x003c, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0146 A[Catch: Exception -> 0x0060, JSONException -> 0x0063, TryCatch #11 {JSONException -> 0x0063, Exception -> 0x0060, blocks: (B:20:0x005c, B:30:0x0072, B:38:0x0104, B:39:0x010b, B:40:0x0113, B:42:0x0119, B:43:0x0131, B:45:0x0139, B:46:0x0146, B:48:0x014e, B:52:0x015a, B:36:0x00fe, B:16:0x004f, B:33:0x00fa), top: B:144:0x003c, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void e(java.lang.String r24, java.lang.String r25, boolean r26, int r27, boolean r28) {
        /*
            Method dump skipped, instruction units count: 811
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.k.e(java.lang.String, java.lang.String, boolean, int, boolean):void");
    }
}
