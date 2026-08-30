package com.google.android.gms.internal.measurement;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class v4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q4.d f1961b;

    public v4(Context context, q4.d dVar) {
        this.f1960a = context;
        this.f1961b = dVar;
    }

    public final boolean equals(Object obj) {
        q4.d dVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof v4) {
            v4 v4Var = (v4) obj;
            q4.d dVar2 = v4Var.f1961b;
            if (this.f1960a.equals(v4Var.f1960a) && ((dVar = this.f1961b) != null ? dVar.equals(dVar2) : dVar2 == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f1960a.hashCode() ^ 1000003) * 1000003;
        q4.d dVar = this.f1961b;
        return iHashCode ^ (dVar == null ? 0 : dVar.hashCode());
    }

    public final String toString() {
        return "FlagsContext{context=" + String.valueOf(this.f1960a) + ", hermeticFileOverrides=" + String.valueOf(this.f1961b) + "}";
    }
}
