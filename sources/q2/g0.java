package q2;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.getcapacitor.Bridge;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f4737a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static long f4738b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static long f4739c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static long f4740d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f4741e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f4742f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f4743g = "NoCarrier";
    public static String h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Locale f4744i;

    public static boolean A(Context context) {
        Method methodU = u("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
        if (methodU != null) {
            Object objW = w(null, methodU, context);
            if ((objW instanceof Integer) && objW.equals(0)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean B(String str) {
        return str == null || str.length() == 0;
    }

    public static final boolean C(Uri uri) {
        if (uri != null) {
            return Bridge.CAPACITOR_HTTP_SCHEME.equalsIgnoreCase(uri.getScheme()) || Bridge.CAPACITOR_HTTPS_SCHEME.equalsIgnoreCase(uri.getScheme()) || "fbstaging".equalsIgnoreCase(uri.getScheme());
        }
        return false;
    }

    public static final ArrayList D(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i6 = 0; i6 < length; i6++) {
            arrayList.add(jSONArray.getString(i6));
        }
        return arrayList;
    }

    public static final HashMap E(String str) {
        if (str.length() == 0) {
            return new HashMap();
        }
        try {
            HashMap map = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                d7.g.e("key", next);
                String string = jSONObject.getString(next);
                d7.g.e("jsonObject.getString(key)", string);
                map.put(next, string);
            }
            return map;
        } catch (JSONException unused) {
            return new HashMap();
        }
    }

    public static final String F(Map map) {
        d7.g.f("map", map);
        String string = "";
        if (map.isEmpty()) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : map.entrySet()) {
                jSONObject.put((String) entry.getKey(), (String) entry.getValue());
            }
            string = jSONObject.toString();
        } catch (JSONException unused) {
        }
        d7.g.e("{\n      try {\n        va…\n        \"\"\n      }\n    }", string);
        return string;
    }

    public static final Bundle G(String str) {
        Bundle bundle = new Bundle();
        if (!B(str)) {
            if (str == null) {
                throw new IllegalStateException("Required value was null.");
            }
            for (String str2 : (String[]) k7.g.J(str, new String[]{"&"}, 0, 6).toArray(new String[0])) {
                String[] strArr = (String[]) k7.g.J(str2, new String[]{"="}, 0, 6).toArray(new String[0]);
                try {
                    if (strArr.length == 2) {
                        bundle.putString(URLDecoder.decode(strArr[0], "UTF-8"), URLDecoder.decode(strArr[1], "UTF-8"));
                    } else if (strArr.length == 1) {
                        bundle.putString(URLDecoder.decode(strArr[0], "UTF-8"), "");
                    }
                } catch (UnsupportedEncodingException unused) {
                    x1.r rVar = x1.r.f5918a;
                }
            }
        }
        return bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void H(Bundle bundle, JSONArray jSONArray) {
        d7.g.f("bundle", bundle);
        if (jSONArray instanceof boolean[]) {
            bundle.putBooleanArray("media", (boolean[]) jSONArray);
            return;
        }
        if (jSONArray instanceof double[]) {
            bundle.putDoubleArray("media", (double[]) jSONArray);
            return;
        }
        if (jSONArray instanceof int[]) {
            bundle.putIntArray("media", (int[]) jSONArray);
        } else if (jSONArray instanceof long[]) {
            bundle.putLongArray("media", (long[]) jSONArray);
        } else {
            bundle.putString("media", jSONArray.toString());
        }
    }

    public static final HashMap I(Parcel parcel) {
        int i6 = parcel.readInt();
        if (i6 < 0) {
            return null;
        }
        HashMap map = new HashMap();
        for (int i9 = 0; i9 < i6; i9++) {
            String string = parcel.readString();
            String string2 = parcel.readString();
            if (string != null && string2 != null) {
                map.put(string, string2);
            }
        }
        return map;
    }

    public static final String J(InputStream inputStream) throws Throwable {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        InputStreamReader inputStreamReader;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream);
                try {
                    StringBuilder sb = new StringBuilder();
                    char[] cArr = new char[2048];
                    while (true) {
                        int i6 = inputStreamReader.read(cArr);
                        if (i6 == -1) {
                            String string = sb.toString();
                            d7.g.e("{\n      bufferedInputStr…gBuilder.toString()\n    }", string);
                            d(bufferedInputStream);
                            d(inputStreamReader);
                            return string;
                        }
                        sb.append(cArr, 0, i6);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    d(bufferedInputStream);
                    d(inputStreamReader);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStreamReader = null;
            }
        } catch (Throwable th4) {
            bufferedInputStream = null;
            th = th4;
            inputStreamReader = null;
        }
    }

    public static final void K(Runnable runnable) {
        try {
            x1.r.c().execute(runnable);
        } catch (Exception unused) {
        }
    }

    public static final void L(Context context, JSONObject jSONObject) throws JSONException {
        Locale locale;
        int i6;
        Display display;
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("a2");
        int i9 = 0;
        if (f4738b == -1 || System.currentTimeMillis() - f4738b >= 1800000) {
            f4738b = System.currentTimeMillis();
            try {
                TimeZone timeZone = TimeZone.getDefault();
                String displayName = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
                d7.g.e("tz.getDisplayName(tz.inD…(Date()), TimeZone.SHORT)", displayName);
                f4741e = displayName;
                String id = timeZone.getID();
                d7.g.e("tz.id", id);
                f4742f = id;
            } catch (AssertionError | Exception unused) {
            }
            if (f4743g.equals("NoCarrier")) {
                try {
                    Object systemService = context.getSystemService("phone");
                    d7.g.d("null cannot be cast to non-null type android.telephony.TelephonyManager", systemService);
                    String networkOperatorName = ((TelephonyManager) systemService).getNetworkOperatorName();
                    d7.g.e("telephonyManager.networkOperatorName", networkOperatorName);
                    f4743g = networkOperatorName;
                } catch (Exception unused2) {
                }
            }
            try {
                if ("mounted".equals(Environment.getExternalStorageState())) {
                    StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                    f4739c = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
                }
                f4739c = Math.round(f4739c / 1.073741824E9d);
            } catch (Exception unused3) {
            }
            try {
                if ("mounted".equals(Environment.getExternalStorageState())) {
                    StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getPath());
                    f4740d = ((long) statFs2.getAvailableBlocks()) * ((long) statFs2.getBlockSize());
                }
                f4740d = Math.round(f4740d / 1.073741824E9d);
            } catch (Exception unused4) {
            }
        }
        String packageName = context.getPackageName();
        int i10 = -1;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            if (packageInfo == null) {
                return;
            }
            i10 = packageInfo.versionCode;
            h = packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException unused5) {
        }
        jSONArray.put(packageName);
        jSONArray.put(i10);
        jSONArray.put(h);
        jSONArray.put(Build.VERSION.RELEASE);
        jSONArray.put(Build.MODEL);
        try {
            locale = context.getResources().getConfiguration().locale;
        } catch (Exception unused6) {
            locale = Locale.getDefault();
        }
        f4744i = locale;
        StringBuilder sb = new StringBuilder();
        Locale locale2 = f4744i;
        String language = locale2 != null ? locale2.getLanguage() : null;
        if (language == null) {
            language = "";
        }
        sb.append(language);
        sb.append('_');
        Locale locale3 = f4744i;
        String country = locale3 != null ? locale3.getCountry() : null;
        sb.append(country != null ? country : "");
        jSONArray.put(sb.toString());
        jSONArray.put(f4741e);
        jSONArray.put(f4743g);
        double d6 = 0.0d;
        try {
            Object systemService2 = context.getSystemService("display");
            DisplayManager displayManager = systemService2 instanceof DisplayManager ? (DisplayManager) systemService2 : null;
            display = displayManager != null ? displayManager.getDisplay(0) : null;
        } catch (Exception unused7) {
        }
        if (display != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            int i11 = displayMetrics.widthPixels;
            try {
                i9 = displayMetrics.heightPixels;
                d6 = displayMetrics.density;
            } catch (Exception unused8) {
            }
            i6 = i9;
            i9 = i11;
        } else {
            i6 = 0;
        }
        jSONArray.put(i9);
        jSONArray.put(i6);
        jSONArray.put(new DecimalFormat("#.##").format(d6));
        int i12 = f4737a;
        if (i12 <= 0) {
            try {
                File[] fileArrListFiles = new File("/sys/devices/system/cpu/").listFiles(new m1.g(1));
                if (fileArrListFiles != null) {
                    f4737a = fileArrListFiles.length;
                }
            } catch (Exception unused9) {
            }
            if (f4737a <= 0) {
                f4737a = Math.max(Runtime.getRuntime().availableProcessors(), 1);
            }
            i12 = f4737a;
        }
        jSONArray.put(i12);
        jSONArray.put(f4739c);
        jSONArray.put(f4740d);
        jSONArray.put(f4742f);
        jSONObject.put("extinfo", jSONArray.toString());
    }

    public static final String M(String str) {
        if (str == null) {
            return null;
        }
        byte[] bytes = str.getBytes(k7.a.f3570a);
        d7.g.e("this as java.lang.String).getBytes(charset)", bytes);
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            d7.g.e("hash", messageDigest);
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            d7.g.e("digest", bArrDigest);
            for (byte b3 : bArrDigest) {
                sb.append(Integer.toHexString((b3 >> 4) & 15));
                sb.append(Integer.toHexString(b3 & 15));
            }
            String string = sb.toString();
            d7.g.e("builder.toString()", string);
            return string;
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static final void N(Parcel parcel, Map map) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            parcel.writeString(str);
            parcel.writeString(str2);
        }
    }

    public static final Uri a(String str, String str2, Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(Bridge.CAPACITOR_HTTPS_SCHEME);
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        Uri uriBuild = builder.build();
        d7.g.e("builder.build()", uriBuild);
        return uriBuild;
    }

    public static void b(Context context, String str) {
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie == null) {
            return;
        }
        for (String str2 : (String[]) k7.g.J(cookie, new String[]{";"}, 0, 6).toArray(new String[0])) {
            String[] strArr = (String[]) k7.g.J(str2, new String[]{"="}, 0, 6).toArray(new String[0]);
            if (strArr.length > 0) {
                StringBuilder sb = new StringBuilder();
                String str3 = strArr[0];
                int length = str3.length() - 1;
                int i6 = 0;
                boolean z5 = false;
                while (i6 <= length) {
                    boolean z8 = d7.g.g(str3.charAt(!z5 ? i6 : length), 32) <= 0;
                    if (z5) {
                        if (!z8) {
                            break;
                        } else {
                            length--;
                        }
                    } else if (z8) {
                        i6++;
                    } else {
                        z5 = true;
                    }
                }
                sb.append(str3.subSequence(i6, length + 1).toString());
                sb.append("=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
                cookieManager.setCookie(str, sb.toString());
            }
        }
        cookieManager.removeExpiredCookie();
    }

    public static final void c(Context context) {
        try {
            b(context, "facebook.com");
            b(context, ".facebook.com");
            b(context, "https://facebook.com");
            b(context, "https://.facebook.com");
        } catch (Exception unused) {
        }
    }

    public static final void d(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static final String e(String str) {
        return B(str) ? "" : str;
    }

    public static final HashSet f(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        HashSet hashSet = new HashSet();
        int length = jSONArray.length();
        for (int i6 = 0; i6 < length; i6++) {
            String string = jSONArray.getString(i6);
            d7.g.e("jsonArray.getString(i)", string);
            hashSet.add(string);
        }
        return hashSet;
    }

    public static final ArrayList g(JSONArray jSONArray) {
        try {
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i6 = 0; i6 < length; i6++) {
                String string = jSONArray.getString(i6);
                d7.g.e("jsonArray.getString(i)", string);
                arrayList.add(string);
            }
            return arrayList;
        } catch (JSONException unused) {
            return new ArrayList();
        }
    }

    public static final HashMap h(JSONObject jSONObject) {
        d7.g.f("jsonObject", jSONObject);
        HashMap map = new HashMap();
        JSONArray jSONArrayNames = jSONObject.names();
        if (jSONArrayNames != null) {
            int length = jSONArrayNames.length();
            for (int i6 = 0; i6 < length; i6++) {
                try {
                    String string = jSONArrayNames.getString(i6);
                    d7.g.e("keys.getString(i)", string);
                    Object objH = jSONObject.get(string);
                    if (objH instanceof JSONObject) {
                        objH = h((JSONObject) objH);
                    }
                    d7.g.e("value", objH);
                    map.put(string, objH);
                } catch (JSONException unused) {
                }
            }
        }
        return map;
    }

    public static final HashMap i(JSONObject jSONObject) {
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString = jSONObject.optString(next);
            if (strOptString != null) {
                d7.g.e("key", next);
                map.put(next, strOptString);
            }
        }
        return map;
    }

    public static final int j(InputStream inputStream, FilterOutputStream filterOutputStream) throws Throwable {
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[8192];
            int i6 = 0;
            while (true) {
                int i9 = bufferedInputStream.read(bArr);
                if (i9 == -1) {
                    break;
                }
                filterOutputStream.write(bArr, 0, i9);
                i6 += i9;
            }
            bufferedInputStream.close();
            if (inputStream != null) {
                inputStream.close();
            }
            return i6;
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream2 = bufferedInputStream;
            if (bufferedInputStream2 != null) {
                bufferedInputStream2.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    public static final void k(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    public static final String l(Context context) {
        return context == null ? "null" : context == context.getApplicationContext() ? "unknown" : context.getClass().getSimpleName();
    }

    public static final String m(Context context) {
        try {
            x1.r rVar = x1.r.f5918a;
            g.k();
            String str = x1.r.f5922e;
            if (str != null) {
                return str;
            }
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            int i6 = applicationInfo.labelRes;
            if (i6 == 0) {
                return applicationInfo.nonLocalizedLabel.toString();
            }
            String string = context.getString(i6);
            d7.g.e("context.getString(stringId)", string);
            return string;
        } catch (Exception unused) {
            return "";
        }
    }

    public static final Date n(Bundle bundle, String str, Date date) {
        long jLongValue;
        if (bundle == null) {
            return null;
        }
        Object obj = bundle.get(str);
        if (obj instanceof Long) {
            jLongValue = ((Number) obj).longValue();
        } else {
            if (!(obj instanceof String)) {
                return null;
            }
            try {
                jLongValue = Long.parseLong((String) obj);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        if (jLongValue == 0) {
            return new Date(Long.MAX_VALUE);
        }
        return new Date((jLongValue * 1000) + date.getTime());
    }

    public static final JSONObject o() {
        if (v2.a.b(g0.class)) {
            return null;
        }
        try {
            String string = x1.r.a().getSharedPreferences("com.facebook.sdk.DataProcessingOptions", 0).getString("data_processing_options", null);
            if (string != null) {
                try {
                    return new JSONObject(string);
                } catch (JSONException unused) {
                }
            }
            return null;
        } catch (Throwable th) {
            v2.a.a(th, g0.class);
            return null;
        }
    }

    public static final String p() {
        return String.format("m.%s", Arrays.copyOf(new Object[]{x1.r.f5933q}, 1));
    }

    public static final void q(final String str, final f0 f0Var) {
        String str2;
        d7.g.f("accessToken", str);
        ConcurrentHashMap concurrentHashMap = c0.f4722a;
        JSONObject jSONObject = (JSONObject) c0.f4722a.get(str);
        if (jSONObject != null) {
            f0Var.a(jSONObject);
            return;
        }
        x1.v vVar = new x1.v() { // from class: q2.e0
            @Override // x1.v
            public final void a(x1.c0 c0Var) {
                String str3 = str;
                d7.g.f("$accessToken", str3);
                JSONObject jSONObject2 = c0Var.f5819d;
                x1.o oVar = c0Var.f5818c;
                f0 f0Var2 = f0Var;
                if (oVar != null) {
                    f0Var2.f(oVar.f5915i);
                } else {
                    if (jSONObject2 == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    c0.f4722a.put(str3, jSONObject2);
                    f0Var2.a(jSONObject2);
                }
            }
        };
        Bundle bundle = new Bundle();
        Date date = x1.a.f5789l;
        x1.a aVarF = h8.b.f();
        if (aVarF == null || (str2 = aVarF.f5801k) == null) {
            str2 = "facebook";
        }
        bundle.putString("fields", str2.equals("instagram") ? "id,name,profile_picture" : "id,name,first_name,middle_name,last_name");
        bundle.putString("access_token", str);
        x1.z zVar = new x1.z(null, "me", null, null, new a2.b(2));
        zVar.f5948d = bundle;
        zVar.h = x1.d0.f5827a;
        zVar.j(vVar);
        zVar.d();
    }

    public static final String r() {
        return String.format("m.%s", Arrays.copyOf(new Object[]{x1.r.f5932p}, 1));
    }

    public static void s(Context context) {
        d7.g.f("context", context);
        if (d.a() != null) {
            d.a();
            return;
        }
        d dVar = new d(context);
        if (!v2.a.b(d.class)) {
            try {
                if (!v2.a.b(dVar)) {
                    try {
                        y0.b bVarA = y0.b.a((Context) dVar.f4725b);
                        d7.g.e("getInstance(applicationContext)", bVarA);
                        bVarA.b(dVar, new IntentFilter("com.parse.bolts.measurement_event"));
                    } catch (Throwable th) {
                        v2.a.a(th, dVar);
                    }
                }
            } catch (Throwable th2) {
                v2.a.a(th2, d.class);
            }
        }
        if (!v2.a.b(d.class)) {
            try {
                d.f4723c = dVar;
            } catch (Throwable th3) {
                v2.a.a(th3, d.class);
            }
        }
        d.a();
    }

    public static final Method t(Class cls, String str, Class... clsArr) {
        d7.g.f("parameterTypes", clsArr);
        try {
            return cls.getMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static final Method u(String str, String str2, Class... clsArr) {
        try {
            return t(Class.forName(str), str2, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static final Object v(JSONObject jSONObject, String str, String str2) throws JSONException {
        Object objOpt = jSONObject.opt(str);
        if (objOpt != null && (objOpt instanceof String)) {
            objOpt = new JSONTokener((String) objOpt).nextValue();
        }
        if (objOpt == null || (objOpt instanceof JSONObject) || (objOpt instanceof JSONArray)) {
            return objOpt;
        }
        if (str2 == null) {
            throw new x1.l("Got an unexpected non-JSON object.");
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.putOpt(str2, objOpt);
        return jSONObject2;
    }

    public static final Object w(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static final boolean x() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(String.format("fb%s://applinks", Arrays.copyOf(new Object[]{x1.r.b()}, 1))));
            Context contextA = x1.r.a();
            PackageManager packageManager = contextA.getPackageManager();
            String packageName = contextA.getPackageName();
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            d7.g.e("packageManager.queryInte…nager.MATCH_DEFAULT_ONLY)", listQueryIntentActivities);
            Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
            while (it.hasNext()) {
                if (d7.g.a(packageName, it.next().activityInfo.packageName)) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static final boolean y(Context context) {
        d7.g.f("context", context);
        if (Build.VERSION.SDK_INT >= 27) {
            return context.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        }
        String str = Build.DEVICE;
        if (str == null) {
            return false;
        }
        d7.g.e("DEVICE", str);
        Pattern patternCompile = Pattern.compile(".+_cheets|cheets_.+");
        d7.g.e("compile(...)", patternCompile);
        return patternCompile.matcher(str).matches();
    }

    public static final boolean z() {
        if (!v2.a.b(g0.class)) {
            try {
                JSONObject jSONObjectO = o();
                if (jSONObjectO != null) {
                    try {
                        JSONArray jSONArray = jSONObjectO.getJSONArray("data_processing_options");
                        int length = jSONArray.length();
                        for (int i6 = 0; i6 < length; i6++) {
                            String string = jSONArray.getString(i6);
                            d7.g.e("options.getString(i)", string);
                            String lowerCase = string.toLowerCase();
                            d7.g.e("this as java.lang.String).toLowerCase()", lowerCase);
                            if (lowerCase.equals("ldu")) {
                                return true;
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                v2.a.a(th, g0.class);
                return false;
            }
        }
        return false;
    }
}
