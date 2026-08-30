package t4;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.y4;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5333a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f5335c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f5336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f5337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f5338f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f5339g;

    public j(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int i6 = b4.d.f953a;
        d0.j("ApplicationId must be set.", true ^ (str == null || str.trim().isEmpty()));
        this.f5334b = str;
        this.f5333a = str2;
        this.f5335c = str3;
        this.f5336d = str4;
        this.f5337e = str5;
        this.f5338f = str6;
        this.f5339g = str7;
    }

    public static j a(Context context) {
        y4 y4Var = new y4(context, 6);
        String strA = y4Var.A("google_app_id");
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return new j(strA, y4Var.A("google_api_key"), y4Var.A("firebase_database_url"), y4Var.A("ga_trackingId"), y4Var.A("gcm_defaultSenderId"), y4Var.A("google_storage_bucket"), y4Var.A("project_id"));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return d0.k(this.f5334b, jVar.f5334b) && d0.k(this.f5333a, jVar.f5333a) && d0.k(this.f5335c, jVar.f5335c) && d0.k(this.f5336d, jVar.f5336d) && d0.k(this.f5337e, jVar.f5337e) && d0.k(this.f5338f, jVar.f5338f) && d0.k(this.f5339g, jVar.f5339g);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5334b, this.f5333a, this.f5335c, this.f5336d, this.f5337e, this.f5338f, this.f5339g});
    }

    public final String toString() {
        y4 y4Var = new y4(this);
        y4Var.f("applicationId", this.f5334b);
        y4Var.f("apiKey", this.f5333a);
        y4Var.f("databaseUrl", this.f5335c);
        y4Var.f("gcmSenderId", this.f5337e);
        y4Var.f("storageBucket", this.f5338f);
        y4Var.f("projectId", this.f5339g);
        return y4Var.toString();
    }
}
