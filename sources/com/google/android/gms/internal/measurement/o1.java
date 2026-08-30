package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1776e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f1777f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f1778g;
    public final /* synthetic */ k1 h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f1779i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o1(k1 k1Var, String str, String str2, Object obj, int i6) {
        super(k1Var, true);
        this.f1776e = i6;
        this.f1777f = str;
        this.f1778g = str2;
        this.f1779i = obj;
        this.h = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        switch (this.f1776e) {
            case 0:
                s0 s0Var = this.h.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var);
                s0Var.getConditionalUserProperties(this.f1777f, this.f1778g, (t0) this.f1779i);
                break;
            case 1:
                s0 s0Var2 = this.h.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var2);
                s0Var2.clearConditionalUserProperty(this.f1777f, this.f1778g, (Bundle) this.f1779i);
                break;
            default:
                s0 s0Var3 = this.h.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var3);
                s0Var3.setCurrentScreen(new e4.b((Activity) this.f1779i), this.f1777f, this.f1778g, this.f1649a);
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public void b() {
        switch (this.f1776e) {
            case 0:
                ((t0) this.f1779i).zza(null);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o1(k1 k1Var, Activity activity, String str, String str2) {
        super(k1Var, true);
        this.f1776e = 2;
        this.f1779i = activity;
        this.f1777f = str;
        this.f1778g = str2;
        this.h = k1Var;
    }
}
