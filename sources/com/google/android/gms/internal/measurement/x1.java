package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class x1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ t0 f1974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f1975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ k1 f1976g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x1(k1 k1Var, t0 t0Var, int i6) {
        super(k1Var, true);
        this.f1974e = t0Var;
        this.f1975f = i6;
        this.f1976g = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        s0 s0Var = this.f1976g.f1698i;
        com.google.android.gms.common.internal.d0.h(s0Var);
        s0Var.getTestFlag(this.f1974e, this.f1975f);
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void b() {
        this.f1974e.zza(null);
    }
}
