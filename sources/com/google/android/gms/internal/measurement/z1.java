package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class z1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Long f2001e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f2002f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f2003g;
    public final /* synthetic */ Bundle h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f2004i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ boolean f2005j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ k1 f2006k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z1(k1 k1Var, Long l4, String str, String str2, Bundle bundle, boolean z5, boolean z8) {
        super(k1Var, true);
        this.f2001e = l4;
        this.f2002f = str;
        this.f2003g = str2;
        this.h = bundle;
        this.f2004i = z5;
        this.f2005j = z8;
        this.f2006k = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        Long l4 = this.f2001e;
        long jLongValue = l4 == null ? this.f1649a : l4.longValue();
        s0 s0Var = this.f2006k.f1698i;
        com.google.android.gms.common.internal.d0.h(s0Var);
        s0Var.logEvent(this.f2002f, this.f2003g, this.h, this.f2004i, this.f2005j, jLongValue);
    }
}
