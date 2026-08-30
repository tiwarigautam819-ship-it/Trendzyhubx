package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class n1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1751e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f1752f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f1753g;
    public final /* synthetic */ boolean h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ k1 f1754i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f1755j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n1(k1 k1Var, String str, String str2, Object obj, boolean z5) {
        super(k1Var, true);
        this.f1752f = str;
        this.f1753g = str2;
        this.f1755j = obj;
        this.h = z5;
        this.f1754i = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        switch (this.f1751e) {
            case 0:
                s0 s0Var = this.f1754i.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var);
                s0Var.setUserProperty(this.f1752f, this.f1753g, new e4.b(this.f1755j), this.h, this.f1649a);
                break;
            default:
                s0 s0Var2 = this.f1754i.f1698i;
                com.google.android.gms.common.internal.d0.h(s0Var2);
                s0Var2.getUserProperties(this.f1752f, this.f1753g, this.h, (t0) this.f1755j);
                break;
        }
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public void b() {
        switch (this.f1751e) {
            case 1:
                ((t0) this.f1755j).zza(null);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n1(k1 k1Var, String str, String str2, boolean z5, t0 t0Var) {
        super(k1Var, true);
        this.f1752f = str;
        this.f1753g = str2;
        this.h = z5;
        this.f1755j = t0Var;
        this.f1754i = k1Var;
    }
}
