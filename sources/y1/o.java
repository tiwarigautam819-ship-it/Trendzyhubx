package y1;

import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f6140b = s6.r.t(new r6.d(p.f6142a, new r6.d(i2.t.p("fb_iap_package_name", "fb_iap_subs_auto_renewing", "fb_free_trial_period", "fb_intro_price_amount_micros", "fb_intro_price_cycles", "fb_iap_base_plan", "is_implicit_purchase_logging_enabled", "fb_iap_sdk_supported_library_versions", "is_autolog_app_events_enabled", "fb_iap_client_library_version", "fb_iap_subs_period", "fb_iap_purchase_token", "fb_iap_non_deduped_event_time", "fb_iap_actual_dedup_result", "fb_iap_actual_dedup_key_used", "fb_iap_test_dedup_result", "fb_iap_test_dedup_key_used"), i2.t.p("fb_iap_product_id", "fb_iap_product_type", "fb_iap_purchase_time"))));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f6141a = new LinkedHashMap();

    public final void a(p pVar, String str, Object obj) {
        LinkedHashMap linkedHashMap = this.f6141a;
        d7.g.f("type", pVar);
        d7.g.f("key", str);
        d7.g.f("value", obj);
        try {
            HashSet hashSet = e.f6117f;
            m1.j.n(str);
            if (!(obj instanceof String) && !(obj instanceof Number)) {
                throw new x1.l(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", Arrays.copyOf(new Object[]{obj, str}, 2)));
            }
            if (!linkedHashMap.containsKey(pVar)) {
                linkedHashMap.put(pVar, new LinkedHashMap());
            }
            Map map = (Map) linkedHashMap.get(pVar);
            if (map != null) {
                map.put(str, obj);
            }
        } catch (Exception unused) {
        }
    }
}
