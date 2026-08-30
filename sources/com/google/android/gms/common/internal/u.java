package com.google.android.gms.common.internal;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiActivity;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class u implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Intent f1491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1492c;

    public /* synthetic */ u(Intent intent, Object obj, int i6) {
        this.f1490a = i6;
        this.f1491b = intent;
        this.f1492c = obj;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, x3.f] */
    public final void a() {
        switch (this.f1490a) {
            case 0:
                Intent intent = this.f1491b;
                if (intent != null) {
                    ((GoogleApiActivity) this.f1492c).startActivityForResult(intent, 2);
                }
                break;
            default:
                Intent intent2 = this.f1491b;
                if (intent2 != null) {
                    this.f1492c.a(intent2, 2);
                }
                break;
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i6) {
        try {
            try {
                a();
            } catch (ActivityNotFoundException e9) {
                Log.e("DialogRedirect", true == Build.FINGERPRINT.contains("generic") ? "Failed to start resolution intent. This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store." : "Failed to start resolution intent.", e9);
            }
        } finally {
            dialogInterface.dismiss();
        }
    }
}
