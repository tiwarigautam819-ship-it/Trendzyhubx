package l2;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.a0;
import androidx.fragment.app.m1;
import b2.k;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.getcapacitor.PluginMethod;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import s6.h;
import s6.i;
import x1.w;
import x1.z;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f3772a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ConcurrentHashMap f3773b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List f3774c = h.k("other", "fb_mobile_complete_registration", "fb_mobile_add_to_cart", "fb_mobile_purchase", "fb_mobile_initiated_checkout");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List f3775d = h.k(PluginMethod.RETURN_NONE, "address", "health");

    public static final File d() {
        if (!v2.a.b(d.class)) {
            try {
                a1.a.n(2, "task");
                c cVar = (c) f3773b.get(a1.a.c(2));
                if (cVar != null) {
                    return cVar.f3770f;
                }
            } catch (Throwable th) {
                v2.a.a(th, d.class);
                return null;
            }
        }
        return null;
    }

    public static final String[] f(int i6, float[][] fArr, String[] strArr) {
        b bVar;
        if (!v2.a.b(d.class)) {
            try {
                a1.a.n(i6, "task");
                c cVar = (c) f3773b.get(a1.a.c(i6));
                if (cVar != null && (bVar = cVar.f3771g) != null) {
                    float[] fArr2 = cVar.f3769e;
                    int length = strArr.length;
                    int length2 = fArr[0].length;
                    a aVar = new a(new int[]{length, length2});
                    for (int i9 = 0; i9 < length; i9++) {
                        System.arraycopy(fArr[i9], 0, aVar.f3752c, i9 * length2, length2);
                    }
                    a aVarA = bVar.a(aVar, strArr, a1.a.b(i6));
                    if (aVarA != null && fArr2 != null && aVarA.f3752c.length != 0 && fArr2.length != 0) {
                        int iE = m1.e(i6);
                        d dVar = f3772a;
                        if (iE == 0) {
                            return dVar.g(aVarA, fArr2);
                        }
                        if (iE == 1) {
                            return dVar.h(aVarA, fArr2);
                        }
                        throw new a0();
                    }
                }
            } catch (Throwable th) {
                v2.a.a(th, d.class);
                return null;
            }
        }
        return null;
    }

    public final void a(JSONObject jSONObject) {
        if (v2.a.b(this)) {
            return;
        }
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                try {
                    c cVarA = k.a(jSONObject.getJSONObject(itKeys.next()));
                    if (cVarA != null) {
                        f3773b.put(cVarA.f3765a, cVarA);
                    }
                } catch (JSONException unused) {
                    return;
                }
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007f A[Catch: all -> 0x008b, TryCatch #2 {all -> 0x008b, blocks: (B:5:0x0008, B:6:0x001b, B:8:0x0021, B:10:0x003f, B:12:0x004f, B:24:0x007f, B:23:0x007b, B:28:0x008e, B:30:0x0099, B:32:0x00a9, B:35:0x00ba, B:37:0x00c0, B:15:0x0056, B:19:0x0068), top: B:43:0x0008, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void b() {
        /*
            Method dump skipped, instruction units count: 209
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: l2.d.b():void");
    }

    public final JSONObject c() {
        if (!v2.a.b(this)) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("fields", TextUtils.join(",", new String[]{"use_case", "version_id", "asset_uri", "rules_uri", "thresholds"}));
                String str = z.f5942j;
                z zVarU = w.u(null, "app/model_asset", null);
                zVarU.f5948d = bundle;
                JSONObject jSONObject = zVarU.c().f5817b;
                if (jSONObject != null) {
                    return e(jSONObject);
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }

    public final JSONObject e(JSONObject jSONObject) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray(MTCoreConstants.Protocol.KEY_DATA);
                int length = jSONArray.length();
                for (int i6 = 0; i6 < length; i6++) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i6);
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("version_id", jSONObject3.getString("version_id"));
                    jSONObject4.put("use_case", jSONObject3.getString("use_case"));
                    jSONObject4.put("thresholds", jSONObject3.getJSONArray("thresholds"));
                    jSONObject4.put("asset_uri", jSONObject3.getString("asset_uri"));
                    if (jSONObject3.has("rules_uri")) {
                        jSONObject4.put("rules_uri", jSONObject3.getString("rules_uri"));
                    }
                    jSONObject2.put(jSONObject3.getString("use_case"), jSONObject4);
                }
                return jSONObject2;
            } catch (JSONException unused) {
                return new JSONObject();
            }
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public final String[] g(a aVar, float[] fArr) {
        if (!v2.a.b(this)) {
            try {
                int[] iArr = aVar.f3750a;
                int i6 = iArr[0];
                int i9 = iArr[1];
                float[] fArr2 = aVar.f3752c;
                if (i9 == fArr.length) {
                    h7.c cVarM = a2.c.m(0, i6);
                    ArrayList arrayList = new ArrayList(i.n(cVarM));
                    Iterator it = cVarM.iterator();
                    while (((h7.b) it).f3022c) {
                        int iNextInt = ((h7.b) it).nextInt();
                        Object obj = PluginMethod.RETURN_NONE;
                        int length = fArr.length;
                        int i10 = 0;
                        int i11 = 0;
                        while (i10 < length) {
                            int i12 = i11 + 1;
                            if (fArr2[(iNextInt * i9) + i11] >= fArr[i10]) {
                                obj = f3775d.get(i11);
                            }
                            i10++;
                            i11 = i12;
                        }
                        arrayList.add((String) obj);
                    }
                    return (String[]) arrayList.toArray(new String[0]);
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }

    public final String[] h(a aVar, float[] fArr) {
        if (!v2.a.b(this)) {
            try {
                int[] iArr = aVar.f3750a;
                int i6 = iArr[0];
                int i9 = iArr[1];
                float[] fArr2 = aVar.f3752c;
                if (i9 == fArr.length) {
                    h7.c cVarM = a2.c.m(0, i6);
                    ArrayList arrayList = new ArrayList(i.n(cVarM));
                    Iterator it = cVarM.iterator();
                    while (((h7.b) it).f3022c) {
                        int iNextInt = ((h7.b) it).nextInt();
                        Object obj = "other";
                        int length = fArr.length;
                        int i10 = 0;
                        int i11 = 0;
                        while (i10 < length) {
                            int i12 = i11 + 1;
                            if (fArr2[(iNextInt * i9) + i11] >= fArr[i10]) {
                                obj = f3774c.get(i11);
                            }
                            i10++;
                            i11 = i12;
                        }
                        arrayList.add((String) obj);
                    }
                    return (String[]) arrayList.toArray(new String[0]);
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }
}
