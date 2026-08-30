package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1529c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(String str, int i6) {
        super(str);
        this.f1529c = i6;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final n e(com.google.firebase.messaging.y yVar, List list) {
        switch (this.f1529c) {
            case 0:
                return new g(Double.valueOf(0.0d));
            case 1:
                return n.f1743n;
            case 2:
            case 3:
                return this;
            default:
                return n.f1743n;
        }
    }
}
