package l3;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.firebase.messaging.j0;
import e3.k;
import e3.t;
import e3.u;
import e3.w;
import f3.l;
import f3.n;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import m.h3;
import q2.x;
import y1.j;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g3.d f3810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m3.d f3811c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c5.h f3812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f3813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n3.c f3814f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final o3.a f3815g;
    public final o3.a h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final m3.c f3816i;

    public i(Context context, g3.d dVar, m3.d dVar2, c5.h hVar, Executor executor, n3.c cVar, o3.a aVar, o3.a aVar2, m3.c cVar2) {
        this.f3809a = context;
        this.f3810b = dVar;
        this.f3811c = dVar2;
        this.f3812d = hVar;
        this.f3813e = executor;
        this.f3814f = cVar;
        this.f3815g = aVar;
        this.h = aVar2;
        this.f3816i = cVar2;
    }

    public final void a(f3.i iVar, int i6) {
        byte[] bArr;
        long j3;
        g3.a aVar;
        String str;
        g3.a aVar2;
        int i9;
        d3.b bVarB;
        String str2;
        Integer numValueOf;
        h3 h3Var;
        final i iVar2 = this;
        final f3.i iVar3 = iVar;
        byte[] bArr2 = iVar3.f2569b;
        g3.e eVarA = iVar2.f3810b.a(iVar3.f2568a);
        long jMax = 0;
        while (true) {
            final int i10 = 0;
            n3.b bVar = new n3.b(iVar2) { // from class: l3.f

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ i f3799b;

                {
                    this.f3799b = iVar2;
                }

                @Override // n3.b
                public final Object a() {
                    Boolean bool;
                    switch (i10) {
                        case 0:
                            f3.i iVar4 = iVar3;
                            m3.h hVar = (m3.h) this.f3799b.f3811c;
                            SQLiteDatabase sQLiteDatabaseA = hVar.a();
                            sQLiteDatabaseA.beginTransaction();
                            try {
                                Long lC = m3.h.c(sQLiteDatabaseA, iVar4);
                                if (lC == null) {
                                    bool = Boolean.FALSE;
                                } else {
                                    Cursor cursorRawQuery = hVar.a().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lC.toString()});
                                    try {
                                        Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                                        cursorRawQuery.close();
                                        bool = boolValueOf;
                                    } catch (Throwable th) {
                                        cursorRawQuery.close();
                                        throw th;
                                    }
                                }
                                sQLiteDatabaseA.setTransactionSuccessful();
                                return bool;
                            } finally {
                                sQLiteDatabaseA.endTransaction();
                            }
                        default:
                            m3.h hVar2 = (m3.h) this.f3799b.f3811c;
                            hVar2.getClass();
                            return (Iterable) hVar2.g(new b2.d(hVar2, 6, iVar3));
                    }
                }
            };
            m3.h hVar = (m3.h) iVar2.f3814f;
            if (!((Boolean) hVar.t(bVar)).booleanValue()) {
                hVar.t(new h(jMax, iVar2, iVar3));
                return;
            }
            final int i11 = 1;
            Iterable iterable = (Iterable) hVar.t(new n3.b(iVar2) { // from class: l3.f

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ i f3799b;

                {
                    this.f3799b = iVar2;
                }

                @Override // n3.b
                public final Object a() {
                    Boolean bool;
                    switch (i11) {
                        case 0:
                            f3.i iVar4 = iVar3;
                            m3.h hVar2 = (m3.h) this.f3799b.f3811c;
                            SQLiteDatabase sQLiteDatabaseA = hVar2.a();
                            sQLiteDatabaseA.beginTransaction();
                            try {
                                Long lC = m3.h.c(sQLiteDatabaseA, iVar4);
                                if (lC == null) {
                                    bool = Boolean.FALSE;
                                } else {
                                    Cursor cursorRawQuery = hVar2.a().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lC.toString()});
                                    try {
                                        Boolean boolValueOf = Boolean.valueOf(cursorRawQuery.moveToNext());
                                        cursorRawQuery.close();
                                        bool = boolValueOf;
                                    } catch (Throwable th) {
                                        cursorRawQuery.close();
                                        throw th;
                                    }
                                }
                                sQLiteDatabaseA.setTransactionSuccessful();
                                return bool;
                            } finally {
                                sQLiteDatabaseA.endTransaction();
                            }
                        default:
                            m3.h hVar22 = (m3.h) this.f3799b.f3811c;
                            hVar22.getClass();
                            return (Iterable) hVar22.g(new b2.d(hVar22, 6, iVar3));
                    }
                }
            });
            if (!iterable.iterator().hasNext()) {
                return;
            }
            if (eVarA == null) {
                j.d("Uploader", "Unknown backend for %s, deleting event batch for it...", iVar3);
                aVar2 = new g3.a(3, -1L);
                bArr = bArr2;
                j3 = jMax;
                i9 = 2;
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((m3.b) it.next()).f4261c);
                }
                if (bArr2 != null) {
                    m3.c cVar = iVar2.f3816i;
                    Objects.requireNonNull(cVar);
                    i3.a aVar3 = (i3.a) hVar.t(new j0(6, cVar));
                    com.google.android.gms.common.internal.g gVar = new com.google.android.gms.common.internal.g(2);
                    gVar.f1413f = new HashMap();
                    gVar.f1410c = Long.valueOf(iVar2.f3815g.f());
                    gVar.f1412e = Long.valueOf(iVar2.h.f());
                    gVar.f1411d = "GDT_CLIENT_METRICS";
                    c3.c cVar2 = new c3.c("proto");
                    aVar3.getClass();
                    c5.h hVar2 = n.f2580a;
                    hVar2.getClass();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        hVar2.i(aVar3, byteArrayOutputStream);
                    } catch (IOException unused) {
                    }
                    gVar.f1409b = new l(cVar2, byteArrayOutputStream.toByteArray());
                    arrayList.add(((d3.c) eVarA).a(gVar.c()));
                }
                d3.c cVar3 = (d3.c) eVarA;
                HashMap map = new HashMap();
                int size = arrayList.size();
                int i12 = 0;
                while (i12 < size) {
                    Object obj = arrayList.get(i12);
                    i12++;
                    f3.h hVar3 = (f3.h) obj;
                    String str3 = hVar3.f2562a;
                    if (map.containsKey(str3)) {
                        ((List) map.get(str3)).add(hVar3);
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(hVar3);
                        map.put(str3, arrayList2);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                for (Map.Entry entry : map.entrySet()) {
                    f3.h hVar4 = (f3.h) ((List) entry.getValue()).get(0);
                    w wVar = w.f2387a;
                    long jF = cVar3.f2272f.f();
                    long jF2 = cVar3.f2271e.f();
                    e3.j jVar = new e3.j(new e3.h(Integer.valueOf(hVar4.b("sdk-version")), hVar4.a("model"), hVar4.a("hardware"), hVar4.a("device"), hVar4.a("product"), hVar4.a("os-uild"), hVar4.a("manufacturer"), hVar4.a("fingerprint"), hVar4.a("locale"), hVar4.a("country"), hVar4.a("mcc_mnc"), hVar4.a("application_build")));
                    try {
                        numValueOf = Integer.valueOf(Integer.parseInt((String) entry.getKey()));
                        str2 = null;
                    } catch (NumberFormatException unused2) {
                        str2 = (String) entry.getKey();
                        numValueOf = null;
                    }
                    ArrayList arrayList4 = new ArrayList();
                    for (f3.h hVar5 : (List) entry.getValue()) {
                        byte[] bArr3 = bArr2;
                        l lVar = hVar5.f2564c;
                        c3.c cVar4 = lVar.f2577a;
                        byte[] bArr4 = lVar.f2578b;
                        long j8 = jMax;
                        if (cVar4.equals(new c3.c("proto"))) {
                            h3Var = new h3();
                            h3Var.f3992d = bArr4;
                        } else if (cVar4.equals(new c3.c(MTPushConstants.Analysis.KEY_JSON))) {
                            String str4 = new String(bArr4, Charset.forName("UTF-8"));
                            h3 h3Var2 = new h3();
                            h3Var2.f3993e = str4;
                            h3Var = h3Var2;
                        } else {
                            String strH = j.h("CctTransportBackend");
                            if (Log.isLoggable(strH, 5)) {
                                Log.w(strH, "Received event of unsupported encoding " + cVar4 + ". Skipping...");
                            }
                            bArr2 = bArr3;
                            jMax = j8;
                        }
                        h3Var.f3989a = Long.valueOf(hVar5.f2565d);
                        h3Var.f3991c = Long.valueOf(hVar5.f2566e);
                        String str5 = (String) hVar5.f2567f.get("tz-offset");
                        h3Var.f3994f = Long.valueOf(str5 == null ? 0L : Long.valueOf(str5).longValue());
                        h3Var.f3995g = new e3.n((u) u.f2385a.get(hVar5.b("net-type")), (t) t.f2383a.get(hVar5.b("mobile-subtype")));
                        Integer num = hVar5.f2563b;
                        if (num != null) {
                            h3Var.f3990b = num;
                        }
                        String strF = ((Long) h3Var.f3989a) == null ? " eventTimeMs" : "";
                        if (((Long) h3Var.f3991c) == null) {
                            strF = strF.concat(" eventUptimeMs");
                        }
                        if (((Long) h3Var.f3994f) == null) {
                            strF = x.f(strF, " timezoneOffsetSeconds");
                        }
                        if (!strF.isEmpty()) {
                            throw new IllegalStateException("Missing required properties:".concat(strF));
                        }
                        arrayList4.add(new k(((Long) h3Var.f3989a).longValue(), (Integer) h3Var.f3990b, ((Long) h3Var.f3991c).longValue(), (byte[]) h3Var.f3992d, (String) h3Var.f3993e, ((Long) h3Var.f3994f).longValue(), (e3.n) h3Var.f3995g));
                        bArr2 = bArr3;
                        jMax = j8;
                    }
                    arrayList3.add(new e3.l(jF, jF2, jVar, numValueOf, str2, arrayList4));
                    bArr2 = bArr2;
                }
                bArr = bArr2;
                j3 = jMax;
                e3.i iVar4 = new e3.i(arrayList3);
                URL urlB = cVar3.f2270d;
                if (bArr != null) {
                    try {
                        d3.a aVarA = d3.a.a(bArr);
                        str = aVarA.f2263b;
                        if (str == null) {
                            str = null;
                        }
                        String str6 = aVarA.f2262a;
                        if (str6 != null) {
                            urlB = d3.c.b(str6);
                        }
                    } catch (IllegalArgumentException unused3) {
                        aVar = new g3.a(3, -1L);
                    }
                } else {
                    str = null;
                }
                int i13 = 3;
                try {
                    c5.h hVar6 = new c5.h(urlB, iVar4, str, 5);
                    j0 j0Var = new j0(i13, cVar3);
                    int i14 = 5;
                    do {
                        bVarB = j0Var.b(hVar6);
                        URL url = bVarB.f2265b;
                        if (url != null) {
                            j.d("CctTransportBackend", "Following redirect to: %s", url);
                            hVar6 = new c5.h(url, (e3.i) hVar6.f1061c, (String) hVar6.f1062d, 5);
                        } else {
                            hVar6 = null;
                        }
                        if (hVar6 == null) {
                            break;
                        } else {
                            i14--;
                        }
                    } while (i14 >= 1);
                    int i15 = bVarB.f2264a;
                    if (i15 == 200) {
                        aVar2 = new g3.a(1, bVarB.f2266c);
                        i9 = 2;
                    } else {
                        if (i15 >= 500 || i15 == 404) {
                            aVar = new g3.a(2, -1L);
                        } else if (i15 == 400) {
                            try {
                                aVar = new g3.a(4, -1L);
                            } catch (IOException e9) {
                                e = e9;
                                j.e("CctTransportBackend", "Could not make request to the backend", e);
                                i9 = 2;
                                aVar2 = new g3.a(2, -1L);
                            }
                        } else {
                            aVar = new g3.a(3, -1L);
                        }
                        aVar2 = aVar;
                        i9 = 2;
                    }
                } catch (IOException e10) {
                    e = e10;
                }
            }
            int i16 = aVar2.f2858a;
            if (i16 == i9) {
                hVar.t(new g(this, iterable, iVar, j3));
                this.f3812d.t(iVar, i6 + 1, true);
                return;
            }
            iVar2 = this;
            iVar3 = iVar;
            jMax = j3;
            hVar.t(new b2.d(iVar2, 4, iterable));
            if (i16 == 1) {
                jMax = Math.max(jMax, aVar2.f2859b);
                if (bArr != null) {
                    hVar.t(new j0(8, iVar2));
                }
            } else if (i16 == 4) {
                HashMap map2 = new HashMap();
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    String str7 = ((m3.b) it2.next()).f4261c.f2562a;
                    if (map2.containsKey(str7)) {
                        map2.put(str7, Integer.valueOf(((Integer) map2.get(str7)).intValue() + 1));
                    } else {
                        map2.put(str7, 1);
                    }
                }
                hVar.t(new b2.d(iVar2, 5, map2));
            }
            bArr2 = bArr;
        }
    }
}
