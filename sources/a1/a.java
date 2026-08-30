package a1;

import androidx.fragment.app.a0;
import androidx.fragment.app.m1;
import androidx.lifecycle.p0;
import androidx.lifecycle.r0;
import com.engagelab.privates.core.api.WakeMessage;
import com.google.android.gms.internal.measurement.q5;
import com.google.firebase.analytics.FirebaseAnalytics;
import d7.d;
import d7.g;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import m1.j;
import v0.c;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static p0 a(r0 r0Var, d dVar, c cVar) {
        return r0Var.b(j.i(dVar), cVar);
    }

    public static final String b(int i6) {
        int iE = m1.e(i6);
        if (iE == 0) {
            return "integrity_detect";
        }
        if (iE == 1) {
            return "app_event_pred";
        }
        throw new a0();
    }

    public static final String c(int i6) {
        int iE = m1.e(i6);
        if (iE == 0) {
            return "MTML_INTEGRITY_DETECT";
        }
        if (iE == 1) {
            return "MTML_APP_EVENT_PRED";
        }
        throw new a0();
    }

    public static int d(int i6) {
        if (i6 == 0) {
            return 1;
        }
        if (i6 == 1) {
            return 2;
        }
        if (i6 == 2) {
            return 3;
        }
        if (i6 != 3) {
            return i6 != 4 ? 0 : 5;
        }
        return 4;
    }

    public static int e(int i6) {
        if (i6 == 0) {
            return 1;
        }
        if (i6 == 1) {
            return 2;
        }
        if (i6 == 2) {
            return 3;
        }
        if (i6 != 3) {
            return i6 != 4 ? 0 : 5;
        }
        return 4;
    }

    public static /* synthetic */ String f(int i6) {
        switch (i6) {
            case 1:
                return "value";
            case 2:
                return "event_time";
            case 3:
                return "event_name";
            case 4:
                return "content_ids";
            case 5:
                return "contents";
            case 6:
                return FirebaseAnalytics.Param.CONTENT_TYPE;
            case 7:
                return "description";
            case WakeMessage.ACTIVITY /* 8 */:
                return FirebaseAnalytics.Param.LEVEL;
            case 9:
                return "max_rating_value";
            case 10:
                return "num_items";
            case 11:
                return "payment_info_available";
            case 12:
                return "registration_method";
            case 13:
                return "search_string";
            case 14:
                return FirebaseAnalytics.Param.SUCCESS;
            case 15:
                return "order_id";
            case 16:
                return "ad_type";
            case 17:
                return FirebaseAnalytics.Param.CURRENCY;
            default:
                throw null;
        }
    }

    public static /* synthetic */ String g(int i6) {
        switch (i6) {
            case 1:
                return "anon_id";
            case 2:
                return "fb_login_id";
            case 3:
                return "madid";
            case 4:
                return "page_id";
            case 5:
                return "page_scoped_user_id";
            case 6:
                return "ud";
            case 7:
                return "advertiser_tracking_enabled";
            case WakeMessage.ACTIVITY /* 8 */:
                return "application_tracking_enabled";
            case 9:
                return "consider_views";
            case 10:
                return "device_token";
            case 11:
                return "extInfo";
            case 12:
                return "include_dwell_data";
            case 13:
                return "include_video_data";
            case 14:
                return "install_referrer";
            case 15:
                return "installer_package";
            case 16:
                return "receipt_data";
            case 17:
                return "url_schemes";
            default:
                throw null;
        }
    }

    public static int h(int i6, int i9, int i10) {
        return q5.w(i6) + i9 + i10;
    }

    public static String i(int i6, String str) {
        return str + i6;
    }

    public static String j(int i6, String str, String str2) {
        return str + i6 + str2;
    }

    public static HashMap k(Class cls, c5.a aVar) {
        HashMap map = new HashMap();
        map.put(cls, aVar);
        return map;
    }

    public static Map l(HashMap map) {
        return Collections.unmodifiableMap(new HashMap(map));
    }

    public static /* synthetic */ void m(int i6) {
        if (i6 != 0) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException();
        g.h(nullPointerException, g.class.getName());
        throw nullPointerException;
    }

    public static /* synthetic */ void n(int i6, String str) {
        if (i6 == 0) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = g.class.getName();
            int i9 = 0;
            while (!stackTrace[i9].getClassName().equals(name)) {
                i9++;
            }
            while (stackTrace[i9].getClassName().equals(name)) {
                i9++;
            }
            StackTraceElement stackTraceElement = stackTrace[i9];
            NullPointerException nullPointerException = new NullPointerException("Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str);
            g.h(nullPointerException, g.class.getName());
            throw nullPointerException;
        }
    }

    public static /* synthetic */ void o(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ String p(int i6) {
        return i6 != 1 ? i6 != 2 ? i6 != 3 ? i6 != 4 ? "null" : "CUSTOM_EVENTS" : "CUSTOM_DATA" : "APP_DATA" : "USER_DATA";
    }
}
