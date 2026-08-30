package t4;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.y4;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.provider.FirebaseInitProvider;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import v4.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f5318j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final s.e f5319k = new s.e(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5320a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final j f5322c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final v4.e f5323d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final l f5326g;
    public final g5.a h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f5324e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f5325f = new AtomicBoolean();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CopyOnWriteArrayList f5327i = new CopyOnWriteArrayList();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    public g(Context context, String str, j jVar) {
        ?? arrayList;
        new CopyOnWriteArrayList();
        this.f5320a = context;
        d0.d(str);
        this.f5321b = str;
        this.f5322c = jVar;
        a aVar = FirebaseInitProvider.f2171a;
        Trace.beginSection("Firebase");
        Trace.beginSection("ComponentDiscovery");
        ArrayList arrayList2 = new ArrayList();
        Bundle bundle = null;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                Log.w("ComponentDiscovery", "Context has no PackageManager.");
            } else {
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) ComponentDiscoveryService.class), 128);
                if (serviceInfo == null) {
                    Log.w("ComponentDiscovery", ComponentDiscoveryService.class + " has no service info.");
                } else {
                    bundle = serviceInfo.metaData;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("ComponentDiscovery", "Application info not found.");
        }
        if (bundle == null) {
            Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
            arrayList = Collections.EMPTY_LIST;
        } else {
            arrayList = new ArrayList();
            for (String str2 : bundle.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(bundle.get(str2)) && str2.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str2.substring(31));
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (true) {
            ?? r42 = 1;
            if (!it.hasNext()) {
                break;
            } else {
                arrayList2.add(new h5.b(r42 == true ? 1 : 0, (String) it.next()));
            }
        }
        Trace.endSection();
        Trace.beginSection("Runtime");
        w4.j jVar2 = w4.j.f5753a;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        arrayList3.addAll(arrayList2);
        int i6 = 2;
        arrayList3.add(new h5.b(i6, new FirebaseCommonRegistrar()));
        arrayList3.add(new h5.b(i6, new ExecutorsRegistrar()));
        arrayList4.add(v4.b.c(context, Context.class, new Class[0]));
        arrayList4.add(v4.b.c(this, g.class, new Class[0]));
        arrayList4.add(v4.b.c(jVar, j.class, new Class[0]));
        o3.a aVar2 = new o3.a(6);
        if ((Build.VERSION.SDK_INT >= 24 ? f0.c.d(context) : true) && FirebaseInitProvider.f2172b.get()) {
            arrayList4.add(v4.b.c(aVar, a.class, new Class[0]));
        }
        v4.e eVar = new v4.e(arrayList3, arrayList4, aVar2);
        this.f5323d = eVar;
        Trace.endSection();
        this.f5326g = new l(new e5.b(this, context));
        this.h = eVar.f(e5.d.class);
        d dVar = new d(this);
        a();
        if (this.f5324e.get()) {
            x3.c.f5957e.f5958a.get();
        }
        this.f5327i.add(dVar);
        Trace.endSection();
    }

    public static g c() {
        g gVar;
        synchronized (f5318j) {
            try {
                gVar = (g) f5319k.get("[DEFAULT]");
                if (gVar == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + b4.c.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
                ((e5.d) gVar.h.get()).c();
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVar;
    }

    public static g f(Context context) {
        synchronized (f5318j) {
            try {
                if (f5319k.containsKey("[DEFAULT]")) {
                    return c();
                }
                j jVarA = j.a(context);
                if (jVarA == null) {
                    Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    return null;
                }
                return g(context, jVarA);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static g g(Context context, j jVar) {
        g gVar;
        AtomicReference atomicReference = e.f5315a;
        if (context.getApplicationContext() instanceof Application) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference atomicReference2 = e.f5315a;
            if (atomicReference2.get() == null) {
                e eVar = new e();
                while (true) {
                    if (atomicReference2.compareAndSet(null, eVar)) {
                        x3.c.b(application);
                        x3.c.f5957e.a(eVar);
                        break;
                    }
                    if (atomicReference2.get() != null) {
                        break;
                    }
                }
            }
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f5318j) {
            s.e eVar2 = f5319k;
            d0.j("FirebaseApp name [DEFAULT] already exists!", !eVar2.containsKey("[DEFAULT]"));
            d0.i("Application context cannot be null.", context);
            gVar = new g(context, "[DEFAULT]", jVar);
            eVar2.put("[DEFAULT]", gVar);
        }
        gVar.e();
        return gVar;
    }

    public final void a() {
        d0.j("FirebaseApp was deleted", !this.f5325f.get());
    }

    public final Object b(Class cls) {
        a();
        return this.f5323d.a(cls);
    }

    public final String d() {
        StringBuilder sb = new StringBuilder();
        a();
        byte[] bytes = this.f5321b.getBytes(Charset.defaultCharset());
        sb.append(bytes == null ? null : Base64.encodeToString(bytes, 11));
        sb.append("+");
        a();
        byte[] bytes2 = this.f5322c.f5334b.getBytes(Charset.defaultCharset());
        sb.append(bytes2 != null ? Base64.encodeToString(bytes2, 11) : null);
        return sb.toString();
    }

    public final void e() {
        HashMap map;
        if (!(Build.VERSION.SDK_INT >= 24 ? f0.c.d(this.f5320a) : true)) {
            StringBuilder sb = new StringBuilder("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
            a();
            sb.append(this.f5321b);
            Log.i("FirebaseApp", sb.toString());
            Context context = this.f5320a;
            AtomicReference atomicReference = f.f5316b;
            if (atomicReference.get() == null) {
                f fVar = new f(context);
                while (!atomicReference.compareAndSet(null, fVar)) {
                    if (atomicReference.get() != null) {
                        return;
                    }
                }
                context.registerReceiver(fVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                return;
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder("Device unlocked: initializing all Firebase APIs for app ");
        a();
        sb2.append(this.f5321b);
        Log.i("FirebaseApp", sb2.toString());
        v4.e eVar = this.f5323d;
        a();
        boolean zEquals = "[DEFAULT]".equals(this.f5321b);
        AtomicReference atomicReference2 = eVar.f5600f;
        Boolean boolValueOf = Boolean.valueOf(zEquals);
        while (true) {
            if (atomicReference2.compareAndSet(null, boolValueOf)) {
                synchronized (eVar) {
                    map = new HashMap(eVar.f5595a);
                }
                eVar.b(map, zEquals);
                break;
            } else if (atomicReference2.get() != null) {
                break;
            }
        }
        ((e5.d) this.h.get()).c();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        gVar.a();
        return this.f5321b.equals(gVar.f5321b);
    }

    public final boolean h() {
        boolean z5;
        a();
        l5.a aVar = (l5.a) this.f5326g.get();
        synchronized (aVar) {
            z5 = aVar.f3817a;
        }
        return z5;
    }

    public final int hashCode() {
        return this.f5321b.hashCode();
    }

    public final String toString() {
        y4 y4Var = new y4(this);
        y4Var.f("name", this.f5321b);
        y4Var.f("options", this.f5322c);
        return y4Var.toString();
    }
}
