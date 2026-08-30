package org.apache.cordova;

import android.content.DialogInterface;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4526b;

    public /* synthetic */ i(int i6, Object obj) {
        this.f4525a = i6;
        this.f4526b = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        switch (this.f4525a) {
            case 0:
                ((o5.c) this.f4526b).o(null, true);
                break;
            default:
                ((o5.c) this.f4526b).o(null, false);
                break;
        }
    }
}
