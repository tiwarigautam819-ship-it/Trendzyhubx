package c2;

import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import d7.g;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1024c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1025d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1026e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f1027f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f1028g;
    public final int h;

    public c(JSONObject jSONObject) throws JSONException {
        String string = jSONObject.getString("class_name");
        g.e("component.getString(PATH_CLASS_NAME_KEY)", string);
        this.f1022a = string;
        this.f1023b = jSONObject.optInt(FirebaseAnalytics.Param.INDEX, -1);
        this.f1024c = jSONObject.optInt("id");
        String strOptString = jSONObject.optString("text");
        g.e("component.optString(PATH_TEXT_KEY)", strOptString);
        this.f1025d = strOptString;
        String strOptString2 = jSONObject.optString(MTPushConstants.Operation.KEY_TAG);
        g.e("component.optString(PATH_TAG_KEY)", strOptString2);
        this.f1026e = strOptString2;
        String strOptString3 = jSONObject.optString("description");
        g.e("component.optString(PATH_DESCRIPTION_KEY)", strOptString3);
        this.f1027f = strOptString3;
        String strOptString4 = jSONObject.optString("hint");
        g.e("component.optString(PATH_HINT_KEY)", strOptString4);
        this.f1028g = strOptString4;
        this.h = jSONObject.optInt("match_bitmask");
    }
}
