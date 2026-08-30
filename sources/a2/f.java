package a2;

import androidx.fragment.app.a0;
import androidx.fragment.app.m1;
import java.util.ArrayList;
import k7.n;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g0;
import q2.z;
import s6.r;
import x1.e0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f32a = r.u(new r6.d(a.ANON_ID, new e(1, 1)), new r6.d(a.APP_USER_ID, new e(1, 2)), new r6.d(a.ADVERTISER_ID, new e(1, 3)), new r6.d(a.PAGE_ID, new e(1, 4)), new r6.d(a.PAGE_SCOPED_USER_ID, new e(1, 5)), new r6.d(a.ADV_TE, new e(2, 7)), new r6.d(a.APP_TE, new e(2, 8)), new r6.d(a.CONSIDER_VIEWS, new e(2, 9)), new r6.d(a.DEVICE_TOKEN, new e(2, 10)), new r6.d(a.EXT_INFO, new e(2, 11)), new r6.d(a.INCLUDE_DWELL_DATA, new e(2, 12)), new r6.d(a.INCLUDE_VIDEO_DATA, new e(2, 13)), new r6.d(a.INSTALL_REFERRER, new e(2, 14)), new r6.d(a.INSTALLER_PACKAGE, new e(2, 15)), new r6.d(a.RECEIPT_DATA, new e(2, 16)), new r6.d(a.URL_SCHEMES, new e(2, 17)), new r6.d(a.USER_DATA, new e(1, 0)));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f33b = r.u(new r6.d(l.EVENT_TIME, new d(0, 2)), new r6.d(l.EVENT_NAME, new d(0, 3)), new r6.d(l.VALUE_TO_SUM, new d(3, 1)), new r6.d(l.CONTENT_IDS, new d(3, 4)), new r6.d(l.CONTENTS, new d(3, 5)), new r6.d(l.CONTENT_TYPE, new d(3, 6)), new r6.d(l.CURRENCY, new d(3, 17)), new r6.d(l.DESCRIPTION, new d(3, 7)), new r6.d(l.LEVEL, new d(3, 8)), new r6.d(l.MAX_RATING_VALUE, new d(3, 9)), new r6.d(l.NUM_ITEMS, new d(3, 10)), new r6.d(l.PAYMENT_INFO_AVAILABLE, new d(3, 11)), new r6.d(l.REGISTRATION_METHOD, new d(3, 12)), new r6.d(l.SEARCH_STRING, new d(3, 13)), new r6.d(l.SUCCESS, new d(3, 14)), new r6.d(l.ORDER_ID, new d(3, 15)), new r6.d(l.AD_TYPE, new d(3, 16)));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f34c = r.u(new r6.d("fb_mobile_achievement_unlocked", k.UNLOCKED_ACHIEVEMENT), new r6.d("fb_mobile_activate_app", k.ACTIVATED_APP), new r6.d("fb_mobile_add_payment_info", k.ADDED_PAYMENT_INFO), new r6.d("fb_mobile_add_to_cart", k.ADDED_TO_CART), new r6.d("fb_mobile_add_to_wishlist", k.ADDED_TO_WISHLIST), new r6.d("fb_mobile_complete_registration", k.COMPLETED_REGISTRATION), new r6.d("fb_mobile_content_view", k.VIEWED_CONTENT), new r6.d("fb_mobile_initiated_checkout", k.INITIATED_CHECKOUT), new r6.d("fb_mobile_level_achieved", k.ACHIEVED_LEVEL), new r6.d("fb_mobile_purchase", k.PURCHASED), new r6.d("fb_mobile_rate", k.RATED), new r6.d("fb_mobile_search", k.SEARCHED), new r6.d("fb_mobile_spent_credits", k.SPENT_CREDITS), new r6.d("fb_mobile_tutorial_completion", k.COMPLETED_TUTORIAL));

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.util.HashMap] */
    public static final Object a(String str, Object obj) {
        int i6 = (str.equals("extInfo") || str.equals("url_schemes") || str.equals("fb_content_id") || str.equals("fb_content") || str.equals("data_processing_options")) ? 1 : (str.equals("advertiser_tracking_enabled") || str.equals("application_tracking_enabled")) ? 2 : str.equals("_logTime") ? 3 : 0;
        String str2 = obj instanceof String ? (String) obj : null;
        if (i6 == 0 || str2 == null) {
            return obj;
        }
        int iE = m1.e(i6);
        if (iE != 0) {
            if (iE != 1) {
                if (iE == 2) {
                    return n.p(obj.toString());
                }
                throw new a0();
            }
            Integer numP = n.p(str2.toString());
            if (numP != null) {
                return Boolean.valueOf(numP.intValue() != 0);
            }
            return null;
        }
        try {
            ArrayList arrayListG = g0.g(new JSONArray(str2));
            ArrayList arrayList = new ArrayList();
            int size = arrayListG.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj2 = arrayListG.get(i9);
                i9++;
                ?? G = (String) obj2;
                try {
                    try {
                        G = g0.h(new JSONObject((String) G));
                    } catch (JSONException unused) {
                        G = g0.g(new JSONArray((String) G));
                    }
                } catch (JSONException unused2) {
                }
                arrayList.add(G);
            }
            return arrayList;
        } catch (JSONException e9) {
            o3.a aVar = z.f4846c;
            o3.a.j(e0.f5840d, "AppEventsConversionsAPITransformer", "\n transformEvents JSONException: \n%s\n%s", obj, e9);
            return r6.j.f5000a;
        }
    }
}
