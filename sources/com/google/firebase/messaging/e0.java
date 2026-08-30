package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static WeakReference f2074d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f2075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public z f2076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f2077c;

    public e0(SharedPreferences sharedPreferences, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        this.f2077c = scheduledThreadPoolExecutor;
        this.f2075a = sharedPreferences;
    }

    public final synchronized d0 a() {
        d0 d0Var;
        String strE = this.f2076b.e();
        Pattern pattern = d0.f2069d;
        d0Var = null;
        if (!TextUtils.isEmpty(strE)) {
            String[] strArrSplit = strE.split("!", -1);
            if (strArrSplit.length == 2) {
                d0Var = new d0(strArrSplit[0], strArrSplit[1]);
            }
        }
        return d0Var;
    }

    public final synchronized void b() {
        this.f2076b = z.b(this.f2075a, this.f2077c);
    }

    public final synchronized void c(d0 d0Var) {
        this.f2076b.f(d0Var.f2072c);
    }
}
