package com.google.android.gms.common.internal;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final s f1486b = new s(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1487a;

    public /* synthetic */ s(String str) {
        this.f1487a = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof s) {
            return d0.k(this.f1487a, ((s) obj).f1487a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1487a});
    }
}
