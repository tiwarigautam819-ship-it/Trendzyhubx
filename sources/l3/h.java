package l3;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements n3.b, m3.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f3806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3808c;

    public /* synthetic */ h(long j3, Object obj, Object obj2) {
        this.f3807b = obj;
        this.f3808c = obj2;
        this.f3806a = j3;
    }

    @Override // n3.b
    public Object a() {
        i iVar = (i) this.f3807b;
        f3.i iVar2 = (f3.i) this.f3808c;
        m3.d dVar = iVar.f3811c;
        long jF = iVar.f3815g.f() + this.f3806a;
        m3.h hVar = (m3.h) dVar;
        hVar.getClass();
        hVar.g(new m3.e(jF, iVar2));
        return null;
    }

    @Override // m3.f
    public Object apply(Object obj) {
        String str = (String) this.f3807b;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        int i6 = ((i3.c) this.f3808c).f3193a;
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i6)});
        try {
            boolean z5 = cursorRawQuery.getCount() > 0;
            cursorRawQuery.close();
            long j3 = this.f3806a;
            if (z5) {
                sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j3 + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i6)});
                return null;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(i6));
            contentValues.put("events_dropped_count", Long.valueOf(j3));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
            return null;
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }
}
