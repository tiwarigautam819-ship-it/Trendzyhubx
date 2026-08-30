package com.google.firebase.messaging;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f2063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PowerManager.WakeLock f2064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FirebaseMessaging f2065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ThreadPoolExecutor f2066d = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new c4.a("firebase-iid-executor"));

    public c0(FirebaseMessaging firebaseMessaging, long j3) {
        this.f2065c = firebaseMessaging;
        this.f2063a = j3;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) firebaseMessaging.f2033b.getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f2064b = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
    }

    public final boolean a() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f2065c.f2033b.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final boolean b() throws IOException {
        try {
            if (this.f2065c.a() == null) {
                Log.e("FirebaseMessaging", "Token retrieval failed: null");
                return false;
            }
            if (!Log.isLoggable("FirebaseMessaging", 3)) {
                return true;
            }
            Log.d("FirebaseMessaging", "Token successfully retrieved");
            return true;
        } catch (IOException e9) {
            String message = e9.getMessage();
            if (!"SERVICE_NOT_AVAILABLE".equals(message) && !"INTERNAL_SERVER_ERROR".equals(message) && !"InternalServerError".equals(message)) {
                if (e9.getMessage() != null) {
                    throw e9;
                }
                Log.w("FirebaseMessaging", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            }
            Log.w("FirebaseMessaging", "Token retrieval failed: " + e9.getMessage() + ". Will retry token retrieval");
            return false;
        } catch (SecurityException unused) {
            Log.w("FirebaseMessaging", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        PowerManager.WakeLock wakeLock = this.f2064b;
        y yVarU = y.u();
        FirebaseMessaging firebaseMessaging = this.f2065c;
        if (yVarU.w(firebaseMessaging.f2033b)) {
            wakeLock.acquire();
        }
        try {
            try {
                synchronized (firebaseMessaging) {
                    firebaseMessaging.f2039i = true;
                }
                if (!firebaseMessaging.h.e()) {
                    firebaseMessaging.h(false);
                    if (y.u().w(firebaseMessaging.f2033b)) {
                        wakeLock.release();
                        return;
                    }
                    return;
                }
                if (!y.u().v(firebaseMessaging.f2033b) || a()) {
                    if (b()) {
                        firebaseMessaging.h(false);
                    } else {
                        firebaseMessaging.k(this.f2063a);
                    }
                    if (y.u().w(firebaseMessaging.f2033b)) {
                        wakeLock.release();
                        return;
                    }
                    return;
                }
                q2.d dVar = new q2.d();
                dVar.f4725b = this;
                dVar.b();
                if (y.u().w(firebaseMessaging.f2033b)) {
                    wakeLock.release();
                }
            } catch (IOException e9) {
                Log.e("FirebaseMessaging", "Topic sync or token retrieval failed on hard failure exceptions: " + e9.getMessage() + ". Won't retry the operation.");
                firebaseMessaging.h(false);
                if (y.u().w(firebaseMessaging.f2033b)) {
                    wakeLock.release();
                }
            }
        } catch (Throwable th) {
            if (y.u().w(firebaseMessaging.f2033b)) {
                wakeLock.release();
            }
            throw th;
        }
    }
}
