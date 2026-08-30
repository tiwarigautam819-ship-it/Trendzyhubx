package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1921e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ t0 f1922f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ k1 f1923g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u1(k1 k1Var, t0 t0Var, int i6) {
        super(k1Var, true);
        this.f1921e = i6;
        this.f1922f = t0Var;
        this.f1923g = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        switch (this.f1921e) {
            case 0:
                s0 s0Var = this.f1923g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var);
                s0Var.getCachedAppInstanceId(this.f1922f);
                break;
            case 1:
                s0 s0Var2 = this.f1923g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var2);
                s0Var2.getGmpAppId(this.f1922f);
                break;
            case 2:
                s0 s0Var3 = this.f1923g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var3);
                s0Var3.getCurrentScreenName(this.f1922f);
                break;
            case 3:
                s0 s0Var4 = this.f1923g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var4);
                s0Var4.generateEventId(this.f1922f);
                break;
            case 4:
                s0 s0Var5 = this.f1923g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var5);
                s0Var5.getCurrentScreenClass(this.f1922f);
                break;
            case 5:
                s0 s0Var6 = this.f1923g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var6);
                s0Var6.getSessionId(this.f1922f);
                break;
            default:
                s0 s0Var7 = this.f1923g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var7);
                s0Var7.getAppInstanceId(this.f1922f);
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void b() {
        switch (this.f1921e) {
            case 0:
                this.f1922f.zza(null);
                break;
            case 1:
                this.f1922f.zza(null);
                break;
            case 2:
                this.f1922f.zza(null);
                break;
            case 3:
                this.f1922f.zza(null);
                break;
            case 4:
                this.f1922f.zza(null);
                break;
            case 5:
                this.f1922f.zza(null);
                break;
            default:
                this.f1922f.zza(null);
                break;
        }
    }
}
