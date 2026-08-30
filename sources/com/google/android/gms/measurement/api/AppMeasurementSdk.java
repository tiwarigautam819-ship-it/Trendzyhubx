package com.google.android.gms.measurement.api;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.k1;
import com.google.android.gms.internal.measurement.l1;
import com.google.android.gms.internal.measurement.n1;
import com.google.android.gms.internal.measurement.o1;
import com.google.android.gms.internal.measurement.p1;
import com.google.android.gms.internal.measurement.q1;
import com.google.android.gms.internal.measurement.t0;
import com.google.android.gms.internal.measurement.u1;
import com.google.android.gms.internal.measurement.v1;
import com.google.android.gms.internal.measurement.w1;
import com.google.android.gms.internal.measurement.z1;
import com.google.android.gms.measurement.internal.zzjl;
import com.google.android.gms.measurement.internal.zzjm;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class AppMeasurementSdk {
    private final k1 zza;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public static final class ConditionalUserProperty {
        public static final String ACTIVE = "active";
        public static final String CREATION_TIMESTAMP = "creation_timestamp";
        public static final String EXPIRED_EVENT_NAME = "expired_event_name";
        public static final String EXPIRED_EVENT_PARAMS = "expired_event_params";
        public static final String NAME = "name";
        public static final String ORIGIN = "origin";
        public static final String TIMED_OUT_EVENT_NAME = "timed_out_event_name";
        public static final String TIMED_OUT_EVENT_PARAMS = "timed_out_event_params";
        public static final String TIME_TO_LIVE = "time_to_live";
        public static final String TRIGGERED_EVENT_NAME = "triggered_event_name";
        public static final String TRIGGERED_EVENT_PARAMS = "triggered_event_params";
        public static final String TRIGGERED_TIMESTAMP = "triggered_timestamp";
        public static final String TRIGGER_EVENT_NAME = "trigger_event_name";
        public static final String TRIGGER_TIMEOUT = "trigger_timeout";
        public static final String VALUE = "value";

        private ConditionalUserProperty() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface EventInterceptor extends zzjm {
        @Override // com.google.android.gms.measurement.internal.zzjm
        void interceptEvent(String str, String str2, Bundle bundle, long j3);
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public interface OnEventListener extends zzjl {
        @Override // com.google.android.gms.measurement.internal.zzjl
        void onEvent(String str, String str2, Bundle bundle, long j3);
    }

    public AppMeasurementSdk(k1 k1Var) {
        this.zza = k1Var;
    }

    public static AppMeasurementSdk getInstance(Context context, String str, String str2, String str3, Bundle bundle) {
        return k1.c(context, str, str2, str3, bundle).f1694d;
    }

    public void beginAdUnitExposure(String str) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new p1(k1Var, str, 2));
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new o1(k1Var, str, str2, bundle, 1));
    }

    public void endAdUnitExposure(String str) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new p1(k1Var, str, 1));
    }

    public long generateEventId() {
        return this.zza.b();
    }

    public String getAppIdOrigin() {
        return this.zza.h;
    }

    public String getAppInstanceId() {
        k1 k1Var = this.zza;
        k1Var.getClass();
        t0 t0Var = new t0();
        k1Var.f(new u1(k1Var, t0Var, 0));
        return t0Var.d(50L);
    }

    public List<Bundle> getConditionalUserProperties(String str, String str2) {
        return this.zza.d(str, str2);
    }

    public String getCurrentScreenClass() {
        k1 k1Var = this.zza;
        k1Var.getClass();
        t0 t0Var = new t0();
        k1Var.f(new u1(k1Var, t0Var, 4));
        return t0Var.d(500L);
    }

    public String getCurrentScreenName() {
        k1 k1Var = this.zza;
        k1Var.getClass();
        t0 t0Var = new t0();
        k1Var.f(new u1(k1Var, t0Var, 2));
        return t0Var.d(500L);
    }

    public String getGmpAppId() {
        k1 k1Var = this.zza;
        k1Var.getClass();
        t0 t0Var = new t0();
        k1Var.f(new u1(k1Var, t0Var, 1));
        return t0Var.d(500L);
    }

    public int getMaxUserProperties(String str) {
        return this.zza.a(str);
    }

    public Map<String, Object> getUserProperties(String str, String str2, boolean z5) {
        return this.zza.e(str, str2, z5);
    }

    public void logEvent(String str, String str2, Bundle bundle) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new z1(k1Var, null, str, str2, bundle, true, true));
    }

    public void logEventNoInterceptor(String str, String str2, Bundle bundle, long j3) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new z1(k1Var, Long.valueOf(j3), str, str2, bundle, true, false));
    }

    public void performAction(Bundle bundle) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new v1(k1Var, bundle, new t0(), 2));
    }

    public Bundle performActionWithResponse(Bundle bundle) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        t0 t0Var = new t0();
        k1Var.f(new v1(k1Var, bundle, t0Var, 2));
        return t0Var.b(5000L);
    }

    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        this.zza.g(onEventListener);
    }

    public void setConditionalUserProperty(Bundle bundle) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new l1(k1Var, bundle, 0));
    }

    public void setConsent(Bundle bundle) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new l1(k1Var, bundle, 1));
    }

    public void setCurrentScreen(Activity activity, String str, String str2) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new o1(k1Var, activity, str, str2));
    }

    public void setEventInterceptor(EventInterceptor eventInterceptor) {
        this.zza.h(eventInterceptor);
    }

    public void setMeasurementEnabled(Boolean bool) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new q1(k1Var, bool, 0));
    }

    public void setUserProperty(String str, String str2, Object obj) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new n1(k1Var, str, str2, obj, true));
    }

    public void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
        this.zza.j(onEventListener);
    }

    public final void zza(boolean z5) {
        k1 k1Var = this.zza;
        k1Var.getClass();
        k1Var.f(new w1(k1Var, z5));
    }

    public static AppMeasurementSdk getInstance(Context context) {
        return k1.c(context, null, null, null, null).f1694d;
    }

    public void setMeasurementEnabled(boolean z5) {
        k1 k1Var = this.zza;
        Boolean boolValueOf = Boolean.valueOf(z5);
        k1Var.getClass();
        k1Var.f(new q1(k1Var, boolValueOf, 0));
    }
}
