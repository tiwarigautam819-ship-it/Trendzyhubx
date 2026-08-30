package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends y3.a {
    public static final Parcelable.Creator<i> CREATOR = new a.c(22);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final Scope[] f1424w = new Scope[0];

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final v3.c[] f1425x = new v3.c[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public IBinder f1430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Scope[] f1431f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Bundle f1432g;
    public Account h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public v3.c[] f1433i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public v3.c[] f1434j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f1435k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f1436l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1437m;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final String f1438v;

    public i(int i6, int i9, int i10, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, v3.c[] cVarArr, v3.c[] cVarArr2, boolean z5, int i11, boolean z8, String str2) {
        Scope[] scopeArr2 = scopeArr == null ? f1424w : scopeArr;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        v3.c[] cVarArr3 = f1425x;
        v3.c[] cVarArr4 = cVarArr == null ? cVarArr3 : cVarArr;
        cVarArr3 = cVarArr2 != null ? cVarArr2 : cVarArr3;
        this.f1426a = i6;
        this.f1427b = i9;
        this.f1428c = i10;
        if ("com.google.android.gms".equals(str)) {
            this.f1429d = "com.google.android.gms";
        } else {
            this.f1429d = str;
        }
        if (i6 < 2) {
            Account account2 = null;
            if (iBinder != null) {
                int i12 = a.f1400c;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                l q0Var = iInterfaceQueryLocalInterface instanceof l ? (l) iInterfaceQueryLocalInterface : new q0(iBinder, "com.google.android.gms.common.internal.IAccountAccessor", 1);
                long jClearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    try {
                        q0 q0Var2 = (q0) q0Var;
                        Parcel parcelB = q0Var2.b(2, q0Var2.c());
                        Account account3 = (Account) j4.b.a(parcelB, Account.CREATOR);
                        parcelB.recycle();
                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                        account2 = account3;
                    } catch (RemoteException unused) {
                        Log.w("AccountAccessor", "Remote account accessor probably died");
                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                    }
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    throw th;
                }
            }
            this.h = account2;
        } else {
            this.f1430e = iBinder;
            this.h = account;
        }
        this.f1431f = scopeArr2;
        this.f1432g = bundle2;
        this.f1433i = cVarArr4;
        this.f1434j = cVarArr3;
        this.f1435k = z5;
        this.f1436l = i11;
        this.f1437m = z8;
        this.f1438v = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        a.c.a(this, parcel, i6);
    }
}
