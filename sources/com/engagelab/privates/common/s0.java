package com.engagelab.privates.common;

import android.text.TextUtils;
import com.engagelab.privates.push.utils.NotificationUtil;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class s0 implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f1256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f1257b;

    public s0(String str, String str2) {
        this.f1256a = str;
        this.f1257b = str2;
    }

    public static s0 a(JSONObject jSONObject, long j3) {
        String messageId = NotificationUtil.getMessageId(jSONObject);
        if (TextUtils.isEmpty(messageId) && j3 > 0) {
            messageId = j3 + "";
        }
        return new s0(messageId, jSONObject.optString("override_msg_id"));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof s0)) {
            return false;
        }
        s0 s0Var = (s0) obj;
        if (TextUtils.isEmpty(this.f1256a) || TextUtils.isEmpty(s0Var.f1256a) || !TextUtils.equals(this.f1256a, s0Var.f1256a)) {
            return false;
        }
        if (TextUtils.isEmpty(this.f1257b) && TextUtils.isEmpty(s0Var.f1257b)) {
            return true;
        }
        return (TextUtils.isEmpty(this.f1257b) || TextUtils.isEmpty(s0Var.f1257b) || !TextUtils.equals(this.f1257b, s0Var.f1257b)) ? false : true;
    }

    public String toString() {
        return "msg_id = " + this.f1256a + ",  override_msg_id = " + this.f1257b;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("msg_id", this.f1256a);
            jSONObject.put("override_msg_id", this.f1257b);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
