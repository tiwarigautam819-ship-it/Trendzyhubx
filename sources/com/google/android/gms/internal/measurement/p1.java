package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class p1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1800e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f1801f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ k1 f1802g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p1(k1 k1Var, String str, int i6) {
        super(k1Var, true);
        this.f1800e = i6;
        this.f1801f = str;
        this.f1802g = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        switch (this.f1800e) {
            case 0:
                s0 s0Var = this.f1802g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var);
                s0Var.setUserId(this.f1801f, this.f1649a);
                break;
            case 1:
                s0 s0Var2 = this.f1802g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var2);
                s0Var2.endAdUnitExposure(this.f1801f, this.f1650b);
                break;
            default:
                s0 s0Var3 = this.f1802g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var3);
                s0Var3.beginAdUnitExposure(this.f1801f, this.f1650b);
                break;
        }
    }
}
