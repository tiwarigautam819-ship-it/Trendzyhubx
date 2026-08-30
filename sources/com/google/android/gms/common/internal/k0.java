package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Uri f1448d = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority("com.google.android.gms.chimera").build();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1451c;

    public k0(String str, String str2, boolean z5) {
        d0.d(str);
        this.f1449a = str;
        d0.d(str2);
        this.f1450b = str2;
        this.f1451c = z5;
    }

    public final Intent a(Context context) {
        Bundle bundleCall;
        String str = this.f1449a;
        if (str == null) {
            return new Intent().setComponent(null);
        }
        if (this.f1451c) {
            Bundle bundle = new Bundle();
            bundle.putString("serviceActionBundleKey", str);
            try {
                bundleCall = context.getContentResolver().call(f1448d, "serviceIntentCall", (String) null, bundle);
            } catch (IllegalArgumentException e9) {
                Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e9.toString()));
                bundleCall = null;
            }
            intent = bundleCall != null ? (Intent) bundleCall.getParcelable("serviceResponseIntentKey") : null;
            if (intent == null) {
                Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action: ".concat(String.valueOf(str)));
            }
        }
        return intent == null ? new Intent(str).setPackage(this.f1450b) : intent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k0)) {
            return false;
        }
        k0 k0Var = (k0) obj;
        return d0.k(this.f1449a, k0Var.f1449a) && d0.k(this.f1450b, k0Var.f1450b) && d0.k(null, null) && this.f1451c == k0Var.f1451c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1449a, this.f1450b, null, 4225, Boolean.valueOf(this.f1451c)});
    }

    public final String toString() {
        String str = this.f1449a;
        if (str != null) {
            return str;
        }
        d0.h(null);
        throw null;
    }
}
