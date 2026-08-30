package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class l1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1716e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Bundle f1717f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ k1 f1718g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l1(k1 k1Var, Bundle bundle, int i6) {
        super(k1Var, true);
        this.f1716e = i6;
        this.f1717f = bundle;
        this.f1718g = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        switch (this.f1716e) {
            case 0:
                s0 s0Var = this.f1718g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var);
                s0Var.setConditionalUserProperty(this.f1717f, this.f1649a);
                break;
            case 1:
                s0 s0Var2 = this.f1718g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var2);
                s0Var2.setConsent(this.f1717f, this.f1649a);
                break;
            case 2:
                s0 s0Var3 = this.f1718g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var3);
                s0Var3.setConsentThirdParty(this.f1717f, this.f1649a);
                break;
            default:
                s0 s0Var4 = this.f1718g.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var4);
                s0Var4.setDefaultEventParameters(this.f1717f);
                break;
        }
    }
}
