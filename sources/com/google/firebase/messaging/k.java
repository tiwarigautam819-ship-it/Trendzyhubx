package com.google.firebase.messaging;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.lottery.app.App;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2115b;

    public k() {
        this.f2114a = 0;
        this.f2115b = new ArrayDeque(10);
    }

    public void a(Intent intent) {
        ArrayDeque arrayDeque = (ArrayDeque) this.f2115b;
        Bundle bundle = null;
        try {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                String string = extras.getString("google.message_id");
                if (string == null) {
                    string = extras.getString(MTPushConstants.Message.KEY_MESSAGE_ID);
                }
                if (!TextUtils.isEmpty(string)) {
                    if (arrayDeque.contains(string)) {
                        return;
                    } else {
                        arrayDeque.add(string);
                    }
                }
                bundle = extras.getBundle("gcm.n.analytics_data");
            }
        } catch (RuntimeException e9) {
            Log.w("FirebaseMessaging", "Failed trying to get analytics data from Intent extras.", e9);
        }
        if (bundle == null ? false : "1".equals(bundle.getString("google.c.a.e"))) {
            if (bundle != null) {
                if ("1".equals(bundle.getString("google.c.a.tc"))) {
                    AnalyticsConnector analyticsConnector = (AnalyticsConnector) t4.g.c().b(AnalyticsConnector.class);
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        Log.d("FirebaseMessaging", "Received event with track-conversion=true. Setting user property and reengagement event");
                    }
                    if (analyticsConnector != null) {
                        String string2 = bundle.getString("google.c.a.c_id");
                        analyticsConnector.setUserProperty(AppMeasurement.FCM_ORIGIN, "_ln", string2);
                        Bundle bundle2 = new Bundle();
                        bundle2.putString(FirebaseAnalytics.Param.SOURCE, "Firebase");
                        bundle2.putString(FirebaseAnalytics.Param.MEDIUM, "notification");
                        bundle2.putString(FirebaseAnalytics.Param.CAMPAIGN, string2);
                        analyticsConnector.logEvent(AppMeasurement.FCM_ORIGIN, "_cmp", bundle2);
                    } else {
                        Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
                    }
                } else if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "Received event with track-conversion=false. Do not set user property");
                }
            }
            z7.d.h(bundle, "_no");
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        switch (this.f2114a) {
            case 0:
                Intent intent = activity.getIntent();
                if (intent != null) {
                    if (Build.VERSION.SDK_INT > 25) {
                        a(intent);
                    } else {
                        new Handler(Looper.getMainLooper()).post(new a2.i(this, 7, intent));
                    }
                    break;
                }
                break;
            default:
                App app = (App) this.f2115b;
                app.f2176c = new WeakReference(activity);
                app.getClass();
                if (activity != null && !activity.isFinishing()) {
                    ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
                    if (viewGroup.findViewById(2131362047) == null) {
                        FrameLayout frameLayout = new FrameLayout(activity);
                        frameLayout.setId(2131362047);
                        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                        frameLayout.setBackgroundColor(-16777216);
                        frameLayout.setVisibility(8);
                        viewGroup.addView(frameLayout);
                        break;
                    }
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        int i6 = this.f2114a;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        switch (this.f2114a) {
            case 0:
                break;
            default:
                App app = (App) this.f2115b;
                int i6 = App.f2173d;
                app.b();
                a2.i iVar = new a2.i(app, 13, activity);
                app.f2175b = iVar;
                app.f2174a.postDelayed(iVar, 500L);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        switch (this.f2114a) {
            case 0:
                break;
            default:
                App app = (App) this.f2115b;
                app.f2176c = new WeakReference(activity);
                app.b();
                App.a(app, activity);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        int i6 = this.f2114a;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        switch (this.f2114a) {
            case 0:
                break;
            default:
                ((App) this.f2115b).f2176c = new WeakReference(activity);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        int i6 = this.f2114a;
    }

    public k(App app) {
        this.f2114a = 1;
        this.f2115b = app;
    }

    private final void b(Activity activity) {
    }

    private final void c(Activity activity) {
    }

    private final void d(Activity activity) {
    }

    private final void e(Activity activity) {
    }

    private final void h(Activity activity) {
    }

    private final void i(Activity activity) {
    }

    private final void j(Activity activity) {
    }

    private final void f(Activity activity, Bundle bundle) {
    }

    private final void g(Activity activity, Bundle bundle) {
    }
}
