package com.google.firebase.analytics;

import android.os.Bundle;
import d7.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class ParametersBuilder {
    private final Bundle zza = new Bundle();

    public final Bundle getBundle() {
        return this.zza;
    }

    public final void param(String str, double d6) {
        g.f("key", str);
        this.zza.putDouble(str, d6);
    }

    public final void param(String str, long j3) {
        g.f("key", str);
        this.zza.putLong(str, j3);
    }

    public final void param(String str, Bundle bundle) {
        g.f("key", str);
        g.f("value", bundle);
        this.zza.putBundle(str, bundle);
    }

    public final void param(String str, String str2) {
        g.f("key", str);
        g.f("value", str2);
        this.zza.putString(str, str2);
    }

    public final void param(String str, Bundle[] bundleArr) {
        g.f("key", str);
        g.f("value", bundleArr);
        this.zza.putParcelableArray(str, bundleArr);
    }
}
