package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ k1 f1847e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r1(k1 k1Var) {
        super(k1Var, true);
        this.f1847e = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        s0 s0Var = this.f1847e.f1698i;
        com.google.android.gms.common.internal.d0.h(s0Var);
        s0Var.resetAnalyticsData(this.f1649a);
    }
}
