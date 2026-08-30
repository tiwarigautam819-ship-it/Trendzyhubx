package org.apache.cordova;

import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t f4497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4498c;

    public d(String str, t tVar) {
        this.f4496a = str;
        this.f4497b = tVar;
    }

    public void error(JSONObject jSONObject) {
        sendPluginResult(new m0(jSONObject, 10));
    }

    public String getCallbackId() {
        return this.f4496a;
    }

    public boolean isChangingThreads() {
        return false;
    }

    public boolean isFinished() {
        return this.f4498c;
    }

    public void sendPluginResult(m0 m0Var) {
        synchronized (this) {
            try {
                if (this.f4498c) {
                    m0Var.a();
                } else {
                    this.f4498c = !m0Var.f4550c;
                    this.f4497b.sendPluginResult(m0Var, this.f4496a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void success(JSONObject jSONObject) {
        sendPluginResult(new m0(jSONObject, 2));
    }

    public void error(String str) {
        sendPluginResult(new m0(10, str));
    }

    public void success(String str) {
        sendPluginResult(new m0(2, str));
    }

    public void error(int i6) {
        sendPluginResult(new m0(10, i6));
    }

    public void success(JSONArray jSONArray) {
        sendPluginResult(new m0(jSONArray));
    }

    public void success(byte[] bArr) {
        sendPluginResult(new m0(bArr));
    }

    public void success(int i6) {
        sendPluginResult(new m0(2, i6));
    }

    public void success() {
        sendPluginResult(new m0(2));
    }
}
