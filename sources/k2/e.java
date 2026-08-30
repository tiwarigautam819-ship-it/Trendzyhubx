package k2;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.getcapacitor.Bridge;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.IDN;
import java.net.InetAddress;
import java.net.URI;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import q2.g0;
import x1.b0;
import x1.c0;
import x1.e0;
import x1.z;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class e {
    public static e8.e a() throws InterruptedException {
        e8.e eVar = e8.e.f2443l;
        d7.g.c(eVar);
        e8.e eVar2 = eVar.f2445f;
        if (eVar2 == null) {
            long jNanoTime = System.nanoTime();
            e8.e.f2440i.await(e8.e.f2441j, TimeUnit.MILLISECONDS);
            e8.e eVar3 = e8.e.f2443l;
            d7.g.c(eVar3);
            if (eVar3.f2445f != null || System.nanoTime() - jNanoTime < e8.e.f2442k) {
                return null;
            }
            return e8.e.f2443l;
        }
        long jNanoTime2 = eVar2.f2446g - System.nanoTime();
        if (jNanoTime2 > 0) {
            e8.e.f2440i.await(jNanoTime2, TimeUnit.NANOSECONDS);
            return null;
        }
        e8.e eVar4 = e8.e.f2443l;
        d7.g.c(eVar4);
        eVar4.f2445f = eVar2.f2445f;
        eVar2.f2445f = null;
        return eVar2;
    }

    public static ArrayList b(AbstractList abstractList, HttpURLConnection httpURLConnection, x1.l lVar) {
        d7.g.f("requests", abstractList);
        ArrayList arrayList = new ArrayList(s6.i.n(abstractList));
        Iterator it = abstractList.iterator();
        while (it.hasNext()) {
            arrayList.add(new c0((z) it.next(), httpURLConnection, new x1.o(lVar)));
        }
        return arrayList;
    }

    public static final r6.e c(Throwable th) {
        d7.g.f("exception", th);
        return new r6.e(th);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static x1.c0 d(x1.z r24, java.net.HttpURLConnection r25, java.lang.Object r26, java.lang.Object r27) throws org.json.JSONException {
        /*
            Method dump skipped, instruction units count: 516
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.e.d(x1.z, java.net.HttpURLConnection, java.lang.Object, java.lang.Object):x1.c0");
    }

    public static ArrayList e(InputStream inputStream, HttpURLConnection httpURLConnection, b0 b0Var) throws Throwable {
        Object obj;
        d7.g.f("requests", b0Var);
        String strJ = g0.J(inputStream);
        o3.a aVar = q2.z.f4846c;
        o3.a.j(e0.f5839c, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(strJ.length()), strJ);
        Object objNextValue = new JSONTokener(strJ).nextValue();
        d7.g.e("resultObject", objNextValue);
        int size = b0Var.f5808c.size();
        ArrayList arrayList = new ArrayList(size);
        if (size == 1) {
            z zVar = (z) b0Var.get(0);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("body", objNextValue);
                jSONObject.put("code", httpURLConnection.getResponseCode());
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
                obj = jSONArray;
            } catch (IOException e9) {
                arrayList.add(new c0(zVar, httpURLConnection, new x1.o(e9)));
                obj = objNextValue;
            } catch (JSONException e10) {
                arrayList.add(new c0(zVar, httpURLConnection, new x1.o(e10)));
                obj = objNextValue;
            }
        } else {
            obj = objNextValue;
        }
        if (obj instanceof JSONArray) {
            JSONArray jSONArray2 = (JSONArray) obj;
            if (jSONArray2.length() == size) {
                int length = jSONArray2.length();
                for (int i6 = 0; i6 < length; i6++) {
                    z zVar2 = (z) b0Var.get(i6);
                    try {
                        Object obj2 = ((JSONArray) obj).get(i6);
                        d7.g.e("obj", obj2);
                        arrayList.add(d(zVar2, httpURLConnection, obj2, objNextValue));
                    } catch (JSONException e11) {
                        arrayList.add(new c0(zVar2, httpURLConnection, new x1.o(e11)));
                    } catch (x1.l e12) {
                        arrayList.add(new c0(zVar2, httpURLConnection, new x1.o(e12)));
                    }
                }
                o3.a aVar2 = q2.z.f4846c;
                o3.a.j(e0.f5837a, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", b0Var.f5807b, Integer.valueOf(strJ.length()), arrayList);
                return arrayList;
            }
        }
        throw new x1.l("Unexpected number of results");
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00cb, code lost:
    
        if (r7 == 16) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00cd, code lost:
    
        if (r8 != (-1)) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d1, code lost:
    
        r0 = r7 - r8;
        java.lang.System.arraycopy(r3, r8, r3, 16 - r0, r0);
        java.util.Arrays.fill(r3, r8, (16 - r7) + r8, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00e1, code lost:
    
        return java.net.InetAddress.getByAddress(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:?, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.net.InetAddress f(int r17, java.lang.String r18, int r19) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.e.f(int, java.lang.String, int):java.net.InetAddress");
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0184, code lost:
    
        if (d7.g.a(r11, r1) == false) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.ArrayList g(android.view.View r8, java.util.List r9, int r10, int r11, java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 442
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.e.g(android.view.View, java.util.List, int, int, java.lang.String):java.util.ArrayList");
    }

    public static ArrayList h(ViewGroup viewGroup) {
        ArrayList arrayList = new ArrayList();
        int childCount = viewGroup.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = viewGroup.getChildAt(i6);
            if (childAt.getVisibility() == 0) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    public static final View i(Activity activity) {
        if (v2.a.b(e.class) || activity == null) {
            return null;
        }
        try {
            Window window = activity.getWindow();
            if (window == null) {
                return null;
            }
            return window.getDecorView().getRootView();
        } catch (Exception unused) {
            return null;
        } catch (Throwable th) {
            v2.a.a(th, e.class);
            return null;
        }
    }

    public static final boolean j() {
        String str = Build.FINGERPRINT;
        d7.g.e("FINGERPRINT", str);
        if (k7.o.v(str, "generic", false) || k7.o.v(str, "unknown", false)) {
            return true;
        }
        String str2 = Build.MODEL;
        d7.g.e("MODEL", str2);
        if (k7.g.x(str2, "google_sdk") || k7.g.x(str2, "Emulator") || k7.g.x(str2, "Android SDK built for x86")) {
            return true;
        }
        String str3 = Build.MANUFACTURER;
        d7.g.e("MANUFACTURER", str3);
        if (k7.g.x(str3, "Genymotion")) {
            return true;
        }
        String str4 = Build.BRAND;
        d7.g.e("BRAND", str4);
        if (k7.o.v(str4, "generic", false)) {
            String str5 = Build.DEVICE;
            d7.g.e("DEVICE", str5);
            if (k7.o.v(str5, "generic", false)) {
                return true;
            }
        }
        return "google_sdk".equals(Build.PRODUCT);
    }

    public static String k(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return null;
        }
        if (!strTrim.startsWith("http://") && !strTrim.startsWith("https://")) {
            strTrim = "https://".concat(strTrim);
        }
        try {
            URI uriCreate = URI.create(strTrim);
            if (uriCreate.getScheme() != null && uriCreate.getHost() != null) {
                String lowerCase = uriCreate.getScheme().toLowerCase();
                String lowerCase2 = uriCreate.getHost().toLowerCase();
                int port = uriCreate.getPort();
                boolean z5 = port == -1 || (Bridge.CAPACITOR_HTTP_SCHEME.equals(lowerCase) && port == 80) || (Bridge.CAPACITOR_HTTPS_SCHEME.equals(lowerCase) && port == 443);
                StringBuilder sb = new StringBuilder();
                sb.append(lowerCase);
                sb.append("://");
                sb.append(lowerCase2);
                if (!z5 && port > 0) {
                    sb.append(":");
                    sb.append(port);
                }
                return sb.toString();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final void l(Object obj) throws Throwable {
        if (obj instanceof r6.e) {
            throw ((r6.e) obj).f4995a;
        }
    }

    public static final String m(String str) {
        d7.g.f("<this>", str);
        int i6 = -1;
        int i9 = 0;
        if (!k7.g.x(str, ":")) {
            try {
                String ascii = IDN.toASCII(str);
                d7.g.e("toASCII(host)", ascii);
                Locale locale = Locale.US;
                d7.g.e("US", locale);
                String lowerCase = ascii.toLowerCase(locale);
                d7.g.e("this as java.lang.String).toLowerCase(locale)", lowerCase);
                if (lowerCase.length() == 0) {
                    return null;
                }
                int length = lowerCase.length();
                for (int i10 = 0; i10 < length; i10++) {
                    char cCharAt = lowerCase.charAt(i10);
                    if (d7.g.g(cCharAt, 31) <= 0 || d7.g.g(cCharAt, ModuleDescriptor.MODULE_VERSION) >= 0 || k7.g.A(" #%/:?@[\\]", cCharAt, 0, 6) != -1) {
                        return null;
                    }
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress inetAddressF = (k7.o.v(str, "[", false) && str.endsWith("]")) ? f(1, str, str.length() - 1) : f(0, str, str.length());
        if (inetAddressF == null) {
            return null;
        }
        byte[] address = inetAddressF.getAddress();
        if (address.length != 16) {
            if (address.length == 4) {
                return inetAddressF.getHostAddress();
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 < address.length) {
            int i13 = i11;
            while (i13 < 16 && address[i13] == 0 && address[i13 + 1] == 0) {
                i13 += 2;
            }
            int i14 = i13 - i11;
            if (i14 > i12 && i14 >= 4) {
                i6 = i11;
                i12 = i14;
            }
            i11 = i13 + 2;
        }
        e8.g gVar = new e8.g();
        while (i9 < address.length) {
            if (i9 == i6) {
                gVar.z(58);
                i9 += i12;
                if (i9 == 16) {
                    gVar.z(58);
                }
            } else {
                if (i9 > 0) {
                    gVar.z(58);
                }
                byte b3 = address[i9];
                byte[] bArr = s7.b.f5287a;
                gVar.A(((b3 & 255) << 8) | (address[i9 + 1] & 255));
                i9 += 2;
            }
        }
        return gVar.t(gVar.f2450b, k7.a.f3570a);
    }
}
