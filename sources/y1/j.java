package y1;

import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.regex.Matcher;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class j implements m0.g {
    public static x1.a a(Bundle bundle, String str) {
        String string;
        d7.g.f("bundle", bundle);
        d7.g.f("applicationId", str);
        Date dateN = g0.n(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
        String string2 = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        Date dateN2 = g0.n(bundle, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME", new Date(0L));
        if (string2 == null || string2.length() == 0 || (string = bundle.getString("com.facebook.platform.extra.USER_ID")) == null || string.length() == 0) {
            return null;
        }
        return new x1.a(string2, str, string, stringArrayList, null, null, x1.f.FACEBOOK_APPLICATION_SERVICE, dateN, new Date(), dateN2, bundle.getString("graph_domain"));
    }

    public static x1.a b(HashSet hashSet, Bundle bundle, x1.f fVar, String str) {
        ArrayList arrayListI;
        ArrayList arrayListI2;
        d7.g.f("bundle", bundle);
        d7.g.f("applicationId", str);
        Date dateN = g0.n(bundle, "expires_in", new Date());
        String string = bundle.getString("access_token");
        if (string != null) {
            Date dateN2 = g0.n(bundle, "data_access_expiration_time", new Date(0L));
            String string2 = bundle.getString("granted_scopes");
            Collection collectionI = hashSet;
            if (string2 != null) {
                collectionI = hashSet;
                if (string2.length() > 0) {
                    String[] strArr = (String[]) k7.g.J(string2, new String[]{","}, 0, 6).toArray(new String[0]);
                    collectionI = s6.h.i(Arrays.copyOf(strArr, strArr.length));
                }
            }
            String string3 = bundle.getString("denied_scopes");
            if (string3 == null || string3.length() <= 0) {
                arrayListI = null;
            } else {
                String[] strArr2 = (String[]) k7.g.J(string3, new String[]{","}, 0, 6).toArray(new String[0]);
                arrayListI = s6.h.i(Arrays.copyOf(strArr2, strArr2.length));
            }
            String string4 = bundle.getString("expired_scopes");
            if (string4 == null || string4.length() <= 0) {
                arrayListI2 = null;
            } else {
                String[] strArr3 = (String[]) k7.g.J(string4, new String[]{","}, 0, 6).toArray(new String[0]);
                arrayListI2 = s6.h.i(Arrays.copyOf(strArr3, strArr3.length));
            }
            if (!g0.B(string)) {
                String string5 = bundle.getString("graph_domain");
                String string6 = bundle.getString("signed_request");
                if (string6 == null || string6.length() == 0) {
                    throw new x1.l("Authorization response does not contain the signed_request");
                }
                try {
                    String[] strArr4 = (String[]) k7.g.J(string6, new String[]{"."}, 0, 6).toArray(new String[0]);
                    if (strArr4.length == 2) {
                        byte[] bArrDecode = Base64.decode(strArr4[1], 0);
                        d7.g.e(MTCoreConstants.Protocol.KEY_DATA, bArrDecode);
                        String string7 = new JSONObject(new String(bArrDecode, k7.a.f3570a)).getString(MTCoreConstants.Register.KEY_USER_ID);
                        d7.g.e("jsonObject.getString(\"user_id\")", string7);
                        return new x1.a(string, str, string7, collectionI, arrayListI, arrayListI2, fVar, dateN, new Date(), dateN2, string5);
                    }
                } catch (UnsupportedEncodingException | JSONException unused) {
                }
                throw new x1.l("Failed to retrieve user_id from signed_request");
            }
        }
        return null;
    }

    public static x1.g c(Bundle bundle, String str) {
        d7.g.f("bundle", bundle);
        String string = bundle.getString("id_token");
        if (string == null || string.length() == 0 || str == null || str.length() == 0) {
            return null;
        }
        try {
            return new x1.g(string, str);
        } catch (Exception e9) {
            throw new x1.l(e9.getMessage(), e9);
        }
    }

    public static void d(String str, String str2, Object obj) {
        String strH = h(str);
        if (Log.isLoggable(strH, 3)) {
            Log.d(strH, String.format(str2, obj));
        }
    }

    public static void e(String str, String str2, Exception exc) {
        String strH = h(str);
        if (Log.isLoggable(strH, 6)) {
            Log.e(strH, str2, exc);
        }
    }

    public static r7.p f(String str) {
        d7.g.f("<this>", str);
        Matcher matcher = r7.p.f5088e.matcher(str);
        if (!matcher.lookingAt()) {
            throw new IllegalArgumentException(("No subtype found for: \"" + str + '\"').toString());
        }
        String strGroup = matcher.group(1);
        d7.g.e("typeSubtype.group(1)", strGroup);
        Locale locale = Locale.US;
        d7.g.e("US", locale);
        String lowerCase = strGroup.toLowerCase(locale);
        d7.g.e("this as java.lang.String).toLowerCase(locale)", lowerCase);
        String strGroup2 = matcher.group(2);
        d7.g.e("typeSubtype.group(2)", strGroup2);
        String lowerCase2 = strGroup2.toLowerCase(locale);
        d7.g.e("this as java.lang.String).toLowerCase(locale)", lowerCase2);
        ArrayList arrayList = new ArrayList();
        Matcher matcher2 = r7.p.f5089f.matcher(str);
        int iEnd = matcher.end();
        while (iEnd < str.length()) {
            matcher2.region(iEnd, str.length());
            if (!matcher2.lookingAt()) {
                StringBuilder sb = new StringBuilder("Parameter is not formatted correctly: \"");
                String strSubstring = str.substring(iEnd);
                d7.g.e("this as java.lang.String).substring(startIndex)", strSubstring);
                sb.append(strSubstring);
                sb.append("\" for: \"");
                sb.append(str);
                sb.append('\"');
                throw new IllegalArgumentException(sb.toString().toString());
            }
            String strGroup3 = matcher2.group(1);
            if (strGroup3 == null) {
                iEnd = matcher2.end();
            } else {
                String strGroup4 = matcher2.group(2);
                if (strGroup4 == null) {
                    strGroup4 = matcher2.group(3);
                } else if (k7.o.v(strGroup4, "'", false) && strGroup4.endsWith("'") && strGroup4.length() > 2) {
                    strGroup4 = strGroup4.substring(1, strGroup4.length() - 1);
                    d7.g.e("this as java.lang.String…ing(startIndex, endIndex)", strGroup4);
                }
                arrayList.add(strGroup3);
                arrayList.add(strGroup4);
                iEnd = matcher2.end();
            }
        }
        return new r7.p(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]));
    }

    public static c2.a g(JSONObject jSONObject) throws JSONException {
        int i6;
        int i9;
        String string = jSONObject.getString("event_name");
        String string2 = jSONObject.getString(FirebaseAnalytics.Param.METHOD);
        d7.g.e("mapping.getString(\"method\")", string2);
        Locale locale = Locale.ENGLISH;
        d7.g.e("ENGLISH", locale);
        String upperCase = string2.toUpperCase(locale);
        d7.g.e("this as java.lang.String).toUpperCase(locale)", upperCase);
        if (upperCase == null) {
            throw new NullPointerException("Name is null");
        }
        if (upperCase.equals("MANUAL")) {
            i6 = 1;
        } else {
            if (!upperCase.equals("INFERENCE")) {
                throw new IllegalArgumentException("No enum constant com.facebook.appevents.codeless.internal.EventBinding.MappingMethod.".concat(upperCase));
            }
            i6 = 2;
        }
        String string3 = jSONObject.getString("event_type");
        d7.g.e("mapping.getString(\"event_type\")", string3);
        String upperCase2 = string3.toUpperCase(locale);
        d7.g.e("this as java.lang.String).toUpperCase(locale)", upperCase2);
        if (upperCase2 == null) {
            throw new NullPointerException("Name is null");
        }
        if (upperCase2.equals("CLICK")) {
            i9 = 1;
        } else if (upperCase2.equals("SELECTED")) {
            i9 = 2;
        } else {
            if (!upperCase2.equals("TEXT_CHANGED")) {
                throw new IllegalArgumentException("No enum constant com.facebook.appevents.codeless.internal.EventBinding.ActionType.".concat(upperCase2));
            }
            i9 = 3;
        }
        int i10 = i9;
        String string4 = jSONObject.getString("app_version");
        JSONArray jSONArray = jSONObject.getJSONArray("path");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i11 = 0; i11 < length; i11++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i11);
            d7.g.e("jsonPath", jSONObject2);
            arrayList.add(new c2.c(jSONObject2));
        }
        String strOptString = jSONObject.optString("path_type", "absolute");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("parameters");
        ArrayList arrayList2 = new ArrayList();
        if (jSONArrayOptJSONArray != null) {
            int length2 = jSONArrayOptJSONArray.length();
            for (int i12 = 0; i12 < length2; i12++) {
                JSONObject jSONObject3 = jSONArrayOptJSONArray.getJSONObject(i12);
                d7.g.e("jsonParameter", jSONObject3);
                arrayList2.add(new c2.b(jSONObject3));
            }
        }
        String strOptString2 = jSONObject.optString("component_id");
        String strOptString3 = jSONObject.optString("activity_name");
        d7.g.e("eventName", string);
        d7.g.e("appVersion", string4);
        d7.g.e("componentId", strOptString2);
        d7.g.e("pathType", strOptString);
        d7.g.e("activityName", strOptString3);
        return new c2.a(string, i6, i10, string4, arrayList, arrayList2, strOptString2, strOptString, strOptString3);
    }

    public static String h(String str) {
        if (Build.VERSION.SDK_INT >= 26) {
            return "TRuntime.".concat(str);
        }
        String strConcat = "TRuntime.".concat(str);
        return strConcat.length() > 23 ? strConcat.substring(0, 23) : strConcat;
    }

    public static r7.p i(String str) {
        d7.g.f("<this>", str);
        try {
            return f(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static final synchronized void j(b bVar, s sVar) {
        if (v2.a.b(j.class)) {
            return;
        }
        try {
            r rVarU = g.u();
            rVarU.a(bVar, sVar.d());
            g.v(rVarU);
        } catch (Throwable th) {
            v2.a.a(th, j.class);
        }
    }

    public static final synchronized void k(y2.p pVar) {
        if (v2.a.b(j.class)) {
            return;
        }
        try {
            d7.g.f("eventsToPersist", pVar);
            r rVarU = g.u();
            for (b bVar : pVar.e()) {
                s sVarB = pVar.b(bVar);
                if (sVarB == null) {
                    throw new IllegalStateException("Required value was null.");
                }
                rVarU.a(bVar, sVarB.d());
            }
            g.v(rVarU);
        } catch (Throwable th) {
            v2.a.a(th, j.class);
        }
    }

    public static q0.b l(MappedByteBuffer mappedByteBuffer) throws IOException {
        long j3;
        ByteBuffer byteBufferDuplicate = mappedByteBuffer.duplicate();
        byteBufferDuplicate.order(ByteOrder.BIG_ENDIAN);
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
        int i6 = byteBufferDuplicate.getShort() & 65535;
        if (i6 > 100) {
            throw new IOException("Cannot read metadata.");
        }
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 6);
        int i9 = 0;
        while (true) {
            if (i9 >= i6) {
                j3 = -1;
                break;
            }
            int i10 = byteBufferDuplicate.getInt();
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            j3 = ((long) byteBufferDuplicate.getInt()) & 4294967295L;
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            if (1835365473 == i10) {
                break;
            }
            i9++;
        }
        if (j3 != -1) {
            byteBufferDuplicate.position(byteBufferDuplicate.position() + ((int) (j3 - ((long) byteBufferDuplicate.position()))));
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 12);
            long j8 = ((long) byteBufferDuplicate.getInt()) & 4294967295L;
            for (int i11 = 0; i11 < j8; i11++) {
                int i12 = byteBufferDuplicate.getInt();
                long j9 = ((long) byteBufferDuplicate.getInt()) & 4294967295L;
                byteBufferDuplicate.getInt();
                if (1164798569 == i12 || 1701669481 == i12) {
                    byteBufferDuplicate.position((int) (j9 + j3));
                    q0.b bVar = new q0.b();
                    byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
                    int iPosition = byteBufferDuplicate.position() + byteBufferDuplicate.getInt(byteBufferDuplicate.position());
                    bVar.f3249d = byteBufferDuplicate;
                    bVar.f3246a = iPosition;
                    int i13 = iPosition - byteBufferDuplicate.getInt(iPosition);
                    bVar.f3247b = i13;
                    bVar.f3248c = ((ByteBuffer) bVar.f3249d).getShort(i13);
                    return bVar;
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    public static int m(int i6) {
        int[] iArr = {1, 2, 3};
        for (int i9 = 0; i9 < 3; i9++) {
            int i10 = iArr[i9];
            int i11 = i10 - 1;
            if (i10 == 0) {
                throw null;
            }
            if (i11 == i6) {
                return i10;
            }
        }
        return 1;
    }
}
