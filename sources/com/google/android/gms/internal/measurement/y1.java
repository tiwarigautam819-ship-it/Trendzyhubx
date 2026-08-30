package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class y1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1985e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ h1 f1986f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ k1 f1987g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ y1(k1 k1Var, h1 h1Var, int i6) {
        super(k1Var, true);
        this.f1985e = i6;
        this.f1986f = h1Var;
        this.f1987g = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        switch (this.f1985e) {
            case 0:
                s0 s0Var = this.f1987g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var);
                s0Var.unregisterOnMeasurementEventListener(this.f1986f);
                break;
            default:
                s0 s0Var2 = this.f1987g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var2);
                s0Var2.registerOnMeasurementEventListener(this.f1986f);
                break;
        }
    }
}
