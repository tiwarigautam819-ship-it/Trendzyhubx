package d1;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u.l f2246a = new u.l();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f2247b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static e5.e f2248c = null;

    public static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? i.a(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static e5.e b() {
        e5.e eVar = new e5.e(11);
        f2248c = eVar;
        f2246a.j(eVar);
        return f2248c;
    }

    public static void c(Context context, boolean z5) {
        j jVarA;
        int i6;
        if (z5 || f2248c == null) {
            synchronized (f2247b) {
                if (!z5) {
                    try {
                        if (f2248c != null) {
                            return;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                int i9 = Build.VERSION.SDK_INT;
                if (i9 >= 28 && i9 != 30) {
                    File file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                    long length = file.length();
                    int i10 = 0;
                    boolean z8 = file.exists() && length > 0;
                    File file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                    long length2 = file2.length();
                    boolean z9 = file2.exists() && length2 > 0;
                    try {
                        long jA = a(context);
                        File file3 = new File(context.getFilesDir(), "profileInstalled");
                        if (file3.exists()) {
                            try {
                                jVarA = j.a(file3);
                            } catch (IOException unused) {
                                b();
                                return;
                            }
                        } else {
                            jVarA = null;
                        }
                        if (jVarA != null && jVarA.f2244c == jA && (i6 = jVarA.f2243b) != 2) {
                            i10 = i6;
                        } else if (z8) {
                            i10 = 1;
                        } else if (z9) {
                            i10 = 2;
                        }
                        if (z5 && z9 && i10 != 1) {
                            i10 = 2;
                        }
                        if (jVarA != null && jVarA.f2243b == 2 && i10 == 1 && length < jVarA.f2245d) {
                            i10 = 3;
                        }
                        j jVar = new j(1, i10, jA, length2);
                        if (jVarA == null || !jVarA.equals(jVar)) {
                            try {
                                jVar.b(file3);
                            } catch (IOException unused2) {
                            }
                        }
                        b();
                        return;
                    } catch (PackageManager.NameNotFoundException unused3) {
                        b();
                        return;
                    }
                }
                b();
            }
        }
    }
}
