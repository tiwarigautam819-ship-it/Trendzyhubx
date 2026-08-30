package a2;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import k7.o;
import l7.n;
import l7.u;
import org.json.JSONArray;
import org.json.JSONObject;
import p4.q;
import q2.z;
import u3.m;
import x1.e0;
import x1.r;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f27a;

    public static u.k a(u uVar) {
        u.i iVar = new u.i();
        iVar.f5438c = new u.l();
        u.k kVar = new u.k(iVar);
        iVar.f5437b = kVar;
        iVar.f5436a = a1.a.class;
        try {
            uVar.r(false, true, new a1.b(iVar, 0, uVar));
            iVar.f5436a = "Deferred.asListenableFuture";
            return kVar;
        } catch (Exception e9) {
            kVar.f5441b.k(e9);
            return kVar;
        }
    }

    public static final s2.d b(String str, String str2) {
        s2.d dVar = new s2.d();
        dVar.f5215b = s2.b.f5208c;
        Context contextA = r.a();
        String str3 = null;
        try {
            PackageInfo packageInfo = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0);
            if (packageInfo != null) {
                str3 = packageInfo.versionName;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        dVar.f5217d = str3;
        dVar.f5218e = str;
        dVar.f5219f = str2;
        Long lValueOf = Long.valueOf(System.currentTimeMillis() / ((long) 1000));
        dVar.f5220g = lValueOf;
        StringBuffer stringBuffer = new StringBuffer("anr_log_");
        stringBuffer.append(String.valueOf(lValueOf));
        stringBuffer.append(".json");
        String string = stringBuffer.toString();
        d7.g.e("StringBuffer()\n         …)\n            .toString()", string);
        dVar.f5214a = string;
        return dVar;
    }

    public static final s2.d c(Throwable th, s2.b bVar) {
        PackageInfo packageInfo;
        s2.d dVar = new s2.d();
        dVar.f5215b = bVar;
        Context contextA = r.a();
        Throwable th2 = null;
        try {
            packageInfo = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        String str = packageInfo == null ? null : packageInfo.versionName;
        dVar.f5217d = str;
        dVar.f5218e = th.getCause() == null ? th.toString() : String.valueOf(th.getCause());
        JSONArray jSONArray = new JSONArray();
        while (th != null && th != th2) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            d7.g.e("t.stackTrace", stackTrace);
            for (StackTraceElement stackTraceElement : stackTrace) {
                jSONArray.put(stackTraceElement.toString());
            }
            th2 = th;
            th = th.getCause();
        }
        dVar.f5219f = jSONArray.toString();
        Long lValueOf = Long.valueOf(System.currentTimeMillis() / ((long) 1000));
        dVar.f5220g = lValueOf;
        StringBuffer stringBuffer = new StringBuffer();
        int iOrdinal = bVar.ordinal();
        stringBuffer.append(iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? iOrdinal != 4 ? iOrdinal != 5 ? "Unknown" : "thread_check_log_" : "shield_log_" : "crash_log_" : "anr_log_" : "analysis_log_");
        stringBuffer.append(String.valueOf(lValueOf));
        stringBuffer.append(".json");
        String string = stringBuffer.toString();
        d7.g.e("StringBuffer().append(t.…ppend(\".json\").toString()", string);
        dVar.f5214a = string;
        return dVar;
    }

    public static void d(int i6) {
        if (new h7.c(2, 36, 1).a(i6)) {
            return;
        }
        throw new IllegalArgumentException("radix " + i6 + " was not in valid range " + new h7.c(2, 36, 1));
    }

    public static final boolean e(char c8, char c9, boolean z5) {
        if (c8 == c9) {
            return true;
        }
        if (!z5) {
            return false;
        }
        char upperCase = Character.toUpperCase(c8);
        char upperCase2 = Character.toUpperCase(c9);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static SharedPreferences f(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return context.getSharedPreferences("com.google.firebase.messaging", 0);
    }

    public static u6.f g(u6.f fVar) {
        d7.g.f("<this>", fVar);
        w6.e eVar = fVar instanceof w6.e ? (w6.e) fVar : null;
        if (eVar == null || (fVar = eVar.f5764c) != null) {
            return fVar;
        }
        u6.k kVar = eVar.f5763b;
        d7.g.c(kVar);
        u6.h hVar = (u6.h) kVar.g(u6.g.f5504a);
        u6.f gVar = hVar != null ? new p7.g((n) hVar, eVar) : eVar;
        eVar.f5764c = gVar;
        return gVar;
    }

    public static String h(String str, Object... objArr) {
        int iIndexOf;
        String string;
        int i6 = 0;
        for (int i9 = 0; i9 < objArr.length; i9++) {
            Object obj = objArr[i9];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e9) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + name.length() + 1);
                    sb.append(name);
                    sb.append('@');
                    sb.append(hexString);
                    String string2 = sb.toString();
                    Logger logger = Logger.getLogger("com.google.common.base.Strings");
                    Level level = Level.WARNING;
                    String strValueOf = String.valueOf(string2);
                    logger.log(level, strValueOf.length() != 0 ? "Exception during lenientFormat for ".concat(strValueOf) : new String("Exception during lenientFormat for "), (Throwable) e9);
                    String name2 = e9.getClass().getName();
                    StringBuilder sb2 = new StringBuilder(name2.length() + String.valueOf(string2).length() + 9);
                    sb2.append("<");
                    sb2.append(string2);
                    sb2.append(" threw ");
                    sb2.append(name2);
                    sb2.append(">");
                    string = sb2.toString();
                }
            }
            objArr[i9] = string;
        }
        StringBuilder sb3 = new StringBuilder((objArr.length * 16) + str.length());
        int i10 = 0;
        while (i6 < objArr.length && (iIndexOf = str.indexOf("%s", i10)) != -1) {
            sb3.append((CharSequence) str, i10, iIndexOf);
            sb3.append(objArr[i6]);
            i10 = iIndexOf + 2;
            i6++;
        }
        sb3.append((CharSequence) str, i10, str.length());
        if (i6 < objArr.length) {
            sb3.append(" [");
            sb3.append(objArr[i6]);
            for (int i11 = i6 + 1; i11 < objArr.length; i11++) {
                sb3.append(", ");
                sb3.append(objArr[i11]);
            }
            sb3.append(']');
        }
        return sb3.toString();
    }

    public static final s2.d i(File file) {
        d7.g.f("file", file);
        s2.d dVar = new s2.d();
        String name = file.getName();
        d7.g.e("file.name", name);
        dVar.f5214a = name;
        dVar.f5215b = o.v(name, "crash_log_", false) ? s2.b.f5209d : o.v(name, "shield_log_", false) ? s2.b.f5210e : o.v(name, "thread_check_log_", false) ? s2.b.f5211f : o.v(name, "analysis_log_", false) ? s2.b.f5207b : o.v(name, "anr_log_", false) ? s2.b.f5208c : s2.b.f5206a;
        JSONObject jSONObjectH = android.support.v4.media.session.a.h(name);
        if (jSONObjectH != null) {
            dVar.f5220g = Long.valueOf(jSONObjectH.optLong("timestamp", 0L));
            dVar.f5217d = jSONObjectH.optString("app_version", null);
            dVar.f5218e = jSONObjectH.optString("reason", null);
            dVar.f5219f = jSONObjectH.optString("callstack", null);
            dVar.f5216c = jSONObjectH.optJSONArray("feature_names");
        }
        return dVar;
    }

    public static void j(final Context context, com.google.android.gms.common.internal.g gVar, final boolean z5) {
        q qVarK;
        int i6;
        if (Build.VERSION.SDK_INT >= 29) {
            SharedPreferences sharedPreferencesF = f(context);
            if (sharedPreferencesF.contains("proxy_retention") && sharedPreferencesF.getBoolean("proxy_retention", false) == z5) {
                return;
            }
            u3.b bVar = (u3.b) gVar.f1411d;
            if (bVar.f5450c.d() >= 241100000) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("proxy_retention", z5);
                u3.n nVarA = u3.n.a(bVar.f5449b);
                synchronized (nVarA) {
                    i6 = nVarA.f5487d;
                    nVarA.f5487d = i6 + 1;
                }
                qVarK = nVarA.b(new m(i6, 4, bundle, 0));
            } else {
                qVarK = j7.g.k(new IOException("SERVICE_NOT_AVAILABLE"));
            }
            qVarK.c(new c1.c(), new p4.f() { // from class: com.google.firebase.messaging.v
                @Override // p4.f
                public final void onSuccess(Object obj) {
                    SharedPreferences.Editor editorEdit = a2.c.f(context).edit();
                    editorEdit.putBoolean("proxy_retention", z5);
                    editorEdit.apply();
                }
            });
        }
    }

    public static void k(HashMap map) {
        SharedPreferences sharedPreferences = r.a().getSharedPreferences("com.facebook.sdk.CloudBridgeSavedCredentials", 0);
        if (sharedPreferences == null) {
            return;
        }
        Object obj = map.get("dataset_id");
        Object obj2 = map.get("endpoint");
        Object obj3 = map.get("access_key");
        if (obj == null || obj2 == null || obj3 == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("dataset_id", obj.toString());
        editorEdit.putString("endpoint", obj2.toString());
        editorEdit.putString("access_key", obj3.toString());
        editorEdit.apply();
        o3.a aVar = z.f4846c;
        o3.a.j(e0.f5840d, "a2.c".toString(), " \n\nSaving Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n ", obj, obj2, obj3);
    }

    public static h7.a l(h7.c cVar, int i6) {
        d7.g.f("<this>", cVar);
        boolean z5 = i6 > 0;
        Integer numValueOf = Integer.valueOf(i6);
        if (!z5) {
            throw new IllegalArgumentException("Step must be positive, was: " + numValueOf + '.');
        }
        int i9 = cVar.f3017a;
        int i10 = cVar.f3018b;
        if (cVar.f3019c <= 0) {
            i6 = -i6;
        }
        return new h7.a(i9, i10, i6);
    }

    public static h7.c m(int i6, int i9) {
        if (i9 > Integer.MIN_VALUE) {
            return new h7.c(i6, i9 - 1, 1);
        }
        h7.c cVar = h7.c.f3024d;
        return h7.c.f3024d;
    }
}
