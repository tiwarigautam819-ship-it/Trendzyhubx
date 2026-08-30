package z7;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Log;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.messaging.FirebaseMessagingService;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import r7.y;
import v4.p;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static long f6421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Method f6422b;

    public static void a(String str) {
        if (str.length() > 127) {
            str = str.substring(0, ModuleDescriptor.MODULE_VERSION);
        }
        Trace.beginSection(str);
    }

    public static boolean b() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            t4.g.c();
            t4.g gVarC = t4.g.c();
            gVarC.a();
            Context context = gVarC.f5320a;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("export_to_big_query")) {
                return sharedPreferences.getBoolean("export_to_big_query", false);
            }
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                    return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return false;
        } catch (IllegalStateException unused2) {
            Log.i("FirebaseMessaging", "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query");
            return false;
        }
    }

    public static void c(ArrayList arrayList) {
        HashMap map = new HashMap(arrayList.size());
        int size = arrayList.size();
        int i6 = 0;
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            v4.b bVar = (v4.b) obj;
            v4.f fVar = new v4.f(bVar);
            for (p pVar : bVar.f5589b) {
                boolean z5 = bVar.f5592e == 0;
                v4.g gVar = new v4.g(pVar, !z5);
                if (!map.containsKey(gVar)) {
                    map.put(gVar, new HashSet());
                }
                Set set = (Set) map.get(gVar);
                if (!set.isEmpty() && z5) {
                    throw new IllegalArgumentException("Multiple components provide " + pVar + ".");
                }
                set.add(fVar);
            }
        }
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            for (v4.f fVar2 : (Set) it.next()) {
                for (v4.h hVar : fVar2.f5602a.f5590c) {
                    if (hVar.f5609c == 0) {
                        Set<v4.f> set2 = (Set) map.get(new v4.g(hVar.f5607a, hVar.f5608b == 2));
                        if (set2 != null) {
                            for (v4.f fVar3 : set2) {
                                fVar2.f5603b.add(fVar3);
                                fVar3.f5604c.add(fVar2);
                            }
                        }
                    }
                }
            }
        }
        HashSet<v4.f> hashSet = new HashSet();
        Iterator it2 = map.values().iterator();
        while (it2.hasNext()) {
            hashSet.addAll((Set) it2.next());
        }
        HashSet hashSet2 = new HashSet();
        for (v4.f fVar4 : hashSet) {
            if (fVar4.f5604c.isEmpty()) {
                hashSet2.add(fVar4);
            }
        }
        while (!hashSet2.isEmpty()) {
            v4.f fVar5 = (v4.f) hashSet2.iterator().next();
            hashSet2.remove(fVar5);
            i6++;
            for (v4.f fVar6 : fVar5.f5603b) {
                fVar6.f5604c.remove(fVar5);
                if (fVar6.f5604c.isEmpty()) {
                    hashSet2.add(fVar6);
                }
            }
        }
        if (i6 == arrayList.size()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        for (v4.f fVar7 : hashSet) {
            if (!fVar7.f5604c.isEmpty() && !fVar7.f5603b.isEmpty()) {
                arrayList2.add(fVar7.f5602a);
            }
        }
        throw new v4.i("Dependency cycle detected: " + Arrays.toString(arrayList2.toArray()));
    }

    public static boolean d(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static y e(String str) {
        d7.g.f("javaName", str);
        int iHashCode = str.hashCode();
        if (iHashCode != 79201641) {
            if (iHashCode != 79923350) {
                switch (iHashCode) {
                    case -503070503:
                        if (str.equals("TLSv1.1")) {
                            return y.TLS_1_1;
                        }
                        break;
                    case -503070502:
                        if (str.equals("TLSv1.2")) {
                            return y.TLS_1_2;
                        }
                        break;
                    case -503070501:
                        if (str.equals("TLSv1.3")) {
                            return y.TLS_1_3;
                        }
                        break;
                }
            } else if (str.equals("TLSv1")) {
                return y.TLS_1_0;
            }
        } else if (str.equals("SSLv3")) {
            return y.SSL_3_0;
        }
        throw new IllegalArgumentException("Unexpected TLS version: ".concat(str));
    }

    public static boolean f() {
        if (Build.VERSION.SDK_INT >= 29) {
            return g1.a.a();
        }
        try {
            if (f6422b == null) {
                f6421a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f6422b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f6422b.invoke(null, Long.valueOf(f6421a))).booleanValue();
        } catch (Exception e9) {
            if (!(e9 instanceof InvocationTargetException)) {
                Log.v("Trace", "Unable to call isTagEnabled via reflection", e9);
                return false;
            }
            Throwable cause = e9.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x015d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0193 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x008c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0179 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:156:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00dd A[PHI: r9
      0x00dd: PHI (r9v23 java.lang.String) = (r9v22 java.lang.String), (r9v44 java.lang.String) binds: [B:46:0x00c5, B:50:0x00d7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x016c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void g(android.content.Intent r23) {
        /*
            Method dump skipped, instruction units count: 558
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: z7.d.g(android.content.Intent):void");
    }

    public static void h(Bundle bundle, String str) {
        try {
            t4.g.c();
            if (bundle == null) {
                bundle = new Bundle();
            }
            Bundle bundle2 = new Bundle();
            String string = bundle.getString("google.c.a.c_id");
            if (string != null) {
                bundle2.putString("_nmid", string);
            }
            String string2 = bundle.getString("google.c.a.c_l");
            if (string2 != null) {
                bundle2.putString("_nmn", string2);
            }
            String string3 = bundle.getString("google.c.a.m_l");
            if (!TextUtils.isEmpty(string3)) {
                bundle2.putString("label", string3);
            }
            String string4 = bundle.getString("google.c.a.m_c");
            if (!TextUtils.isEmpty(string4)) {
                bundle2.putString("message_channel", string4);
            }
            String string5 = bundle.getString(MTPushConstants.PlatformNode.KEY_FROM);
            if (string5 == null || !string5.startsWith("/topics/")) {
                string5 = null;
            }
            if (string5 != null) {
                bundle2.putString("_nt", string5);
            }
            String string6 = bundle.getString("google.c.a.ts");
            if (string6 != null) {
                try {
                    bundle2.putInt("_nmt", Integer.parseInt(string6));
                } catch (NumberFormatException e9) {
                    Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e9);
                }
            }
            String string7 = bundle.containsKey("google.c.a.udt") ? bundle.getString("google.c.a.udt") : null;
            if (string7 != null) {
                try {
                    bundle2.putInt("_ndt", Integer.parseInt(string7));
                } catch (NumberFormatException e10) {
                    Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e10);
                }
            }
            String str2 = k1.h.D(bundle) ? "display" : MTCoreConstants.Protocol.KEY_DATA;
            if ("_nr".equals(str) || "_nf".equals(str)) {
                bundle2.putString("_nmc", str2);
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Logging to scion event=" + str + " scionPayload=" + bundle2);
            }
            AnalyticsConnector analyticsConnector = (AnalyticsConnector) t4.g.c().b(AnalyticsConnector.class);
            if (analyticsConnector != null) {
                analyticsConnector.logEvent(AppMeasurement.FCM_ORIGIN, str, bundle2);
            } else {
                Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
            }
        } catch (IllegalStateException unused) {
            Log.e("FirebaseMessaging", "Default FirebaseApp has not been initialized. Skip logging event to GA.");
        }
    }

    public static boolean i(Intent intent) {
        Bundle extras;
        if (intent == null || FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(intent.getAction()) || (extras = intent.getExtras()) == null) {
            return false;
        }
        return "1".equals(extras.getString("google.c.a.e"));
    }

    public static void j(Parcel parcel, int i6, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int iP = p(i6, parcel);
        parcel.writeBundle(bundle);
        q(iP, parcel);
    }

    public static void k(Parcel parcel, int i6, IBinder iBinder) {
        if (iBinder == null) {
            return;
        }
        int iP = p(i6, parcel);
        parcel.writeStrongBinder(iBinder);
        q(iP, parcel);
    }

    public static void l(Parcel parcel, int i6, Parcelable parcelable, int i9) {
        if (parcelable == null) {
            return;
        }
        int iP = p(i6, parcel);
        parcelable.writeToParcel(parcel, i9);
        q(iP, parcel);
    }

    public static void m(Parcel parcel, int i6, String str) {
        if (str == null) {
            return;
        }
        int iP = p(i6, parcel);
        parcel.writeString(str);
        q(iP, parcel);
    }

    public static void n(Parcel parcel, int i6, Parcelable[] parcelableArr, int i9) {
        if (parcelableArr == null) {
            return;
        }
        int iP = p(i6, parcel);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int iDataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int iDataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, i9);
                int iDataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(iDataPosition);
                parcel.writeInt(iDataPosition3 - iDataPosition2);
                parcel.setDataPosition(iDataPosition3);
            }
        }
        q(iP, parcel);
    }

    public static void o(Parcel parcel, int i6, List list) {
        if (list == null) {
            return;
        }
        int iP = p(i6, parcel);
        int size = list.size();
        parcel.writeInt(size);
        for (int i9 = 0; i9 < size; i9++) {
            Parcelable parcelable = (Parcelable) list.get(i9);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int iDataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int iDataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, 0);
                int iDataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(iDataPosition);
                parcel.writeInt(iDataPosition3 - iDataPosition2);
                parcel.setDataPosition(iDataPosition3);
            }
        }
        q(iP, parcel);
    }

    public static int p(int i6, Parcel parcel) {
        parcel.writeInt(i6 | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void q(int i6, Parcel parcel) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i6 - 4);
        parcel.writeInt(iDataPosition - i6);
        parcel.setDataPosition(iDataPosition);
    }

    public static void r(Parcel parcel, int i6, int i9) {
        parcel.writeInt(i6 | (i9 << 16));
    }
}
