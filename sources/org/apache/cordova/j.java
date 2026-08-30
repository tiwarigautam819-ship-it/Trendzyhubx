package org.apache.cordova;

import android.content.DialogInterface;
import android.view.KeyEvent;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements DialogInterface.OnKeyListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4532b;

    public /* synthetic */ j(int i6, Object obj) {
        this.f4531a = i6;
        this.f4532b = obj;
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i6, KeyEvent keyEvent) {
        switch (this.f4531a) {
            case 0:
                if (i6 == 4) {
                    ((o5.c) this.f4532b).o(null, true);
                }
                break;
            default:
                if (i6 == 4) {
                    ((k1.h) this.f4532b).C(null, false);
                }
                break;
        }
        return false;
    }
}
