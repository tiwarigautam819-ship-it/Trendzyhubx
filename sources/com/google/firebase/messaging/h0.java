package com.google.firebase.messaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h0 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public i0 f2096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i0 f2097b;

    public h0(i0 i0Var, i0 i0Var2) {
        this.f2097b = i0Var;
        this.f2096a = i0Var2;
    }

    public final void a() {
        if (Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3))) {
            Log.d("FirebaseMessaging", "Connectivity change received registered");
        }
        this.f2097b.f2103a.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // android.content.BroadcastReceiver
    public final synchronized void onReceive(Context context, Intent intent) {
        try {
            i0 i0Var = this.f2096a;
            if (i0Var == null) {
                return;
            }
            if (i0Var.d()) {
                if (Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3))) {
                    Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                }
                i0 i0Var2 = this.f2096a;
                i0Var2.f2106d.f2091f.schedule(i0Var2, 0L, TimeUnit.SECONDS);
                context.unregisterReceiver(this);
                this.f2096a = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
