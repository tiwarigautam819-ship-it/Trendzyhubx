package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.c1;
import com.google.android.gms.internal.measurement.e1;
import com.google.android.gms.internal.measurement.v0;
import com.google.android.gms.internal.measurement.w0;
import com.google.android.gms.internal.measurement.x0;
import e4.b;
import java.util.Map;
import s.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class AppMeasurementDynamiteService extends v0 {
    zzhy zza;
    private final Map<Integer, zzjl> zzb;

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class zza implements zzjm {
        private x0 zza;

        public zza(x0 x0Var) {
            this.zza = x0Var;
        }

        @Override // com.google.android.gms.measurement.internal.zzjm
        public final void interceptEvent(String str, String str2, Bundle bundle, long j3) {
            try {
                this.zza.zza(str, str2, bundle, j3);
            } catch (RemoteException e9) {
                zzhy zzhyVar = AppMeasurementDynamiteService.this.zza;
                if (zzhyVar != null) {
                    zzhyVar.zzj().zzu().zza("Event interceptor threw exception", e9);
                }
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
    public class zzb implements zzjl {
        private x0 zza;

        public zzb(x0 x0Var) {
            this.zza = x0Var;
        }

        @Override // com.google.android.gms.measurement.internal.zzjl
        public final void onEvent(String str, String str2, Bundle bundle, long j3) {
            try {
                this.zza.zza(str, str2, bundle, j3);
            } catch (RemoteException e9) {
                zzhy zzhyVar = AppMeasurementDynamiteService.this.zza;
                if (zzhyVar != null) {
                    zzhyVar.zzj().zzu().zza("Event listener threw exception", e9);
                }
            }
        }
    }

    public AppMeasurementDynamiteService() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        this.zza = null;
        this.zzb = new e(0);
    }

    private final void zza() {
        if (this.zza == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void beginAdUnitExposure(String str, long j3) {
        zza();
        this.zza.zze().zza(str, j3);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        zza();
        this.zza.zzp().zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void clearMeasurementEnabled(long j3) {
        zza();
        this.zza.zzp().zza((Boolean) null);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void endAdUnitExposure(String str, long j3) {
        zza();
        this.zza.zze().zzb(str, j3);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void generateEventId(w0 w0Var) {
        zza();
        long jZzn = this.zza.zzt().zzn();
        zza();
        this.zza.zzt().zza(w0Var, jZzn);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void getAppInstanceId(w0 w0Var) {
        zza();
        this.zza.zzl().zzb(new zzi(this, w0Var));
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void getCachedAppInstanceId(w0 w0Var) {
        zza();
        zza(w0Var, this.zza.zzp().zzag());
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void getConditionalUserProperties(String str, String str2, w0 w0Var) {
        zza();
        this.zza.zzl().zzb(new zzl(this, w0Var, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void getCurrentScreenClass(w0 w0Var) {
        zza();
        zza(w0Var, this.zza.zzp().zzah());
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void getCurrentScreenName(w0 w0Var) {
        zza();
        zza(w0Var, this.zza.zzp().zzai());
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void getGmpAppId(w0 w0Var) {
        zza();
        zza(w0Var, this.zza.zzp().zzaj());
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void getMaxUserProperties(String str, w0 w0Var) {
        zza();
        this.zza.zzp();
        zzjq.zza(str);
        zza();
        this.zza.zzt().zza(w0Var, 25);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void getSessionId(w0 w0Var) {
        zza();
        this.zza.zzp().zza(w0Var);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void getTestFlag(w0 w0Var, int i6) {
        zza();
        if (i6 == 0) {
            this.zza.zzt().zza(w0Var, this.zza.zzp().zzak());
            return;
        }
        if (i6 == 1) {
            this.zza.zzt().zza(w0Var, this.zza.zzp().zzaf().longValue());
            return;
        }
        if (i6 != 2) {
            if (i6 == 3) {
                this.zza.zzt().zza(w0Var, this.zza.zzp().zzae().intValue());
                return;
            } else {
                if (i6 != 4) {
                    return;
                }
                this.zza.zzt().zza(w0Var, this.zza.zzp().zzac().booleanValue());
                return;
            }
        }
        zzos zzosVarZzt = this.zza.zzt();
        double dDoubleValue = this.zza.zzp().zzad().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble("r", dDoubleValue);
        try {
            w0Var.zza(bundle);
        } catch (RemoteException e9) {
            zzosVarZzt.zzu.zzj().zzu().zza("Error returning double value to wrapper", e9);
        }
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void getUserProperties(String str, String str2, boolean z5, w0 w0Var) {
        zza();
        this.zza.zzl().zzb(new zzj(this, w0Var, str, str2, z5));
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void initForTests(Map map) {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void initialize(e4.a aVar, e1 e1Var, long j3) {
        zzhy zzhyVar = this.zza;
        if (zzhyVar != null) {
            zzhyVar.zzj().zzu().zza("Attempting to initialize multiple times");
            return;
        }
        Context context = (Context) b.e(aVar);
        d0.h(context);
        this.zza = zzhy.zza(context, e1Var, Long.valueOf(j3));
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void isDataCollectionEnabled(w0 w0Var) {
        zza();
        this.zza.zzl().zzb(new zzn(this, w0Var));
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void logEvent(String str, String str2, Bundle bundle, boolean z5, boolean z8, long j3) {
        zza();
        this.zza.zzp().zza(str, str2, bundle, z5, z8, j3);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void logEventAndBundle(String str, String str2, Bundle bundle, w0 w0Var, long j3) {
        zza();
        d0.d(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.zza.zzl().zzb(new zzk(this, w0Var, new zzbf(str2, new zzbe(bundle), "app", j3), str));
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void logHealthData(int i6, String str, e4.a aVar, e4.a aVar2, e4.a aVar3) {
        zza();
        this.zza.zzj().zza(i6, true, false, str, aVar == null ? null : b.e(aVar), aVar2 == null ? null : b.e(aVar2), aVar3 != null ? b.e(aVar3) : null);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void onActivityCreated(e4.a aVar, Bundle bundle, long j3) {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityCreated((Activity) b.e(aVar), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void onActivityDestroyed(e4.a aVar, long j3) {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityDestroyed((Activity) b.e(aVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void onActivityPaused(e4.a aVar, long j3) {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityPaused((Activity) b.e(aVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void onActivityResumed(e4.a aVar, long j3) {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityResumed((Activity) b.e(aVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void onActivitySaveInstanceState(e4.a aVar, w0 w0Var, long j3) {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        Bundle bundle = new Bundle();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivitySaveInstanceState((Activity) b.e(aVar), bundle);
        }
        try {
            w0Var.zza(bundle);
        } catch (RemoteException e9) {
            this.zza.zzj().zzu().zza("Error returning bundle value to wrapper", e9);
        }
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void onActivityStarted(e4.a aVar, long j3) {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityStarted((Activity) b.e(aVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void onActivityStopped(e4.a aVar, long j3) {
        zza();
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacksZzaa = this.zza.zzp().zzaa();
        if (activityLifecycleCallbacksZzaa != null) {
            this.zza.zzp().zzao();
            activityLifecycleCallbacksZzaa.onActivityStopped((Activity) b.e(aVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void performAction(Bundle bundle, w0 w0Var, long j3) {
        zza();
        w0Var.zza(null);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void registerOnMeasurementEventListener(x0 x0Var) {
        zzjl zzbVar;
        zza();
        synchronized (this.zzb) {
            try {
                zzbVar = this.zzb.get(Integer.valueOf(x0Var.zza()));
                if (zzbVar == null) {
                    zzbVar = new zzb(x0Var);
                    this.zzb.put(Integer.valueOf(x0Var.zza()), zzbVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.zza.zzp().zza(zzbVar);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void resetAnalyticsData(long j3) {
        zza();
        this.zza.zzp().zza(j3);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setConditionalUserProperty(Bundle bundle, long j3) {
        zza();
        if (bundle == null) {
            this.zza.zzj().zzg().zza("Conditional user property must not be null");
        } else {
            this.zza.zzp().zzb(bundle, j3);
        }
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setConsent(Bundle bundle, long j3) {
        zza();
        this.zza.zzp().zzc(bundle, j3);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setConsentThirdParty(Bundle bundle, long j3) {
        zza();
        this.zza.zzp().zzd(bundle, j3);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setCurrentScreen(e4.a aVar, String str, String str2, long j3) {
        zza();
        this.zza.zzq().zza((Activity) b.e(aVar), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setDataCollectionEnabled(boolean z5) {
        zza();
        this.zza.zzp().zzc(z5);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setDefaultEventParameters(Bundle bundle) {
        zza();
        this.zza.zzp().zzc(bundle);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setEventInterceptor(x0 x0Var) {
        zza();
        zza zzaVar = new zza(x0Var);
        if (this.zza.zzl().zzg()) {
            this.zza.zzp().zza(zzaVar);
        } else {
            this.zza.zzl().zzb(new zzm(this, zzaVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setInstanceIdProvider(c1 c1Var) {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setMeasurementEnabled(boolean z5, long j3) {
        zza();
        this.zza.zzp().zza(Boolean.valueOf(z5));
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setMinimumSessionDuration(long j3) {
        zza();
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setSessionTimeoutDuration(long j3) {
        zza();
        this.zza.zzp().zzc(j3);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setSgtmDebugInfo(Intent intent) {
        zza();
        this.zza.zzp().zza(intent);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setUserId(String str, long j3) {
        zza();
        this.zza.zzp().zza(str, j3);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void setUserProperty(String str, String str2, e4.a aVar, boolean z5, long j3) {
        zza();
        this.zza.zzp().zza(str, str2, b.e(aVar), z5, j3);
    }

    @Override // com.google.android.gms.internal.measurement.s0
    public void unregisterOnMeasurementEventListener(x0 x0Var) {
        zzjl zzjlVarRemove;
        zza();
        synchronized (this.zzb) {
            zzjlVarRemove = this.zzb.remove(Integer.valueOf(x0Var.zza()));
        }
        if (zzjlVarRemove == null) {
            zzjlVarRemove = new zzb(x0Var);
        }
        this.zza.zzp().zzb(zzjlVarRemove);
    }

    private final void zza(w0 w0Var, String str) {
        zza();
        this.zza.zzt().zza(w0Var, str);
    }
}
