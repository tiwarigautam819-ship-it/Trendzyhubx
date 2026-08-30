package com.google.android.gms.internal.measurement;

import android.content.Intent;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class q1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1819e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ k1 f1820f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Object f1821g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q1(k1 k1Var, Object obj, int i6) {
        super(k1Var, true);
        this.f1819e = i6;
        this.f1821g = obj;
        this.f1820f = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        switch (this.f1819e) {
            case 0:
                if (((Boolean) this.f1821g) == null) {
                    s0 s0Var = this.f1820f.f1698i;
                    com.google.android.gms.common.internal.d0.h(s0Var);
                    s0Var.clearMeasurementEnabled(this.f1649a);
                } else {
                    s0 s0Var2 = this.f1820f.f1698i;
                    com.google.android.gms.common.internal.d0.h(s0Var2);
                    s0Var2.setMeasurementEnabled(((Boolean) this.f1821g).booleanValue(), this.f1649a);
                }
                break;
            case 1:
                s0 s0Var3 = this.f1820f.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var3);
                s0Var3.setEventInterceptor((i1) this.f1821g);
                break;
            default:
                s0 s0Var4 = this.f1820f.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var4);
                s0Var4.setSgtmDebugInfo((Intent) this.f1821g);
                break;
        }
    }
}
