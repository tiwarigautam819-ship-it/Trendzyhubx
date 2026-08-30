package h8;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.EdgeEffect;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import d7.g;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import m0.c;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import q2.g0;
import x1.e;
import x1.f;
import x1.l;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    public static Object b(Class cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(b.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    public static void c(int i6, Object[] objArr) {
        for (int i9 = 0; i9 < i6; i9++) {
            if (objArr[i9] == null) {
                StringBuilder sb = new StringBuilder(20);
                sb.append("at index ");
                sb.append(i9);
                throw new NullPointerException(sb.toString());
            }
        }
    }

    public static x1.a d(JSONObject jSONObject) throws JSONException {
        if (jSONObject.getInt("version") > 1) {
            throw new l("Unknown AccessToken serialization format.");
        }
        String string = jSONObject.getString("token");
        Date date = new Date(jSONObject.getLong("expires_at"));
        JSONArray jSONArray = jSONObject.getJSONArray("permissions");
        JSONArray jSONArray2 = jSONObject.getJSONArray("declined_permissions");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("expired_permissions");
        Date date2 = new Date(jSONObject.getLong("last_refresh"));
        String string2 = jSONObject.getString(FirebaseAnalytics.Param.SOURCE);
        g.e("jsonObject.getString(SOURCE_KEY)", string2);
        f fVarValueOf = f.valueOf(string2);
        String string3 = jSONObject.getString("application_id");
        String string4 = jSONObject.getString(MTCoreConstants.Register.KEY_USER_ID);
        Date date3 = new Date(jSONObject.optLong("data_access_expiration_time", 0L));
        String strOptString = jSONObject.optString("graph_domain", null);
        g.e("token", string);
        g.e("applicationId", string3);
        g.e("userId", string4);
        g.e("permissionsArray", jSONArray);
        ArrayList arrayListD = g0.D(jSONArray);
        g.e("declinedPermissionsArray", jSONArray2);
        return new x1.a(string, string3, string4, arrayListD, g0.D(jSONArray2), jSONArrayOptJSONArray == null ? new ArrayList() : g0.D(jSONArrayOptJSONArray), fVarValueOf, date, date2, date3, strOptString);
    }

    public static int e(float[] fArr, int[] iArr, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        int i6 = Integer.MAX_VALUE;
        for (int i9 = 0; i9 < 6; i9++) {
            int iCeil = (int) Math.ceil(fArr[i9]);
            iArr[i9] = iCeil;
            if (i6 > iCeil) {
                Arrays.fill(bArr, (byte) 0);
                i6 = iCeil;
            }
            if (i6 == iCeil) {
                bArr[i9] = (byte) (bArr[i9] + 1);
            }
        }
        return i6;
    }

    public static x1.a f() {
        return e.f5830f.d().f5834c;
    }

    public static float g(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return c.b(edgeEffect);
        }
        return 0.0f;
    }

    public static void h(char c8) {
        String hexString = Integer.toHexString(c8);
        throw new IllegalArgumentException("Illegal character: " + c8 + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    public static boolean i() {
        x1.a aVar = e.f5830f.d().f5834c;
        return (aVar == null || new Date().after(aVar.f5792a)) ? false : true;
    }

    public static boolean j(char c8) {
        return c8 >= '0' && c8 <= '9';
    }

    public static boolean k(char c8) {
        return c8 >= 128 && c8 <= 255;
    }

    public static boolean l(char c8) {
        if (c8 == '\r' || c8 == '*' || c8 == '>' || c8 == ' ') {
            return true;
        }
        if (c8 < '0' || c8 > '9') {
            return c8 >= 'A' && c8 <= 'Z';
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0193, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01a9, code lost:
    
        return 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01b3, code lost:
    
        return 3;
     */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01f0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x016c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int m(java.lang.CharSequence r20, int r21, int r22) {
        /*
            Method dump skipped, instruction units count: 506
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h8.b.m(java.lang.CharSequence, int, int):int");
    }

    public static float p(EdgeEffect edgeEffect, float f9, float f10) {
        if (Build.VERSION.SDK_INT >= 31) {
            return c.c(edgeEffect, f9, f10);
        }
        m0.b.a(edgeEffect, f9, f10);
        return f9;
    }

    public static String q(Context context) {
        BufferedReader bufferedReader;
        StringBuilder sb;
        try {
            InputStream inputStreamOpen = context.getAssets().open("event_track.json");
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(inputStreamOpen, StandardCharsets.UTF_8);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader);
                    try {
                        sb = new StringBuilder();
                    } finally {
                    }
                } finally {
                }
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                }
                String string = sb.toString();
                bufferedReader.close();
                inputStreamReader.close();
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
                return string;
            } finally {
            }
        } catch (IOException e9) {
            e9.printStackTrace();
            return null;
        }
    }

    public abstract View n(int i6);

    public abstract boolean o();
}
