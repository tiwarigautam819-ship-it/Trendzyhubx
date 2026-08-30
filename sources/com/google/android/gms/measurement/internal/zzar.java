package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.p3;
import com.google.android.gms.internal.measurement.q3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzar {
    private final String zza;
    private long zzb = -1;
    private final /* synthetic */ zzal zzc;

    public zzar(zzal zzalVar, String str) {
        this.zzc = zzalVar;
        d0.d(str);
        this.zza = str;
    }

    public final List<zzap> zza() {
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                cursorQuery = this.zzc.e_().query("raw_events", new String[]{"rowid", "name", "timestamp", "metadata_fingerprint", MTCoreConstants.Protocol.KEY_DATA, "realtime"}, "app_id = ? and rowid > ?", new String[]{this.zza, String.valueOf(this.zzb)}, null, null, "rowid", "1000");
            } catch (SQLiteException e9) {
                this.zzc.zzj().zzg().zza("Data loss. Error querying raw events batch. appId", zzgo.zza(this.zza), e9);
                if (0 != 0) {
                    cursor.close();
                }
            }
            if (!cursorQuery.moveToFirst()) {
                List<zzap> list = Collections.EMPTY_LIST;
                cursorQuery.close();
                return list;
            }
            do {
                long j3 = cursorQuery.getLong(0);
                long j8 = cursorQuery.getLong(3);
                boolean z5 = cursorQuery.getLong(5) == 1;
                byte[] blob = cursorQuery.getBlob(4);
                if (j3 > this.zzb) {
                    this.zzb = j3;
                }
                try {
                    p3 p3Var = (p3) zzoo.zza(q3.A(), blob);
                    String string = cursorQuery.getString(1);
                    if (string == null) {
                        string = "";
                    }
                    p3Var.j(string);
                    long j9 = cursorQuery.getLong(2);
                    p3Var.e();
                    q3.x(j9, (q3) p3Var.f1993b);
                    arrayList.add(new zzap(j3, j8, z5, (q3) p3Var.c()));
                } catch (IOException e10) {
                    this.zzc.zzj().zzg().zza("Data loss. Failed to merge raw event. appId", zzgo.zza(this.zza), e10);
                }
            } while (cursorQuery.moveToNext());
            cursorQuery.close();
            return arrayList;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }
}
