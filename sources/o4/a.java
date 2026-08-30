package o4;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.a0;
import androidx.fragment.app.p;
import b4.d;
import b4.e;
import com.google.android.gms.common.internal.d0;
import d4.c;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final long f4424n = TimeUnit.DAYS.toMillis(366);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static volatile ScheduledExecutorService f4425o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Object f4426p = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PowerManager.WakeLock f4428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ScheduledFuture f4430d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f4431e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashSet f4432f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4433g;
    public k4.a h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b4.b f4434i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f4435j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashMap f4436k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AtomicInteger f4437l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ScheduledExecutorService f4438m;

    public a(Context context) {
        String packageName = context.getPackageName();
        this.f4427a = new Object();
        this.f4429c = 0;
        this.f4432f = new HashSet();
        this.f4433g = true;
        this.f4434i = b4.b.f945a;
        this.f4436k = new HashMap();
        this.f4437l = new AtomicInteger(0);
        d0.e("wake:com.google.firebase.iid.WakeLockHolder", "WakeLock: wakeLockName must not be empty");
        context.getApplicationContext();
        WorkSource workSource = null;
        this.h = null;
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.f4435j = "wake:com.google.firebase.iid.WakeLockHolder";
        } else {
            this.f4435j = "wake:com.google.firebase.iid.WakeLockHolder".length() != 0 ? "*gcore*:".concat("wake:com.google.firebase.iid.WakeLockHolder") : new String("*gcore*:");
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            StringBuilder sb = new StringBuilder(29);
            sb.append((CharSequence) "expected a non-null reference", 0, 29);
            throw new a0(sb.toString());
        }
        this.f4428b = powerManager.newWakeLock(1, "wake:com.google.firebase.iid.WakeLockHolder");
        if (e.a(context)) {
            int i6 = d.f953a;
            packageName = (packageName == null || packageName.trim().isEmpty()) ? context.getPackageName() : packageName;
            if (context.getPackageManager() != null && packageName != null) {
                try {
                    ApplicationInfo applicationInfoB = c.a(context).b(0, packageName);
                    if (applicationInfoB == null) {
                        Log.e("WorkSourceUtil", "Could not get applicationInfo from package: ".concat(packageName));
                    } else {
                        int i9 = applicationInfoB.uid;
                        workSource = new WorkSource();
                        Method method = e.f955b;
                        if (method != null) {
                            try {
                                method.invoke(workSource, Integer.valueOf(i9), packageName);
                            } catch (Exception e9) {
                                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e9);
                            }
                        } else {
                            Method method2 = e.f954a;
                            if (method2 != null) {
                                try {
                                    method2.invoke(workSource, Integer.valueOf(i9));
                                } catch (Exception e10) {
                                    Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
                                }
                            }
                        }
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.e("WorkSourceUtil", "Could not find package: ".concat(packageName));
                }
            }
            if (workSource != null) {
                try {
                    this.f4428b.setWorkSource(workSource);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e11) {
                    Log.wtf("WakeLock", e11.toString());
                }
            }
        }
        ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = f4425o;
        if (scheduledExecutorServiceUnconfigurableScheduledExecutorService == null) {
            synchronized (f4426p) {
                try {
                    scheduledExecutorServiceUnconfigurableScheduledExecutorService = f4425o;
                    if (scheduledExecutorServiceUnconfigurableScheduledExecutorService == null) {
                        scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
                        f4425o = scheduledExecutorServiceUnconfigurableScheduledExecutorService;
                    }
                } finally {
                }
            }
        }
        this.f4438m = scheduledExecutorServiceUnconfigurableScheduledExecutorService;
    }

    public final void a(long j3) {
        this.f4437l.incrementAndGet();
        long jMax = Math.max(Math.min(Long.MAX_VALUE, f4424n), 1L);
        if (j3 > 0) {
            jMax = Math.min(j3, jMax);
        }
        synchronized (this.f4427a) {
            try {
                if (!b()) {
                    this.h = k4.a.f3558a;
                    this.f4428b.acquire();
                    this.f4434i.getClass();
                    SystemClock.elapsedRealtime();
                }
                this.f4429c++;
                if (this.f4433g) {
                    TextUtils.isEmpty(null);
                }
                b bVar = (b) this.f4436k.get(null);
                if (bVar == null) {
                    bVar = new b();
                    this.f4436k.put(null, bVar);
                }
                bVar.f4439a++;
                this.f4434i.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j8 = Long.MAX_VALUE - jElapsedRealtime > jMax ? jElapsedRealtime + jMax : Long.MAX_VALUE;
                if (j8 > this.f4431e) {
                    this.f4431e = j8;
                    ScheduledFuture scheduledFuture = this.f4430d;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.f4430d = this.f4438m.schedule(new p(9, this), jMax, TimeUnit.MILLISECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b() {
        boolean z5;
        synchronized (this.f4427a) {
            z5 = this.f4429c > 0;
        }
        return z5;
    }

    public final void c() {
        if (this.f4437l.decrementAndGet() < 0) {
            Log.e("WakeLock", String.valueOf(this.f4435j).concat(" release without a matched acquire!"));
        }
        synchronized (this.f4427a) {
            try {
                if (this.f4433g) {
                    TextUtils.isEmpty(null);
                }
                if (this.f4436k.containsKey(null)) {
                    b bVar = (b) this.f4436k.get(null);
                    if (bVar != null) {
                        int i6 = bVar.f4439a - 1;
                        bVar.f4439a = i6;
                        if (i6 == 0) {
                            this.f4436k.remove(null);
                        }
                    }
                } else {
                    Log.w("WakeLock", String.valueOf(this.f4435j).concat(" counter does not exist"));
                }
                e();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        HashSet hashSet = this.f4432f;
        if (hashSet.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(hashSet);
        hashSet.clear();
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    public final void e() {
        synchronized (this.f4427a) {
            try {
                if (b()) {
                    if (this.f4433g) {
                        int i6 = this.f4429c - 1;
                        this.f4429c = i6;
                        if (i6 > 0) {
                            return;
                        }
                    } else {
                        this.f4429c = 0;
                    }
                    d();
                    Iterator it = this.f4436k.values().iterator();
                    while (it.hasNext()) {
                        ((b) it.next()).f4439a = 0;
                    }
                    this.f4436k.clear();
                    ScheduledFuture scheduledFuture = this.f4430d;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                        this.f4430d = null;
                        this.f4431e = 0L;
                    }
                    if (this.f4428b.isHeld()) {
                        try {
                            try {
                                this.f4428b.release();
                                if (this.h != null) {
                                    this.h = null;
                                }
                            } catch (RuntimeException e9) {
                                if (!e9.getClass().equals(RuntimeException.class)) {
                                    throw e9;
                                }
                                Log.e("WakeLock", String.valueOf(this.f4435j).concat(" failed to release!"), e9);
                                if (this.h != null) {
                                    this.h = null;
                                }
                            }
                        } catch (Throwable th) {
                            if (this.h != null) {
                                this.h = null;
                            }
                            throw th;
                        }
                    } else {
                        Log.e("WakeLock", String.valueOf(this.f4435j).concat(" should be held!"));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
