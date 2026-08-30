package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.m0;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
public final class zzaw {
    private static Set<String> zza(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 0", null);
        try {
            Collections.addAll(hashSet, cursorRawQuery.getColumnNames());
            return hashSet;
        } finally {
            cursorRawQuery.close();
        }
    }

    public static void zza(zzgo zzgoVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) {
        if (zzgoVar != null) {
            if (!zza(zzgoVar, sQLiteDatabase, str)) {
                sQLiteDatabase.execSQL(str2);
            }
            try {
                Set<String> setZza = zza(sQLiteDatabase, str);
                for (String str4 : str3.split(",")) {
                    if (!setZza.remove(str4)) {
                        throw new SQLiteException("Table " + str + " is missing required column: " + str4);
                    }
                }
                if (strArr != null) {
                    for (int i6 = 0; i6 < strArr.length; i6 += 2) {
                        if (!setZza.remove(strArr[i6])) {
                            sQLiteDatabase.execSQL(strArr[i6 + 1]);
                        }
                    }
                }
                if (setZza.isEmpty()) {
                    return;
                }
                zzgoVar.zzu().zza("Table has extra columns. table, columns", str, TextUtils.join(", ", setZza));
                return;
            } catch (SQLiteException e9) {
                zzgoVar.zzg().zza("Failed to verify columns on table that was just created", str);
                throw e9;
            }
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    public static void zza(zzgo zzgoVar, SQLiteDatabase sQLiteDatabase) {
        if (zzgoVar != null) {
            String path = sQLiteDatabase.getPath();
            int i6 = m0.f1724c;
            File file = new File(path);
            if (!file.setReadable(false, false)) {
                zzgoVar.zzu().zza("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                zzgoVar.zzu().zza("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                zzgoVar.zzu().zza("Failed to turn on database read permission for owner");
            }
            if (file.setWritable(true, true)) {
                return;
            }
            zzgoVar.zzu().zza("Failed to turn on database write permission for owner");
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    private static boolean zza(zzgo zzgoVar, SQLiteDatabase sQLiteDatabase, String str) {
        if (zzgoVar != null) {
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
                    boolean zMoveToFirst = cursorQuery.moveToFirst();
                    cursorQuery.close();
                    return zMoveToFirst;
                } catch (SQLiteException e9) {
                    zzgoVar.zzu().zza("Error querying for table", str, e9);
                    if (cursorQuery == null) {
                        return false;
                    }
                    cursorQuery.close();
                    return false;
                }
            } finally {
            }
        } else {
            throw new IllegalArgumentException("Monitor must not be null");
        }
    }
}
