package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u0 extends e0 implements s0 {
    @Override // com.google.android.gms.internal.measurement.s0
    public final void beginAdUnitExposure(String str, long j3) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeLong(j3);
        zzb(23, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        g0.c(parcelA_, bundle);
        zzb(9, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void clearMeasurementEnabled(long j3) {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j3);
        zzb(43, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void endAdUnitExposure(String str, long j3) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeLong(j3);
        zzb(24, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void generateEventId(w0 w0Var) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, w0Var);
        zzb(22, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void getAppInstanceId(w0 w0Var) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, w0Var);
        zzb(20, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void getCachedAppInstanceId(w0 w0Var) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, w0Var);
        zzb(19, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void getConditionalUserProperties(String str, String str2, w0 w0Var) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        g0.b(parcelA_, w0Var);
        zzb(10, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void getCurrentScreenClass(w0 w0Var) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, w0Var);
        zzb(17, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void getCurrentScreenName(w0 w0Var) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, w0Var);
        zzb(16, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void getGmpAppId(w0 w0Var) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, w0Var);
        zzb(21, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void getMaxUserProperties(String str, w0 w0Var) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        g0.b(parcelA_, w0Var);
        zzb(6, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void getSessionId(w0 w0Var) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, w0Var);
        zzb(46, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void getTestFlag(w0 w0Var, int i6) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, w0Var);
        parcelA_.writeInt(i6);
        zzb(38, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void getUserProperties(String str, String str2, boolean z5, w0 w0Var) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        ClassLoader classLoader = g0.f1648a;
        parcelA_.writeInt(z5 ? 1 : 0);
        g0.b(parcelA_, w0Var);
        zzb(5, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void initialize(e4.a aVar, e1 e1Var, long j3) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, aVar);
        g0.c(parcelA_, e1Var);
        parcelA_.writeLong(j3);
        zzb(1, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void logEvent(String str, String str2, Bundle bundle, boolean z5, boolean z8, long j3) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        g0.c(parcelA_, bundle);
        parcelA_.writeInt(z5 ? 1 : 0);
        parcelA_.writeInt(z8 ? 1 : 0);
        parcelA_.writeLong(j3);
        zzb(2, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void logHealthData(int i6, String str, e4.a aVar, e4.a aVar2, e4.a aVar3) {
        Parcel parcelA_ = a_();
        parcelA_.writeInt(5);
        parcelA_.writeString(str);
        g0.b(parcelA_, aVar);
        g0.b(parcelA_, aVar2);
        g0.b(parcelA_, aVar3);
        zzb(33, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void onActivityCreated(e4.a aVar, Bundle bundle, long j3) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, aVar);
        g0.c(parcelA_, bundle);
        parcelA_.writeLong(j3);
        zzb(27, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void onActivityDestroyed(e4.a aVar, long j3) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, aVar);
        parcelA_.writeLong(j3);
        zzb(28, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void onActivityPaused(e4.a aVar, long j3) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, aVar);
        parcelA_.writeLong(j3);
        zzb(29, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void onActivityResumed(e4.a aVar, long j3) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, aVar);
        parcelA_.writeLong(j3);
        zzb(30, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void onActivitySaveInstanceState(e4.a aVar, w0 w0Var, long j3) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, aVar);
        g0.b(parcelA_, w0Var);
        parcelA_.writeLong(j3);
        zzb(31, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void onActivityStarted(e4.a aVar, long j3) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, aVar);
        parcelA_.writeLong(j3);
        zzb(25, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void onActivityStopped(e4.a aVar, long j3) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, aVar);
        parcelA_.writeLong(j3);
        zzb(26, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void performAction(Bundle bundle, w0 w0Var, long j3) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, bundle);
        g0.b(parcelA_, w0Var);
        parcelA_.writeLong(j3);
        zzb(32, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void registerOnMeasurementEventListener(x0 x0Var) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, x0Var);
        zzb(35, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void resetAnalyticsData(long j3) {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j3);
        zzb(12, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void setConditionalUserProperty(Bundle bundle, long j3) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, bundle);
        parcelA_.writeLong(j3);
        zzb(8, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void setConsent(Bundle bundle, long j3) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, bundle);
        parcelA_.writeLong(j3);
        zzb(44, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void setConsentThirdParty(Bundle bundle, long j3) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, bundle);
        parcelA_.writeLong(j3);
        zzb(45, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void setCurrentScreen(e4.a aVar, String str, String str2, long j3) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, aVar);
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        parcelA_.writeLong(j3);
        zzb(15, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void setDataCollectionEnabled(boolean z5) {
        Parcel parcelA_ = a_();
        ClassLoader classLoader = g0.f1648a;
        parcelA_.writeInt(z5 ? 1 : 0);
        zzb(39, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void setDefaultEventParameters(Bundle bundle) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, bundle);
        zzb(42, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void setEventInterceptor(x0 x0Var) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, x0Var);
        zzb(34, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void setMeasurementEnabled(boolean z5, long j3) {
        Parcel parcelA_ = a_();
        ClassLoader classLoader = g0.f1648a;
        parcelA_.writeInt(z5 ? 1 : 0);
        parcelA_.writeLong(j3);
        zzb(11, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void setSessionTimeoutDuration(long j3) {
        Parcel parcelA_ = a_();
        parcelA_.writeLong(j3);
        zzb(14, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void setSgtmDebugInfo(Intent intent) {
        Parcel parcelA_ = a_();
        g0.c(parcelA_, intent);
        zzb(48, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void setUserId(String str, long j3) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeLong(j3);
        zzb(7, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void setUserProperty(String str, String str2, e4.a aVar, boolean z5, long j3) {
        Parcel parcelA_ = a_();
        parcelA_.writeString(str);
        parcelA_.writeString(str2);
        g0.b(parcelA_, aVar);
        parcelA_.writeInt(z5 ? 1 : 0);
        parcelA_.writeLong(j3);
        zzb(4, parcelA_);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public final void unregisterOnMeasurementEventListener(x0 x0Var) {
        Parcel parcelA_ = a_();
        g0.b(parcelA_, x0Var);
        zzb(36, parcelA_);
    }
}
