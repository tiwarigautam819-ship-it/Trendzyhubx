package com.google.firebase.messaging;

import android.os.Build;
import android.os.StrictMode;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.Collections;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l implements g5.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2119a;

    @Override // g5.a
    public final Object get() {
        switch (this.f2119a) {
            case 0:
                b0 b0Var = FirebaseMessaging.f2029k;
                return null;
            case 1:
                return Collections.EMPTY_SET;
            case 2:
                return null;
            case 3:
                v4.l lVar = ExecutorsRegistrar.f2022a;
                StrictMode.ThreadPolicy.Builder builderDetectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
                int i6 = Build.VERSION.SDK_INT;
                builderDetectNetwork.detectResourceMismatches();
                if (i6 >= 26) {
                    builderDetectNetwork.detectUnbufferedIo();
                }
                return new w4.f(Executors.newFixedThreadPool(4, new w4.a("Firebase Background", 10, builderDetectNetwork.penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.f2025d.get());
            case 4:
                v4.l lVar2 = ExecutorsRegistrar.f2022a;
                return new w4.f(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), new w4.a("Firebase Lite", 0, new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build())), (ScheduledExecutorService) ExecutorsRegistrar.f2025d.get());
            case 5:
                v4.l lVar3 = ExecutorsRegistrar.f2022a;
                return new w4.f(Executors.newCachedThreadPool(new w4.a("Firebase Blocking", 11, null)), (ScheduledExecutorService) ExecutorsRegistrar.f2025d.get());
            default:
                v4.l lVar4 = ExecutorsRegistrar.f2022a;
                return Executors.newSingleThreadScheduledExecutor(new w4.a("Firebase Scheduler", 0, null));
        }
    }
}
