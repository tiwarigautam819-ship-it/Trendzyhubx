package org.apache.cordova;

import android.util.Base64;
import androidx.fragment.app.m1;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class m0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String[] f4547g = {"No result", "OK", "Class not found", "Illegal access", "Instantiation error", "Malformed url", "IO error", "Invalid action", "JSON error", "Error"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f4553f;

    public m0(int i6) {
        this(i6, f4547g[m1.e(i6)]);
    }

    public final String a() {
        if (this.f4552e == null) {
            this.f4552e = JSONObject.quote(this.f4551d);
        }
        return this.f4552e;
    }

    public m0(int i6, String str) {
        this.f4550c = false;
        this.f4548a = m1.e(i6);
        this.f4549b = str == null ? 5 : 1;
        this.f4551d = str;
    }

    public m0(JSONArray jSONArray) {
        this.f4550c = false;
        this.f4548a = m1.e(2);
        this.f4549b = 2;
        this.f4552e = jSONArray.toString();
    }

    public m0(JSONObject jSONObject, int i6) {
        this.f4550c = false;
        this.f4548a = m1.e(i6);
        this.f4549b = 2;
        this.f4552e = jSONObject.toString();
    }

    public m0(int i6, int i9) {
        this.f4550c = false;
        this.f4548a = m1.e(i6);
        this.f4549b = 3;
        this.f4552e = a1.a.i(i9, "");
    }

    public m0(byte[] bArr) {
        this.f4550c = false;
        this.f4548a = m1.e(2);
        this.f4549b = 6;
        this.f4552e = Base64.encodeToString(bArr, 2);
    }

    public m0(ArrayList arrayList) {
        this.f4550c = false;
        this.f4548a = m1.e(2);
        this.f4549b = 8;
        this.f4553f = arrayList;
    }
}
