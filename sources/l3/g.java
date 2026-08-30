package l3;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements n3.b, w4.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f3802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f3804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3805e;

    public /* synthetic */ g(i iVar, Iterable iterable, f3.i iVar2, long j3) {
        this.f3801a = 0;
        this.f3803c = iVar;
        this.f3804d = iterable;
        this.f3805e = iVar2;
        this.f3802b = j3;
    }

    @Override // n3.b
    public Object a() {
        i iVar = (i) this.f3803c;
        Iterable iterable = (Iterable) this.f3804d;
        f3.i iVar2 = (f3.i) this.f3805e;
        m3.h hVar = (m3.h) iVar.f3811c;
        hVar.getClass();
        if (iterable.iterator().hasNext()) {
            String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + m3.h.u(iterable);
            SQLiteDatabase sQLiteDatabaseA = hVar.a();
            sQLiteDatabaseA.beginTransaction();
            try {
                sQLiteDatabaseA.compileStatement(str).execute();
                Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null);
                while (cursorRawQuery.moveToNext()) {
                    try {
                        hVar.s(cursorRawQuery.getInt(0), i3.c.MAX_RETRIES_REACHED, cursorRawQuery.getString(1));
                    } catch (Throwable th) {
                        cursorRawQuery.close();
                        throw th;
                    }
                }
                cursorRawQuery.close();
                sQLiteDatabaseA.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                sQLiteDatabaseA.endTransaction();
            }
        }
        hVar.g(new m3.e(iVar.f3815g.f() + this.f3802b, iVar2));
        return null;
    }

    @Override // w4.g
    public ScheduledFuture b(final o5.c cVar) {
        switch (this.f3801a) {
            case 1:
                w4.f fVar = (w4.f) this.f3803c;
                Runnable runnable = (Runnable) this.f3804d;
                return fVar.f5746b.schedule(new w4.d(fVar, runnable, cVar, 1), this.f3802b, (TimeUnit) this.f3805e);
            default:
                final w4.f fVar2 = (w4.f) this.f3803c;
                final Callable callable = (Callable) this.f3804d;
                return fVar2.f5746b.schedule(new Callable() { // from class: w4.e
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return fVar2.f5745a.submit(new a2.i(callable, 20, cVar));
                    }
                }, this.f3802b, (TimeUnit) this.f3805e);
        }
    }

    public /* synthetic */ g(w4.f fVar, Object obj, long j3, TimeUnit timeUnit, int i6) {
        this.f3801a = i6;
        this.f3803c = fVar;
        this.f3804d = obj;
        this.f3802b = j3;
        this.f3805e = timeUnit;
    }
}
