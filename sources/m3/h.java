package m3;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import com.google.firebase.messaging.o;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements d, n3.c, c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c3.c f4266f = new c3.c("proto");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f4267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o3.a f4268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o3.a f4269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f4270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q6.a f4271e;

    public h(o3.a aVar, o3.a aVar2, a aVar3, j jVar, q6.a aVar4) {
        this.f4267a = jVar;
        this.f4268b = aVar;
        this.f4269c = aVar2;
        this.f4270d = aVar3;
        this.f4271e = aVar4;
    }

    public static Long c(SQLiteDatabase sQLiteDatabase, f3.i iVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(iVar.f2568a, String.valueOf(p3.a.a(iVar.f2570c))));
        byte[] bArr = iVar.f2569b;
        if (bArr != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(bArr, 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor cursorQuery = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !cursorQuery.moveToNext() ? null : Long.valueOf(cursorQuery.getLong(0));
        } finally {
            cursorQuery.close();
        }
    }

    public static String u(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((b) it.next()).f4259a);
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static Object v(Cursor cursor, f fVar) {
        try {
            return fVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    public final SQLiteDatabase a() {
        j jVar = this.f4267a;
        Objects.requireNonNull(jVar);
        o3.a aVar = this.f4269c;
        long jF = aVar.f();
        while (true) {
            try {
                return jVar.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e9) {
                if (aVar.f() >= ((long) this.f4270d.f4256c) + jF) {
                    throw new n3.a("Timed out while trying to open db.", e9);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f4267a.close();
    }

    public final Object g(f fVar) {
        SQLiteDatabase sQLiteDatabaseA = a();
        sQLiteDatabaseA.beginTransaction();
        try {
            Object objApply = fVar.apply(sQLiteDatabaseA);
            sQLiteDatabaseA.setTransactionSuccessful();
            return objApply;
        } finally {
            sQLiteDatabaseA.endTransaction();
        }
    }

    public final ArrayList o(SQLiteDatabase sQLiteDatabase, f3.i iVar, int i6) {
        ArrayList arrayList = new ArrayList();
        Long lC = c(sQLiteDatabase, iVar);
        if (lC == null) {
            return arrayList;
        }
        v(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{lC.toString()}, null, null, null, String.valueOf(i6)), new o(this, arrayList, iVar, 3));
        return arrayList;
    }

    public final void s(long j3, i3.c cVar, String str) {
        g(new l3.h(j3, str, cVar));
    }

    public final Object t(n3.b bVar) {
        SQLiteDatabase sQLiteDatabaseA = a();
        o3.a aVar = this.f4269c;
        long jF = aVar.f();
        while (true) {
            try {
                sQLiteDatabaseA.beginTransaction();
                try {
                    Object objA = bVar.a();
                    sQLiteDatabaseA.setTransactionSuccessful();
                    return objA;
                } finally {
                    sQLiteDatabaseA.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e9) {
                if (aVar.f() >= ((long) this.f4270d.f4256c) + jF) {
                    throw new n3.a("Timed out while trying to acquire the lock.", e9);
                }
                SystemClock.sleep(50L);
            }
        }
    }
}
