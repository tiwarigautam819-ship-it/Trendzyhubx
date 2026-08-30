package c2;

import d7.g;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f1020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1021d;

    public b(JSONObject jSONObject) throws JSONException {
        String string = jSONObject.getString("name");
        g.e("component.getString(PARAMETER_NAME_KEY)", string);
        this.f1018a = string;
        String strOptString = jSONObject.optString("value");
        g.e("component.optString(PARAMETER_VALUE_KEY)", strOptString);
        this.f1019b = strOptString;
        String strOptString2 = jSONObject.optString("path_type", "absolute");
        g.e("component.optString(Cons…tants.PATH_TYPE_ABSOLUTE)", strOptString2);
        this.f1021d = strOptString2;
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("path");
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            for (int i6 = 0; i6 < length; i6++) {
                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i6);
                g.e("jsonPathArray.getJSONObject(i)", jSONObject2);
                arrayList.add(new c(jSONObject2));
            }
        }
        this.f1020c = arrayList;
    }
}
