package a2;

import android.app.Activity;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.fragment.app.h0;
import b.i0;
import bridges.TomBridge;
import com.engagelab.privates.core.api.WakeMessage;
import com.getcapacitor.cordova.MockCordovaWebViewImpl;
import com.getcapacitor.n;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.gms.internal.measurement.y4;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.b0;
import com.google.firebase.messaging.z;
import com.lottery.app.App;
import g.q;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import v4.m;
import x1.c0;
import x1.r;
import x1.v;
import x1.w;
import y1.s;
import y2.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f41b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f42c;

    public /* synthetic */ i(Object obj, int i6, Object obj2) {
        this.f40a = i6;
        this.f41b = obj;
        this.f42c = obj2;
    }

    private final void a() {
        m mVar = (m) this.f41b;
        g5.a aVar = (g5.a) this.f42c;
        synchronized (mVar) {
            try {
                if (mVar.f5617b == null) {
                    mVar.f5616a.add(aVar);
                } else {
                    mVar.f5617b.add(aVar.get());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void b() {
        y1.b bVar = (y1.b) this.f41b;
        y1.e eVar = (y1.e) this.f42c;
        if (v2.a.b(y1.i.class)) {
            return;
        }
        try {
            d7.g.f("$accessTokenAppId", bVar);
            p pVar = y1.i.f6124a;
            synchronized (pVar) {
                s sVarD = pVar.d(bVar);
                if (sVarD != null) {
                    sVarD.a(eVar);
                }
            }
            String str = y1.k.f6128c;
            if (w.n() != 2 && y1.i.f6124a.c() > 100) {
                y1.i.d(5);
            } else if (y1.i.f6126c == null) {
                y1.i.f6126c = y1.i.f6125b.schedule(y1.i.f6127d, 15L, TimeUnit.SECONDS);
            }
        } catch (Throwable th) {
            v2.a.a(th, y1.i.class);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        String string;
        View viewFindViewById;
        n nVar;
        ArrayList arrayList;
        String str;
        Long l4;
        String str2;
        String str3;
        x1.f fVar;
        String str4;
        boolean z5 = false;
        switch (this.f40a) {
            case 0:
                Integer num = (Integer) this.f41b;
                List list = (List) this.f42c;
                if (s6.g.p(j.f43a, num) || !s6.g.p(j.f44b, num)) {
                    return;
                }
                if (j.f47e >= 5) {
                    j.b().clear();
                    j.f47e = 0;
                    return;
                } else {
                    j.b().addAll(0, list);
                    j.f47e++;
                    return;
                }
            case 1:
                h0 h0Var = (h0) this.f41b;
                h0Var.getLifecycle().a(new b.g((i0) this.f42c, 0, h0Var));
                return;
            case 2:
                ((e6.b) this.f41b).c((Typeface) this.f42c);
                return;
            case 3:
                String str5 = (String) this.f41b;
                Bundle bundle = (Bundle) this.f42c;
                if (v2.a.b(b2.c.class)) {
                    return;
                }
                try {
                    new y1.k(r.a(), (String) null).d(str5, bundle);
                    return;
                } catch (Throwable th) {
                    v2.a.a(th, b2.c.class);
                    return;
                }
            case 4:
                b2.n nVar2 = (b2.n) this.f41b;
                b2.m mVar = (b2.m) this.f42c;
                if (v2.a.b(b2.n.class)) {
                    return;
                }
                try {
                    try {
                        Timer timer = nVar2.f942c;
                        if (timer != null) {
                            timer.cancel();
                        }
                        nVar2.f943d = null;
                        Timer timer2 = new Timer();
                        timer2.scheduleAtFixedRate(mVar, 0L, 1000L);
                        nVar2.f942c = timer2;
                        return;
                    } catch (Exception e9) {
                        Log.e(b2.n.f939e, "Error scheduling indexing job", e9);
                        return;
                    }
                } catch (Throwable th2) {
                    v2.a.a(th2, b2.n.class);
                    return;
                }
            case 5:
                String str6 = (String) this.f41b;
                b2.n nVar3 = (b2.n) this.f42c;
                if (v2.a.b(b2.n.class)) {
                    return;
                }
                try {
                    byte[] bytes = str6.getBytes(k7.a.f3570a);
                    d7.g.e("this as java.lang.String).getBytes(charset)", bytes);
                    try {
                        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                        d7.g.e("hash", messageDigest);
                        messageDigest.update(bytes);
                        byte[] bArrDigest = messageDigest.digest();
                        StringBuilder sb = new StringBuilder();
                        d7.g.e("digest", bArrDigest);
                        for (byte b3 : bArrDigest) {
                            sb.append(Integer.toHexString((b3 >> 4) & 15));
                            sb.append(Integer.toHexString(b3 & 15));
                        }
                        string = sb.toString();
                        d7.g.e("builder.toString()", string);
                    } catch (NoSuchAlgorithmException unused) {
                        string = null;
                    }
                    Date date = x1.a.f5789l;
                    x1.a aVarF = h8.b.f();
                    if (string == null || !string.equals(nVar3.f943d)) {
                        String str7 = b2.n.f939e;
                        nVar3.b(l2.e.b(str6, aVarF, r.b()), string);
                        return;
                    }
                    return;
                } catch (Throwable th3) {
                    v2.a.a(th3, b2.n.class);
                    return;
                }
            case 6:
                ((MockCordovaWebViewImpl.CapacitorEvalBridgeMode) this.f41b).lambda$onNativeToJsMessageAvailable$0((org.apache.cordova.i0) this.f42c);
                return;
            case 7:
                ((com.google.firebase.messaging.k) this.f41b).a((Intent) this.f42c);
                return;
            case WakeMessage.ACTIVITY /* 8 */:
                FirebaseMessaging firebaseMessaging = (FirebaseMessaging) this.f41b;
                p4.j jVar = (p4.j) this.f42c;
                b0 b0Var = FirebaseMessaging.f2029k;
                try {
                    jVar.a(firebaseMessaging.a());
                    return;
                } catch (Exception e10) {
                    jVar.f4641a.l(e10);
                    return;
                }
            case 9:
                com.google.firebase.messaging.r rVar = (com.google.firebase.messaging.r) this.f41b;
                p4.j jVar2 = (p4.j) this.f42c;
                try {
                    jVar2.a(rVar.a());
                    return;
                } catch (Exception e11) {
                    jVar2.f4641a.l(e11);
                    return;
                }
            case 10:
                q qVar = (q) this.f41b;
                Runnable runnable = (Runnable) this.f42c;
                qVar.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                    qVar.a();
                }
            case 11:
                ((TomBridge) this.f41b).lambda$callJsFunction$4((String) this.f42c);
                return;
            case 12:
                JobInfoSchedulerService jobInfoSchedulerService = (JobInfoSchedulerService) this.f41b;
                JobParameters jobParameters = (JobParameters) this.f42c;
                int i6 = JobInfoSchedulerService.f1364a;
                jobInfoSchedulerService.jobFinished(jobParameters, false);
                return;
            case 13:
                App app = (App) this.f41b;
                Activity activity = (Activity) this.f42c;
                int i9 = App.f2173d;
                app.getClass();
                if (activity == null || activity.isFinishing() || activity.isFinishing() || (viewFindViewById = ((ViewGroup) activity.getWindow().getDecorView()).findViewById(2131362047)) == null) {
                    return;
                }
                viewFindViewById.setVisibility(0);
                return;
            case 14:
                y4 y4Var = (y4) this.f41b;
                File file = (File) this.f42c;
                AtomicBoolean atomicBoolean = (AtomicBoolean) y4Var.f1991c;
                try {
                    y4.x(file);
                    return;
                } finally {
                    atomicBoolean.set(false);
                }
            case 15:
                String str8 = (String) this.f41b;
                JSONObject jSONObject = (JSONObject) this.f42c;
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("client_id", n6.e.f4374f);
                    JSONArray jSONArray = new JSONArray();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("name", str8);
                    if (jSONObject == null) {
                        jSONObject = new JSONObject();
                    }
                    jSONObject3.put("params", jSONObject);
                    jSONArray.put(jSONObject3);
                    jSONObject2.put("events", jSONArray);
                    new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date());
                    String str9 = "https://www.google-analytics.com/mp/collect?measurement_id=" + n6.e.f4372d + "&api_secret=" + n6.e.f4373e;
                    b0.d dVarC = b0.d.c(jSONObject2.toString(), n6.e.f4369a);
                    z zVar = new z();
                    zVar.g(str9);
                    zVar.d("POST", dVarC);
                    com.google.android.gms.common.internal.g gVarA = zVar.a();
                    r7.r rVar2 = n6.e.f4370b;
                    rVar2.getClass();
                    new v7.i(rVar2, gVarA).e(new n6.d(str8, 0));
                    Log.d("GA4Reporter", "logEvent payload=" + jSONObject2);
                    return;
                } catch (Exception e12) {
                    Log.e("GA4Reporter", "logEvent build payload error", e12);
                    return;
                }
            case 16:
                String str10 = (String) this.f41b;
                String str11 = (String) this.f42c;
                d7.g.f("$buttonText", str11);
                HashSet hashSet = o2.f.f4417e;
                o2.a.j(str10, str11, new float[0]);
                return;
            case 17:
                v4.n nVar4 = (v4.n) this.f41b;
                g5.a aVar = (g5.a) this.f42c;
                if (nVar4.f5621b != v4.n.f5619d) {
                    throw new IllegalStateException("provide() can be called only once.");
                }
                synchronized (nVar4) {
                    nVar = nVar4.f5620a;
                    nVar4.f5620a = null;
                    nVar4.f5621b = aVar;
                    break;
                }
                nVar.getClass();
                return;
            case 18:
                a();
                return;
            case 19:
                w4.a aVar2 = (w4.a) this.f41b;
                Runnable runnable2 = (Runnable) this.f42c;
                Process.setThreadPriority(aVar2.f5727c);
                StrictMode.ThreadPolicy threadPolicy = aVar2.f5728d;
                if (threadPolicy != null) {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
                runnable2.run();
                return;
            case 20:
                Callable callable = (Callable) this.f41b;
                w4.h hVar = (w4.h) ((o5.c) this.f42c).f4446b;
                try {
                    hVar.j(callable.call());
                    return;
                } catch (Exception e13) {
                    hVar.k(e13);
                    return;
                }
            case 21:
                ArrayList arrayList2 = (ArrayList) this.f41b;
                x1.b0 b0Var2 = (x1.b0) this.f42c;
                d7.g.f("$requests", b0Var2);
                int size = arrayList2.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList2.get(i10);
                    i10++;
                    Pair pair = (Pair) obj;
                    v vVar = (v) pair.first;
                    Object obj2 = pair.second;
                    d7.g.e("pair.second", obj2);
                    vVar.a((c0) obj2);
                }
                ArrayList arrayList3 = b0Var2.f5809d;
                int size2 = arrayList3.size();
                int i11 = 0;
                while (i11 < size2) {
                    Object obj3 = arrayList3.get(i11);
                    i11++;
                    x1.d dVar = (x1.d) obj3;
                    com.google.firebase.messaging.s sVar = dVar.f5820a;
                    x1.a aVar3 = dVar.f5821b;
                    AtomicBoolean atomicBoolean2 = dVar.f5822c;
                    Collection collection = dVar.f5823d;
                    Collection collection2 = dVar.f5824e;
                    Collection collection3 = dVar.f5825f;
                    AtomicBoolean atomicBoolean3 = dVar.f5826g.f5835d;
                    String str12 = sVar.f2147a;
                    int i12 = sVar.f2148b;
                    Long l8 = (Long) sVar.f2151e;
                    String str13 = sVar.f2150d;
                    try {
                        o3.a aVar4 = x1.e.f5830f;
                        try {
                            if (aVar4.d().f5834c != null) {
                                x1.a aVar5 = aVar4.d().f5834c;
                                arrayList = arrayList3;
                                if ((aVar5 != null ? aVar5.f5799i : null) == aVar3.f5799i) {
                                    if (atomicBoolean2.get() || str12 != null || i12 != 0) {
                                        Date date2 = aVar3.f5792a;
                                        if (sVar.f2148b != 0) {
                                            str = str13;
                                            l4 = l8;
                                            date2 = new Date(((long) sVar.f2148b) * 1000);
                                        } else {
                                            str = str13;
                                            l4 = l8;
                                            if (sVar.f2149c != 0) {
                                                date2 = new Date((((long) sVar.f2149c) * 1000) + new Date().getTime());
                                            }
                                        }
                                        Date date3 = date2;
                                        if (str12 == null) {
                                            str12 = aVar3.f5796e;
                                        }
                                        String str14 = str12;
                                        String str15 = aVar3.h;
                                        String str16 = aVar3.f5799i;
                                        if (!atomicBoolean2.get()) {
                                            collection = aVar3.f5793b;
                                        }
                                        Collection collection4 = collection;
                                        if (!atomicBoolean2.get()) {
                                            collection2 = aVar3.f5794c;
                                        }
                                        Collection collection5 = collection2;
                                        if (!atomicBoolean2.get()) {
                                            collection3 = aVar3.f5795d;
                                        }
                                        Collection collection6 = collection3;
                                        x1.f fVar2 = aVar3.f5797f;
                                        Date date4 = new Date();
                                        Date date5 = l4 != null ? new Date(l4.longValue() * 1000) : aVar3.f5800j;
                                        if (str == null) {
                                            str2 = aVar3.f5801k;
                                            str4 = str15;
                                            str3 = str16;
                                            fVar = fVar2;
                                        } else {
                                            str2 = str;
                                            str3 = str16;
                                            fVar = fVar2;
                                            str4 = str15;
                                        }
                                        aVar4.d().c(new x1.a(str14, str4, str3, collection4, collection5, collection6, fVar, date3, date4, date5, str2), true);
                                        z5 = false;
                                    }
                                    atomicBoolean3.set(z5);
                                    arrayList3 = arrayList;
                                }
                                z5 = false;
                                atomicBoolean3.set(z5);
                                arrayList3 = arrayList;
                            } else {
                                arrayList = arrayList3;
                            }
                            z5 = false;
                            atomicBoolean3.set(z5);
                            arrayList3 = arrayList;
                        } catch (Throwable th4) {
                            th = th4;
                            z5 = false;
                            atomicBoolean3.set(z5);
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                }
                return;
            case 22:
                b();
                return;
            case 23:
                y1.b bVar = (y1.b) this.f41b;
                s sVar2 = (s) this.f42c;
                if (v2.a.b(y1.i.class)) {
                    return;
                }
                try {
                    y1.j.j(bVar, sVar2);
                    return;
                } catch (Throwable th6) {
                    v2.a.a(th6, y1.i.class);
                    return;
                }
            case 24:
                Context context = (Context) this.f41b;
                y1.k kVar = (y1.k) this.f42c;
                Bundle bundle2 = new Bundle();
                String[] strArr = {"com.facebook.core.Core", "com.facebook.login.Login", "com.facebook.share.Share", "com.facebook.places.Places", "com.facebook.messenger.Messenger", "com.facebook.applinks.AppLinks", "com.facebook.marketing.Marketing", "com.facebook.gamingservices.GamingServices", "com.facebook.all.All", "com.android.billingclient.api.BillingClient", "com.android.vending.billing.IInAppBillingService"};
                String[] strArr2 = {"core_lib_included", "login_lib_included", "share_lib_included", "places_lib_included", "messenger_lib_included", "applinks_lib_included", "marketing_lib_included", "gamingservices_lib_included", "all_lib_included", "billing_client_lib_included", "billing_service_lib_included"};
                int i13 = 0;
                for (int i14 = 0; i14 < 11; i14++) {
                    String str17 = strArr[i14];
                    String str18 = strArr2[i14];
                    try {
                        Class.forName(str17);
                        bundle2.putInt(str18, 1);
                        i13 |= 1 << i14;
                    } catch (ClassNotFoundException unused2) {
                    }
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
                if (sharedPreferences.getInt("kitsBitmask", 0) != i13) {
                    sharedPreferences.edit().putInt("kitsBitmask", i13).apply();
                    kVar.g(bundle2, "fb_sdk_initialize");
                    return;
                }
                return;
            default:
                View view = (View) this.f41b;
                z1.d dVar2 = (z1.d) this.f42c;
                if (v2.a.b(z1.d.class)) {
                    return;
                }
                try {
                    if (view instanceof EditText) {
                        dVar2.b(view);
                        return;
                    }
                    return;
                } catch (Throwable th7) {
                    v2.a.a(th7, z1.d.class);
                    return;
                }
        }
    }
}
