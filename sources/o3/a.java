package o3;

import a2.c;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.cardview.widget.CardView;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.android.gms.internal.measurement.y4;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.components.ComponentRegistrar;
import d7.g;
import h7.b;
import java.io.File;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;
import org.json.JSONArray;
import org.json.JSONObject;
import q2.g0;
import q2.k;
import q2.t;
import q2.w;
import q2.z;
import r6.d;
import s5.m;
import s5.n;
import s6.r;
import x1.e;
import x1.e0;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public class a implements n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static a f4422b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4423a;

    public /* synthetic */ a(int i6) {
        this.f4423a = i6;
    }

    public static k b() {
        return new k(null, r.r(new d(2, null), new d(4, null), new d(9, null), new d(17, null), new d(341, null)), r.r(new d(102, null), new d(190, null), new d(412, null)), null, null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0045, code lost:
    
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0082, code lost:
    
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x006c A[EDGE_INSN: B:92:0x006c->B:46:0x006c BREAK  A[LOOP:2: B:47:0x006e->B:58:0x0085], EDGE_INSN: B:93:0x006c->B:46:0x006c BREAK  A[LOOP:2: B:47:0x006e->B:58:0x0085, LOOP_LABEL: LOOP:2: B:47:0x006e->B:58:0x0085]] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00a2 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean g(r0.b r7, android.text.Editable r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: o3.a.g(r0.b, android.text.Editable, int, int, boolean):boolean");
    }

    public static void i(e0 e0Var, String str, String str2) {
        g.f(MTPushConstants.Operation.KEY_TAG, str);
        g.f("string", str2);
        k(e0Var, str, str2);
    }

    public static void j(e0 e0Var, String str, String str2, Object... objArr) {
        g.f(MTPushConstants.Operation.KEY_TAG, str);
        synchronized (x1.r.f5919b) {
        }
    }

    public static void k(e0 e0Var, String str, String str2) {
        g.f(MTPushConstants.Operation.KEY_TAG, str);
        g.f("string", str2);
        synchronized (x1.r.f5919b) {
        }
    }

    public static HashMap l(JSONObject jSONObject) {
        int iOptInt;
        HashSet hashSet;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(FirebaseAnalytics.Param.ITEMS);
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
            return null;
        }
        HashMap map = new HashMap();
        int length = jSONArrayOptJSONArray.length();
        for (int i6 = 0; i6 < length; i6++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i6);
            if (jSONObjectOptJSONObject != null && (iOptInt = jSONObjectOptJSONObject.optInt("code")) != 0) {
                JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("subcodes");
                if (jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray2.length() <= 0) {
                    hashSet = null;
                } else {
                    hashSet = new HashSet();
                    int length2 = jSONArrayOptJSONArray2.length();
                    for (int i9 = 0; i9 < length2; i9++) {
                        int iOptInt2 = jSONArrayOptJSONArray2.optInt(i9);
                        if (iOptInt2 != 0) {
                            hashSet.add(Integer.valueOf(iOptInt2));
                        }
                    }
                }
                map.put(Integer.valueOf(iOptInt), hashSet);
            }
        }
        return map;
    }

    public static void q() {
        File[] fileArrListFiles;
        if (g0.z()) {
            return;
        }
        File fileD = android.support.v4.media.session.a.d();
        if (fileD == null) {
            fileArrListFiles = new File[0];
        } else {
            fileArrListFiles = fileD.listFiles(new m1.g(2));
            if (fileArrListFiles == null) {
                fileArrListFiles = new File[0];
            }
        }
        ArrayList arrayList = new ArrayList(fileArrListFiles.length);
        for (File file : fileArrListFiles) {
            arrayList.add(c.i(file));
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            if (((s2.d) obj).a()) {
                arrayList2.add(obj);
            }
        }
        List listU = s6.g.u(arrayList2, new g0.a(2));
        JSONArray jSONArray = new JSONArray();
        Iterator it = c.m(0, Math.min(listU.size(), 5)).iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.f3022c) {
                android.support.v4.media.session.a.j("crash_reports", jSONArray, new t2.b(listU, 1));
                return;
            }
            jSONArray.put(listU.get(bVar.nextInt()));
        }
    }

    public synchronized k a() {
        k kVar;
        try {
            if (k.f4752e == null) {
                k.f4752e = b();
            }
            kVar = k.f4752e;
            g.d("null cannot be cast to non-null type com.facebook.internal.FacebookRequestErrorClassification", kVar);
        } catch (Throwable th) {
            throw th;
        }
        return kVar;
    }

    public synchronized k c() {
        t tVarB = w.b(x1.r.b());
        if (tVarB == null) {
            return k.f4751d.a();
        }
        return tVarB.f4814e;
    }

    public e d() {
        e eVar;
        e eVar2 = e.f5831g;
        if (eVar2 != null) {
            return eVar2;
        }
        synchronized (this) {
            eVar = e.f5831g;
            if (eVar == null) {
                y0.b bVarA = y0.b.a(x1.r.a());
                g.e("getInstance(applicationContext)", bVarA);
                e eVar3 = new e(bVarA, new x1.b(0));
                e.f5831g = eVar3;
                eVar = eVar3;
            }
        }
        return eVar;
    }

    public Signature[] e(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }

    public long f() {
        switch (this.f4423a) {
            case 0:
                return SystemClock.elapsedRealtime();
            default:
                return System.currentTimeMillis();
        }
    }

    public boolean h(CharSequence charSequence) {
        return false;
    }

    @Override // s5.n
    public Object m() {
        switch (this.f4423a) {
            case 13:
                return new TreeSet();
            case 14:
                return new LinkedHashSet();
            case 15:
                return new ArrayDeque();
            case 16:
                return new ArrayList();
            case 17:
                return new ConcurrentSkipListMap();
            case 18:
                return new ConcurrentHashMap();
            case 19:
                return new TreeMap();
            case 20:
                return new LinkedHashMap();
            default:
                return new m(true);
        }
    }

    public List n(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (v4.b bVar : componentRegistrar.getComponents()) {
            String str = bVar.f5588a;
            if (str != null) {
                bVar = new v4.b(str, bVar.f5589b, bVar.f5590c, bVar.f5591d, bVar.f5592e, new b2.d(str, bVar, 9), bVar.f5594g);
            }
            arrayList.add(bVar);
        }
        return arrayList;
    }

    public synchronized void o(String str) {
        g.f("accessToken", str);
        x1.r.h(e0.f5838b);
        p(str);
    }

    public synchronized void p(String str) {
        g.f("original", str);
        z.f4847d.put(str, "ACCESS_TOKEN_REMOVED");
    }

    public void r(y4 y4Var, float f9) {
        r.a aVar = (r.a) ((Drawable) y4Var.f1990b);
        CardView cardView = (CardView) y4Var.f1991c;
        boolean useCompatPadding = cardView.getUseCompatPadding();
        boolean preventCornerOverlap = cardView.getPreventCornerOverlap();
        if (f9 != aVar.f4934e || aVar.f4935f != useCompatPadding || aVar.f4936g != preventCornerOverlap) {
            aVar.f4934e = f9;
            aVar.f4935f = useCompatPadding;
            aVar.f4936g = preventCornerOverlap;
            aVar.b(null);
            aVar.invalidateSelf();
        }
        if (!cardView.getUseCompatPadding()) {
            y4Var.F(0, 0, 0, 0);
            return;
        }
        r.a aVar2 = (r.a) ((Drawable) y4Var.f1990b);
        float f10 = aVar2.f4934e;
        float f11 = aVar2.f4930a;
        int iCeil = (int) Math.ceil(r.b.a(f10, f11, cardView.getPreventCornerOverlap()));
        int iCeil2 = (int) Math.ceil(r.b.b(f10, f11, cardView.getPreventCornerOverlap()));
        y4Var.F(iCeil, iCeil2, iCeil, iCeil2);
    }
}
