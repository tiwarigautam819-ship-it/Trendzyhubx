package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class z implements h3.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f2166a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f2169d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f2170e = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f2167b = "GET";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f2168c = new r7.j();

    public static z b(SharedPreferences sharedPreferences, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        z zVar = new z();
        zVar.f2169d = new ArrayDeque();
        zVar.f2166a = sharedPreferences;
        zVar.f2167b = "topic_operation_queue";
        zVar.f2168c = ",";
        zVar.f2170e = scheduledThreadPoolExecutor;
        synchronized (((ArrayDeque) zVar.f2169d)) {
            try {
                ((ArrayDeque) zVar.f2169d).clear();
                String string = ((SharedPreferences) zVar.f2166a).getString((String) zVar.f2167b, "");
                if (!TextUtils.isEmpty(string) && string.contains((String) zVar.f2168c)) {
                    String[] strArrSplit = string.split((String) zVar.f2168c, -1);
                    if (strArrSplit.length == 0) {
                        Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                    }
                    for (String str : strArrSplit) {
                        if (!TextUtils.isEmpty(str)) {
                            ((ArrayDeque) zVar.f2169d).add(str);
                        }
                    }
                    return zVar;
                }
                return zVar;
            } finally {
            }
        }
    }

    public com.google.android.gms.common.internal.g a() {
        Map mapUnmodifiableMap;
        r7.m mVar = (r7.m) this.f2166a;
        if (mVar == null) {
            throw new IllegalStateException("url == null");
        }
        String str = (String) this.f2167b;
        r7.k kVarC = ((r7.j) this.f2168c).c();
        b0.d dVar = (b0.d) this.f2169d;
        LinkedHashMap linkedHashMap = (LinkedHashMap) this.f2170e;
        byte[] bArr = s7.b.f5287a;
        d7.g.f("<this>", linkedHashMap);
        if (linkedHashMap.isEmpty()) {
            mapUnmodifiableMap = s6.p.f5283a;
        } else {
            mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
            d7.g.e("{\n    Collections.unmodi…(LinkedHashMap(this))\n  }", mapUnmodifiableMap);
        }
        return new com.google.android.gms.common.internal.g(mVar, str, kVarC, dVar, mapUnmodifiableMap);
    }

    public void c(String str, String str2) {
        d7.g.f("value", str2);
        r7.j jVar = (r7.j) this.f2168c;
        jVar.getClass();
        y1.g.e(str);
        y1.g.f(str2, str);
        jVar.d(str);
        jVar.b(str, str2);
    }

    public void d(String str, b0.d dVar) {
        d7.g.f(FirebaseAnalytics.Param.METHOD, str);
        if (str.length() <= 0) {
            throw new IllegalArgumentException("method.isEmpty() == true");
        }
        if (dVar == null) {
            if (str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT")) {
                throw new IllegalArgumentException(q2.x.g("method ", str, " must have a request body.").toString());
            }
        } else if (!d4.a.f(str)) {
            throw new IllegalArgumentException(q2.x.g("method ", str, " must not have a request body.").toString());
        }
        this.f2167b = str;
        this.f2169d = dVar;
    }

    public String e() {
        String str;
        synchronized (((ArrayDeque) this.f2169d)) {
            str = (String) ((ArrayDeque) this.f2169d).peek();
        }
        return str;
    }

    public boolean f(Object obj) {
        boolean zRemove;
        synchronized (((ArrayDeque) this.f2169d)) {
            zRemove = ((ArrayDeque) this.f2169d).remove(obj);
            if (zRemove) {
                ((ScheduledThreadPoolExecutor) this.f2170e).execute(new a2.g(6, this));
            }
        }
        return zRemove;
    }

    public void g(String str) {
        d7.g.f("url", str);
        if (k7.o.v(str, "ws:", true)) {
            String strSubstring = str.substring(3);
            d7.g.e("this as java.lang.String).substring(startIndex)", strSubstring);
            str = "http:".concat(strSubstring);
        } else if (k7.o.v(str, "wss:", true)) {
            String strSubstring2 = str.substring(4);
            d7.g.e("this as java.lang.String).substring(startIndex)", strSubstring2);
            str = "https:".concat(strSubstring2);
        }
        d7.g.f("<this>", str);
        r7.l lVar = new r7.l();
        lVar.c(null, str);
        this.f2166a = lVar.a();
    }

    @Override // q6.a
    public Object get() {
        return new k3.a((Executor) ((q6.a) this.f2166a).get(), (g3.d) ((q6.a) this.f2167b).get(), (c5.h) ((c5.h) this.f2168c).get(), (m3.d) ((q6.a) this.f2169d).get(), (n3.c) ((q6.a) this.f2170e).get());
    }
}
