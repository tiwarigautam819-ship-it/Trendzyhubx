package b2;

import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements p4.d, p4.a, k2.l, n3.b, m3.f, m6.e, v4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f909c;

    public /* synthetic */ d(Object obj, int i6, Object obj2) {
        this.f907a = i6;
        this.f908b = obj;
        this.f909c = obj2;
    }

    @Override // n3.b
    public Object a() {
        switch (this.f907a) {
            case 4:
                l3.i iVar = (l3.i) this.f908b;
                Iterable iterable = (Iterable) this.f909c;
                m3.h hVar = (m3.h) iVar.f3811c;
                hVar.getClass();
                if (iterable.iterator().hasNext()) {
                    hVar.a().compileStatement("DELETE FROM events WHERE _id in " + m3.h.u(iterable)).execute();
                    break;
                }
                break;
            default:
                l3.i iVar2 = (l3.i) this.f908b;
                for (Map.Entry entry : ((HashMap) this.f909c).entrySet()) {
                    ((m3.h) iVar2.f3816i).s(((Integer) entry.getValue()).intValue(), i3.c.INVALID_PAYLOD, (String) entry.getKey());
                }
                break;
        }
        return null;
    }

    @Override // m3.f
    public Object apply(Object obj) {
        m3.h hVar = (m3.h) this.f908b;
        f3.i iVar = (f3.i) this.f909c;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        m3.a aVar = hVar.f4270d;
        ArrayList arrayListO = hVar.o(sQLiteDatabase, iVar, aVar.f4255b);
        for (c3.d dVar : c3.d.values()) {
            if (dVar != iVar.f2570c) {
                int size = aVar.f4255b - arrayListO.size();
                if (size <= 0) {
                    break;
                }
                c5.h hVarA = f3.i.a();
                hVarA.v(iVar.f2568a);
                if (dVar == null) {
                    throw new NullPointerException("Null priority");
                }
                hVarA.f1062d = dVar;
                hVarA.f1061c = iVar.f2569b;
                arrayListO.addAll(hVar.o(sQLiteDatabase, hVarA.g(), size));
            }
        }
        HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i6 = 0; i6 < arrayListO.size(); i6++) {
            sb.append(((m3.b) arrayListO.get(i6)).f4259a);
            if (i6 < arrayListO.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        Cursor cursorQuery = sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                long j3 = cursorQuery.getLong(0);
                Set hashSet = (Set) map.get(Long.valueOf(j3));
                if (hashSet == null) {
                    hashSet = new HashSet();
                    map.put(Long.valueOf(j3), hashSet);
                }
                hashSet.add(new m3.g(cursorQuery.getString(1), cursorQuery.getString(2)));
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        cursorQuery.close();
        ListIterator listIterator = arrayListO.listIterator();
        while (listIterator.hasNext()) {
            m3.b bVar = (m3.b) listIterator.next();
            long j8 = bVar.f4259a;
            if (map.containsKey(Long.valueOf(j8))) {
                com.google.android.gms.common.internal.g gVarC = bVar.f4261c.c();
                for (m3.g gVar : (Set) map.get(Long.valueOf(j8))) {
                    gVarC.a(gVar.f4264a, gVar.f4265b);
                }
                listIterator.set(new m3.b(j8, bVar.f4260b, gVarC.c()));
            }
        }
        return arrayListO;
    }

    @Override // p4.a
    public Object b(p4.i iVar) {
        com.google.firebase.messaging.j jVar = (com.google.firebase.messaging.j) this.f908b;
        String str = (String) this.f909c;
        synchronized (jVar) {
            ((s.e) jVar.f2111b).remove(str);
        }
        return iVar;
    }

    @Override // k2.l
    public void c(File file) {
        l2.c cVar = (l2.c) this.f908b;
        l2.b bVar = (l2.b) this.f909c;
        d7.g.f("$slave", cVar);
        d7.g.f("file", file);
        cVar.f3771g = bVar;
        cVar.f3770f = file;
        Runnable runnable = cVar.h;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    @Override // v4.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object create(v4.c r5) {
        /*
            r4 = this;
            int r0 = r4.f907a
            switch(r0) {
                case 8: goto L1f;
                default: goto L5;
            }
        L5:
            java.lang.Object r0 = r4.f909c
            java.lang.String r0 = (java.lang.String) r0
            java.lang.Object r1 = r4.f908b
            v4.b r1 = (v4.b) r1
            android.os.Trace.beginSection(r0)     // Catch: java.lang.Throwable -> L1a
            v4.d r0 = r1.f5593f     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r5 = r0.create(r5)     // Catch: java.lang.Throwable -> L1a
            android.os.Trace.endSection()
            return r5
        L1a:
            r5 = move-exception
            android.os.Trace.endSection()
            throw r5
        L1f:
            java.lang.Object r0 = r4.f909c
            java.lang.String r0 = (java.lang.String) r0
            java.lang.Object r1 = r4.f908b
            com.getcapacitor.n r1 = (com.getcapacitor.n) r1
            java.lang.Class<android.content.Context> r2 = android.content.Context.class
            com.google.firebase.messaging.y r5 = (com.google.firebase.messaging.y) r5
            java.lang.Object r5 = r5.a(r2)
            android.content.Context r5 = (android.content.Context) r5
            int r1 = r1.f1350a
            switch(r1) {
                case 19: goto La3;
                case 20: goto L8e;
                case 21: goto L4c;
                default: goto L36;
            }
        L36:
            android.content.pm.PackageManager r1 = r5.getPackageManager()
            java.lang.String r5 = r5.getPackageName()
            java.lang.String r5 = r1.getInstallerPackageName(r5)
            if (r5 == 0) goto L49
            java.lang.String r5 = com.google.firebase.FirebaseCommonRegistrar.a(r5)
            goto Laf
        L49:
            java.lang.String r5 = ""
            goto Laf
        L4c:
            int r1 = android.os.Build.VERSION.SDK_INT
            android.content.pm.PackageManager r2 = r5.getPackageManager()
            java.lang.String r3 = "android.hardware.type.television"
            boolean r2 = r2.hasSystemFeature(r3)
            if (r2 == 0) goto L5d
            java.lang.String r5 = "tv"
            goto Laf
        L5d:
            android.content.pm.PackageManager r2 = r5.getPackageManager()
            java.lang.String r3 = "android.hardware.type.watch"
            boolean r2 = r2.hasSystemFeature(r3)
            if (r2 == 0) goto L6c
            java.lang.String r5 = "watch"
            goto Laf
        L6c:
            android.content.pm.PackageManager r2 = r5.getPackageManager()
            java.lang.String r3 = "android.hardware.type.automotive"
            boolean r2 = r2.hasSystemFeature(r3)
            if (r2 == 0) goto L7b
            java.lang.String r5 = "auto"
            goto Laf
        L7b:
            r2 = 26
            if (r1 < r2) goto L49
            android.content.pm.PackageManager r5 = r5.getPackageManager()
            java.lang.String r1 = "android.hardware.type.embedded"
            boolean r5 = r5.hasSystemFeature(r1)
            if (r5 == 0) goto L49
            java.lang.String r5 = "embedded"
            goto Laf
        L8e:
            android.content.pm.ApplicationInfo r5 = r5.getApplicationInfo()
            if (r5 == 0) goto L49
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 24
            if (r1 < r2) goto L49
            int r5 = t4.i.a(r5)
            java.lang.String r5 = java.lang.String.valueOf(r5)
            goto Laf
        La3:
            android.content.pm.ApplicationInfo r5 = r5.getApplicationInfo()
            if (r5 == 0) goto L49
            int r5 = r5.targetSdkVersion
            java.lang.String r5 = java.lang.String.valueOf(r5)
        Laf:
            o5.a r1 = new o5.a
            r1.<init>(r0, r5)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b2.d.create(v4.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d() {
        /*
            r7 = this;
            java.lang.Object r0 = r7.f908b
            q2.t r0 = (q2.t) r0
            java.lang.Object r1 = r7.f909c
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Class<b2.f> r2 = b2.f.class
            boolean r3 = v2.a.b(r2)
            if (r3 == 0) goto L11
            goto L66
        L11:
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L1d
            boolean r0 = r0.f4816g     // Catch: java.lang.Throwable -> L1b
            if (r0 == 0) goto L1d
            r0 = r3
            goto L1e
        L1b:
            r0 = move-exception
            goto L63
        L1d:
            r0 = r4
        L1e:
            x1.r r5 = x1.r.f5918a     // Catch: java.lang.Throwable -> L1b
            x1.j0 r5 = x1.j0.f5896a     // Catch: java.lang.Throwable -> L1b
            java.lang.Class<x1.j0> r5 = x1.j0.class
            boolean r6 = v2.a.b(r5)     // Catch: java.lang.Throwable -> L1b
            if (r6 == 0) goto L2c
        L2a:
            r5 = r4
            goto L3d
        L2c:
            x1.j0 r6 = x1.j0.f5896a     // Catch: java.lang.Throwable -> L38
            r6.e()     // Catch: java.lang.Throwable -> L38
            x1.i0 r6 = x1.j0.f5902g     // Catch: java.lang.Throwable -> L38
            boolean r5 = r6.a()     // Catch: java.lang.Throwable -> L38
            goto L3d
        L38:
            r6 = move-exception
            v2.a.a(r6, r5)     // Catch: java.lang.Throwable -> L1b
            goto L2a
        L3d:
            if (r0 == 0) goto L66
            if (r5 == 0) goto L66
            b2.f r0 = b2.f.f912a     // Catch: java.lang.Throwable -> L1b
            boolean r5 = v2.a.b(r0)     // Catch: java.lang.Throwable -> L1b
            if (r5 == 0) goto L4a
            goto L66
        L4a:
            boolean r5 = b2.f.h     // Catch: java.lang.Throwable -> L5e
            if (r5 == 0) goto L4f
            goto L66
        L4f:
            b2.f.h = r3     // Catch: java.lang.Throwable -> L5e
            java.util.concurrent.Executor r3 = x1.r.c()     // Catch: java.lang.Throwable -> L5e
            b2.e r5 = new b2.e     // Catch: java.lang.Throwable -> L5e
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L5e
            r3.execute(r5)     // Catch: java.lang.Throwable -> L5e
            goto L66
        L5e:
            r1 = move-exception
            v2.a.a(r1, r0)     // Catch: java.lang.Throwable -> L1b
            goto L66
        L63:
            v2.a.a(r0, r2)
        L66:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b2.d.d():void");
    }

    @Override // m6.e
    public void f(String str) {
        String str2 = (String) this.f909c;
        Map map = (Map) this.f908b;
        if (m6.g.b(str2)) {
            str2 = m6.g.f4302c;
        }
        m6.g.d(str2, map);
    }

    @Override // p4.d
    public void onComplete(p4.i iVar) {
        ((com.google.firebase.messaging.g) this.f908b).a((Intent) this.f909c);
    }

    public /* synthetic */ d(String str, Object obj, int i6) {
        this.f907a = i6;
        this.f909c = str;
        this.f908b = obj;
    }
}
