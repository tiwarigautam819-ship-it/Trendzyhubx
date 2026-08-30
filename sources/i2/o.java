package i2;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f3157a = new o();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f3158b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f3159c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f3160d = x1.r.a().getPackageName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SharedPreferences f3161e = x1.r.a().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final SharedPreferences f3162f = x1.r.a().getSharedPreferences("com.facebook.internal.PURCHASE", 0);

    public static final ArrayList f(Context context, Object obj) {
        if (v2.a.b(o.class)) {
            return null;
        }
        try {
            o oVar = f3157a;
            return oVar.a(oVar.e(context, obj, "inapp"));
        } catch (Throwable th) {
            v2.a.a(th, o.class);
            return null;
        }
    }

    public final ArrayList a(ArrayList arrayList) {
        ArrayList arrayList2;
        SharedPreferences sharedPreferences = f3162f;
        ArrayList arrayList3 = null;
        if (v2.a.b(this)) {
            return null;
        }
        try {
            ArrayList arrayList4 = new ArrayList();
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                String str = (String) obj;
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String string = jSONObject.getString("productId");
                    long j3 = jSONObject.getLong("purchaseTime");
                    arrayList2 = arrayList3;
                    try {
                        try {
                            String string2 = jSONObject.getString("purchaseToken");
                            if (jCurrentTimeMillis - (j3 / 1000) <= 86400 && !d7.g.a(sharedPreferences.getString(string, ""), string2)) {
                                editorEdit.putString(string, string2);
                                arrayList4.add(str);
                            }
                        } catch (Throwable th) {
                            th = th;
                            v2.a.a(th, this);
                            return arrayList2;
                        }
                    } catch (JSONException unused) {
                    }
                } catch (JSONException unused2) {
                    arrayList2 = arrayList3;
                }
                arrayList3 = arrayList2;
            }
            arrayList2 = arrayList3;
            editorEdit.apply();
            return arrayList4;
        } catch (Throwable th2) {
            th = th2;
            arrayList2 = arrayList3;
        }
    }

    public final Class b(Context context, String str) {
        Class<?> clsLoadClass;
        HashMap map = f3159c;
        if (v2.a.b(this)) {
            return null;
        }
        try {
            Class cls = (Class) map.get(str);
            if (cls != null) {
                return cls;
            }
            if (v2.a.b(t.class)) {
                clsLoadClass = null;
            } else {
                try {
                    clsLoadClass = context.getClassLoader().loadClass(str);
                } catch (ClassNotFoundException unused) {
                    clsLoadClass = null;
                } catch (Throwable th) {
                    v2.a.a(th, t.class);
                    clsLoadClass = null;
                }
            }
            if (clsLoadClass != null) {
                map.put(str, clsLoadClass);
            }
            return clsLoadClass;
        } catch (Throwable th2) {
            v2.a.a(th2, this);
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.reflect.Method c(java.lang.Class r13, java.lang.String r14) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.o.c(java.lang.Class, java.lang.String):java.lang.reflect.Method");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.ArrayList d(android.content.Context r23, java.lang.Object r24) {
        /*
            r22 = this;
            r1 = r22
            java.lang.String r0 = "inapp"
            boolean r2 = v2.a.b(r1)
            r7 = 0
            if (r2 == 0) goto Lc
            return r7
        Lc:
            java.util.ArrayList r8 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L99
            r8.<init>()     // Catch: java.lang.Throwable -> L99
            r2 = r23
            r5 = r24
            boolean r3 = r1.i(r2, r5, r0)     // Catch: java.lang.Throwable -> L99
            if (r3 == 0) goto Lbb
            r9 = 0
            r3 = r7
            r10 = r9
            r11 = r10
        L1f:
            r4 = 6
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L99
            android.os.Bundle r6 = new android.os.Bundle     // Catch: java.lang.Throwable -> L99
            r6.<init>()     // Catch: java.lang.Throwable -> L99
            r12 = 5
            java.lang.Object[] r12 = new java.lang.Object[r12]     // Catch: java.lang.Throwable -> L99
            r12[r9] = r4     // Catch: java.lang.Throwable -> L99
            java.lang.String r4 = i2.o.f3160d     // Catch: java.lang.Throwable -> L99
            r13 = 1
            r12[r13] = r4     // Catch: java.lang.Throwable -> L99
            r4 = 2
            r12[r4] = r0     // Catch: java.lang.Throwable -> L99
            r4 = 3
            r12[r4] = r3     // Catch: java.lang.Throwable -> L99
            r3 = 4
            r12[r3] = r6     // Catch: java.lang.Throwable -> L99
            java.lang.String r3 = "com.android.vending.billing.IInAppBillingService"
            java.lang.String r4 = "getPurchaseHistory"
            r6 = r12
            java.lang.Object r3 = r1.h(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L99
            if (r3 == 0) goto L60
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L99
            r14 = 1000(0x3e8, double:4.94E-321)
            long r4 = r4 / r14
            android.os.Bundle r3 = (android.os.Bundle) r3     // Catch: java.lang.Throwable -> L99
            java.lang.String r2 = "RESPONSE_CODE"
            int r2 = r3.getInt(r2)     // Catch: java.lang.Throwable -> L99
            if (r2 != 0) goto L60
            java.lang.String r2 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r2 = r3.getStringArrayList(r2)     // Catch: java.lang.Throwable -> L99
            if (r2 != 0) goto L63
        L60:
            r17 = r7
            goto La7
        L63:
            int r6 = r2.size()     // Catch: java.lang.Throwable -> L99
            r12 = r9
        L68:
            if (r12 >= r6) goto L9d
            java.lang.Object r16 = r2.get(r12)     // Catch: java.lang.Throwable -> L99
            int r12 = r12 + 1
            r17 = r7
            r7 = r16
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> L97
            org.json.JSONObject r9 = new org.json.JSONObject     // Catch: org.json.JSONException -> L92 java.lang.Throwable -> L97
            r9.<init>(r7)     // Catch: org.json.JSONException -> L92 java.lang.Throwable -> L97
            java.lang.String r13 = "purchaseTime"
            long r18 = r9.getLong(r13)     // Catch: org.json.JSONException -> L92 java.lang.Throwable -> L97
            long r18 = r18 / r14
            long r18 = r4 - r18
            r20 = 1200(0x4b0, double:5.93E-321)
            int r9 = (r18 > r20 ? 1 : (r18 == r20 ? 0 : -1))
            if (r9 <= 0) goto L8d
            r11 = 1
            goto L9f
        L8d:
            r8.add(r7)     // Catch: org.json.JSONException -> L92 java.lang.Throwable -> L97
            int r10 = r10 + 1
        L92:
            r7 = r17
            r9 = 0
            r13 = 1
            goto L68
        L97:
            r0 = move-exception
            goto Lbc
        L99:
            r0 = move-exception
            r17 = r7
            goto Lbc
        L9d:
            r17 = r7
        L9f:
            java.lang.String r2 = "INAPP_CONTINUATION_TOKEN"
            java.lang.String r2 = r3.getString(r2)     // Catch: java.lang.Throwable -> L97
            r3 = r2
            goto La9
        La7:
            r3 = r17
        La9:
            r2 = 30
            if (r10 >= r2) goto Lbb
            if (r3 == 0) goto Lbb
            if (r11 == 0) goto Lb2
            goto Lbb
        Lb2:
            r2 = r23
            r5 = r24
            r7 = r17
            r9 = 0
            goto L1f
        Lbb:
            return r8
        Lbc:
            v2.a.a(r0, r1)
            return r17
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.o.d(android.content.Context, java.lang.Object):java.util.ArrayList");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.ArrayList e(android.content.Context r15, java.lang.Object r16, java.lang.String r17) {
        /*
            r14 = this;
            boolean r0 = v2.a.b(r14)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L5c
            r0.<init>()     // Catch: java.lang.Throwable -> L5c
            if (r16 != 0) goto L10
            goto L66
        L10:
            boolean r2 = r14.i(r15, r16, r17)     // Catch: java.lang.Throwable -> L5c
            if (r2 == 0) goto L66
            r2 = 0
            r3 = r1
            r4 = r2
        L19:
            r5 = 3
            java.lang.Integer r6 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L5c
            r7 = 4
            java.lang.Object[] r13 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> L5c
            r13[r2] = r6     // Catch: java.lang.Throwable -> L5c
            java.lang.String r6 = i2.o.f3160d     // Catch: java.lang.Throwable -> L5c
            r7 = 1
            r13[r7] = r6     // Catch: java.lang.Throwable -> L5c
            r6 = 2
            r13[r6] = r17     // Catch: java.lang.Throwable -> L5c
            r13[r5] = r3     // Catch: java.lang.Throwable -> L5c
            java.lang.String r10 = "com.android.vending.billing.IInAppBillingService"
            java.lang.String r11 = "getPurchases"
            r8 = r14
            r9 = r15
            r12 = r16
            java.lang.Object r3 = r8.h(r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> L5c
            if (r3 == 0) goto L5f
            android.os.Bundle r3 = (android.os.Bundle) r3     // Catch: java.lang.Throwable -> L5c
            java.lang.String r5 = "RESPONSE_CODE"
            int r5 = r3.getInt(r5)     // Catch: java.lang.Throwable -> L5c
            if (r5 != 0) goto L5f
            java.lang.String r5 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r5 = r3.getStringArrayList(r5)     // Catch: java.lang.Throwable -> L5c
            if (r5 == 0) goto L66
            int r6 = r5.size()     // Catch: java.lang.Throwable -> L5c
            int r4 = r4 + r6
            r0.addAll(r5)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r5 = "INAPP_CONTINUATION_TOKEN"
            java.lang.String r3 = r3.getString(r5)     // Catch: java.lang.Throwable -> L5c
            goto L60
        L5c:
            r0 = move-exception
            r15 = r0
            goto L67
        L5f:
            r3 = r1
        L60:
            r5 = 30
            if (r4 >= r5) goto L66
            if (r3 != 0) goto L19
        L66:
            return r0
        L67:
            v2.a.a(r15, r14)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: i2.o.e(android.content.Context, java.lang.Object, java.lang.String):java.util.ArrayList");
    }

    public final LinkedHashMap g(Context context, ArrayList arrayList, Object obj, boolean z5) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (obj != null && !arrayList.isEmpty()) {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
                Object objH = h(context, "com.android.vending.billing.IInAppBillingService", "getSkuDetails", obj, new Object[]{3, f3160d, z5 ? "subs" : "inapp", bundle});
                if (objH != null) {
                    Bundle bundle2 = (Bundle) objH;
                    if (bundle2.getInt("RESPONSE_CODE") == 0) {
                        ArrayList<String> stringArrayList = bundle2.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList != null && arrayList.size() == stringArrayList.size()) {
                            int size = arrayList.size();
                            for (int i6 = 0; i6 < size; i6++) {
                                Object obj2 = arrayList.get(i6);
                                d7.g.e("skuList[i]", obj2);
                                String str = stringArrayList.get(i6);
                                d7.g.e("skuDetailsList[i]", str);
                                linkedHashMap.put(obj2, str);
                            }
                        }
                        k(linkedHashMap);
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public final Object h(Context context, String str, String str2, Object obj, Object[] objArr) {
        Method methodC;
        if (!v2.a.b(this)) {
            try {
                Class clsB = b(context, str);
                if (clsB != null && (methodC = c(clsB, str2)) != null) {
                    return t.j(clsB, methodC, obj, Arrays.copyOf(objArr, objArr.length));
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }

    public final boolean i(Context context, Object obj, String str) {
        if (!v2.a.b(this) && obj != null) {
            try {
                try {
                    Object objH = h(context, "com.android.vending.billing.IInAppBillingService", "isBillingSupported", obj, new Object[]{3, f3160d, str});
                    if (objH != null) {
                        if (((Integer) objH).intValue() == 0) {
                            return true;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    v2.a.a(th, this);
                    return false;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return false;
    }

    public final LinkedHashMap j(ArrayList arrayList) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size) {
                Object obj = arrayList.get(i6);
                i6++;
                String str = (String) obj;
                String string = f3161e.getString(str, null);
                if (string != null) {
                    List listJ = k7.g.J(string, new String[]{";"}, 2, 2);
                    if (jCurrentTimeMillis - Long.parseLong((String) listJ.get(0)) < 43200) {
                        d7.g.e("sku", str);
                        linkedHashMap.put(str, listJ.get(1));
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public final void k(LinkedHashMap linkedHashMap) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences.Editor editorEdit = f3161e.edit();
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                editorEdit.putString((String) entry.getKey(), jCurrentTimeMillis + ';' + ((String) entry.getValue()));
            }
            editorEdit.apply();
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }
}
