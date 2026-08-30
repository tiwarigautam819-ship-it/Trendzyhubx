package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public interface s0 extends IInterface {
    void beginAdUnitExposure(String str, long j3);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j3);

    void endAdUnitExposure(String str, long j3);

    void generateEventId(w0 w0Var);

    void getAppInstanceId(w0 w0Var);

    void getCachedAppInstanceId(w0 w0Var);

    void getConditionalUserProperties(String str, String str2, w0 w0Var);

    void getCurrentScreenClass(w0 w0Var);

    void getCurrentScreenName(w0 w0Var);

    void getGmpAppId(w0 w0Var);

    void getMaxUserProperties(String str, w0 w0Var);

    void getSessionId(w0 w0Var);

    void getTestFlag(w0 w0Var, int i6);

    void getUserProperties(String str, String str2, boolean z5, w0 w0Var);

    void initForTests(Map map);

    void initialize(e4.a aVar, e1 e1Var, long j3);

    void isDataCollectionEnabled(w0 w0Var);

    void logEvent(String str, String str2, Bundle bundle, boolean z5, boolean z8, long j3);

    void logEventAndBundle(String str, String str2, Bundle bundle, w0 w0Var, long j3);

    void logHealthData(int i6, String str, e4.a aVar, e4.a aVar2, e4.a aVar3);

    void onActivityCreated(e4.a aVar, Bundle bundle, long j3);

    void onActivityDestroyed(e4.a aVar, long j3);

    void onActivityPaused(e4.a aVar, long j3);

    void onActivityResumed(e4.a aVar, long j3);

    void onActivitySaveInstanceState(e4.a aVar, w0 w0Var, long j3);

    void onActivityStarted(e4.a aVar, long j3);

    void onActivityStopped(e4.a aVar, long j3);

    void performAction(Bundle bundle, w0 w0Var, long j3);

    void registerOnMeasurementEventListener(x0 x0Var);

    void resetAnalyticsData(long j3);

    void setConditionalUserProperty(Bundle bundle, long j3);

    void setConsent(Bundle bundle, long j3);

    void setConsentThirdParty(Bundle bundle, long j3);

    void setCurrentScreen(e4.a aVar, String str, String str2, long j3);

    void setDataCollectionEnabled(boolean z5);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(x0 x0Var);

    void setInstanceIdProvider(c1 c1Var);

    void setMeasurementEnabled(boolean z5, long j3);

    void setMinimumSessionDuration(long j3);

    void setSessionTimeoutDuration(long j3);

    void setSgtmDebugInfo(Intent intent);

    void setUserId(String str, long j3);

    void setUserProperty(String str, String str2, e4.a aVar, boolean z5, long j3);

    void unregisterOnMeasurementEventListener(x0 x0Var);
}
