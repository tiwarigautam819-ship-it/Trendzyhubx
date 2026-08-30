###### Class com.google.android.gms.internal.measurement.s0 (com.google.android.gms.internal.measurement.s0)
.class public interface abstract Lcom/google/android/gms/internal/measurement/s0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract beginAdUnitExposure(Ljava/lang/String;J)V
.end method

.method public abstract clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract clearMeasurementEnabled(J)V
.end method

.method public abstract endAdUnitExposure(Ljava/lang/String;J)V
.end method

.method public abstract generateEventId(Lcom/google/android/gms/internal/measurement/w0;)V
.end method

.method public abstract getAppInstanceId(Lcom/google/android/gms/internal/measurement/w0;)V
.end method

.method public abstract getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/w0;)V
.end method

.method public abstract getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w0;)V
.end method

.method public abstract getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/w0;)V
.end method

.method public abstract getCurrentScreenName(Lcom/google/android/gms/internal/measurement/w0;)V
.end method

.method public abstract getGmpAppId(Lcom/google/android/gms/internal/measurement/w0;)V
.end method

.method public abstract getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/w0;)V
.end method

.method public abstract getSessionId(Lcom/google/android/gms/internal/measurement/w0;)V
.end method

.method public abstract getTestFlag(Lcom/google/android/gms/internal/measurement/w0;I)V
.end method

.method public abstract getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/w0;)V
.end method

.method public abstract initForTests(Ljava/util/Map;)V
.end method

.method public abstract initialize(Le4/a;Lcom/google/android/gms/internal/measurement/e1;J)V
.end method

.method public abstract isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/w0;)V
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
.end method

.method public abstract logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/w0;J)V
.end method

.method public abstract logHealthData(ILjava/lang/String;Le4/a;Le4/a;Le4/a;)V
.end method

.method public abstract onActivityCreated(Le4/a;Landroid/os/Bundle;J)V
.end method

.method public abstract onActivityDestroyed(Le4/a;J)V
.end method

.method public abstract onActivityPaused(Le4/a;J)V
.end method

.method public abstract onActivityResumed(Le4/a;J)V
.end method

.method public abstract onActivitySaveInstanceState(Le4/a;Lcom/google/android/gms/internal/measurement/w0;J)V
.end method

.method public abstract onActivityStarted(Le4/a;J)V
.end method

.method public abstract onActivityStopped(Le4/a;J)V
.end method

.method public abstract performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/w0;J)V
.end method

.method public abstract registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/x0;)V
.end method

.method public abstract resetAnalyticsData(J)V
.end method

.method public abstract setConditionalUserProperty(Landroid/os/Bundle;J)V
.end method

.method public abstract setConsent(Landroid/os/Bundle;J)V
.end method

.method public abstract setConsentThirdParty(Landroid/os/Bundle;J)V
.end method

.method public abstract setCurrentScreen(Le4/a;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract setDataCollectionEnabled(Z)V
.end method

.method public abstract setDefaultEventParameters(Landroid/os/Bundle;)V
.end method

.method public abstract setEventInterceptor(Lcom/google/android/gms/internal/measurement/x0;)V
.end method

.method public abstract setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/c1;)V
.end method

.method public abstract setMeasurementEnabled(ZJ)V
.end method

.method public abstract setMinimumSessionDuration(J)V
.end method

.method public abstract setSessionTimeoutDuration(J)V
.end method

.method public abstract setSgtmDebugInfo(Landroid/content/Intent;)V
.end method

.method public abstract setUserId(Ljava/lang/String;J)V
.end method

.method public abstract setUserProperty(Ljava/lang/String;Ljava/lang/String;Le4/a;ZJ)V
.end method

.method public abstract unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/x0;)V
.end method
