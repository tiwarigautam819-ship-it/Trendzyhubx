package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Handler;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class r4 extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1856b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r4(int i6, Object obj) {
        super(null);
        this.f1855a = i6;
        this.f1856b = obj;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        switch (this.f1855a) {
            case 2:
                return true;
            default:
                return super.deliverSelfNotifications();
        }
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z5) {
        Cursor cursor;
        switch (this.f1855a) {
            case 0:
                ((q4) this.f1856b).f1822a.set(true);
                return;
            case 1:
                u4 u4Var = (u4) this.f1856b;
                synchronized (u4Var.f1929e) {
                    u4Var.f1930f = null;
                    u4Var.f1927c.run();
                    break;
                }
                synchronized (u4Var) {
                    try {
                        Iterator it = u4Var.f1931g.iterator();
                        if (it.hasNext()) {
                            if (it.next() != null) {
                                throw new ClassCastException();
                            }
                            throw null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            default:
                m.u2 u2Var = (m.u2) this.f1856b;
                if (!u2Var.f4315b || (cursor = u2Var.f4316c) == null || cursor.isClosed()) {
                    return;
                }
                u2Var.f4314a = u2Var.f4316c.requery();
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r4(m.u2 u2Var) {
        super(new Handler());
        this.f1855a = 2;
        this.f1856b = u2Var;
    }
}
