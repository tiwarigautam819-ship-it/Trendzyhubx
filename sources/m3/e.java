package m3;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f4262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f3.i f4263b;

    public /* synthetic */ e(long j3, f3.i iVar) {
        this.f4262a = j3;
        this.f4263b = iVar;
    }

    @Override // m3.f
    public final Object apply(Object obj) {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(this.f4262a));
        f3.i iVar = this.f4263b;
        String str = iVar.f2568a;
        c3.d dVar = iVar.f2570c;
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{str, String.valueOf(p3.a.a(dVar))}) < 1) {
            contentValues.put("backend_name", iVar.f2568a);
            contentValues.put("priority", Integer.valueOf(p3.a.a(dVar)));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }
}
