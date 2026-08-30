package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1957e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f1958f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f1959g;
    public final /* synthetic */ Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ v1(k1 k1Var, Object obj, t0 t0Var, int i6) {
        super(k1Var, true);
        this.f1957e = i6;
        this.f1958f = obj;
        this.h = t0Var;
        this.f1959g = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        Bundle bundle;
        switch (this.f1957e) {
            case 0:
                s0 s0Var = ((k1) this.f1959g).f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var);
                s0Var.logHealthData(5, (String) this.f1958f, new e4.b(this.h), new e4.b(null), new e4.b(null));
                break;
            case 1:
                s0 s0Var2 = ((k1) this.f1959g).f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var2);
                s0Var2.getMaxUserProperties((String) this.f1958f, (t0) this.h);
                break;
            case 2:
                s0 s0Var3 = ((k1) this.f1959g).f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var3);
                s0Var3.performAction((Bundle) this.f1958f, (t0) this.h, this.f1649a);
                break;
            case 3:
                if (((Bundle) this.f1958f) != null) {
                    bundle = new Bundle();
                    if (((Bundle) this.f1958f).containsKey("com.google.app_measurement.screen_service")) {
                        Object obj = ((Bundle) this.f1958f).get("com.google.app_measurement.screen_service");
                        if (obj instanceof Bundle) {
                            bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                        }
                    }
                } else {
                    bundle = null;
                }
                s0 s0Var4 = ((j1) this.f1959g).f1684a.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var4);
                s0Var4.onActivityCreated(new e4.b((Activity) this.h), bundle, this.f1650b);
                break;
            default:
                s0 s0Var5 = ((j1) this.f1959g).f1684a.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var5);
                s0Var5.onActivitySaveInstanceState(new e4.b((Activity) this.f1958f), (t0) this.h, this.f1650b);
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public void b() {
        switch (this.f1957e) {
            case 1:
                ((t0) this.h).zza(null);
                break;
            case 2:
                ((t0) this.h).zza(null);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v1(j1 j1Var, Activity activity, t0 t0Var) {
        super(j1Var.f1684a, true);
        this.f1957e = 4;
        this.f1958f = activity;
        this.h = t0Var;
        this.f1959g = j1Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v1(j1 j1Var, Bundle bundle, Activity activity) {
        super(j1Var.f1684a, true);
        this.f1957e = 3;
        this.f1958f = bundle;
        this.h = activity;
        this.f1959g = j1Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v1(k1 k1Var, String str, Object obj) {
        super(k1Var, false);
        this.f1957e = 0;
        this.f1958f = str;
        this.h = obj;
        this.f1959g = k1Var;
    }
}
