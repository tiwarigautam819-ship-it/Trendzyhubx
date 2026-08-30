package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import com.google.android.gms.internal.measurement.y4;
import java.util.ArrayDeque;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2095c;

    public /* synthetic */ h(Object obj, int i6, Object obj2) {
        this.f2093a = i6;
        this.f2094b = obj;
        this.f2095c = obj2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String str;
        ServiceInfo serviceInfo;
        String str2;
        int i6;
        ComponentName componentNameStartService;
        switch (this.f2093a) {
            case 0:
                Context context = (Context) this.f2094b;
                Intent intent = (Intent) this.f2095c;
                y yVarU = y.u();
                yVarU.getClass();
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "Starting service");
                }
                ((ArrayDeque) yVarU.f2165d).offer(intent);
                Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent2.setPackage(context.getPackageName());
                synchronized (yVarU) {
                    try {
                        str = (String) yVarU.f2162a;
                        if (str == null) {
                            ResolveInfo resolveInfoResolveService = context.getPackageManager().resolveService(intent2, 0);
                            if (resolveInfoResolveService == null || (serviceInfo = resolveInfoResolveService.serviceInfo) == null) {
                                Log.e("FirebaseMessaging", "Failed to resolve target intent service, skipping classname enforcement");
                            } else {
                                if (context.getPackageName().equals(serviceInfo.packageName) && (str2 = serviceInfo.name) != null) {
                                    if (str2.startsWith(".")) {
                                        yVarU.f2162a = context.getPackageName() + serviceInfo.name;
                                    } else {
                                        yVarU.f2162a = serviceInfo.name;
                                    }
                                    str = (String) yVarU.f2162a;
                                }
                                Log.e("FirebaseMessaging", "Error resolving target intent service, skipping classname enforcement. Resolved service was: " + serviceInfo.packageName + "/" + serviceInfo.name);
                            }
                            str = null;
                        }
                    } finally {
                    }
                }
                if (str != null) {
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        Log.d("FirebaseMessaging", "Restricting intent to a specific service: ".concat(str));
                    }
                    intent2.setClassName(context.getPackageName(), str);
                }
                try {
                    if (yVarU.w(context)) {
                        componentNameStartService = k0.d(context, intent2);
                    } else {
                        componentNameStartService = context.startService(intent2);
                        Log.d("FirebaseMessaging", "Missing wake lock permission, service start may be delayed");
                    }
                    if (componentNameStartService == null) {
                        Log.e("FirebaseMessaging", "Error while delivering the message: ServiceIntent not found.");
                        i6 = 404;
                    } else {
                        i6 = -1;
                    }
                } catch (IllegalStateException e9) {
                    Log.e("FirebaseMessaging", "Failed to start service while in background: " + e9);
                    i6 = 402;
                } catch (SecurityException e10) {
                    Log.e("FirebaseMessaging", "Error while delivering the message to the serviceIntent", e10);
                    i6 = 401;
                }
                return Integer.valueOf(i6);
            default:
                y4 y4Var = (y4) this.f2094b;
                x1.p pVar = (x1.p) this.f2095c;
                CountDownLatch countDownLatch = (CountDownLatch) y4Var.f1991c;
                try {
                    y4Var.f1990b = pVar.call();
                } finally {
                    if (countDownLatch != null) {
                        countDownLatch.countDown();
                    }
                }
        }
    }
}
