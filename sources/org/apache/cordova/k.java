package org.apache.cordova;

import android.content.DialogInterface;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k1.h f4537b;

    public /* synthetic */ k(k1.h hVar, int i6) {
        this.f4536a = i6;
        this.f4537b = hVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        switch (this.f4536a) {
            case 0:
                this.f4537b.C(null, true);
                break;
            default:
                this.f4537b.C(null, false);
                break;
        }
    }
}
