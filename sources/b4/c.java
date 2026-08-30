package b4;

import android.app.AppOpsManager;
import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.d0;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import v3.f;
import v3.g;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f946a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final char[] f947b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Boolean f948c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Boolean f949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Boolean f950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Boolean f951f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f952g;
    public static int h;

    public static String a() throws Throwable {
        BufferedReader bufferedReader;
        if (f952g == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                f952g = Application.getProcessName();
            } else {
                int iMyPid = h;
                if (iMyPid == 0) {
                    iMyPid = Process.myPid();
                    h = iMyPid;
                }
                String strTrim = null;
                strTrim = null;
                strTrim = null;
                BufferedReader bufferedReader2 = null;
                if (iMyPid > 0) {
                    try {
                        String str = "/proc/" + iMyPid + "/cmdline";
                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            bufferedReader = new BufferedReader(new FileReader(str));
                            try {
                                String line = bufferedReader.readLine();
                                d0.h(line);
                                strTrim = line.trim();
                            } catch (IOException unused) {
                                if (bufferedReader != null) {
                                }
                                f952g = strTrim;
                                return f952g;
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader2 = bufferedReader;
                                if (bufferedReader2 != null) {
                                    try {
                                        bufferedReader2.close();
                                    } catch (IOException unused2) {
                                    }
                                }
                                throw th;
                            }
                        } finally {
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        }
                    } catch (IOException unused3) {
                        bufferedReader = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException unused4) {
                    }
                }
                f952g = strTrim;
            }
        }
        return f952g;
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean c(Context context, int i6) {
        if (e(context, i6, "com.google.android.gms")) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.android.gms", 64);
                g gVarA = g.a(context);
                gVarA.getClass();
                if (packageInfo != null) {
                    if (!g.d(packageInfo, false)) {
                        if (g.d(packageInfo, true)) {
                            if (!f.a(gVarA.f5551a)) {
                                Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
                            }
                        }
                    }
                    return true;
                }
                return false;
            } catch (PackageManager.NameNotFoundException unused) {
                if (Log.isLoggable("UidVerifier", 3)) {
                    Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
                }
            }
        }
        return false;
    }

    public static boolean d(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f948c == null) {
            f948c = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        if (f948c.booleanValue() && Build.VERSION.SDK_INT < 24) {
            return true;
        }
        if (f949d == null) {
            f949d = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        if (f949d.booleanValue()) {
            return !b() || Build.VERSION.SDK_INT >= 30;
        }
        return false;
    }

    public static boolean e(Context context, int i6, String str) {
        d4.b bVarA = d4.c.a(context);
        bVarA.getClass();
        try {
            AppOpsManager appOpsManager = (AppOpsManager) bVarA.f2277a.getSystemService("appops");
            if (appOpsManager == null) {
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            }
            appOpsManager.checkPackage(i6, str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }
}
