package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.k1;
import com.google.android.gms.internal.measurement.l1;
import com.google.android.gms.internal.measurement.n1;
import com.google.android.gms.internal.measurement.o1;
import com.google.android.gms.internal.measurement.p1;
import com.google.android.gms.internal.measurement.q1;
import com.google.android.gms.internal.measurement.r1;
import com.google.android.gms.internal.measurement.s1;
import com.google.android.gms.internal.measurement.v1;
import com.google.android.gms.internal.measurement.z1;
import com.google.android.gms.measurement.internal.zzlb;
import h5.d;
import h5.e;
import j7.g;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p4.i;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class FirebaseAnalytics {
    private static volatile FirebaseAnalytics zza;
    private final k1 zzb;
    private ExecutorService zzc;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public enum ConsentStatus {
        GRANTED,
        DENIED
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public enum ConsentType {
        AD_STORAGE,
        ANALYTICS_STORAGE,
        AD_USER_DATA,
        AD_PERSONALIZATION
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class Event {
        public static final String ADD_PAYMENT_INFO = "add_payment_info";
        public static final String ADD_SHIPPING_INFO = "add_shipping_info";
        public static final String ADD_TO_CART = "add_to_cart";
        public static final String ADD_TO_WISHLIST = "add_to_wishlist";
        public static final String AD_IMPRESSION = "ad_impression";
        public static final String APP_OPEN = "app_open";
        public static final String BEGIN_CHECKOUT = "begin_checkout";
        public static final String CAMPAIGN_DETAILS = "campaign_details";
        public static final String EARN_VIRTUAL_CURRENCY = "earn_virtual_currency";
        public static final String GENERATE_LEAD = "generate_lead";
        public static final String JOIN_GROUP = "join_group";
        public static final String LEVEL_END = "level_end";
        public static final String LEVEL_START = "level_start";
        public static final String LEVEL_UP = "level_up";
        public static final String LOGIN = "login";
        public static final String POST_SCORE = "post_score";
        public static final String PURCHASE = "purchase";
        public static final String REFUND = "refund";
        public static final String REMOVE_FROM_CART = "remove_from_cart";
        public static final String SCREEN_VIEW = "screen_view";
        public static final String SEARCH = "search";
        public static final String SELECT_CONTENT = "select_content";
        public static final String SELECT_ITEM = "select_item";
        public static final String SELECT_PROMOTION = "select_promotion";
        public static final String SHARE = "share";
        public static final String SIGN_UP = "sign_up";
        public static final String SPEND_VIRTUAL_CURRENCY = "spend_virtual_currency";
        public static final String TUTORIAL_BEGIN = "tutorial_begin";
        public static final String TUTORIAL_COMPLETE = "tutorial_complete";
        public static final String UNLOCK_ACHIEVEMENT = "unlock_achievement";
        public static final String VIEW_CART = "view_cart";
        public static final String VIEW_ITEM = "view_item";
        public static final String VIEW_ITEM_LIST = "view_item_list";
        public static final String VIEW_PROMOTION = "view_promotion";
        public static final String VIEW_SEARCH_RESULTS = "view_search_results";
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class Param {
        public static final String ACHIEVEMENT_ID = "achievement_id";
        public static final String ACLID = "aclid";
        public static final String AD_FORMAT = "ad_format";
        public static final String AD_PLATFORM = "ad_platform";
        public static final String AD_SOURCE = "ad_source";
        public static final String AD_UNIT_NAME = "ad_unit_name";
        public static final String AFFILIATION = "affiliation";
        public static final String CAMPAIGN = "campaign";
        public static final String CAMPAIGN_ID = "campaign_id";
        public static final String CHARACTER = "character";
        public static final String CONTENT = "content";
        public static final String CONTENT_TYPE = "content_type";
        public static final String COUPON = "coupon";
        public static final String CP1 = "cp1";
        public static final String CREATIVE_FORMAT = "creative_format";
        public static final String CREATIVE_NAME = "creative_name";
        public static final String CREATIVE_SLOT = "creative_slot";
        public static final String CURRENCY = "currency";
        public static final String DESTINATION = "destination";
        public static final String DISCOUNT = "discount";
        public static final String END_DATE = "end_date";
        public static final String EXTEND_SESSION = "extend_session";
        public static final String FLIGHT_NUMBER = "flight_number";
        public static final String GROUP_ID = "group_id";
        public static final String INDEX = "index";
        public static final String ITEMS = "items";
        public static final String ITEM_BRAND = "item_brand";
        public static final String ITEM_CATEGORY = "item_category";
        public static final String ITEM_CATEGORY2 = "item_category2";
        public static final String ITEM_CATEGORY3 = "item_category3";
        public static final String ITEM_CATEGORY4 = "item_category4";
        public static final String ITEM_CATEGORY5 = "item_category5";
        public static final String ITEM_ID = "item_id";
        public static final String ITEM_LIST_ID = "item_list_id";
        public static final String ITEM_LIST_NAME = "item_list_name";
        public static final String ITEM_NAME = "item_name";
        public static final String ITEM_VARIANT = "item_variant";
        public static final String LEVEL = "level";
        public static final String LEVEL_NAME = "level_name";
        public static final String LOCATION = "location";
        public static final String LOCATION_ID = "location_id";
        public static final String MARKETING_TACTIC = "marketing_tactic";
        public static final String MEDIUM = "medium";
        public static final String METHOD = "method";
        public static final String NUMBER_OF_NIGHTS = "number_of_nights";
        public static final String NUMBER_OF_PASSENGERS = "number_of_passengers";
        public static final String NUMBER_OF_ROOMS = "number_of_rooms";
        public static final String ORIGIN = "origin";
        public static final String PAYMENT_TYPE = "payment_type";
        public static final String PRICE = "price";
        public static final String PROMOTION_ID = "promotion_id";
        public static final String PROMOTION_NAME = "promotion_name";
        public static final String QUANTITY = "quantity";
        public static final String SCORE = "score";
        public static final String SCREEN_CLASS = "screen_class";
        public static final String SCREEN_NAME = "screen_name";
        public static final String SEARCH_TERM = "search_term";
        public static final String SHIPPING = "shipping";
        public static final String SHIPPING_TIER = "shipping_tier";
        public static final String SOURCE = "source";
        public static final String SOURCE_PLATFORM = "source_platform";
        public static final String START_DATE = "start_date";
        public static final String SUCCESS = "success";
        public static final String TAX = "tax";
        public static final String TERM = "term";
        public static final String TRANSACTION_ID = "transaction_id";
        public static final String TRAVEL_CLASS = "travel_class";
        public static final String VALUE = "value";
        public static final String VIRTUAL_CURRENCY_NAME = "virtual_currency_name";
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static class UserProperty {
        public static final String ALLOW_AD_PERSONALIZATION_SIGNALS = "allow_personalized_ads";
        public static final String SIGN_UP_METHOD = "sign_up_method";
    }

    private FirebaseAnalytics(k1 k1Var) {
        d0.h(k1Var);
        this.zzb = k1Var;
    }

    public static FirebaseAnalytics getInstance(Context context) {
        if (zza == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (zza == null) {
                        zza = new FirebaseAnalytics(k1.c(context, null, null, null, null));
                    }
                } finally {
                }
            }
        }
        return zza;
    }

    public static zzlb getScionFrontendApiImplementation(Context context, Bundle bundle) {
        k1 k1VarC = k1.c(context, null, null, null, bundle);
        if (k1VarC == null) {
            return null;
        }
        return new zzd(k1VarC);
    }

    public final i getAppInstanceId() {
        try {
            return g.c(zza(), new zzc(this));
        } catch (RuntimeException e9) {
            k1 k1Var = this.zzb;
            k1Var.getClass();
            k1Var.f(new v1(k1Var, "Failed to schedule task for getAppInstanceId", (Object) null));
            return g.k(e9);
        }
    }

    public final String getFirebaseInstanceId() {
        try {
            Object obj = d.f2985m;
            return (String) g.b(((d) t4.g.c().b(e.class)).d(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e9) {
            throw new IllegalStateException(e9);
        } catch (ExecutionException e10) {
            throw new IllegalStateException(e10.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    public final i getSessionId() {
        try {
            return g.c(zza(), new zzb(this));
        } catch (RuntimeException e9) {
            k1 k1Var = this.zzb;
            k1Var.getClass();
            k1Var.f(new v1(k1Var, "Failed to schedule task for getSessionId", (Object) null));
            return g.k(e9);
        }
    }

    public final void logEvent(String str, Bundle bundle) {
        k1 k1Var = this.zzb;
        k1Var.getClass();
        k1Var.f(new z1(k1Var, null, null, str, bundle, false, true));
    }

    public final void resetAnalyticsData() {
        k1 k1Var = this.zzb;
        k1Var.getClass();
        k1Var.f(new r1(k1Var));
    }

    public final void setAnalyticsCollectionEnabled(boolean z5) {
        k1 k1Var = this.zzb;
        Boolean boolValueOf = Boolean.valueOf(z5);
        k1Var.getClass();
        k1Var.f(new q1(k1Var, boolValueOf, 0));
    }

    public final void setConsent(Map<ConsentType, ConsentStatus> map) {
        Bundle bundle = new Bundle();
        ConsentStatus consentStatus = map.get(ConsentType.AD_STORAGE);
        if (consentStatus != null) {
            int iOrdinal = consentStatus.ordinal();
            if (iOrdinal == 0) {
                bundle.putString("ad_storage", "granted");
            } else if (iOrdinal == 1) {
                bundle.putString("ad_storage", "denied");
            }
        }
        ConsentStatus consentStatus2 = map.get(ConsentType.ANALYTICS_STORAGE);
        if (consentStatus2 != null) {
            int iOrdinal2 = consentStatus2.ordinal();
            if (iOrdinal2 == 0) {
                bundle.putString("analytics_storage", "granted");
            } else if (iOrdinal2 == 1) {
                bundle.putString("analytics_storage", "denied");
            }
        }
        ConsentStatus consentStatus3 = map.get(ConsentType.AD_USER_DATA);
        if (consentStatus3 != null) {
            int iOrdinal3 = consentStatus3.ordinal();
            if (iOrdinal3 == 0) {
                bundle.putString("ad_user_data", "granted");
            } else if (iOrdinal3 == 1) {
                bundle.putString("ad_user_data", "denied");
            }
        }
        ConsentStatus consentStatus4 = map.get(ConsentType.AD_PERSONALIZATION);
        if (consentStatus4 != null) {
            int iOrdinal4 = consentStatus4.ordinal();
            if (iOrdinal4 == 0) {
                bundle.putString("ad_personalization", "granted");
            } else if (iOrdinal4 == 1) {
                bundle.putString("ad_personalization", "denied");
            }
        }
        k1 k1Var = this.zzb;
        k1Var.getClass();
        k1Var.f(new l1(k1Var, bundle, 2));
    }

    @Deprecated
    public final void setCurrentScreen(Activity activity, String str, String str2) {
        k1 k1Var = this.zzb;
        k1Var.getClass();
        k1Var.f(new o1(k1Var, activity, str, str2));
    }

    public final void setDefaultEventParameters(Bundle bundle) {
        if (bundle != null) {
            bundle = new Bundle(bundle);
        }
        k1 k1Var = this.zzb;
        k1Var.getClass();
        k1Var.f(new l1(k1Var, bundle, 3));
    }

    public final void setSessionTimeoutDuration(long j3) {
        k1 k1Var = this.zzb;
        k1Var.getClass();
        k1Var.f(new s1(k1Var, j3));
    }

    public final void setUserId(String str) {
        k1 k1Var = this.zzb;
        k1Var.getClass();
        k1Var.f(new p1(k1Var, str, 0));
    }

    public final void setUserProperty(String str, String str2) {
        k1 k1Var = this.zzb;
        k1Var.getClass();
        k1Var.f(new n1(k1Var, (String) null, str, (Object) str2, false));
    }

    private final ExecutorService zza() throws Throwable {
        FirebaseAnalytics firebaseAnalytics;
        synchronized (FirebaseAnalytics.class) {
            try {
                try {
                    if (this.zzc == null) {
                        firebaseAnalytics = this;
                        firebaseAnalytics.zzc = new zza(firebaseAnalytics, 0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
                    } else {
                        firebaseAnalytics = this;
                    }
                    return firebaseAnalytics.zzc;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }
}
