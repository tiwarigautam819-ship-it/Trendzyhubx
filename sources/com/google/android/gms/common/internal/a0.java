package com.google.android.gms.common.internal;

import android.os.Parcel;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a0 extends h4.a implements c0 {
    public final boolean d() {
        Parcel parcelB = b(7, c());
        int i6 = j4.b.f3372a;
        boolean z5 = parcelB.readInt() != 0;
        parcelB.recycle();
        return z5;
    }
}
