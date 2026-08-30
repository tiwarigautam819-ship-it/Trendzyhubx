package x1;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.android.installreferrer.api.InstallReferrerClient;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import m.x2;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class w implements q2.f0, y5.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5939a;

    public /* synthetic */ w(int i6) {
        this.f5939a = i6;
    }

    public static void A(HashMap map, x2 x2Var) {
        for (Map.Entry entry : map.entrySet()) {
            String str = z.f5942j;
            if (s(((u) entry.getValue()).f5938b)) {
                x2Var.l((String) entry.getKey(), ((u) entry.getValue()).f5938b, ((u) entry.getValue()).f5937a);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0105 A[Catch: all -> 0x0136, LOOP:3: B:40:0x00ff->B:42:0x0105, LOOP_END, TRY_LEAVE, TryCatch #1 {all -> 0x0136, blocks: (B:37:0x00f2, B:40:0x00ff, B:42:0x0105), top: B:65:0x00f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void B(java.net.HttpURLConnection r14, x1.b0 r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 350
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: x1.w.B(java.net.HttpURLConnection, x1.b0):void");
    }

    public static HttpURLConnection C(b0 b0Var) throws Throwable {
        d7.g.f("requests", b0Var);
        ArrayList arrayList = b0Var.f5808c;
        Iterator<E> it = b0Var.iterator();
        while (it.hasNext()) {
            z zVar = (z) it.next();
            if (d0.f5827a == zVar.h && q2.g0.B(zVar.f5948d.getString("fields"))) {
                o3.a aVar = q2.z.f4846c;
                StringBuilder sb = new StringBuilder("GET requests for /");
                String str = zVar.f5946b;
                if (str == null) {
                    str = "";
                }
                sb.append(str);
                sb.append(" should contain an explicit \"fields\" parameter.");
                o3.a.k(e0.f5841e, "Request", sb.toString());
            }
        }
        try {
            URL url = arrayList.size() == 1 ? new URL(((z) arrayList.get(0)).g()) : new URL(String.format("https://graph.%s", Arrays.copyOf(new Object[]{r.e()}, 1)));
            HttpURLConnection httpURLConnectionK = null;
            try {
                httpURLConnectionK = k(url);
                B(httpURLConnectionK, b0Var);
                return httpURLConnectionK;
            } catch (IOException e9) {
                q2.g0.k(httpURLConnectionK);
                throw new l("could not construct request body", e9);
            } catch (JSONException e10) {
                q2.g0.k(httpURLConnectionK);
                throw new l("could not construct request body", e10);
            }
        } catch (MalformedURLException e11) {
            throw new l("could not construct URL for request", e11);
        }
    }

    public static final c5.h b(JSONObject jSONObject) throws JSONException {
        String strOptString;
        JSONArray jSONArray = jSONObject.getJSONObject("permissions").getJSONArray(MTCoreConstants.Protocol.KEY_DATA);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int length = jSONArray.length();
        for (int i6 = 0; i6 < length; i6++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i6);
            String strOptString2 = jSONObjectOptJSONObject.optString("permission");
            d7.g.e("permission", strOptString2);
            if (strOptString2.length() != 0 && !strOptString2.equals("installed") && (strOptString = jSONObjectOptJSONObject.optString("status")) != null) {
                int iHashCode = strOptString.hashCode();
                if (iHashCode != -1309235419) {
                    if (iHashCode != 280295099) {
                        if (iHashCode == 568196142 && strOptString.equals("declined")) {
                            arrayList2.add(strOptString2);
                        }
                    } else if (strOptString.equals("granted")) {
                        arrayList.add(strOptString2);
                    }
                } else if (strOptString.equals("expired")) {
                    arrayList3.add(strOptString2);
                }
            }
        }
        c5.h hVar = new c5.h(19);
        hVar.f1060b = arrayList;
        hVar.f1061c = arrayList2;
        hVar.f1062d = arrayList3;
        return hVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void c(y1.e r8, y1.b r9) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: x1.w.c(y1.e, y1.b):void");
    }

    public static final Bundle d(String str) {
        int i6 = y2.r.f6241c;
        Bundle bundle = new Bundle();
        bundle.putLong("1_timestamp_ms", System.currentTimeMillis());
        bundle.putString("0_auth_logger_id", str);
        bundle.putString("3_method", "");
        bundle.putString("2_result", "");
        bundle.putString("5_error_message", "");
        bundle.putString("4_error_code", "");
        bundle.putString("6_extras", "");
        return bundle;
    }

    public static final String e(Object obj) {
        String str = z.f5942j;
        if (obj instanceof String) {
            return (String) obj;
        }
        if ((obj instanceof Boolean) || (obj instanceof Number)) {
            return obj.toString();
        }
        if (!(obj instanceof Date)) {
            throw new IllegalArgumentException("Unsupported parameter type.");
        }
        String str2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj);
        d7.g.e("iso8601DateFormat.format(value)", str2);
        return str2;
    }

    public static r6.d g(Bundle bundle, y1.o oVar, boolean z5) {
        String str = k2.k.d() ? "1" : "0";
        Map map = y1.o.f6140b;
        r6.d dVarC = y1.g.c("is_implicit_purchase_logging_enabled", str, bundle, oVar);
        Object objO = y1.g.o("fb_iap_product_id", bundle, oVar);
        String str2 = objO instanceof String ? (String) objO : null;
        if (!z5) {
            if ((bundle != null ? bundle.getString("fb_content_id") : null) == null && str2 != null) {
                r6.d dVarC2 = y1.g.c("fb_content_id", str2, bundle, oVar);
                dVarC = y1.g.c("android_dynamic_ads_content_id", "client_manual", (Bundle) dVarC2.f4993a, (y1.o) dVarC2.f4994b);
            }
        }
        r6.d dVarC3 = y1.g.c("is_autolog_app_events_enabled", j0.c() ? "1" : "0", (Bundle) dVarC.f4993a, (y1.o) dVarC.f4994b);
        return new r6.d((Bundle) dVarC3.f4993a, (y1.o) dVarC3.f4994b);
    }

    public static ArrayList h(List list) {
        d7.g.f("protocols", list);
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((r7.s) obj) != r7.s.HTTP_1_0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(s6.i.n(arrayList));
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj2 = arrayList.get(i6);
            i6++;
            arrayList2.add(((r7.s) obj2).f5136a);
        }
        return arrayList2;
    }

    public static byte[] i(List list) {
        d7.g.f("protocols", list);
        e8.g gVar = new e8.g();
        ArrayList arrayListH = h(list);
        int size = arrayListH.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayListH.get(i6);
            i6++;
            String str = (String) obj;
            gVar.z(str.length());
            gVar.E(str);
        }
        return gVar.s(gVar.f2450b);
    }

    public static HttpURLConnection k(URL url) throws IOException {
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        d7.g.d("null cannot be cast to non-null type java.net.HttpURLConnection", uRLConnectionOpenConnection);
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        if (z.f5944l == null) {
            z.f5944l = String.format("%s.%s", Arrays.copyOf(new Object[]{"FBAndroidSDK", "18.1.3"}, 2));
        }
        httpURLConnection.setRequestProperty("User-Agent", z.f5944l);
        httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
        httpURLConnection.setChunkedStreamingMode(0);
        return httpURLConnection;
    }

    public static ArrayList l(b0 b0Var) {
        Exception exc;
        HttpURLConnection httpURLConnectionC;
        ArrayList arrayListM;
        d7.g.f("requests", b0Var);
        q2.g.i(b0Var);
        HttpURLConnection httpURLConnection = null;
        try {
            httpURLConnectionC = C(b0Var);
            exc = null;
        } catch (Exception e9) {
            exc = e9;
            httpURLConnectionC = null;
        } catch (Throwable th) {
            th = th;
            q2.g0.k(httpURLConnection);
            throw th;
        }
        try {
            if (httpURLConnectionC != null) {
                arrayListM = m(httpURLConnectionC, b0Var);
            } else {
                ArrayList arrayListB = k2.e.b(b0Var.f5808c, null, new l(exc));
                z(b0Var, arrayListB);
                arrayListM = arrayListB;
            }
            q2.g0.k(httpURLConnectionC);
            return arrayListM;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = httpURLConnectionC;
            q2.g0.k(httpURLConnection);
            throw th;
        }
    }

    public static ArrayList m(HttpURLConnection httpURLConnection, b0 b0Var) {
        ArrayList arrayListB;
        d7.g.f("requests", b0Var);
        e0 e0Var = e0.f5837a;
        InputStream errorStream = null;
        try {
            try {
                try {
                } catch (l e9) {
                    o3.a aVar = q2.z.f4846c;
                    o3.a.j(e0Var, "Response", "Response <Error>: %s", e9);
                    arrayListB = k2.e.b(b0Var, httpURLConnection, e9);
                }
            } catch (Exception e10) {
                o3.a aVar2 = q2.z.f4846c;
                o3.a.j(e0Var, "Response", "Response <Error>: %s", e10);
                arrayListB = k2.e.b(b0Var, httpURLConnection, new l(e10));
            }
            if (!r.g()) {
                Log.e("x1.c0", "GraphRequest can't be used when Facebook SDK isn't fully initialized");
                throw new l("GraphRequest can't be used when Facebook SDK isn't fully initialized");
            }
            errorStream = httpURLConnection.getResponseCode() >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
            arrayListB = k2.e.e(errorStream, httpURLConnection, b0Var);
            q2.g0.d(errorStream);
            httpURLConnection.disconnect();
            int size = b0Var.f5808c.size();
            if (size != arrayListB.size()) {
                throw new l(String.format(Locale.US, "Received %d responses while expecting %d", Arrays.copyOf(new Object[]{Integer.valueOf(arrayListB.size()), Integer.valueOf(size)}, 2)));
            }
            z(b0Var, arrayListB);
            e eVarD = e.f5830f.d();
            a aVar3 = eVarD.f5834c;
            if (aVar3 != null) {
                long time = new Date().getTime();
                if (aVar3.f5797f.f5852a && time - eVarD.f5836e.getTime() > 3600000 && time - aVar3.f5798g.getTime() > 86400000) {
                    if (d7.g.a(Looper.getMainLooper(), Looper.myLooper())) {
                        eVarD.a();
                    } else {
                        new Handler(Looper.getMainLooper()).post(new a2.g(15, eVarD));
                    }
                }
            }
            return arrayListB;
        } catch (Throwable th) {
            q2.g0.d(null);
            throw th;
        }
    }

    public static int n() {
        int i6;
        synchronized (y1.k.c()) {
            i6 = !v2.a.b(y1.k.class) ? 1 : 0;
        }
        return i6;
    }

    public static String o() {
        w wVar = new w(4);
        if (!r.a().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("is_referrer_updated", false)) {
            InstallReferrerClient installReferrerClientBuild = InstallReferrerClient.newBuilder(r.a()).build();
            try {
                installReferrerClientBuild.startConnection(new k1.h(installReferrerClientBuild, wVar));
            } catch (Exception unused) {
            }
        }
        return r.a().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("install_referrer", null);
    }

    public static void q() {
        synchronized (y1.k.c()) {
            if (y1.k.b() != null) {
                return;
            }
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
            if (!v2.a.b(y1.k.class)) {
                try {
                    y1.k.f6129d = scheduledThreadPoolExecutor;
                } catch (Throwable th) {
                    v2.a.a(th, y1.k.class);
                }
            }
            i2.c cVar = new i2.c(14);
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutorB = y1.k.b();
            if (scheduledThreadPoolExecutorB == null) {
                throw new IllegalStateException("Required value was null.");
            }
            scheduledThreadPoolExecutorB.scheduleAtFixedRate(cVar, 0L, 86400L, TimeUnit.SECONDS);
        }
    }

    public static boolean r() {
        return "Dalvik".equals(System.getProperty("java.vm.name"));
    }

    public static boolean s(Object obj) {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof y);
    }

    public static boolean t(Object obj) {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    public static z u(a aVar, String str, v vVar) {
        return new z(aVar, str, null, null, vVar);
    }

    public static z v(a aVar, String str, JSONObject jSONObject, v vVar) {
        z zVar = new z(aVar, str, null, d0.f5828b, vVar);
        zVar.f5947c = jSONObject;
        return zVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void w(org.json.JSONObject r7, java.lang.String r8, x1.x r9) {
        /*
            java.util.regex.Pattern r0 = x1.z.f5943k
            java.util.regex.Matcher r0 = r0.matcher(r8)
            boolean r1 = r0.matches()
            r2 = 1
            if (r1 == 0) goto L17
            java.lang.String r0 = r0.group(r2)
            java.lang.String r1 = "matcher.group(1)"
            d7.g.e(r1, r0)
            goto L18
        L17:
            r0 = r8
        L18:
            java.lang.String r1 = "me/"
            r3 = 0
            boolean r1 = k7.o.v(r0, r1, r3)
            if (r1 != 0) goto L2c
            java.lang.String r1 = "/me/"
            boolean r0 = k7.o.v(r0, r1, r3)
            if (r0 == 0) goto L2a
            goto L2c
        L2a:
            r8 = r3
            goto L42
        L2c:
            java.lang.String r0 = ":"
            r1 = 6
            int r0 = k7.g.B(r8, r0, r3, r1)
            java.lang.String r4 = "?"
            int r8 = k7.g.B(r8, r4, r3, r1)
            r1 = 3
            if (r0 <= r1) goto L2a
            r1 = -1
            if (r8 == r1) goto L41
            if (r0 >= r8) goto L2a
        L41:
            r8 = r2
        L42:
            java.util.Iterator r0 = r7.keys()
        L46:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L71
            java.lang.Object r1 = r0.next()
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r4 = r7.opt(r1)
            if (r8 == 0) goto L62
            java.lang.String r5 = "image"
            boolean r5 = k7.o.q(r1, r5)
            if (r5 == 0) goto L62
            r5 = r2
            goto L63
        L62:
            r5 = r3
        L63:
            java.lang.String r6 = "key"
            d7.g.e(r6, r1)
            java.lang.String r6 = "value"
            d7.g.e(r6, r4)
            x(r1, r4, r9, r5)
            goto L46
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: x1.w.w(org.json.JSONObject, java.lang.String, x1.x):void");
    }

    public static void x(String str, Object obj, x xVar, boolean z5) {
        Class<?> cls = obj.getClass();
        if (!JSONObject.class.isAssignableFrom(cls)) {
            if (JSONArray.class.isAssignableFrom(cls)) {
                JSONArray jSONArray = (JSONArray) obj;
                int length = jSONArray.length();
                for (int i6 = 0; i6 < length; i6++) {
                    String str2 = String.format(Locale.ROOT, "%s[%d]", Arrays.copyOf(new Object[]{str, Integer.valueOf(i6)}, 2));
                    Object objOpt = jSONArray.opt(i6);
                    d7.g.e("jsonArray.opt(i)", objOpt);
                    x(str2, objOpt, xVar, z5);
                }
                return;
            }
            if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
                xVar.a(str, obj.toString());
                return;
            }
            if (!Date.class.isAssignableFrom(cls)) {
                String str3 = z.f5942j;
                r rVar = r.f5918a;
                return;
            } else {
                String str4 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj);
                d7.g.e("iso8601DateFormat.format(date)", str4);
                xVar.a(str, str4);
                return;
            }
        }
        JSONObject jSONObject = (JSONObject) obj;
        if (z5) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String str5 = String.format("%s[%s]", Arrays.copyOf(new Object[]{str, next}, 2));
                Object objOpt2 = jSONObject.opt(next);
                d7.g.e("jsonObject.opt(propertyName)", objOpt2);
                x(str5, objOpt2, xVar, z5);
            }
            return;
        }
        if (jSONObject.has("id")) {
            String strOptString = jSONObject.optString("id");
            d7.g.e("jsonObject.optString(\"id\")", strOptString);
            x(str, strOptString, xVar, z5);
        } else if (jSONObject.has("url")) {
            String strOptString2 = jSONObject.optString("url");
            d7.g.e("jsonObject.optString(\"url\")", strOptString2);
            x(str, strOptString2, xVar, z5);
        } else if (jSONObject.has("fbsdk:create_object")) {
            String string = jSONObject.toString();
            d7.g.e("jsonObject.toString()", string);
            x(str, string, xVar, z5);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r6v3, types: [org.json.JSONArray] */
    public static void y(b0 b0Var, q2.z zVar, int i6, URL url, FilterOutputStream filterOutputStream, boolean z5) throws JSONException {
        String strB;
        x2 x2Var = new x2();
        x2Var.f4173c = filterOutputStream;
        x2Var.f4174d = zVar;
        int i9 = 1;
        x2Var.f4171a = true;
        x2Var.f4172b = z5;
        if (i6 == 1) {
            z zVar2 = (z) b0Var.f5808c.get(0);
            HashMap map = new HashMap();
            for (String str : zVar2.f5948d.keySet()) {
                Object obj = zVar2.f5948d.get(str);
                if (s(obj)) {
                    d7.g.e("key", str);
                    map.put(str, new u(zVar2, obj));
                }
            }
            synchronized (r.f5919b) {
            }
            Bundle bundle = zVar2.f5948d;
            for (String str2 : bundle.keySet()) {
                Object obj2 = bundle.get(str2);
                if (t(obj2)) {
                    d7.g.e("key", str2);
                    x2Var.l(str2, obj2, zVar2);
                }
            }
            zVar.b();
            A(map, x2Var);
            JSONObject jSONObject = zVar2.f5947c;
            if (jSONObject != null) {
                String path = url.getPath();
                d7.g.e("url.path", path);
                w(jSONObject, path, x2Var);
                return;
            }
            return;
        }
        b0Var.getClass();
        Iterator it = b0Var.iterator();
        while (true) {
            if (it.hasNext()) {
                a aVar = ((z) it.next()).f5945a;
                if (aVar != null) {
                    strB = aVar.h;
                    break;
                }
            } else {
                String str3 = z.f5942j;
                strB = r.b();
                break;
            }
        }
        if (strB.length() == 0) {
            throw new l("App ID was not specified at the request or Settings.");
        }
        x2Var.a("batch_app_id", strB);
        HashMap map2 = new HashMap();
        ?? jSONArray = new JSONArray();
        Iterator it2 = b0Var.iterator();
        while (it2.hasNext()) {
            z zVar3 = (z) it2.next();
            zVar3.getClass();
            String str4 = z.f5942j;
            JSONObject jSONObject2 = new JSONObject();
            Object[] objArr = new Object[i9];
            objArr[0] = r.e();
            String strH = zVar3.h(String.format("https://graph.%s", Arrays.copyOf(objArr, i9)));
            zVar3.a();
            Uri uri = Uri.parse(zVar3.b(strH, i9));
            String path2 = uri.getPath();
            String query = uri.getQuery();
            Object[] objArr2 = new Object[2];
            objArr2[0] = path2;
            objArr2[i9] = query;
            String str5 = String.format("%s?%s", Arrays.copyOf(objArr2, 2));
            jSONObject2.put("relative_url", str5);
            jSONObject2.put(FirebaseAnalytics.Param.METHOD, zVar3.h);
            a aVar2 = zVar3.f5945a;
            if (aVar2 != null) {
                q2.z.f4846c.o(aVar2.f5796e);
            }
            ArrayList arrayList = new ArrayList();
            Iterator<String> it3 = zVar3.f5948d.keySet().iterator();
            while (it3.hasNext()) {
                Object obj3 = zVar3.f5948d.get(it3.next());
                if (s(obj3)) {
                    Locale locale = Locale.ROOT;
                    Integer numValueOf = Integer.valueOf(map2.size());
                    ?? r22 = i9 == true ? 1 : 0;
                    Object[] objArr3 = new Object[2];
                    objArr3[0] = "file";
                    objArr3[r22 == true ? 1 : 0] = numValueOf;
                    String str6 = String.format(locale, "%s%d", Arrays.copyOf(objArr3, 2));
                    arrayList.add(str6);
                    map2.put(str6, new u(zVar3, obj3));
                    i9 = r22 == true ? 1 : 0;
                }
            }
            ?? r222 = i9 == true ? 1 : 0;
            if (!arrayList.isEmpty()) {
                jSONObject2.put("attached_files", TextUtils.join(",", arrayList));
            }
            JSONObject jSONObject3 = zVar3.f5947c;
            if (jSONObject3 != null) {
                ArrayList arrayList2 = new ArrayList();
                w(jSONObject3, str5, new r7.j(arrayList2));
                jSONObject2.put("body", TextUtils.join("&", arrayList2));
            }
            jSONArray.put(jSONObject2);
            i9 = r222 == true ? 1 : 0;
        }
        String string = jSONArray.toString();
        d7.g.e("requestJsonArray.toString()", string);
        x2Var.a("batch", string);
        zVar.b();
        A(map2, x2Var);
    }

    public static void z(b0 b0Var, ArrayList arrayList) {
        d7.g.f("requests", b0Var);
        ArrayList arrayList2 = b0Var.f5808c;
        int size = arrayList2.size();
        ArrayList arrayList3 = new ArrayList();
        for (int i6 = 0; i6 < size; i6++) {
            z zVar = (z) arrayList2.get(i6);
            if (zVar.f5951g != null) {
                arrayList3.add(new Pair(zVar.f5951g, arrayList.get(i6)));
            }
        }
        if (arrayList3.size() > 0) {
            a2.i iVar = new a2.i(arrayList3, 21, b0Var);
            Handler handler = b0Var.f5806a;
            if (handler != null) {
                handler.post(iVar);
            } else {
                iVar.run();
            }
        }
    }

    @Override // q2.f0
    public void a(JSONObject jSONObject) {
        String strOptString = jSONObject != null ? jSONObject.optString("id") : null;
        if (strOptString == null) {
            Log.w("f0", "No user ID returned on Me request");
            return;
        }
        String strOptString2 = jSONObject.optString("link");
        String strOptString3 = jSONObject.optString("profile_picture", null);
        g0.f5865d.p().a(new f0(strOptString, jSONObject.optString("first_name"), jSONObject.optString("middle_name"), jSONObject.optString("last_name"), jSONObject.optString("name"), strOptString2 != null ? Uri.parse(strOptString2) : null, strOptString3 != null ? Uri.parse(strOptString3) : null), true);
    }

    @Override // q2.f0
    public void f(l lVar) {
        Log.e("f0", "Got unexpected exception: " + lVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0085  */
    @Override // y5.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public b6.b j(java.lang.String r21, int r22, java.util.EnumMap r23) {
        /*
            Method dump skipped, instruction units count: 1324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: x1.w.j(java.lang.String, int, java.util.EnumMap):b6.b");
    }

    public synchronized g0 p() {
        g0 g0Var;
        try {
            if (g0.f5866e == null) {
                y0.b bVarA = y0.b.a(r.a());
                d7.g.e("getInstance(applicationContext)", bVarA);
                g0.f5866e = new g0(bVarA, new b(1));
            }
            g0Var = g0.f5866e;
            if (g0Var == null) {
                d7.g.i("instance");
                throw null;
            }
        } catch (Throwable th) {
            throw th;
        }
        return g0Var;
    }
}
