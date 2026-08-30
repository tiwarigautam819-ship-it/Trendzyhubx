package com.google.firebase.messaging;

import com.google.android.gms.common.api.Status;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class x extends Exception {
    /* JADX WARN: Illegal instructions before constructor call */
    public x(Status status) {
        int i6 = status.f1396a;
        String str = status.f1397b;
        super(i6 + ": " + (str == null ? "" : str));
    }
}
