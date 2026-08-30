package com.google.android.gms.internal.measurement;

import android.app.Activity;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a2 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1514e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Activity f1515f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ j1 f1516g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a2(j1 j1Var, Activity activity, int i6) {
        super(j1Var.f1684a, true);
        this.f1514e = i6;
        switch (i6) {
            case 1:
                this.f1515f = activity;
                this.f1516g = j1Var;
                super(j1Var.f1684a, true);
                break;
            case 2:
                this.f1515f = activity;
                this.f1516g = j1Var;
                super(j1Var.f1684a, true);
                break;
            case 3:
                this.f1515f = activity;
                this.f1516g = j1Var;
                super(j1Var.f1684a, true);
                break;
            case 4:
                this.f1515f = activity;
                this.f1516g = j1Var;
                super(j1Var.f1684a, true);
                break;
            default:
                this.f1515f = activity;
                this.f1516g = j1Var;
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        switch (this.f1514e) {
            case 0:
                s0 s0Var = this.f1516g.f1684a.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var);
                s0Var.onActivityResumed(new e4.b(this.f1515f), this.f1650b);
                break;
            case 1:
                s0 s0Var2 = this.f1516g.f1684a.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var2);
                s0Var2.onActivityStarted(new e4.b(this.f1515f), this.f1650b);
                break;
            case 2:
                s0 s0Var3 = this.f1516g.f1684a.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var3);
                s0Var3.onActivityStopped(new e4.b(this.f1515f), this.f1650b);
                break;
            case 3:
                s0 s0Var4 = this.f1516g.f1684a.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var4);
                s0Var4.onActivityPaused(new e4.b(this.f1515f), this.f1650b);
                break;
            default:
                s0 s0Var5 = this.f1516g.f1684a.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var5);
                s0Var5.onActivityDestroyed(new e4.b(this.f1515f), this.f1650b);
                break;
        }
    }
}
