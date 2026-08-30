package com.google.firebase.analytics.connector;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.k1;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.analytics.connector.internal.zze;
import com.google.firebase.analytics.connector.internal.zzg;
import d5.a;
import d5.b;
import d5.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import t4.g;
import v4.j;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class AnalyticsConnectorImpl implements AnalyticsConnector {
    private static volatile AnalyticsConnector zzb;
    final Map<String, com.google.firebase.analytics.connector.internal.zza> zza;
    private final AppMeasurementSdk zzc;

    private AnalyticsConnectorImpl(AppMeasurementSdk appMeasurementSdk) {
        d0.h(appMeasurementSdk);
        this.zzc = appMeasurementSdk;
        this.zza = new ConcurrentHashMap();
    }

    public static AnalyticsConnector getInstance() {
        return getInstance(g.c());
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (str2 == null || com.google.firebase.analytics.connector.internal.zzb.zza(str2, bundle)) {
            this.zzc.clearConditionalUserProperty(str, str2, bundle);
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public List<AnalyticsConnector.ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Iterator<Bundle> it = this.zzc.getConditionalUserProperties(str, str2).iterator();
        while (it.hasNext()) {
            arrayList.add(com.google.firebase.analytics.connector.internal.zzb.zza(it.next()));
        }
        return arrayList;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public int getMaxUserProperties(String str) {
        return this.zzc.getMaxUserProperties(str);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public Map<String, Object> getUserProperties(boolean z5) {
        return this.zzc.getUserProperties(null, null, z5);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void logEvent(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (com.google.firebase.analytics.connector.internal.zzb.zzf(str) && com.google.firebase.analytics.connector.internal.zzb.zza(str2, bundle) && com.google.firebase.analytics.connector.internal.zzb.zzb(str, str2, bundle)) {
            com.google.firebase.analytics.connector.internal.zzb.zza(str, str2, bundle);
            this.zzc.logEvent(str, str2, bundle);
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public AnalyticsConnector.AnalyticsConnectorHandle registerAnalyticsConnectorListener(final String str, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        d0.h(analyticsConnectorListener);
        if (com.google.firebase.analytics.connector.internal.zzb.zzf(str) && !zza(str)) {
            AppMeasurementSdk appMeasurementSdk = this.zzc;
            com.google.firebase.analytics.connector.internal.zza zzeVar = AppMeasurement.FIAM_ORIGIN.equals(str) ? new zze(appMeasurementSdk, analyticsConnectorListener) : "clx".equals(str) ? new zzg(appMeasurementSdk, analyticsConnectorListener) : null;
            if (zzeVar != null) {
                this.zza.put(str, zzeVar);
                return new AnalyticsConnector.AnalyticsConnectorHandle(this) { // from class: com.google.firebase.analytics.connector.AnalyticsConnectorImpl.1
                    private final /* synthetic */ AnalyticsConnectorImpl zzb;

                    {
                        this.zzb = this;
                    }

                    @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorHandle
                    public void registerEventNames(Set<String> set) {
                        if (!this.zzb.zza(str) || !str.equals(AppMeasurement.FIAM_ORIGIN) || set == null || set.isEmpty()) {
                            return;
                        }
                        this.zzb.zza.get(str).zza(set);
                    }

                    @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorHandle
                    public void unregister() {
                        if (this.zzb.zza(str)) {
                            AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListenerZza = this.zzb.zza.get(str).zza();
                            if (analyticsConnectorListenerZza != null) {
                                analyticsConnectorListenerZza.onMessageTriggered(0, null);
                            }
                            this.zzb.zza.remove(str);
                        }
                    }

                    @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorHandle
                    public void unregisterEventNames() {
                        if (this.zzb.zza(str) && str.equals(AppMeasurement.FIAM_ORIGIN)) {
                            this.zzb.zza.get(str).zzb();
                        }
                    }
                };
            }
        }
        return null;
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void setConditionalUserProperty(AnalyticsConnector.ConditionalUserProperty conditionalUserProperty) {
        if (com.google.firebase.analytics.connector.internal.zzb.zzb(conditionalUserProperty)) {
            this.zzc.setConditionalUserProperty(com.google.firebase.analytics.connector.internal.zzb.zza(conditionalUserProperty));
        }
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public void setUserProperty(String str, String str2, Object obj) {
        if (com.google.firebase.analytics.connector.internal.zzb.zzf(str) && com.google.firebase.analytics.connector.internal.zzb.zza(str, str2)) {
            this.zzc.setUserProperty(str, str2, obj);
        }
    }

    public static AnalyticsConnector getInstance(g gVar) {
        return (AnalyticsConnector) gVar.b(AnalyticsConnector.class);
    }

    public static /* synthetic */ void zza(a aVar) {
        throw null;
    }

    public static AnalyticsConnector getInstance(g gVar, Context context, d dVar) {
        d0.h(gVar);
        d0.h(context);
        d0.h(dVar);
        d0.h(context.getApplicationContext());
        if (zzb == null) {
            synchronized (AnalyticsConnectorImpl.class) {
                try {
                    if (zzb == null) {
                        Bundle bundle = new Bundle(1);
                        gVar.a();
                        if ("[DEFAULT]".equals(gVar.f5321b)) {
                            ((j) dVar).a(new Executor() { // from class: com.google.firebase.analytics.connector.zza
                                @Override // java.util.concurrent.Executor
                                public final void execute(Runnable runnable) {
                                    runnable.run();
                                }
                            }, new b() { // from class: com.google.firebase.analytics.connector.zzb
                                public final void handle(a aVar) {
                                    AnalyticsConnectorImpl.zza(aVar);
                                }
                            });
                            bundle.putBoolean("dataCollectionDefaultEnabled", gVar.h());
                        }
                        zzb = new AnalyticsConnectorImpl(k1.c(context, null, null, null, bundle).f1694d);
                    }
                } finally {
                }
            }
        }
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zza(String str) {
        return (str.isEmpty() || !this.zza.containsKey(str) || this.zza.get(str) == null) ? false : true;
    }
}
