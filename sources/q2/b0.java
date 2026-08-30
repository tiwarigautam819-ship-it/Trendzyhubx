package q2;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b0 f4712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ArrayList f4713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicBoolean f4714c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Integer[] f4715d;

    static {
        b0 b0Var = new b0();
        f4712a = b0Var;
        f4713b = b0Var.a();
        int i6 = 0;
        ArrayList arrayList = null;
        if (!v2.a.b(b0Var)) {
            try {
                ArrayList arrayListI = s6.h.i(new a0(i6));
                arrayListI.addAll(b0Var.a());
                arrayList = arrayListI;
            } catch (Throwable th) {
                v2.a.a(th, b0Var);
            }
        }
        b0 b0Var2 = f4712a;
        int i9 = 3;
        if (!v2.a.b(b0Var2)) {
            try {
                HashMap map = new HashMap();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new a0(i9));
                ArrayList arrayList3 = f4713b;
                map.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", arrayList3);
                map.put("com.facebook.platform.action.request.FEED_DIALOG", arrayList3);
                map.put("com.facebook.platform.action.request.LIKE_DIALOG", arrayList3);
                map.put("com.facebook.platform.action.request.APPINVITES_DIALOG", arrayList3);
                map.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList2);
                map.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList2);
                map.put("com.facebook.platform.action.request.CAMERA_EFFECT", arrayList);
                map.put("com.facebook.platform.action.request.SHARE_STORY", arrayList3);
            } catch (Throwable th2) {
                v2.a.a(th2, b0Var2);
            }
        }
        f4714c = new AtomicBoolean(false);
        f4715d = new Integer[]{20210906, 20171115, 20170417, 20170411, 20170213, 20161017, 20160327, 20150702, 20150401, 20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140313, 20140204, 20131107, 20131024, 20130618, 20130502, 20121101};
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
    
        if ((r3 % 2) != 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0051, code lost:
    
        return java.lang.Math.min(r4, r9);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int b(java.util.TreeSet r8, int r9, int[] r10) {
        /*
            java.lang.Class<q2.b0> r0 = q2.b0.class
            boolean r1 = v2.a.b(r0)
            r2 = 0
            if (r1 == 0) goto La
            return r2
        La:
            r1 = -1
            if (r8 != 0) goto Le
            goto L52
        Le:
            int r3 = r10.length     // Catch: java.lang.Throwable -> L3c
            int r3 = r3 + (-1)
            java.util.Iterator r8 = r8.descendingIterator()     // Catch: java.lang.Throwable -> L3c
            r4 = r1
        L16:
            boolean r5 = r8.hasNext()     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L52
            java.lang.Object r5 = r8.next()     // Catch: java.lang.Throwable -> L3c
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.Throwable -> L3c
            java.lang.String r6 = "fbAppVersion"
            d7.g.e(r6, r5)     // Catch: java.lang.Throwable -> L3c
            int r6 = r5.intValue()     // Catch: java.lang.Throwable -> L3c
            int r4 = java.lang.Math.max(r4, r6)     // Catch: java.lang.Throwable -> L3c
        L2f:
            if (r3 < 0) goto L3e
            r6 = r10[r3]     // Catch: java.lang.Throwable -> L3c
            int r7 = r5.intValue()     // Catch: java.lang.Throwable -> L3c
            if (r6 <= r7) goto L3e
            int r3 = r3 + (-1)
            goto L2f
        L3c:
            r8 = move-exception
            goto L53
        L3e:
            if (r3 >= 0) goto L41
            goto L52
        L41:
            r6 = r10[r3]     // Catch: java.lang.Throwable -> L3c
            int r5 = r5.intValue()     // Catch: java.lang.Throwable -> L3c
            if (r6 != r5) goto L16
            int r3 = r3 % 2
            if (r3 != 0) goto L52
            int r8 = java.lang.Math.min(r4, r9)     // Catch: java.lang.Throwable -> L3c
            return r8
        L52:
            return r1
        L53:
            v2.a.a(r8, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: q2.b0.b(java.util.TreeSet, int, int[]):int");
    }

    public static final Intent d(Context context) {
        if (!v2.a.b(b0.class)) {
            try {
                d7.g.f("context", context);
                ArrayList arrayList = f4713b;
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    Object obj = arrayList.get(i6);
                    i6++;
                    Intent intentAddCategory = new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(((a0) obj).b()).addCategory("android.intent.category.DEFAULT");
                    if (v2.a.b(b0.class) || intentAddCategory == null) {
                        intentAddCategory = null;
                    } else {
                        try {
                            ResolveInfo resolveInfoResolveService = context.getPackageManager().resolveService(intentAddCategory, 0);
                            if (resolveInfoResolveService != null) {
                                String str = resolveInfoResolveService.serviceInfo.packageName;
                                d7.g.e("resolveInfo.serviceInfo.packageName", str);
                                if (!l.a(context, str)) {
                                }
                            }
                        } catch (Throwable th) {
                            v2.a.a(th, b0.class);
                        }
                        intentAddCategory = null;
                    }
                    if (intentAddCategory != null) {
                        return intentAddCategory;
                    }
                }
            } catch (Throwable th2) {
                v2.a.a(th2, b0.class);
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0043 A[Catch: all -> 0x008c, TryCatch #3 {all -> 0x008c, blocks: (B:5:0x000a, B:24:0x0043, B:26:0x005f, B:35:0x0088, B:34:0x0084, B:38:0x008e, B:40:0x0093, B:21:0x003c, B:29:0x0069, B:31:0x007b, B:9:0x0016, B:11:0x0020, B:13:0x0026, B:19:0x0037, B:17:0x002f), top: B:50:0x000a, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final android.content.Intent e(android.content.Intent r8, android.os.Bundle r9, x1.l r10) {
        /*
            java.lang.Class<q2.b0> r0 = q2.b0.class
            boolean r1 = v2.a.b(r0)
            r2 = 0
            if (r1 == 0) goto La
            goto L42
        La:
            boolean r1 = v2.a.b(r0)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r3 = "action_id"
            java.lang.String r4 = "com.facebook.platform.protocol.BRIDGE_ARGS"
            if (r1 == 0) goto L16
        L14:
            r1 = r2
            goto L40
        L16:
            int r1 = i(r8)     // Catch: java.lang.Throwable -> L2b
            boolean r1 = j(r1)     // Catch: java.lang.Throwable -> L2b
            if (r1 == 0) goto L2f
            android.os.Bundle r1 = r8.getBundleExtra(r4)     // Catch: java.lang.Throwable -> L2b
            if (r1 == 0) goto L2d
            java.lang.String r1 = r1.getString(r3)     // Catch: java.lang.Throwable -> L2b
            goto L35
        L2b:
            r1 = move-exception
            goto L3c
        L2d:
            r1 = r2
            goto L35
        L2f:
            java.lang.String r1 = "com.facebook.platform.protocol.CALL_ID"
            java.lang.String r1 = r8.getStringExtra(r1)     // Catch: java.lang.Throwable -> L2b
        L35:
            if (r1 == 0) goto L14
            java.util.UUID r1 = java.util.UUID.fromString(r1)     // Catch: java.lang.IllegalArgumentException -> L14 java.lang.Throwable -> L2b
            goto L40
        L3c:
            v2.a.a(r1, r0)     // Catch: java.lang.Throwable -> L8c
            goto L14
        L40:
            if (r1 != 0) goto L43
        L42:
            return r2
        L43:
            android.content.Intent r5 = new android.content.Intent     // Catch: java.lang.Throwable -> L8c
            r5.<init>()     // Catch: java.lang.Throwable -> L8c
            java.lang.String r6 = "com.facebook.platform.protocol.PROTOCOL_VERSION"
            int r8 = i(r8)     // Catch: java.lang.Throwable -> L8c
            r5.putExtra(r6, r8)     // Catch: java.lang.Throwable -> L8c
            android.os.Bundle r8 = new android.os.Bundle     // Catch: java.lang.Throwable -> L8c
            r8.<init>()     // Catch: java.lang.Throwable -> L8c
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L8c
            r8.putString(r3, r1)     // Catch: java.lang.Throwable -> L8c
            if (r10 == 0) goto L8e
            java.lang.String r1 = "error"
            boolean r3 = v2.a.b(r0)     // Catch: java.lang.Throwable -> L8c
            if (r3 == 0) goto L69
        L67:
            r3 = r2
            goto L88
        L69:
            android.os.Bundle r3 = new android.os.Bundle     // Catch: java.lang.Throwable -> L83
            r3.<init>()     // Catch: java.lang.Throwable -> L83
            java.lang.String r6 = "error_description"
            java.lang.String r7 = r10.toString()     // Catch: java.lang.Throwable -> L83
            r3.putString(r6, r7)     // Catch: java.lang.Throwable -> L83
            boolean r10 = r10 instanceof x1.n     // Catch: java.lang.Throwable -> L83
            if (r10 == 0) goto L88
            java.lang.String r10 = "error_type"
            java.lang.String r6 = "UserCanceled"
            r3.putString(r10, r6)     // Catch: java.lang.Throwable -> L83
            goto L88
        L83:
            r10 = move-exception
            v2.a.a(r10, r0)     // Catch: java.lang.Throwable -> L8c
            goto L67
        L88:
            r8.putBundle(r1, r3)     // Catch: java.lang.Throwable -> L8c
            goto L8e
        L8c:
            r8 = move-exception
            goto L99
        L8e:
            r5.putExtra(r4, r8)     // Catch: java.lang.Throwable -> L8c
            if (r9 == 0) goto L98
            java.lang.String r8 = "com.facebook.platform.protocol.RESULT_ARGS"
            r5.putExtra(r8, r9)     // Catch: java.lang.Throwable -> L8c
        L98:
            return r5
        L99:
            v2.a.a(r8, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: q2.b0.e(android.content.Intent, android.os.Bundle, x1.l):android.content.Intent");
    }

    public static final Bundle h(Intent intent) {
        if (v2.a.b(b0.class)) {
            return null;
        }
        try {
            return !j(i(intent)) ? intent.getExtras() : intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
        } catch (Throwable th) {
            v2.a.a(th, b0.class);
            return null;
        }
    }

    public static final int i(Intent intent) {
        if (v2.a.b(b0.class)) {
            return 0;
        }
        try {
            return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
        } catch (Throwable th) {
            v2.a.a(th, b0.class);
            return 0;
        }
    }

    public static final boolean j(int i6) {
        if (v2.a.b(b0.class)) {
            return false;
        }
        try {
            return s6.f.i(f4715d, Integer.valueOf(i6)) && i6 >= 20140701;
        } catch (Throwable th) {
            v2.a.a(th, b0.class);
            return false;
        }
    }

    public static final void k() {
        if (v2.a.b(b0.class)) {
            return;
        }
        try {
            if (f4714c.compareAndSet(false, true)) {
                x1.r.c().execute(new i2.c(9));
            }
        } catch (Throwable th) {
            v2.a.a(th, b0.class);
        }
    }

    public final ArrayList a() {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            return s6.h.i(new a0(2), new a0(4));
        } catch (Throwable th) {
            v2.a.a(th, this);
            return null;
        }
    }

    public final Intent c(a0 a0Var, String str, HashSet hashSet, String str2, boolean z5, int i6, String str3, String str4, boolean z8, String str5, boolean z9, int i9, boolean z10, boolean z11, String str6) {
        String str7;
        if (!v2.a.b(this)) {
            try {
                String str8 = "com.facebook.katana.ProxyAuth";
                switch (a0Var.f4709b) {
                    case 0:
                    case 3:
                        str8 = null;
                        break;
                    case 1:
                        str8 = "com.instagram.platform.AppAuthorizeActivity";
                        break;
                }
                if (str8 != null) {
                    Intent intentPutExtra = new Intent().setClassName(a0Var.b(), str8).putExtra("client_id", str);
                    d7.g.e("Intent()\n            .se…PP_ID_KEY, applicationId)", intentPutExtra);
                    x1.r rVar = x1.r.f5918a;
                    intentPutExtra.putExtra("facebook_sdk_version", "18.1.3");
                    if (!(hashSet == null || hashSet.isEmpty())) {
                        intentPutExtra.putExtra("scope", TextUtils.join(",", hashSet));
                    }
                    if (!g0.B(str2)) {
                        intentPutExtra.putExtra("e2e", str2);
                    }
                    intentPutExtra.putExtra("state", str3);
                    switch (a0Var.f4709b) {
                        case 1:
                            str7 = "token,signed_request,graph_domain,granted_scopes";
                            break;
                        default:
                            str7 = "id_token,token,signed_request,graph_domain";
                            break;
                    }
                    intentPutExtra.putExtra("response_type", str7);
                    intentPutExtra.putExtra("nonce", str6);
                    intentPutExtra.putExtra("return_scopes", "true");
                    if (z5) {
                        intentPutExtra.putExtra("default_audience", x.b(i6));
                    }
                    intentPutExtra.putExtra("legacy_override", x1.r.d());
                    intentPutExtra.putExtra("auth_type", str4);
                    if (z8) {
                        intentPutExtra.putExtra("fail_on_logged_out", true);
                    }
                    intentPutExtra.putExtra("messenger_page_id", str5);
                    intentPutExtra.putExtra("reset_messenger_state", z9);
                    if (z10) {
                        intentPutExtra.putExtra("fx_app", x.c(i9));
                    }
                    if (z11) {
                        intentPutExtra.putExtra("skip_dedupe", true);
                    }
                    return intentPutExtra;
                }
            } catch (Throwable th) {
                v2.a.a(th, this);
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a7 A[Catch: all -> 0x00ab, TRY_ENTER, TryCatch #4 {all -> 0x00ab, blocks: (B:5:0x0010, B:46:0x00b1, B:47:0x00b4, B:41:0x00a7, B:11:0x004c, B:8:0x002b), top: B:55:0x0010, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0089 A[EXC_TOP_SPLITTER, LOOP:0: B:58:0x0089->B:35:0x008f, LOOP_START, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.TreeSet f(q2.a0 r15) {
        /*
            r14 = this;
            java.lang.String r1 = ".provider.PlatformProvider"
            java.lang.String r2 = "version"
            java.lang.String r3 = "Failed to query content resolver."
            java.lang.String r4 = "q2.b0"
            boolean r0 = v2.a.b(r14)
            r5 = 0
            if (r0 == 0) goto L10
            return r5
        L10:
            java.util.TreeSet r6 = new java.util.TreeSet     // Catch: java.lang.Throwable -> Lab
            r6.<init>()     // Catch: java.lang.Throwable -> Lab
            android.content.Context r0 = x1.r.a()     // Catch: java.lang.Throwable -> Lab
            android.content.ContentResolver r7 = r0.getContentResolver()     // Catch: java.lang.Throwable -> Lab
            java.lang.String[] r9 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> Lab
            java.lang.String r0 = "content://"
            boolean r8 = v2.a.b(r14)     // Catch: java.lang.Throwable -> Lab
            if (r8 == 0) goto L2b
        L29:
            r8 = r5
            goto L50
        L2b:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4b
            r8.<init>(r0)     // Catch: java.lang.Throwable -> L4b
            java.lang.String r0 = r15.b()     // Catch: java.lang.Throwable -> L4b
            r8.append(r0)     // Catch: java.lang.Throwable -> L4b
            java.lang.String r0 = ".provider.PlatformProvider/versions"
            r8.append(r0)     // Catch: java.lang.Throwable -> L4b
            java.lang.String r0 = r8.toString()     // Catch: java.lang.Throwable -> L4b
            android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch: java.lang.Throwable -> L4b
            java.lang.String r8 = "parse(CONTENT_SCHEME + a…ATFORM_PROVIDER_VERSIONS)"
            d7.g.e(r8, r0)     // Catch: java.lang.Throwable -> L4b
            r8 = r0
            goto L50
        L4b:
            r0 = move-exception
            v2.a.a(r0, r14)     // Catch: java.lang.Throwable -> Lab
            goto L29
        L50:
            android.content.Context r0 = x1.r.a()     // Catch: java.lang.Throwable -> L66
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Throwable -> L66
            java.lang.String r15 = r15.b()     // Catch: java.lang.Throwable -> L66
            java.lang.String r15 = r15.concat(r1)     // Catch: java.lang.Throwable -> L66
            r1 = 0
            android.content.pm.ProviderInfo r15 = r0.resolveContentProvider(r15, r1)     // Catch: java.lang.Throwable -> L66 java.lang.RuntimeException -> L6a
            goto L70
        L66:
            r0 = move-exception
            r15 = r0
            r0 = r5
            goto Laf
        L6a:
            r0 = move-exception
            r15 = r0
            android.util.Log.e(r4, r3, r15)     // Catch: java.lang.Throwable -> L66
            r15 = r5
        L70:
            if (r15 == 0) goto La4
            r11 = 0
            r12 = 0
            r10 = 0
            android.database.Cursor r15 = r7.query(r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L66 java.lang.IllegalArgumentException -> L7a java.lang.SecurityException -> L7f java.lang.NullPointerException -> L83
            goto L87
        L7a:
            android.util.Log.e(r4, r3)     // Catch: java.lang.Throwable -> L66
        L7d:
            r15 = r5
            goto L87
        L7f:
            android.util.Log.e(r4, r3)     // Catch: java.lang.Throwable -> L66
            goto L7d
        L83:
            android.util.Log.e(r4, r3)     // Catch: java.lang.Throwable -> L66
            goto L7d
        L87:
            if (r15 == 0) goto La5
        L89:
            boolean r0 = r15.moveToNext()     // Catch: java.lang.Throwable -> L9f
            if (r0 == 0) goto La5
            int r0 = r15.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L9f
            int r0 = r15.getInt(r0)     // Catch: java.lang.Throwable -> L9f
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L9f
            r6.add(r0)     // Catch: java.lang.Throwable -> L9f
            goto L89
        L9f:
            r0 = move-exception
            r13 = r0
            r0 = r15
            r15 = r13
            goto Laf
        La4:
            r15 = r5
        La5:
            if (r15 == 0) goto Lae
            r15.close()     // Catch: java.lang.Throwable -> Lab
            goto Lae
        Lab:
            r0 = move-exception
            r15 = r0
            goto Lb5
        Lae:
            return r6
        Laf:
            if (r0 == 0) goto Lb4
            r0.close()     // Catch: java.lang.Throwable -> Lab
        Lb4:
            throw r15     // Catch: java.lang.Throwable -> Lab
        Lb5:
            v2.a.a(r15, r14)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: q2.b0.f(q2.a0):java.util.TreeSet");
    }

    public final f4.j g(List list, int[] iArr) {
        if (v2.a.b(this)) {
            return null;
        }
        try {
            k();
            if (list == null) {
                f4.j jVar = new f4.j();
                jVar.f2610a = -1;
                return jVar;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                a0 a0Var = (a0) it.next();
                TreeSet treeSet = a0Var.f4708a;
                int iIntValue = 0;
                if (treeSet == null || treeSet.isEmpty()) {
                    a0Var.a(false);
                }
                TreeSet treeSet2 = a0Var.f4708a;
                if (!v2.a.b(b0.class)) {
                    try {
                        iIntValue = f4715d[0].intValue();
                    } catch (Throwable th) {
                        v2.a.a(th, b0.class);
                    }
                }
                int iB = b(treeSet2, iIntValue, iArr);
                if (iB != -1) {
                    f4.j jVar2 = new f4.j();
                    jVar2.f2610a = iB;
                    return jVar2;
                }
            }
            f4.j jVar3 = new f4.j();
            jVar3.f2610a = -1;
            return jVar3;
        } catch (Throwable th2) {
            v2.a.a(th2, this);
            return null;
        }
    }
}
