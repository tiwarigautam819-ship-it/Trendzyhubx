package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.RemoteException;
import android.util.Log;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o6 implements q4.d, r6 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a6 f1791b = new a6(7);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f1792a;

    @Override // com.google.android.gms.internal.measurement.r6
    public a7 a(Class cls) {
        for (r6 r6Var : (r6[]) this.f1792a) {
            if (r6Var.b(cls)) {
                return r6Var.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.measurement.r6
    public boolean b(Class cls) {
        for (r6 r6Var : (r6[]) this.f1792a) {
            if (r6Var.b(cls)) {
                return true;
            }
        }
        return false;
    }

    public Object c() {
        u4 u4Var = (u4) this.f1792a;
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = u4Var.f1925a.acquireUnstableContentProviderClient(u4Var.f1926b);
        try {
            if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                Log.w("ConfigurationContentLdr", "Unable to acquire ContentProviderClient, using default values");
                return Collections.EMPTY_MAP;
            }
            Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(u4Var.f1926b, u4.f1924i, null, null, null);
            try {
                if (cursorQuery == null) {
                    Log.w("ConfigurationContentLdr", "ContentProvider query returned null cursor, using default values");
                    Map map = Collections.EMPTY_MAP;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return map;
                }
                int count = cursorQuery.getCount();
                if (count == 0) {
                    Map map2 = Collections.EMPTY_MAP;
                    cursorQuery.close();
                    return map2;
                }
                Map eVar = count <= 256 ? new s.e(count) : new HashMap(count, 1.0f);
                while (cursorQuery.moveToNext()) {
                    eVar.put(cursorQuery.getString(0), cursorQuery.getString(1));
                }
                if (cursorQuery.isAfterLast()) {
                    cursorQuery.close();
                    return eVar;
                }
                Log.w("ConfigurationContentLdr", "Cursor read incomplete (ContentProvider dead?), using default values");
                Map map3 = Collections.EMPTY_MAP;
                cursorQuery.close();
                return map3;
            } finally {
            }
        } catch (RemoteException e9) {
            Log.w("ConfigurationContentLdr", "ContentProvider query failed, using default values", e9);
            return Collections.EMPTY_MAP;
        } finally {
            contentProviderClientAcquireUnstableContentProviderClient.release();
        }
    }

    public void d(int i6, Object obj, b7 b7Var) throws r5 {
        q5 q5Var = (q5) this.f1792a;
        q5Var.r(i6, 3);
        b7Var.h((i5) obj, q5Var.f1833b);
        q5Var.r(i6, 4);
    }

    public void e(int i6, Object obj, b7 b7Var) throws r5 {
        q5 q5Var = (q5) this.f1792a;
        i5 i5Var = (i5) obj;
        q5Var.r(i6, 2);
        q5Var.q(i5Var.a(b7Var));
        b7Var.h(i5Var, q5Var.f1833b);
    }

    @Override // q4.d
    public Object get() {
        q4.b bVar;
        q4.b bVarD;
        Context contextCreateDeviceProtectedStorageContext = (Context) this.f1792a;
        q4.b bVar2 = a5.f1517a;
        if (bVar2 != null) {
            return bVar2;
        }
        synchronized (a5.class) {
            try {
                bVar = a5.f1517a;
                if (bVar == null) {
                    String str = Build.TYPE;
                    String str2 = Build.TAGS;
                    s.e eVar = c5.f1544a;
                    if ((str.equals("eng") || str.equals("userdebug")) && (str2.contains("dev-keys") || str2.contains("test-keys"))) {
                        if (s4.a() && !contextCreateDeviceProtectedStorageContext.isDeviceProtectedStorage()) {
                            contextCreateDeviceProtectedStorageContext = contextCreateDeviceProtectedStorageContext.createDeviceProtectedStorageContext();
                        }
                        bVarD = a5.d(contextCreateDeviceProtectedStorageContext);
                    } else {
                        bVarD = q4.a.f4852a;
                    }
                    bVar = bVarD;
                    a5.f1517a = bVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }
}
