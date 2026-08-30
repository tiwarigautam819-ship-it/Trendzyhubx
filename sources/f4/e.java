package f4;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import com.google.android.gms.common.internal.d0;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Boolean f2596d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f2597e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f2598f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f2599g = -1;
    public static Boolean h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static k f2603l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static l f2604m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2605a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ThreadLocal f2600i = new ThreadLocal();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final h f2601j = new h(0);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final e5.e f2602k = new e5.e(19);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e5.e f2594b = new e5.e(20);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e5.e f2595c = new e5.e(21);

    public e(Context context) {
        this.f2605a = context;
    }

    public static int a(Context context, String str) {
        try {
            Class<?> clsLoadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (d0.k(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id '" + str + "'");
            return 0;
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for " + str + " not found.");
            return 0;
        } catch (Exception e9) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e9.getMessage())));
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0091 A[Catch: all -> 0x0085, TRY_LEAVE, TryCatch #3 {all -> 0x0085, blocks: (B:7:0x004b, B:11:0x007f, B:18:0x008b, B:21:0x0091, B:24:0x00a5, B:102:0x020d, B:103:0x0214, B:106:0x0217, B:107:0x0218, B:108:0x021f, B:125:0x027f, B:126:0x0290, B:109:0x0220, B:111:0x023e, B:113:0x024b, B:123:0x0277, B:124:0x027e, B:127:0x0291, B:128:0x02bd), top: B:146:0x004b, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static f4.e c(android.content.Context r22, e5.e r23, java.lang.String r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 741
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f4.e.c(android.content.Context, e5.e, java.lang.String):f4.e");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0182 A[Catch: all -> 0x00ec, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x00ec, blocks: (B:3:0x0002, B:63:0x00e1, B:65:0x00e7, B:73:0x010d, B:103:0x0182, B:111:0x0197, B:129:0x0219, B:130:0x021c, B:124:0x0210, B:71:0x00f2, B:132:0x021e, B:4:0x0003, B:7:0x000a, B:8:0x0026, B:61:0x00de, B:21:0x004a, B:44:0x00a1, B:47:0x00a4, B:54:0x00bc, B:62:0x00e0, B:60:0x00c2), top: B:145:0x0002, inners: #1, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b0 A[Catch: all -> 0x0037, TryCatch #12 {, blocks: (B:9:0x0027, B:11:0x0033, B:51:0x00b9, B:16:0x003c, B:18:0x0043, B:20:0x0049, B:25:0x0050, B:27:0x0054, B:30:0x005d, B:32:0x0065, B:35:0x006c, B:42:0x0098, B:43:0x00a0, B:38:0x0073, B:40:0x0079, B:41:0x008a, B:46:0x00a3, B:49:0x00a6, B:50:0x00b0, B:17:0x003f), top: B:149:0x0027, inners: #9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int d(android.content.Context r11, java.lang.String r12, boolean r13) {
        /*
            Method dump skipped, instruction units count: 557
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f4.e.d(android.content.Context, java.lang.String, boolean):int");
    }

    public static int e(Context context, String str, boolean z5, boolean z8) throws Throwable {
        Throwable th;
        Exception exc;
        boolean z9;
        Cursor cursorQuery;
        boolean z10;
        try {
            try {
                z9 = true;
                cursorQuery = context.getContentResolver().query(new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority("com.google.android.gms.chimera").path(true != z5 ? "api" : "api_force_staging").appendPath(str).appendQueryParameter("requestStartTime", String.valueOf(((Long) f2601j.get()).longValue())).build(), null, null, null, null);
            } catch (Exception e9) {
                exc = e9;
            }
            if (cursorQuery != null) {
                try {
                } catch (Exception e10) {
                    exc = e10;
                } catch (Throwable th2) {
                    cursor = cursorQuery;
                    th = th2;
                    if (cursor == null) {
                        throw th;
                    }
                    cursor.close();
                    throw th;
                }
                if (cursorQuery.moveToFirst()) {
                    boolean z11 = false;
                    int i6 = cursorQuery.getInt(0);
                    if (i6 > 0) {
                        synchronized (e.class) {
                            try {
                                f2597e = cursorQuery.getString(2);
                                int columnIndex = cursorQuery.getColumnIndex("loaderVersion");
                                if (columnIndex >= 0) {
                                    f2599g = cursorQuery.getInt(columnIndex);
                                }
                                int columnIndex2 = cursorQuery.getColumnIndex("disableStandaloneDynamiteLoader2");
                                if (columnIndex2 >= 0) {
                                    z10 = cursorQuery.getInt(columnIndex2) != 0;
                                    f2598f = z10;
                                } else {
                                    z10 = false;
                                }
                            } catch (Throwable th3) {
                                throw th3;
                            }
                        }
                        i iVar = (i) f2600i.get();
                        if (iVar == null || iVar.f2609a != null) {
                            z9 = false;
                        } else {
                            iVar.f2609a = cursorQuery;
                        }
                        cursor = z9 ? null : cursorQuery;
                        z11 = z10;
                    } else {
                        cursor = cursorQuery;
                    }
                    if (z8 && z11) {
                        throw new b("forcing fallback to container DynamiteLoader impl");
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return i6;
                    if (exc instanceof b) {
                        throw exc;
                    }
                    throw new b("V2 version check failed: " + exc.getMessage(), exc);
                }
            }
            Log.w("DynamiteModule", "Failed to retrieve remote module version.");
            throw new b("Failed to connect to dynamite module ContentResolver.");
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static void f(ClassLoader classLoader) throws b {
        try {
            l lVar = null;
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(null).newInstance(null);
            if (iBinder != null) {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                lVar = iInterfaceQueryLocalInterface instanceof l ? (l) iInterfaceQueryLocalInterface : new l(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2", 1);
            }
            f2604m = lVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e9) {
            throw new b("Failed to instantiate dynamite loader", e9);
        }
    }

    public static boolean g(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(h)) {
            return true;
        }
        boolean z5 = false;
        if (h == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            if (v3.e.f5544b.b(context, 10000000) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                z5 = true;
            }
            h = Boolean.valueOf(z5);
            if (z5 && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                f2598f = true;
            }
        }
        if (!z5) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z5;
    }

    public static k h(Context context) {
        k kVar;
        synchronized (e.class) {
            k kVar2 = f2603l;
            if (kVar2 != null) {
                return kVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    kVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    kVar = iInterfaceQueryLocalInterface instanceof k ? (k) iInterfaceQueryLocalInterface : new k(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader", 1);
                }
                if (kVar != null) {
                    f2603l = kVar;
                    return kVar;
                }
            } catch (Exception e9) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e9.getMessage());
            }
            return null;
        }
    }

    public final IBinder b(String str) throws b {
        try {
            return (IBinder) this.f2605a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e9) {
            throw new b("Failed to instantiate module class: ".concat(str), e9);
        }
    }
}
