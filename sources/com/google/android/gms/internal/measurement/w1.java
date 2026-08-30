package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f1968e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ k1 f1969f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w1(k1 k1Var, boolean z5) {
        super(k1Var, true);
        this.f1968e = z5;
        this.f1969f = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        s0 s0Var = this.f1969f.f1698i;
        com.google.android.gms.common.internal.d0.h(s0Var);
        s0Var.setDataCollectionEnabled(this.f1968e);
    }
}
