package x1;

import android.net.Uri;
import android.os.Bundle;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class z {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f5942j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Pattern f5943k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static volatile String f5944l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f5945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f5947c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Bundle f5948d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f5949e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f5950f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public v f5951g;
    public d0 h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5952i;

    static {
        char[] charArray = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        d7.g.e("this as java.lang.String).toCharArray()", charArray);
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        int iNextInt = secureRandom.nextInt(11) + 30;
        for (int i6 = 0; i6 < iNextInt; i6++) {
            sb.append(charArray[secureRandom.nextInt(charArray.length)]);
        }
        String string = sb.toString();
        d7.g.e("buffer.toString()", string);
        f5942j = string;
        f5943k = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
    }

    public z(a aVar, String str, Bundle bundle, d0 d0Var, v vVar) {
        this.f5945a = aVar;
        this.f5946b = str;
        this.f5950f = null;
        j(vVar);
        this.h = d0Var == null ? d0.f5827a : d0Var;
        if (bundle != null) {
            this.f5948d = new Bundle(bundle);
        } else {
            this.f5948d = new Bundle();
        }
        this.f5950f = r.d();
    }

    public static String f() {
        String strB = r.b();
        q2.g.k();
        String str = r.f5923f;
        if (str == null) {
            throw new l("A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information.");
        }
        if (strB.length() <= 0 || str.length() <= 0) {
            return null;
        }
        return strB + '|' + str;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a() {
        /*
            r6 = this;
            java.lang.String r0 = "access_token"
            android.os.Bundle r1 = r6.f5948d
            java.lang.String r2 = r6.e()
            r3 = 0
            if (r2 == 0) goto L12
            java.lang.String r4 = "|"
            boolean r4 = k7.g.x(r2, r4)
            goto L13
        L12:
            r4 = r3
        L13:
            if (r2 == 0) goto L26
            java.lang.String r5 = "IG"
            boolean r2 = k7.o.v(r2, r5, r3)
            if (r2 == 0) goto L26
            if (r4 != 0) goto L26
            boolean r2 = r6.i()
            if (r2 == 0) goto L26
            goto L3d
        L26:
            java.lang.String r2 = x1.r.e()
            java.lang.String r3 = "instagram.com"
            boolean r2 = d7.g.a(r2, r3)
            r3 = 1
            if (r2 != 0) goto L34
            goto L39
        L34:
            boolean r2 = r6.i()
            r3 = r3 ^ r2
        L39:
            if (r3 != 0) goto L45
            if (r4 != 0) goto L45
        L3d:
            java.lang.String r2 = f()
            r1.putString(r0, r2)
            goto L4e
        L45:
            java.lang.String r2 = r6.e()
            if (r2 == 0) goto L4e
            r1.putString(r0, r2)
        L4e:
            boolean r0 = r1.containsKey(r0)
            if (r0 != 0) goto L73
            x1.r r0 = x1.r.f5918a
            q2.g.k()
            java.lang.String r0 = x1.r.f5923f
            if (r0 == 0) goto L6b
            boolean r0 = q2.g0.B(r0)
            if (r0 == 0) goto L73
            java.lang.String r0 = "z"
            java.lang.String r2 = "Starting with v13 of the SDK, a client token must be embedded in your client code before making Graph API calls. Visit https://developers.facebook.com/docs/android/getting-started#client-token to learn how to implement this change."
            android.util.Log.w(r0, r2)
            goto L73
        L6b:
            x1.l r0 = new x1.l
            java.lang.String r1 = "A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information."
            r0.<init>(r1)
            throw r0
        L73:
            java.lang.String r0 = "sdk"
            java.lang.String r2 = "android"
            r1.putString(r0, r2)
            java.lang.String r0 = "format"
            java.lang.String r2 = "json"
            r1.putString(r0, r2)
            java.util.HashSet r0 = x1.r.f5919b
            monitor-enter(r0)
            monitor-exit(r0)
            x1.e0 r0 = x1.e0.f5842f
            x1.r.h(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: x1.z.a():void");
    }

    public final String b(String str, boolean z5) {
        if (!z5 && this.h == d0.f5828b) {
            return str;
        }
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        for (String str2 : this.f5948d.keySet()) {
            Object obj = this.f5948d.get(str2);
            if (obj == null) {
                obj = "";
            }
            if (w.t(obj)) {
                builderBuildUpon.appendQueryParameter(str2, w.e(obj).toString());
            } else if (this.h != d0.f5827a) {
                throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", Arrays.copyOf(new Object[]{obj.getClass().getSimpleName()}, 1)));
            }
        }
        String string = builderBuildUpon.toString();
        d7.g.e("uriBuilder.toString()", string);
        return string;
    }

    public final c0 c() {
        ArrayList arrayListL = w.l(new b0(s6.f.r(new z[]{this})));
        if (arrayListL.size() == 1) {
            return (c0) arrayListL.get(0);
        }
        throw new l("invalid state: expected a single response");
    }

    public final a0 d() {
        b0 b0Var = new b0(s6.f.r(new z[]{this}));
        q2.g.i(b0Var);
        a0 a0Var = new a0(b0Var);
        a0Var.executeOnExecutor(r.c(), new Void[0]);
        return a0Var;
    }

    public final String e() {
        a aVar = this.f5945a;
        if (aVar != null) {
            if (!this.f5948d.containsKey("access_token")) {
                String str = aVar.f5796e;
                q2.z.f4846c.o(str);
                return str;
            }
        } else if (!this.f5948d.containsKey("access_token")) {
            return f();
        }
        return this.f5948d.getString("access_token");
    }

    public final String g() {
        String str;
        String str2;
        if (this.h == d0.f5828b && (str2 = this.f5946b) != null && str2.endsWith("/videos")) {
            str = String.format("https://graph-video.%s", Arrays.copyOf(new Object[]{r.e()}, 1));
        } else {
            String strE = r.e();
            d7.g.f("subdomain", strE);
            str = String.format("https://graph.%s", Arrays.copyOf(new Object[]{strE}, 1));
        }
        String strH = h(str);
        a();
        return b(strH, false);
    }

    public final String h(String str) {
        if (!(!d7.g.a(r.e(), "instagram.com") ? true : !i())) {
            str = String.format("https://graph.%s", Arrays.copyOf(new Object[]{r.f5933q}, 1));
        }
        Pattern pattern = f5943k;
        String str2 = this.f5946b;
        if (!pattern.matcher(str2).matches()) {
            str2 = String.format("%s/%s", Arrays.copyOf(new Object[]{this.f5950f, str2}, 2));
        }
        return String.format("%s/%s", Arrays.copyOf(new Object[]{str, str2}, 2));
    }

    public final boolean i() {
        String str = this.f5946b;
        if (str == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder("^/?");
        sb.append(r.b());
        sb.append("/?.*");
        return this.f5952i || Pattern.matches(sb.toString(), str) || Pattern.matches("^/?app/?.*", str);
    }

    public final void j(v vVar) {
        synchronized (r.f5919b) {
        }
        r.h(e0.f5842f);
        this.f5951g = vVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{Request:  accessToken: ");
        Object obj = this.f5945a;
        if (obj == null) {
            obj = "null";
        }
        sb.append(obj);
        sb.append(", graphPath: ");
        sb.append(this.f5946b);
        sb.append(", graphObject: ");
        sb.append(this.f5947c);
        sb.append(", httpMethod: ");
        sb.append(this.h);
        sb.append(", parameters: ");
        sb.append(this.f5948d);
        sb.append("}");
        String string = sb.toString();
        d7.g.e("StringBuilder()\n        …(\"}\")\n        .toString()", string);
        return string;
    }
}
