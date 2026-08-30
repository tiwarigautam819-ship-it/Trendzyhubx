package y1;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class e implements Serializable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final HashSet f6117f = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JSONObject f6118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JSONObject f6119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f6120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f6121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f6122e;

    /* JADX WARN: Removed duplicated region for block: B:154:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x012f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public e(java.lang.String r17, java.lang.String r18, java.lang.Double r19, android.os.Bundle r20, boolean r21, boolean r22, java.util.UUID r23, y1.o r24) throws org.json.JSONException {
        /*
            Method dump skipped, instruction units count: 816
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: y1.e.<init>(java.lang.String, java.lang.String, java.lang.Double, android.os.Bundle, boolean, boolean, java.util.UUID, y1.o):void");
    }

    private final Object writeReplace() {
        String string = this.f6118a.toString();
        d7.g.e("jsonObject.toString()", string);
        String string2 = this.f6119b.toString();
        d7.g.e("operationalJsonObject.toString()", string2);
        return new d(string, string2, this.f6120c, this.f6121d);
    }

    public final String toString() {
        JSONObject jSONObject = this.f6118a;
        return String.format("\"%s\", implicit: %b, json: %s", Arrays.copyOf(new Object[]{jSONObject.optString("_eventName"), Boolean.valueOf(this.f6120c), jSONObject.toString()}, 3));
    }

    public e(String str, String str2, boolean z5, boolean z8) {
        JSONObject jSONObject = new JSONObject(str);
        this.f6118a = jSONObject;
        this.f6119b = new JSONObject(str2);
        this.f6120c = z5;
        String strOptString = jSONObject.optString("_eventName");
        d7.g.e("jsonObject.optString(Con…nts.EVENT_NAME_EVENT_KEY)", strOptString);
        this.f6122e = strOptString;
        this.f6121d = z8;
    }
}
