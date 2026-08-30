package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.zzhs;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class f1 extends g1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f1627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f1628f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Context f1629g;
    public final /* synthetic */ Bundle h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ k1 f1630i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f1(k1 k1Var, String str, String str2, Context context, Bundle bundle) {
        super(k1Var, true);
        this.f1627e = str;
        this.f1628f = str2;
        this.f1629g = context;
        this.h = bundle;
        this.f1630i = k1Var;
    }

    @Override // com.google.android.gms.internal.measurement.g1
    public final void a() {
        boolean z5;
        String str;
        String str2;
        String str3;
        try {
            String str4 = this.f1627e;
            if (this.f1628f == null || str4 == null) {
                z5 = false;
            } else {
                try {
                    Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, k1.class.getClassLoader());
                    z5 = false;
                } catch (ClassNotFoundException unused) {
                    z5 = true;
                }
            }
            s0 s0VarAsInterface = null;
            if (z5) {
                str3 = this.f1628f;
                str2 = this.f1627e;
                str = this.f1630i.f1691a;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            com.google.android.gms.common.internal.d0.h(this.f1629g);
            k1 k1Var = this.f1630i;
            try {
                s0VarAsInterface = v0.asInterface(f4.e.c(this.f1629g, f4.e.f2594b, ModuleDescriptor.MODULE_ID).b("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
            } catch (f4.b e9) {
                k1Var.i(e9, true, false);
            }
            k1Var.f1698i = s0VarAsInterface;
            if (this.f1630i.f1698i == null) {
                Log.w(this.f1630i.f1691a, "Failed to connect to measurement client.");
                return;
            }
            int iA = f4.e.a(this.f1629g, ModuleDescriptor.MODULE_ID);
            e1 e1Var = new e1(106000L, Math.max(iA, r1), f4.e.d(this.f1629g, ModuleDescriptor.MODULE_ID, false) < iA, str, str2, str3, this.h, zzhs.zza(this.f1629g));
            s0 s0Var = this.f1630i.f1698i;
            com.google.android.gms.common.internal.d0.h(s0Var);
            s0Var.initialize(new e4.b(this.f1629g), e1Var, this.f1649a);
        } catch (Exception e10) {
            this.f1630i.i(e10, true, false);
        }
    }
}
