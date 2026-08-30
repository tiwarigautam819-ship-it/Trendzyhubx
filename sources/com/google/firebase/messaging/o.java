package com.google.firebase.messaging;

import android.content.ContentValues;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o implements p4.h, n3.b, m3.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2133a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2135c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f2136d;

    public /* synthetic */ o(Object obj, Object obj2, Object obj3, int i6) {
        this.f2133a = i6;
        this.f2134b = obj;
        this.f2135c = obj2;
        this.f2136d = obj3;
    }

    @Override // n3.b
    public Object a() {
        k3.a aVar = (k3.a) this.f2134b;
        f3.i iVar = (f3.i) this.f2135c;
        f3.h hVar = (f3.h) this.f2136d;
        m3.h hVar2 = (m3.h) aVar.f3556d;
        hVar2.getClass();
        c3.d dVar = iVar.f2570c;
        String str = hVar.f2562a;
        String str2 = iVar.f2568a;
        String strH = y1.j.h("SQLiteEventStore");
        if (Log.isLoggable(strH, 3)) {
            Log.d(strH, "Storing event with priority=" + dVar + ", name=" + str + " for destination " + str2);
        }
        ((Long) hVar2.g(new o(hVar2, hVar, iVar, 2))).getClass();
        aVar.f3553a.t(iVar, 1, false);
        return null;
    }

    @Override // m3.f
    public Object apply(Object obj) throws Throwable {
        long jInsert;
        Cursor cursor;
        i3.c cVar;
        int i6 = this.f2133a;
        int i9 = 5;
        int i10 = 4;
        int i11 = 3;
        i3.c cVar2 = i3.c.CACHE_FULL;
        int i12 = 1;
        int i13 = 2;
        Object obj2 = this.f2136d;
        Object obj3 = this.f2135c;
        int i14 = 0;
        m3.h hVar = (m3.h) this.f2134b;
        switch (i6) {
            case 2:
                f3.h hVar2 = (f3.h) obj3;
                f3.l lVar = hVar2.f2564c;
                String str = hVar2.f2562a;
                f3.i iVar = (f3.i) obj2;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                long jSimpleQueryForLong = hVar.a().compileStatement("PRAGMA page_size").simpleQueryForLong() * hVar.a().compileStatement("PRAGMA page_count").simpleQueryForLong();
                m3.a aVar = hVar.f4270d;
                if (jSimpleQueryForLong >= aVar.f4254a) {
                    hVar.s(1L, cVar2, str);
                    return -1L;
                }
                Long lC = m3.h.c(sQLiteDatabase, iVar);
                if (lC != null) {
                    jInsert = lC.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", iVar.f2568a);
                    contentValues.put("priority", Integer.valueOf(p3.a.a(iVar.f2570c)));
                    contentValues.put("next_request_ms", (Integer) 0);
                    byte[] bArr = iVar.f2569b;
                    if (bArr != null) {
                        contentValues.put("extras", Base64.encodeToString(bArr, 0));
                    }
                    jInsert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                int i15 = aVar.f4258e;
                byte[] bArr2 = lVar.f2578b;
                boolean z5 = bArr2.length <= i15;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(jInsert));
                contentValues2.put("transport_name", str);
                contentValues2.put("timestamp_ms", Long.valueOf(hVar2.f2565d));
                contentValues2.put("uptime_ms", Long.valueOf(hVar2.f2566e));
                contentValues2.put("payload_encoding", lVar.f2577a.f1036a);
                contentValues2.put("code", hVar2.f2563b);
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z5));
                contentValues2.put("payload", z5 ? bArr2 : new byte[0]);
                long jInsert2 = sQLiteDatabase.insert("events", null, contentValues2);
                if (!z5) {
                    int iCeil = (int) Math.ceil(((double) bArr2.length) / ((double) i15));
                    for (int i16 = 1; i16 <= iCeil; i16++) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, (i16 - 1) * i15, Math.min(i16 * i15, bArr2.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("event_id", Long.valueOf(jInsert2));
                        contentValues3.put("sequence_num", Integer.valueOf(i16));
                        contentValues3.put("bytes", bArrCopyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry entry : Collections.unmodifiableMap(hVar2.f2567f).entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("event_id", Long.valueOf(jInsert2));
                    contentValues4.put("name", (String) entry.getKey());
                    contentValues4.put("value", (String) entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(jInsert2);
            case 3:
                ArrayList arrayList = (ArrayList) obj3;
                f3.i iVar2 = (f3.i) obj2;
                Cursor cursor2 = (Cursor) obj;
                while (cursor2.moveToNext()) {
                    long j3 = cursor2.getLong(0);
                    int i17 = cursor2.getInt(7) != 0 ? i12 : 0;
                    com.google.android.gms.common.internal.g gVar = new com.google.android.gms.common.internal.g(i13);
                    gVar.f1413f = new HashMap();
                    String string = cursor2.getString(i12);
                    if (string == null) {
                        throw new NullPointerException("Null transportName");
                    }
                    gVar.f1411d = string;
                    gVar.f1410c = Long.valueOf(cursor2.getLong(i13));
                    gVar.f1412e = Long.valueOf(cursor2.getLong(3));
                    if (i17 != 0) {
                        String string2 = cursor2.getString(4);
                        gVar.f1409b = new f3.l(string2 == null ? m3.h.f4266f : new c3.c(string2), cursor2.getBlob(5));
                    } else {
                        String string3 = cursor2.getString(4);
                        c3.c cVar3 = string3 == null ? m3.h.f4266f : new c3.c(string3);
                        Cursor cursorQuery = hVar.a().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j3)}, null, null, "sequence_num");
                        try {
                            ArrayList arrayList2 = new ArrayList();
                            int length = 0;
                            while (cursorQuery.moveToNext()) {
                                byte[] blob = cursorQuery.getBlob(0);
                                arrayList2.add(blob);
                                length += blob.length;
                                break;
                            }
                            byte[] bArr3 = new byte[length];
                            int i18 = 0;
                            int length2 = 0;
                            while (i18 < arrayList2.size()) {
                                byte[] bArr4 = (byte[]) arrayList2.get(i18);
                                cursor = cursorQuery;
                                try {
                                    ArrayList arrayList3 = arrayList2;
                                    System.arraycopy(bArr4, 0, bArr3, length2, bArr4.length);
                                    length2 += bArr4.length;
                                    i18++;
                                    cursorQuery = cursor;
                                    arrayList2 = arrayList3;
                                } catch (Throwable th) {
                                    th = th;
                                    cursor.close();
                                    throw th;
                                }
                            }
                            cursorQuery.close();
                            gVar.f1409b = new f3.l(cVar3, bArr3);
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = cursorQuery;
                        }
                    }
                    if (!cursor2.isNull(6)) {
                        gVar.f1414g = Integer.valueOf(cursor2.getInt(6));
                    }
                    arrayList.add(new m3.b(j3, iVar2, gVar.c()));
                    i12 = 1;
                    i13 = 2;
                }
                return null;
            default:
                HashMap map = (HashMap) obj3;
                y yVar = (y) obj2;
                ArrayList arrayList4 = (ArrayList) yVar.f2164c;
                Cursor cursor3 = (Cursor) obj;
                hVar.getClass();
                while (cursor3.moveToNext()) {
                    String string4 = cursor3.getString(i14);
                    int i19 = cursor3.getInt(1);
                    i3.c cVar4 = i3.c.REASON_UNKNOWN;
                    if (i19 != 0) {
                        if (i19 == 1) {
                            cVar4 = i3.c.MESSAGE_TOO_OLD;
                        } else if (i19 == 2) {
                            cVar = cVar2;
                        } else if (i19 == i11) {
                            cVar4 = i3.c.PAYLOAD_TOO_BIG;
                        } else if (i19 == i10) {
                            cVar4 = i3.c.MAX_RETRIES_REACHED;
                        } else if (i19 == i9) {
                            cVar4 = i3.c.INVALID_PAYLOD;
                        } else if (i19 == 6) {
                            cVar4 = i3.c.SERVER_ERROR;
                        } else {
                            y1.j.d("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i19));
                        }
                        cVar = cVar4;
                    } else {
                        cVar = cVar4;
                    }
                    long j8 = cursor3.getLong(2);
                    if (!map.containsKey(string4)) {
                        map.put(string4, new ArrayList());
                    }
                    ((List) map.get(string4)).add(new i3.d(j8, cVar));
                    i14 = 0;
                    i9 = 5;
                    i10 = 4;
                    i11 = 3;
                }
                for (Map.Entry entry2 : map.entrySet()) {
                    int i20 = i3.e.f3196c;
                    new ArrayList();
                    arrayList4.add(new i3.e((String) entry2.getKey(), Collections.unmodifiableList((List) entry2.getValue())));
                }
                long jF = hVar.f4268b.f();
                SQLiteDatabase sQLiteDatabaseA = hVar.a();
                sQLiteDatabaseA.beginTransaction();
                try {
                    Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]);
                    try {
                        cursorRawQuery.moveToNext();
                        i3.g gVar2 = new i3.g(cursorRawQuery.getLong(0), jF);
                        cursorRawQuery.close();
                        sQLiteDatabaseA.setTransactionSuccessful();
                        sQLiteDatabaseA.endTransaction();
                        yVar.f2163b = gVar2;
                        yVar.f2165d = new i3.b(new i3.f(hVar.a().compileStatement("PRAGMA page_size").simpleQueryForLong() * hVar.a().compileStatement("PRAGMA page_count").simpleQueryForLong(), m3.a.f4253f.f4254a));
                        yVar.f2162a = (String) hVar.f4271e.get();
                        return new i3.a((i3.g) yVar.f2163b, Collections.unmodifiableList(arrayList4), (i3.b) yVar.f2165d, (String) yVar.f2162a);
                    } catch (Throwable th3) {
                        cursorRawQuery.close();
                        throw th3;
                    }
                } catch (Throwable th4) {
                    sQLiteDatabaseA.endTransaction();
                    throw th4;
                }
        }
    }

    @Override // p4.h
    public p4.q c(Object obj) {
        FirebaseMessaging firebaseMessaging = (FirebaseMessaging) this.f2134b;
        String str = (String) this.f2135c;
        a0 a0Var = (a0) this.f2136d;
        String str2 = (String) obj;
        b0 b0VarD = FirebaseMessaging.d(firebaseMessaging.f2033b);
        t4.g gVar = firebaseMessaging.f2032a;
        gVar.a();
        String strD = "[DEFAULT]".equals(gVar.f5321b) ? "" : gVar.d();
        String strA = firebaseMessaging.h.a();
        synchronized (b0VarD) {
            String strA2 = a0.a(str2, strA, System.currentTimeMillis());
            if (strA2 != null) {
                SharedPreferences.Editor editorEdit = b0VarD.f2061a.edit();
                editorEdit.putString(strD + "|T|" + str + "|*", strA2);
                editorEdit.commit();
            }
        }
        if (a0Var == null || !str2.equals(a0Var.f2056a)) {
            t4.g gVar2 = firebaseMessaging.f2032a;
            gVar2.a();
            if ("[DEFAULT]".equals(gVar2.f5321b)) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    StringBuilder sb = new StringBuilder("Invoking onNewToken for app: ");
                    gVar2.a();
                    sb.append(gVar2.f5321b);
                    Log.d("FirebaseMessaging", sb.toString());
                }
                Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
                intent.putExtra("token", str2);
                new j(firebaseMessaging.f2033b).b(intent);
            }
        }
        return j7.g.l(str2);
    }
}
