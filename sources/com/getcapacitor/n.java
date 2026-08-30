package com.getcapacitor;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.google.android.gms.common.internal.d0;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import com.google.firebase.messaging.y;
import com.lottery.app.MainActivity;
import j0.b1;
import j0.r;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g0;
import x1.a0;
import x1.b0;
import x1.j0;
import x1.w;
import x1.z;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n implements r, p4.a, d5.b, v4.d, q2.n, n6.a, m3.f, m6.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1350a;

    public /* synthetic */ n(int i6) {
        this.f1350a = i6;
    }

    private final void c(boolean z5) {
        if (z5) {
            AtomicBoolean atomicBoolean = t2.c.f5306a;
            synchronized (t2.c.class) {
                if (v2.a.b(t2.c.class)) {
                    return;
                }
                try {
                    if (t2.c.f5306a.getAndSet(true)) {
                        return;
                    }
                    x1.r rVar = x1.r.f5918a;
                    if (j0.c()) {
                        t2.c.a();
                    }
                    int i6 = t2.a.f5300a;
                    if (!v2.a.b(t2.a.class)) {
                        try {
                            t2.a.f5301b.scheduleWithFixedDelay(t2.a.f5303d, 0L, 500L, TimeUnit.MILLISECONDS);
                        } catch (Throwable th) {
                            v2.a.a(th, t2.a.class);
                        }
                    }
                } catch (Throwable th2) {
                    v2.a.a(th2, t2.c.class);
                }
            }
        }
    }

    @Override // m6.f
    public void a(String str) {
        if (str == null || str.trim().isEmpty()) {
            str = m6.g.f4301b;
        }
        m6.g.f4301b = str;
        try {
            m6.g.f4303d.countDown();
        } catch (Throwable unused) {
        }
    }

    @Override // m3.f
    public Object apply(Object obj) {
        Cursor cursorRawQuery = ((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]);
        try {
            ArrayList arrayList = new ArrayList();
            while (cursorRawQuery.moveToNext()) {
                c5.h hVarA = f3.i.a();
                hVarA.v(cursorRawQuery.getString(1));
                hVarA.f1062d = p3.a.b(cursorRawQuery.getInt(2));
                String string = cursorRawQuery.getString(3);
                hVarA.f1061c = string == null ? null : Base64.decode(string, 0);
                arrayList.add(hVarA.g());
            }
            return arrayList;
        } finally {
            cursorRawQuery.close();
        }
    }

    @Override // p4.a
    public Object b(p4.i iVar) throws IOException {
        int i6;
        Object obj;
        switch (this.f1350a) {
            case 1:
                i6 = 403;
                break;
            case 2:
                i6 = -1;
                break;
            default:
                p4.q qVar = (p4.q) iVar;
                synchronized (qVar.f4657a) {
                    d0.j("Task is not yet complete", qVar.f4659c);
                    if (qVar.f4660d) {
                        throw new CancellationException("Task is already canceled.");
                    }
                    if (IOException.class.isInstance(qVar.f4662f)) {
                        throw ((Throwable) IOException.class.cast(qVar.f4662f));
                    }
                    Exception exc = qVar.f4662f;
                    if (exc != null) {
                        throw new p4.g(exc);
                    }
                    obj = qVar.f4661e;
                }
                Bundle bundle = (Bundle) obj;
                if (bundle == null) {
                    throw new IOException("SERVICE_NOT_AVAILABLE");
                }
                String string = bundle.getString(MTCoreConstants.Register.KEY_REGISTRATION_ID);
                if (string != null || (string = bundle.getString("unregistered")) != null) {
                    return string;
                }
                String string2 = bundle.getString("error");
                if ("RST".equals(string2)) {
                    throw new IOException("INSTANCE_ID_RESET");
                }
                if (string2 != null) {
                    throw new IOException(string2);
                }
                Log.w("FirebaseMessaging", "Unexpected response: " + bundle, new Throwable());
                throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        return Integer.valueOf(i6);
    }

    @Override // v4.d
    public Object create(v4.c cVar) {
        switch (this.f1350a) {
            case 7:
                return FirebaseInstallationsRegistrar.lambda$getComponents$0((y) cVar);
            case 14:
                Set setD = ((y) cVar).D(o5.a.class);
                o5.c cVar2 = o5.c.f4444c;
                if (cVar2 == null) {
                    synchronized (o5.c.class) {
                        try {
                            cVar2 = o5.c.f4444c;
                            if (cVar2 == null) {
                                cVar2 = new o5.c(0);
                                o5.c.f4444c = cVar2;
                            }
                        } finally {
                        }
                        break;
                    }
                }
                return new o5.b(setD, cVar2);
            case 24:
                return (ScheduledExecutorService) ExecutorsRegistrar.f2022a.get();
            case 25:
                return (ScheduledExecutorService) ExecutorsRegistrar.f2024c.get();
            case 26:
                return (ScheduledExecutorService) ExecutorsRegistrar.f2023b.get();
            default:
                v4.l lVar = ExecutorsRegistrar.f2022a;
                return w4.j.f5753a;
        }
    }

    @Override // q2.n
    public void d(boolean z5) {
        File[] fileArrListFiles;
        File[] fileArrListFiles2;
        int i6 = 0;
        int i9 = 1;
        switch (this.f1350a) {
            case 10:
                if (z5) {
                    b2.f fVar = b2.f.f912a;
                    if (v2.a.b(b2.f.class)) {
                        return;
                    }
                    try {
                        b2.f.f917f.set(true);
                        return;
                    } catch (Throwable th) {
                        v2.a.a(th, b2.f.class);
                        return;
                    }
                }
                b2.f fVar2 = b2.f.f912a;
                if (v2.a.b(b2.f.class)) {
                    return;
                }
                try {
                    b2.f.f917f.set(false);
                    return;
                } catch (Throwable th2) {
                    v2.a.a(th2, b2.f.class);
                    return;
                }
            case 15:
                if (z5) {
                    synchronized (u2.a.f5442b) {
                        try {
                            x1.r rVar = x1.r.f5918a;
                            if (j0.c()) {
                                o3.a.q();
                            }
                            if (u2.a.f5443c != null) {
                                Log.w("u2.a", "Already enabled!");
                            } else {
                                u2.a aVar = new u2.a(Thread.getDefaultUncaughtExceptionHandler());
                                u2.a.f5443c = aVar;
                                Thread.setDefaultUncaughtExceptionHandler(aVar);
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                    if (q2.q.b(q2.o.CrashShield)) {
                        z7.l.f6437a = true;
                        if (j0.c() && !g0.z()) {
                            File fileD = android.support.v4.media.session.a.d();
                            if (fileD == null) {
                                fileArrListFiles = new File[0];
                            } else {
                                fileArrListFiles = fileD.listFiles(new m1.g(4));
                                if (fileArrListFiles == null) {
                                    fileArrListFiles = new File[0];
                                }
                            }
                            ArrayList arrayList = new ArrayList();
                            for (File file : fileArrListFiles) {
                                s2.d dVarI = a2.c.i(file);
                                if (dVarI.a()) {
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        jSONObject.put("crash_shield", dVarI.toString());
                                        String str = z.f5942j;
                                        arrayList.add(w.v(null, String.format("%s/instruments", Arrays.copyOf(new Object[]{x1.r.b()}, 1)), jSONObject, new s2.a(i6, dVarI)));
                                    } catch (JSONException unused) {
                                    }
                                }
                            }
                            if (!arrayList.isEmpty()) {
                                b0 b0Var = new b0(arrayList);
                                String str2 = z.f5942j;
                                q2.g.i(b0Var);
                                new a0(b0Var).executeOnExecutor(x1.r.c(), new Void[0]);
                            }
                        }
                        v2.a.f5532b = true;
                    }
                    q2.q.b(q2.o.ThreadCheck);
                    return;
                }
                return;
            case 16:
                if (z5) {
                    x1.r rVar2 = x1.r.f5918a;
                    if (!j0.c() || g0.z()) {
                        return;
                    }
                    File fileD2 = android.support.v4.media.session.a.d();
                    if (fileD2 == null) {
                        fileArrListFiles2 = new File[0];
                    } else {
                        fileArrListFiles2 = fileD2.listFiles(new m1.g(5));
                        d7.g.e("reportDir.listFiles { di…OR_REPORT_PREFIX)))\n    }", fileArrListFiles2);
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (File file2 : fileArrListFiles2) {
                        d7.g.f("file", file2);
                        w2.a aVar2 = new w2.a();
                        String name = file2.getName();
                        d7.g.e("file.name", name);
                        aVar2.f5718a = name;
                        JSONObject jSONObjectH = android.support.v4.media.session.a.h(name);
                        if (jSONObjectH != null) {
                            aVar2.f5720c = Long.valueOf(jSONObjectH.optLong("timestamp", 0L));
                            aVar2.f5719b = jSONObjectH.optString("error_message", null);
                        }
                        if (aVar2.f5719b != null && aVar2.f5720c != null) {
                            arrayList2.add(aVar2);
                        }
                    }
                    g0.a aVar3 = new g0.a(3);
                    if (arrayList2.size() > 1) {
                        Collections.sort(arrayList2, aVar3);
                    }
                    JSONArray jSONArray = new JSONArray();
                    while (i6 < arrayList2.size() && i6 < 1000) {
                        jSONArray.put(arrayList2.get(i6));
                        i6++;
                    }
                    android.support.v4.media.session.a.j("error_reports", jSONArray, new s2.a(i9, arrayList2));
                    return;
                }
                return;
            case 17:
                c(z5);
                return;
            default:
                if (z5 && j0.c()) {
                    q2.q.a(new n(15), q2.o.CrashReport);
                    q2.q.a(new n(16), q2.o.ErrorReport);
                    q2.q.a(new n(17), q2.o.AnrReport);
                    return;
                }
                return;
        }
    }

    @Override // j0.r
    public b1 e(View view, b1 b1Var) {
        return CapacitorWebView.lambda$edgeToEdgeHandler$0(view, b1Var);
    }

    @Override // n6.a
    public void onToken(String str) {
        int i6 = MainActivity.f2183g;
        Log.d("AppInit", "Firebase initialized from local config, token=" + str);
    }

    public /* synthetic */ n(com.google.android.gms.common.internal.g gVar) {
        this.f1350a = 4;
    }
}
