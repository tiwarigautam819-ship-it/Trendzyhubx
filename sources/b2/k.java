package b2;

import android.text.InputFilter;
import com.engagelab.privates.core.api.WakeMessage;
import com.google.firebase.messaging.j0;
import i2.t;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k {
    public static l2.c a(JSONObject jSONObject) {
        float[] fArr;
        float[] fArr2;
        if (jSONObject == null) {
            return null;
        }
        try {
            String string = jSONObject.getString("use_case");
            String string2 = jSONObject.getString("asset_uri");
            String strOptString = jSONObject.optString("rules_uri", null);
            int i6 = jSONObject.getInt("version_id");
            l2.d dVar = l2.d.f3772a;
            JSONArray jSONArray = jSONObject.getJSONArray("thresholds");
            if (v2.a.b(l2.d.class)) {
                fArr2 = null;
            } else {
                try {
                    if (v2.a.b(dVar) || jSONArray == null) {
                        fArr = null;
                        fArr2 = fArr;
                    } else {
                        try {
                            fArr = new float[jSONArray.length()];
                            int length = jSONArray.length();
                            for (int i9 = 0; i9 < length; i9++) {
                                try {
                                    String string3 = jSONArray.getString(i9);
                                    d7.g.e("jsonArray.getString(i)", string3);
                                    fArr[i9] = Float.parseFloat(string3);
                                } catch (JSONException unused) {
                                }
                            }
                        } catch (Throwable th) {
                            v2.a.a(th, dVar);
                            fArr = null;
                        }
                        fArr2 = fArr;
                    }
                } catch (Throwable th2) {
                    v2.a.a(th2, l2.d.class);
                    fArr2 = null;
                }
            }
            d7.g.e("useCase", string);
            d7.g.e("assetUri", string2);
            return new l2.c(string, string2, strOptString, i6, fArr2);
        } catch (Exception unused2) {
            return null;
        }
    }

    public static void b(String str, Object obj) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static final void c(Closeable closeable, Throwable th) throws IOException {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                t.a(th, th2);
            }
        }
    }

    public static void d(l2.c cVar, ArrayList arrayList) {
        File[] fileArrListFiles;
        String str = cVar.f3765a;
        int i6 = cVar.f3768d;
        File fileB = l2.f.b();
        if (fileB != null && (fileArrListFiles = fileB.listFiles()) != null && fileArrListFiles.length != 0) {
            String str2 = str + '_' + i6;
            for (File file : fileArrListFiles) {
                String name = file.getName();
                d7.g.e("name", name);
                if (k7.o.v(name, str, false) && !k7.o.v(name, str2, false)) {
                    file.delete();
                }
            }
        }
        String str3 = str + '_' + i6;
        String str4 = cVar.f3766b;
        j0 j0Var = new j0(5, arrayList);
        File file2 = new File(l2.f.b(), str3);
        if (file2.exists()) {
            j0Var.c(file2);
        } else {
            new k2.m(str4, file2, j0Var).execute(new String[0]);
        }
    }

    public static Object e(s4.c cVar) {
        Object obj;
        boolean z5 = false;
        if (!cVar.isDone()) {
            throw new IllegalStateException(a2.c.h("Future was expected to be done: %s", cVar));
        }
        while (true) {
            try {
                obj = cVar.get();
                break;
            } catch (InterruptedException unused) {
                z5 = true;
            } catch (Throwable th) {
                if (z5) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z5) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static String g(int i6) {
        switch (i6) {
            case -1:
                return "SUCCESS_CACHE";
            case 0:
                return "SUCCESS";
            case 1:
            case 9:
            case 11:
            case 12:
            default:
                return a1.a.i(i6, "unknown status code: ");
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case WakeMessage.ACTIVITY /* 8 */:
                return "INTERNAL_ERROR";
            case 10:
                return "DEVELOPER_ERROR";
            case 13:
                return "ERROR";
            case 14:
                return "INTERRUPTED";
            case 15:
                return "TIMEOUT";
            case 16:
                return "CANCELED";
            case 17:
                return "API_NOT_CONNECTED";
            case 18:
                return "DEAD_CLIENT";
            case 19:
                return "REMOTE_EXCEPTION";
            case 20:
                return "CONNECTION_SUSPENDED_DURING_CALL";
            case 21:
                return "RECONNECTION_TIMED_OUT_DURING_UPDATE";
            case 22:
                return "RECONNECTION_TIMED_OUT";
        }
    }

    public static String h(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i6 = 0; i6 < str.length(); i6++) {
            sb.append(str.charAt(i6));
            if (str2.length() > i6) {
                sb.append(str2.charAt(i6));
            }
        }
        return sb.toString();
    }

    public abstract InputFilter[] f(InputFilter[] inputFilterArr);

    public abstract void i(boolean z5);

    public abstract void j(boolean z5);
}
