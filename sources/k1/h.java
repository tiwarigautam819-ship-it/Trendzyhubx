package k1;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContentInfo;
import android.view.MenuItem;
import android.view.View;
import android.webkit.JsResult;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.a0;
import androidx.fragment.app.q0;
import androidx.lifecycle.p0;
import androidx.lifecycle.r0;
import androidx.lifecycle.s0;
import androidx.profileinstaller.ProfileInstallReceiver;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.engagelab.privates.core.api.WakeMessage;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.android.gms.common.internal.l0;
import com.google.android.gms.internal.measurement.y4;
import com.google.firebase.messaging.z;
import j0.b1;
import j0.k0;
import j0.r;
import j0.z0;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.MissingFormatArgumentException;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import l.f0;
import l.p;
import l.y;
import m.h3;
import m.t0;
import m.y1;
import org.apache.cordova.h0;
import org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface;
import org.json.JSONArray;
import org.json.JSONException;
import s5.n;
import s5.s;
import x1.w;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class h implements WebMessageListenerBoundaryInterface, d1.c, g0.b, h3.b, h0, j0.c, y1, y, t0, l.l, InstallReferrerStateListener, n, r, com.google.android.gms.common.internal.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f3502b;

    public /* synthetic */ h(int i6, byte b3) {
        this.f3501a = i6;
    }

    public static boolean D(Bundle bundle) {
        return "1".equals(bundle.getString("gcm.n.e")) || "1".equals(bundle.getString("gcm.n.e".replace("gcm.n.", "gcm.notification.")));
    }

    public static String F(String str) {
        return str.startsWith("gcm.n.") ? str.substring(6) : str;
    }

    public String A(String str) {
        Bundle bundle = (Bundle) this.f3502b;
        if (!bundle.containsKey(str) && str.startsWith("gcm.n.")) {
            String strReplace = !str.startsWith("gcm.n.") ? str : str.replace("gcm.n.", "gcm.notification.");
            if (bundle.containsKey(strReplace)) {
                str = strReplace;
            }
        }
        return bundle.getString(str);
    }

    public long[] B() {
        JSONArray jSONArrayU = u("gcm.n.vibrate_timings");
        if (jSONArrayU == null) {
            return null;
        }
        try {
            if (jSONArrayU.length() <= 1) {
                throw new JSONException("vibrateTimings have invalid length");
            }
            int length = jSONArrayU.length();
            long[] jArr = new long[length];
            for (int i6 = 0; i6 < length; i6++) {
                jArr[i6] = jSONArrayU.optLong(i6);
            }
            return jArr;
        } catch (NumberFormatException | JSONException unused) {
            Log.w("NotificationParams", "User defined vibrateTimings is invalid: " + jSONArrayU + ". Skipping setting vibrateTimings.");
            return null;
        }
    }

    public void C(String str, boolean z5) {
        JsResult jsResult = (JsResult) this.f3502b;
        if (z5) {
            jsResult.confirm();
        } else {
            jsResult.cancel();
        }
    }

    public Bundle E() {
        Bundle bundle = (Bundle) this.f3502b;
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle.keySet()) {
            if (!str.startsWith("google.c.a.") && !str.equals(MTPushConstants.PlatformNode.KEY_FROM)) {
                bundle2.remove(str);
            }
        }
        return bundle2;
    }

    @Override // l.y
    public void b(l.n nVar, boolean z5) {
        if (nVar instanceof f0) {
            ((f0) nVar).f3635z.k().c(false);
        }
        y yVar = ((androidx.appcompat.widget.a) this.f3502b).f3610e;
        if (yVar != null) {
            yVar.b(nVar, z5);
        }
    }

    @Override // j0.c
    public j0.f build() {
        return new j0.f(new o5.c(((ContentInfo.Builder) this.f3502b).build()));
    }

    @Override // g0.b
    public Cursor c(Uri uri, String[] strArr, String[] strArr2) {
        ContentProviderClient contentProviderClient = (ContentProviderClient) this.f3502b;
        if (contentProviderClient == null) {
            return null;
        }
        try {
            return contentProviderClient.query(uri, strArr, "query = ?", strArr2, null, null);
        } catch (RemoteException e9) {
            Log.w("FontsProvider", "Unable to query the content provider", e9);
            return null;
        }
    }

    @Override // g0.b
    public void close() {
        ContentProviderClient contentProviderClient = (ContentProviderClient) this.f3502b;
        if (contentProviderClient != null) {
            contentProviderClient.release();
        }
    }

    @Override // l.l
    public boolean d(l.n nVar, MenuItem menuItem) {
        return false;
    }

    @Override // j0.r
    public b1 e(View view, b1 b1Var) {
        z0 z0Var = b1Var.f3254a;
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f3502b;
        if (!Objects.equals(coordinatorLayout.f361k, b1Var)) {
            coordinatorLayout.f361k = b1Var;
            boolean z5 = b1Var.d() > 0;
            coordinatorLayout.f362l = z5;
            coordinatorLayout.setWillNotDraw(!z5 && coordinatorLayout.getBackground() == null);
            if (!z0Var.m()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i6 = 0; i6 < childCount; i6++) {
                    View childAt = coordinatorLayout.getChildAt(i6);
                    WeakHashMap weakHashMap = k0.f3286a;
                    if (childAt.getFitsSystemWindows() && ((androidx.coordinatorlayout.widget.b) childAt.getLayoutParams()).f367a != null && z0Var.m()) {
                        break;
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return b1Var;
    }

    @Override // l.y
    public boolean f(l.n nVar) {
        androidx.appcompat.widget.a aVar = (androidx.appcompat.widget.a) this.f3502b;
        if (nVar == aVar.f3608c) {
            return false;
        }
        ((f0) nVar).A.getClass();
        aVar.getClass();
        y yVar = aVar.f3610e;
        if (yVar != null) {
            return yVar.f(nVar);
        }
        return false;
    }

    @Override // d1.c
    public void g() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // q6.a
    public Object get() {
        switch (this.f3501a) {
            case 9:
                return new c5.h((Context) ((o5.c) this.f3502b).f4446b, new o3.a(1), new o3.a(0), 10);
            default:
                String packageName = ((Context) ((q6.a) this.f3502b).get()).getPackageName();
                if (packageName != null) {
                    return packageName;
                }
                throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
        }
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public String[] getSupportedFeatures() {
        return new String[]{"WEB_MESSAGE_LISTENER", "WEB_MESSAGE_ARRAY_BUFFER"};
    }

    @Override // l.l
    public void h(l.n nVar) {
        Toolbar toolbar = (Toolbar) this.f3502b;
        androidx.appcompat.widget.a aVar = toolbar.f270a.B;
        if (aVar == null || !aVar.e()) {
            Iterator it = toolbar.O.f3292b.iterator();
            while (it.hasNext()) {
                ((q0) ((j0.m) it.next())).f603a.t();
            }
        }
        o5.c cVar = toolbar.W;
        if (cVar != null) {
            cVar.h(nVar);
        }
    }

    @Override // d1.c
    public void i(int i6, Object obj) {
        String str;
        switch (i6) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case WakeMessage.ACTIVITY /* 8 */:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case 11:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i6 == 6 || i6 == 7 || i6 == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            Log.d("ProfileInstaller", str);
        }
        ((ProfileInstallReceiver) this.f3502b).setResultCode(i6);
    }

    @Override // j0.c
    public void k(Uri uri) {
        ((ContentInfo.Builder) this.f3502b).setLinkUri(uri);
    }

    @Override // m.y1
    public void l(l.n nVar, p pVar) {
        l.h hVar = (l.h) this.f3502b;
        Handler handler = hVar.f3643f;
        handler.removeCallbacksAndMessages(null);
        ArrayList arrayList = hVar.h;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                i6 = -1;
                break;
            } else if (nVar == ((l.g) arrayList.get(i6)).f3637b) {
                break;
            } else {
                i6++;
            }
        }
        if (i6 == -1) {
            return;
        }
        int i9 = i6 + 1;
        handler.postAtTime(new l.f(this, i9 < arrayList.size() ? (l.g) arrayList.get(i9) : null, pVar, nVar), nVar, SystemClock.uptimeMillis() + 200);
    }

    @Override // s5.n
    public Object m() {
        switch (this.f3501a) {
            case 24:
                Class cls = (Class) this.f3502b;
                try {
                    return s.f5270a.a(cls);
                } catch (Exception e9) {
                    throw new RuntimeException("Unable to create instance of " + cls + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e9);
                }
            case 25:
                Type type = (Type) this.f3502b;
                if (!(type instanceof ParameterizedType)) {
                    throw new a0("Invalid EnumMap type: " + type.toString());
                }
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                if (type2 instanceof Class) {
                    return new EnumMap((Class) type2);
                }
                throw new a0("Invalid EnumMap type: " + type.toString());
            default:
                Constructor constructor = (Constructor) this.f3502b;
                try {
                    return constructor.newInstance(null);
                } catch (IllegalAccessException e10) {
                    m1.j jVar = u5.c.f5494a;
                    throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e10);
                } catch (InstantiationException e11) {
                    throw new RuntimeException("Failed to invoke constructor '" + u5.c.b(constructor) + "' with no args", e11);
                } catch (InvocationTargetException e12) {
                    throw new RuntimeException("Failed to invoke constructor '" + u5.c.b(constructor) + "' with no args", e12.getCause());
                }
        }
    }

    @Override // m.y1
    public void n(l.n nVar, MenuItem menuItem) {
        ((l.h) this.f3502b).f3643f.removeCallbacksAndMessages(nVar);
    }

    @Override // com.android.installreferrer.api.InstallReferrerStateListener
    public void onInstallReferrerSetupFinished(int i6) {
        InstallReferrerClient installReferrerClient = (InstallReferrerClient) this.f3502b;
        if (v2.a.b(this)) {
            return;
        }
        try {
            if (i6 == 0) {
                try {
                    ReferrerDetails installReferrer = installReferrerClient.getInstallReferrer();
                    d7.g.e("{\n                      …rer\n                    }", installReferrer);
                    String installReferrer2 = installReferrer.getInstallReferrer();
                    if (installReferrer2 != null && (k7.g.x(installReferrer2, "fb") || k7.g.x(installReferrer2, "facebook"))) {
                        String str = y1.k.f6128c;
                        x1.r.a().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("install_referrer", installReferrer2).apply();
                    }
                    x1.r.a().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("is_referrer_updated", true).apply();
                } catch (RemoteException | Exception unused) {
                    return;
                }
            } else if (i6 == 2) {
                x1.r.a().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("is_referrer_updated", true).apply();
            }
            installReferrerClient.endConnection();
        } catch (Throwable th) {
            v2.a.a(th, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    @Override // org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onPostMessage(android.webkit.WebView r8, java.lang.reflect.InvocationHandler r9, android.net.Uri r10, boolean r11, java.lang.reflect.InvocationHandler r12) {
        /*
            r7 = this;
            java.lang.Class<org.chromium.support_lib_boundary.WebMessageBoundaryInterface> r0 = org.chromium.support_lib_boundary.WebMessageBoundaryInterface.class
            java.lang.Object r9 = h8.b.b(r0, r9)
            org.chromium.support_lib_boundary.WebMessageBoundaryInterface r9 = (org.chromium.support_lib_boundary.WebMessageBoundaryInterface) r9
            java.lang.reflect.InvocationHandler[] r0 = r9.getPorts()
            int r1 = r0.length
            k1.h[] r1 = new k1.h[r1]
            r2 = 0
        L10:
            int r3 = r0.length
            if (r2 >= r3) goto L2c
            k1.h r3 = new k1.h
            r4 = r0[r2]
            r5 = 14
            r6 = 0
            r3.<init>(r5, r6)
            java.lang.Class<org.chromium.support_lib_boundary.WebMessagePortBoundaryInterface> r5 = org.chromium.support_lib_boundary.WebMessagePortBoundaryInterface.class
            java.lang.Object r4 = h8.b.b(r5, r4)
            org.chromium.support_lib_boundary.WebMessagePortBoundaryInterface r4 = (org.chromium.support_lib_boundary.WebMessagePortBoundaryInterface) r4
            r3.f3502b = r4
            r1[r2] = r3
            int r2 = r2 + 1
            goto L10
        L2c:
            k1.b r0 = k1.k.f3504a
            boolean r0 = r0.b()
            if (r0 == 0) goto L61
            java.lang.Class<org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface> r0 = org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface.class
            java.lang.reflect.InvocationHandler r9 = r9.getMessagePayload()
            java.lang.Object r9 = h8.b.b(r0, r9)
            org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface r9 = (org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface) r9
            int r0 = r9.getType()
            if (r0 == 0) goto L57
            r1 = 1
            if (r0 == r1) goto L4c
            r9 = 0
            r3 = r9
            goto L6b
        L4c:
            j1.b r0 = new j1.b
            byte[] r9 = r9.getAsArrayBuffer()
            r0.<init>(r9)
        L55:
            r3 = r0
            goto L6b
        L57:
            j1.b r0 = new j1.b
            java.lang.String r9 = r9.getAsString()
            r0.<init>(r9)
            goto L55
        L61:
            j1.b r0 = new j1.b
            java.lang.String r9 = r9.getData()
            r0.<init>(r9)
            goto L55
        L6b:
            if (r3 == 0) goto L91
            java.lang.Class<org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface> r9 = org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface.class
            java.lang.Object r9 = h8.b.b(r9, r12)
            org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface r9 = (org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface) r9
            e5.c r12 = new e5.c
            r0 = 2
            r12.<init>(r0, r9)
            java.lang.Object r9 = r9.getOrCreatePeer(r12)
            r6 = r9
            k1.f r6 = (k1.f) r6
            java.lang.Object r9 = r7.f3502b
            com.getcapacitor.m r9 = (com.getcapacitor.m) r9
            java.lang.Object r9 = r9.f1349a
            r1 = r9
            com.getcapacitor.MessageHandler r1 = (com.getcapacitor.MessageHandler) r1
            r2 = r8
            r4 = r10
            r5 = r11
            com.getcapacitor.MessageHandler.a(r1, r2, r3, r4, r5, r6)
        L91:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k1.h.onPostMessage(android.webkit.WebView, java.lang.reflect.InvocationHandler, android.net.Uri, boolean, java.lang.reflect.InvocationHandler):void");
    }

    @Override // j0.c
    public void p(int i6) {
        ((ContentInfo.Builder) this.f3502b).setFlags(i6);
    }

    public f3.j q() {
        Context context = (Context) this.f3502b;
        if (context == null) {
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
        f3.j jVar = new f3.j();
        jVar.f2571a = h3.a.a(f3.m.f2579a);
        o5.c cVar = new o5.c(12, context);
        jVar.f2572b = cVar;
        jVar.f2573c = h3.a.a(new y4(cVar, 14, new h(9, cVar)));
        o5.c cVar2 = jVar.f2572b;
        jVar.f2574d = new o5.c(21, cVar2);
        q6.a aVarA = h3.a.a(new y4(jVar.f2574d, 20, h3.a.a(new h(20, cVar2))));
        jVar.f2575e = aVarA;
        e5.e eVar = new e5.e(26);
        o5.c cVar3 = jVar.f2572b;
        c5.h hVar = new c5.h(cVar3, aVarA, eVar, 11);
        q6.a aVar = jVar.f2571a;
        q6.a aVar2 = jVar.f2573c;
        z zVar = new z();
        zVar.f2166a = aVar;
        zVar.f2167b = aVar2;
        zVar.f2168c = hVar;
        zVar.f2169d = aVarA;
        zVar.f2170e = aVarA;
        h3 h3Var = new h3();
        h3Var.f3989a = cVar3;
        h3Var.f3990b = aVar2;
        h3Var.f3991c = aVarA;
        h3Var.f3992d = hVar;
        h3Var.f3993e = aVar;
        h3Var.f3994f = aVarA;
        h3Var.f3995g = aVarA;
        jVar.f2576f = h3.a.a(new c5.h(zVar, h3Var, new com.google.firebase.messaging.y(aVar, aVarA, hVar, aVarA), 8));
        return jVar;
    }

    public p0 r(Class cls) {
        String str;
        d7.d dVarA = d7.l.a(cls);
        c5.h hVar = (c5.h) this.f3502b;
        HashMap map = d7.d.f2290c;
        Class cls2 = dVarA.f2292a;
        String canonicalName = null;
        if (!cls2.isAnonymousClass() && !cls2.isLocalClass()) {
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                if (componentType.isPrimitive() && (str = (String) map.get(componentType.getName())) != null) {
                    canonicalName = str.concat("Array");
                }
                if (canonicalName == null) {
                    canonicalName = "kotlin.Array";
                }
            } else {
                canonicalName = (String) map.get(cls2.getName());
                if (canonicalName == null) {
                    canonicalName = cls2.getCanonicalName();
                }
            }
        }
        if (canonicalName != null) {
            return hVar.n(dVarA, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName));
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public boolean s(String str) {
        String strA = A(str);
        return "1".equals(strA) || Boolean.parseBoolean(strA);
    }

    @Override // j0.c
    public void setExtras(Bundle bundle) {
        ((ContentInfo.Builder) this.f3502b).setExtras(bundle);
    }

    public Integer t(String str) {
        String strA = A(str);
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(strA));
        } catch (NumberFormatException unused) {
            Log.w("NotificationParams", "Couldn't parse value of " + F(str) + "(" + strA + ") into an int");
            return null;
        }
    }

    public JSONArray u(String str) {
        String strA = A(str);
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        try {
            return new JSONArray(strA);
        } catch (JSONException unused) {
            Log.w("NotificationParams", "Malformed JSON for key " + F(str) + ": " + strA + ", falling back to default");
            return null;
        }
    }

    public int[] v() {
        JSONArray jSONArrayU = u("gcm.n.light_settings");
        if (jSONArrayU == null) {
            return null;
        }
        int[] iArr = new int[3];
        try {
            if (jSONArrayU.length() != 3) {
                throw new JSONException("lightSettings don't have all three fields");
            }
            int color = Color.parseColor(jSONArrayU.optString(0));
            if (color == -16777216) {
                throw new IllegalArgumentException("Transparent color is invalid");
            }
            iArr[0] = color;
            iArr[1] = jSONArrayU.optInt(1);
            iArr[2] = jSONArrayU.optInt(2);
            return iArr;
        } catch (IllegalArgumentException e9) {
            Log.w("NotificationParams", "LightSettings is invalid: " + jSONArrayU + ". " + e9.getMessage() + ". Skipping setting LightSettings");
            return null;
        } catch (JSONException unused) {
            Log.w("NotificationParams", "LightSettings is invalid: " + jSONArrayU + ". Skipping setting LightSettings");
            return null;
        }
    }

    public Object[] w(String str) {
        JSONArray jSONArrayU = u(str.concat("_loc_args"));
        if (jSONArrayU == null) {
            return null;
        }
        int length = jSONArrayU.length();
        String[] strArr = new String[length];
        for (int i6 = 0; i6 < length; i6++) {
            strArr[i6] = jSONArrayU.optString(i6);
        }
        return strArr;
    }

    public String x(String str) {
        return A(str.concat("_loc_key"));
    }

    public Long y() {
        String strA = A("gcm.n.event_time");
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        try {
            return Long.valueOf(Long.parseLong(strA));
        } catch (NumberFormatException unused) {
            Log.w("NotificationParams", "Couldn't parse value of " + F("gcm.n.event_time") + "(" + strA + ") into a long");
            return null;
        }
    }

    public String z(Resources resources, String str, String str2) {
        String strA = A(str2);
        if (!TextUtils.isEmpty(strA)) {
            return strA;
        }
        String strX = x(str2);
        if (TextUtils.isEmpty(strX)) {
            return null;
        }
        int identifier = resources.getIdentifier(strX, "string", str);
        if (identifier == 0) {
            Log.w("NotificationParams", F(str2.concat("_loc_key")) + " resource not found: " + str2 + " Default value will be used.");
            return null;
        }
        Object[] objArrW = w(str2);
        if (objArrW == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, objArrW);
        } catch (MissingFormatArgumentException e9) {
            Log.w("NotificationParams", "Missing format argument for " + F(str2) + ": " + Arrays.toString(objArrW) + " Default value will be used.", e9);
            return null;
        }
    }

    public /* synthetic */ h(int i6, Object obj) {
        this.f3501a = i6;
        this.f3502b = obj;
    }

    public h(InstallReferrerClient installReferrerClient, w wVar) {
        this.f3501a = 21;
        this.f3502b = installReferrerClient;
    }

    public h(int i6) {
        this.f3501a = 23;
        d7.g.f("timeUnit", TimeUnit.MINUTES);
        this.f3502b = new v7.m(u7.d.f5518i, i6);
    }

    public h(s0 s0Var, r0 r0Var) {
        this.f3501a = 2;
        d7.g.f("store", s0Var);
        v0.a aVar = v0.a.f5529b;
        d7.g.f("defaultCreationExtras", aVar);
        this.f3502b = new c5.h(s0Var, r0Var, aVar);
    }

    public h(Bundle bundle) {
        this.f3501a = 4;
        if (bundle != null) {
            this.f3502b = new Bundle(bundle);
            return;
        }
        throw new NullPointerException(MTCoreConstants.Protocol.KEY_DATA);
    }

    public h(TextView textView) {
        this.f3501a = 22;
        this.f3502b = new r0.g(textView);
    }

    public h(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f3501a = 16;
        if (Build.VERSION.SDK_INT >= 25) {
            this.f3502b = new l0.f(uri, clipDescription, uri2);
        } else {
            this.f3502b = new c5.h(uri, clipDescription, uri2, 12);
        }
    }

    public h(s7.a aVar) {
        this.f3501a = 27;
        this.f3502b = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), aVar);
    }

    public h(Context context, Uri uri) {
        this.f3501a = 8;
        this.f3502b = context.getContentResolver().acquireUnstableContentProviderClient(uri);
    }

    public h(ClipData clipData, int i6) {
        this.f3501a = 12;
        this.f3502b = l0.d(clipData, i6);
    }

    @Override // com.android.installreferrer.api.InstallReferrerStateListener
    public void onInstallReferrerServiceDisconnected() {
    }

    @Override // m.t0
    public void a(int i6) {
    }

    @Override // m.t0
    public void j(int i6) {
    }

    @Override // m.t0
    public void o(int i6, float f9) {
    }
}
