package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import b4.b;
import com.engagelab.privates.core.constants.MTCoreConstants;
import com.engagelab.privates.push.constants.MTPushConstants;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.measurement.c2;
import com.google.android.gms.internal.measurement.c4;
import com.google.android.gms.internal.measurement.d2;
import com.google.android.gms.internal.measurement.d4;
import com.google.android.gms.internal.measurement.e2;
import com.google.android.gms.internal.measurement.ea;
import com.google.android.gms.internal.measurement.f2;
import com.google.android.gms.internal.measurement.g2;
import com.google.android.gms.internal.measurement.h2;
import com.google.android.gms.internal.measurement.h4;
import com.google.android.gms.internal.measurement.k2;
import com.google.android.gms.internal.measurement.l2;
import com.google.android.gms.internal.measurement.q3;
import com.google.android.gms.internal.measurement.u3;
import com.google.android.gms.internal.measurement.w3;
import com.google.android.gms.internal.measurement.x3;
import com.google.android.gms.internal.measurement.y3;
import com.google.android.gms.internal.measurement.y5;
import com.google.android.gms.internal.measurement.z3;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import q2.x;
import s.e;

/* JADX INFO: compiled from: r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6 */
/* JADX INFO: loaded from: classes.dex */
final class zzal extends zznr {
    private static final String[] zza = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    private static final String[] zzb = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzc = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", MTPushConstants.NotificationTime.KEY_DAYS, "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;", "daily_registered_triggers_count", "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;"};
    private static final String[] zzd = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zze = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzf = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzh = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzi = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private static final String[] zzj = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};
    private static final String[] zzk = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};
    private final zzat zzl;
    private final zznl zzm;

    public zzal(zznv zznvVar) {
        super(zznvVar);
        this.zzm = new zznl(zzb());
        this.zzl = new zzat(this, zza(), "google_app_measurement.db");
    }

    private final String zzao() {
        ((b) zzb()).getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        zznt zzntVar = zznt.GOOGLE_SIGNAL;
        return "(" + ("(upload_type = " + zzntVar.zza() + " AND (ABS(creation_timestamp - " + jCurrentTimeMillis + ") > CAST(" + zzbh.zzaf.zza(null).longValue() + " AS INTEGER)))") + " OR " + ("(upload_type != " + zzntVar.zza() + " AND (ABS(creation_timestamp - " + jCurrentTimeMillis + ") > CAST(" + zzag.zzm() + " AS INTEGER)))") + ")";
    }

    public final long b_() {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = e_().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (!cursorRawQuery.moveToFirst()) {
                    cursorRawQuery.close();
                    return -1L;
                }
                long j3 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j3;
            } catch (SQLiteException e9) {
                zzj().zzg().zza("Error querying raw events", e9);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return -1L;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public final long c_() {
        return zza("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    public final long d_() {
        return zza("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public final SQLiteDatabase e_() {
        zzt();
        try {
            return this.zzl.getWritableDatabase();
        } catch (SQLiteException e9) {
            zzj().zzu().zza("Error opening database", e9);
            throw e9;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003e  */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String f_() throws java.lang.Throwable {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.e_()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L22 android.database.sqlite.SQLiteException -> L27
            boolean r2 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L1a android.database.sqlite.SQLiteException -> L1c
            if (r2 == 0) goto L1e
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch: java.lang.Throwable -> L1a android.database.sqlite.SQLiteException -> L1c
            r0.close()
            return r1
        L1a:
            r1 = move-exception
            goto L3c
        L1c:
            r2 = move-exception
            goto L29
        L1e:
            r0.close()
            return r1
        L22:
            r0 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L3c
        L27:
            r2 = move-exception
            r0 = r1
        L29:
            com.google.android.gms.measurement.internal.zzgo r3 = r6.zzj()     // Catch: java.lang.Throwable -> L1a
            com.google.android.gms.measurement.internal.zzgq r3 = r3.zzg()     // Catch: java.lang.Throwable -> L1a
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.zza(r4, r2)     // Catch: java.lang.Throwable -> L1a
            if (r0 == 0) goto L3b
            r0.close()
        L3b:
            return r1
        L3c:
            if (r0 == 0) goto L41
            r0.close()
        L41:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.f_():java.lang.String");
    }

    public final boolean zzaa() {
        return zza().getDatabasePath("google_app_measurement.db").exists();
    }

    public final long zzb(String str, String str2) {
        long jZza;
        d0.d(str);
        d0.d(str2);
        zzt();
        zzal();
        SQLiteDatabase sQLiteDatabaseE_ = e_();
        sQLiteDatabaseE_.beginTransaction();
        long j3 = 0;
        try {
            try {
                jZza = zza("select " + str2 + " from app2 where app_id=?", new String[]{str}, -1L);
            } finally {
                sQLiteDatabaseE_.endTransaction();
            }
        } catch (SQLiteException e9) {
            e = e9;
        }
        if (jZza == -1) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("first_open_count", (Integer) 0);
            contentValues.put("previous_install_count", (Integer) 0);
            if (sQLiteDatabaseE_.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert column (got -1). appId", zzgo.zza(str), str2);
                return -1L;
            }
            jZza = 0;
            zzj().zzg().zza("Error inserting column. appId", zzgo.zza(str), str2, e);
            return j3;
        }
        try {
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("app_id", str);
            contentValues2.put(str2, Long.valueOf(1 + jZza));
            if (sQLiteDatabaseE_.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                zzj().zzg().zza("Failed to update column (got 0). appId", zzgo.zza(str), str2);
                return -1L;
            }
            sQLiteDatabaseE_.setTransactionSuccessful();
            return jZza;
        } catch (SQLiteException e10) {
            e = e10;
            j3 = jZza;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    public final boolean zzc() {
        return false;
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x002d: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:10:0x002d */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.os.Bundle zzd(java.lang.String r6) throws java.lang.Throwable {
        /*
            r5 = this;
            r5.zzt()
            r5.zzal()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r5.e_()     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            java.lang.String r2 = "select parameters from default_event_params where app_id=?"
            java.lang.String[] r3 = new java.lang.String[]{r6}     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L6b android.database.sqlite.SQLiteException -> L6d
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            if (r2 != 0) goto L31
            com.google.android.gms.measurement.internal.zzgo r6 = r5.zzj()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            com.google.android.gms.measurement.internal.zzgq r6 = r6.zzp()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            java.lang.String r2 = "Default event parameters not found"
            r6.zza(r2)     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            r1.close()
            return r0
        L2c:
            r6 = move-exception
            r0 = r1
            goto L82
        L2f:
            r6 = move-exception
            goto L6f
        L31:
            r2 = 0
            byte[] r2 = r1.getBlob(r2)     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            com.google.android.gms.internal.measurement.p3 r3 = com.google.android.gms.internal.measurement.q3.A()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f java.io.IOException -> L55
            com.google.android.gms.internal.measurement.s6 r2 = com.google.android.gms.measurement.internal.zzoo.zza(r3, r2)     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f java.io.IOException -> L55
            com.google.android.gms.internal.measurement.p3 r2 = (com.google.android.gms.internal.measurement.p3) r2     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f java.io.IOException -> L55
            com.google.android.gms.internal.measurement.z5 r2 = r2.c()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f java.io.IOException -> L55
            com.google.android.gms.internal.measurement.q3 r2 = (com.google.android.gms.internal.measurement.q3) r2     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f java.io.IOException -> L55
            r5.g_()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            com.google.android.gms.internal.measurement.j6 r6 = r2.C()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            android.os.Bundle r6 = com.google.android.gms.measurement.internal.zzoo.zza(r6)     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            r1.close()
            return r6
        L55:
            r2 = move-exception
            com.google.android.gms.measurement.internal.zzgo r3 = r5.zzj()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            com.google.android.gms.measurement.internal.zzgq r3 = r3.zzg()     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            java.lang.String r4 = "Failed to retrieve default event parameters. appId"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.zzgo.zza(r6)     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            r3.zza(r4, r6, r2)     // Catch: java.lang.Throwable -> L2c android.database.sqlite.SQLiteException -> L2f
            r1.close()
            return r0
        L6b:
            r6 = move-exception
            goto L82
        L6d:
            r6 = move-exception
            r1 = r0
        L6f:
            com.google.android.gms.measurement.internal.zzgo r2 = r5.zzj()     // Catch: java.lang.Throwable -> L2c
            com.google.android.gms.measurement.internal.zzgq r2 = r2.zzg()     // Catch: java.lang.Throwable -> L2c
            java.lang.String r3 = "Error selecting default event parameters"
            r2.zza(r3, r6)     // Catch: java.lang.Throwable -> L2c
            if (r1 == 0) goto L81
            r1.close()
        L81:
            return r0
        L82:
            if (r0 == 0) goto L87
            r0.close()
        L87:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zzd(java.lang.String):android.os.Bundle");
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x00b2: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:14:0x00b2 */
    /* JADX WARN: Removed duplicated region for block: B:111:0x036a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzg zze(java.lang.String r51) {
        /*
            Method dump skipped, instruction units count: 878
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zze(java.lang.String):com.google.android.gms.measurement.internal.zzg");
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x005a: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:14:0x0059 */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzan zzf(java.lang.String r11) throws java.lang.Throwable {
        /*
            r10 = this;
            com.google.android.gms.common.internal.d0.d(r11)
            r10.zzt()
            r10.zzal()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r10.e_()     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L70
            java.lang.String r3 = "apps"
            java.lang.String r0 = "remote_config"
            java.lang.String r4 = "config_last_modified_time"
            java.lang.String r5 = "e_tag"
            java.lang.String[] r4 = new java.lang.String[]{r0, r4, r5}     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L70
            java.lang.String r5 = "app_id=?"
            java.lang.String[] r6 = new java.lang.String[]{r11}     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L70
            r8 = 0
            r9 = 0
            r7 = 0
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L6d android.database.sqlite.SQLiteException -> L70
            boolean r0 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            if (r0 != 0) goto L31
            r2.close()
            return r1
        L31:
            r0 = 0
            byte[] r0 = r2.getBlob(r0)     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            r3 = 1
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            r4 = 2
            java.lang.String r4 = r2.getString(r4)     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            boolean r5 = r2.moveToNext()     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            if (r5 == 0) goto L5e
            com.google.android.gms.measurement.internal.zzgo r5 = r10.zzj()     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            com.google.android.gms.measurement.internal.zzgq r5 = r5.zzg()     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            java.lang.String r6 = "Got multiple records for app config, expected one. appId"
            java.lang.Object r7 = com.google.android.gms.measurement.internal.zzgo.zza(r11)     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            r5.zza(r6, r7)     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            goto L5e
        L58:
            r0 = move-exception
            r11 = r0
            r1 = r2
            goto L89
        L5c:
            r0 = move-exception
            goto L72
        L5e:
            if (r0 != 0) goto L64
            r2.close()
            return r1
        L64:
            com.google.android.gms.measurement.internal.zzan r5 = new com.google.android.gms.measurement.internal.zzan     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            r5.<init>(r0, r3, r4)     // Catch: java.lang.Throwable -> L58 android.database.sqlite.SQLiteException -> L5c
            r2.close()
            return r5
        L6d:
            r0 = move-exception
            r11 = r0
            goto L89
        L70:
            r0 = move-exception
            r2 = r1
        L72:
            com.google.android.gms.measurement.internal.zzgo r3 = r10.zzj()     // Catch: java.lang.Throwable -> L58
            com.google.android.gms.measurement.internal.zzgq r3 = r3.zzg()     // Catch: java.lang.Throwable -> L58
            java.lang.String r4 = "Error querying remote config. appId"
            java.lang.Object r11 = com.google.android.gms.measurement.internal.zzgo.zza(r11)     // Catch: java.lang.Throwable -> L58
            r3.zza(r4, r11, r0)     // Catch: java.lang.Throwable -> L58
            if (r2 == 0) goto L88
            r2.close()
        L88:
            return r1
        L89:
            if (r1 == 0) goto L8e
            r1.close()
        L8e:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zzf(java.lang.String):com.google.android.gms.measurement.internal.zzan");
    }

    public final zzax zzg(String str) {
        d0.h(str);
        zzt();
        zzal();
        return zzax.zza(zza("select dma_consent_settings from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    public final zzje zzh(String str) {
        d0.h(str);
        zzt();
        zzal();
        return zzje.zzb(zza("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    public final zzje zzi(String str) {
        d0.h(str);
        zzt();
        zzal();
        zzje zzjeVar = (zzje) zza("select consent_state, consent_source from consent_settings where app_id=? limit 1;", new String[]{str}, new zzau() { // from class: com.google.android.gms.measurement.internal.zzao
            @Override // com.google.android.gms.measurement.internal.zzau
            public final Object zza(Cursor cursor) {
                return zzje.zza(cursor.getString(0), cursor.getInt(1));
            }
        });
        return zzjeVar == null ? zzje.zza : zzjeVar;
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x007b: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]) (LINE:124), block:B:17:0x007a */
    public final zzoj zzj(String str) throws Throwable {
        Throwable th;
        Cursor cursor;
        Cursor cursorQuery;
        d0.d(str);
        zzt();
        zzal();
        ea.a();
        Cursor cursor2 = null;
        try {
            if (zze().zza(zzbh.zzcb)) {
                try {
                    cursorQuery = e_().query("upload_queue", new String[]{"rowId", "app_id", "measurement_batch", "upload_uri", "upload_headers", "upload_type", "retry_count"}, "app_id=? AND NOT " + zzao(), new String[]{str}, null, null, "creation_timestamp ASC", "1");
                    try {
                        if (!cursorQuery.moveToFirst()) {
                            cursorQuery.close();
                            return null;
                        }
                        String string = cursorQuery.getString(3);
                        if (TextUtils.isEmpty(string)) {
                            zzj().zzc().zza("Upload uri is null or empty. Destination is unknown. Dropping batch. ");
                            cursorQuery.close();
                            return null;
                        }
                        try {
                            w3 w3Var = (w3) zzoo.zza(x3.v(), cursorQuery.getBlob(2));
                            zznt zzntVar = zznt.values()[cursorQuery.getInt(5)];
                            if (zzntVar == zznt.SGTM || zzntVar == zznt.GOOGLE_ANALYTICS) {
                                if (cursorQuery.getInt(6) > 0) {
                                    ArrayList arrayList = new ArrayList();
                                    Iterator it = Collections.unmodifiableList(((x3) w3Var.f1993b).y()).iterator();
                                    while (it.hasNext()) {
                                        y3 y3Var = (y3) ((z3) it.next()).k();
                                        int i6 = cursorQuery.getInt(6);
                                        y3Var.e();
                                        z3.q1((z3) y3Var.f1993b, i6);
                                        arrayList.add((z3) y3Var.c());
                                    }
                                    w3Var.e();
                                    x3.t((x3) w3Var.f1993b);
                                    w3Var.e();
                                    x3.s((x3) w3Var.f1993b, arrayList);
                                }
                            }
                            HashMap map = new HashMap();
                            String string2 = cursorQuery.getString(4);
                            if (string2 != null) {
                                String[] strArrSplit = string2.split("\r\n");
                                int length = strArrSplit.length;
                                int i9 = 0;
                                while (true) {
                                    if (i9 >= length) {
                                        break;
                                    }
                                    String str2 = strArrSplit[i9];
                                    if (str2.isEmpty()) {
                                        break;
                                    }
                                    String[] strArrSplit2 = str2.split("=", 2);
                                    if (strArrSplit2.length != 2) {
                                        zzj().zzg().zza("Invalid upload header: ", str2);
                                        break;
                                    }
                                    map.put(strArrSplit2[0], strArrSplit2[1]);
                                    i9++;
                                }
                            }
                            zzoj zzojVarZza = new zzom().zza(cursorQuery.getLong(0)).zza((x3) w3Var.c()).zza(string).zza(map).zza(zzntVar).zza();
                            cursorQuery.close();
                            return zzojVarZza;
                        } catch (IOException e9) {
                            zzj().zzg().zza("Failed to queued MeasurementBatch from upload_queue. appId", str, e9);
                            cursorQuery.close();
                            return null;
                        }
                    } catch (SQLiteException e10) {
                        e = e10;
                        zzj().zzg().zza("Error to querying MeasurementBatch from upload_queue. appId", str, e);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                } catch (SQLiteException e11) {
                    e = e11;
                    cursorQuery = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor2 == null) {
                        throw th;
                    }
                    cursor2.close();
                    throw th;
                }
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
        }
    }

    public final List<zzno> zzk(String str) {
        d0.d(str);
        zzt();
        zzal();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = e_().query("trigger_uris", new String[]{"trigger_uri", "timestamp_millis", FirebaseAnalytics.Param.SOURCE}, "app_id=?", new String[]{str}, null, null, "rowid", null);
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return arrayList;
                }
                do {
                    String string = cursorQuery.getString(0);
                    if (string == null) {
                        string = "";
                    }
                    arrayList.add(new zzno(string, cursorQuery.getLong(1), cursorQuery.getInt(2)));
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return arrayList;
            } catch (SQLiteException e9) {
                zzj().zzg().zza("Error querying trigger uris. appId", zzgo.zza(str), e9);
                List<zzno> list = Collections.EMPTY_LIST;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return list;
            }
        } finally {
        }
    }

    public final List<zzop> zzl(String str) {
        String str2;
        d0.d(str);
        zzt();
        zzal();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = e_().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return arrayList;
                }
                while (true) {
                    String string = cursorQuery.getString(0);
                    String string2 = cursorQuery.getString(1);
                    if (string2 == null) {
                        string2 = "";
                    }
                    String str3 = string2;
                    long j3 = cursorQuery.getLong(2);
                    Object objZza = zza(cursorQuery, 3);
                    if (objZza == null) {
                        zzj().zzg().zza("Read invalid user property value, ignoring it. appId", zzgo.zza(str));
                        str2 = str;
                    } else {
                        str2 = str;
                        try {
                            arrayList.add(new zzop(str2, str3, string, j3, objZza));
                        } catch (SQLiteException e9) {
                            e = e9;
                        }
                    }
                    if (!cursorQuery.moveToNext()) {
                        cursorQuery.close();
                        return arrayList;
                    }
                    str = str2;
                }
            } finally {
            }
        } catch (SQLiteException e10) {
            e = e10;
            str2 = str;
        }
        zzj().zzg().zza("Error querying user properties. appId", zzgo.zza(str2), e);
        List<zzop> list = Collections.EMPTY_LIST;
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return list;
    }

    public final Map<Integer, d4> zzm(String str) {
        zzal();
        zzt();
        d0.d(str);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = e_().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    Map<Integer, d4> map = Collections.EMPTY_MAP;
                    cursorQuery.close();
                    return map;
                }
                e eVar = new e(0);
                do {
                    int i6 = cursorQuery.getInt(0);
                    try {
                        eVar.put(Integer.valueOf(i6), (d4) ((c4) zzoo.zza(d4.z(), cursorQuery.getBlob(1))).c());
                    } catch (IOException e9) {
                        zzj().zzg().zza("Failed to merge filter results. appId, audienceId, error", zzgo.zza(str), Integer.valueOf(i6), e9);
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return eVar;
            } catch (SQLiteException e10) {
                zzj().zzg().zza("Database error querying filter results. appId", zzgo.zza(str), e10);
                Map<Integer, d4> map2 = Collections.EMPTY_MAP;
                if (0 != 0) {
                    cursor.close();
                }
                return map2;
            }
        } finally {
        }
    }

    public final Map<Integer, List<f2>> zzn(String str) {
        d0.d(str);
        e eVar = new e(0);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = e_().query("event_filters", new String[]{"audience_id", MTCoreConstants.Protocol.KEY_DATA}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    Map<Integer, List<f2>> map = Collections.EMPTY_MAP;
                    cursorQuery.close();
                    return map;
                }
                do {
                    try {
                        f2 f2Var = (f2) ((e2) zzoo.zza(f2.s(), cursorQuery.getBlob(1))).c();
                        if (f2Var.z()) {
                            int i6 = cursorQuery.getInt(0);
                            List arrayList = (List) eVar.get(Integer.valueOf(i6));
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                eVar.put(Integer.valueOf(i6), arrayList);
                            }
                            arrayList.add(f2Var);
                        }
                    } catch (IOException e9) {
                        zzj().zzg().zza("Failed to merge filter. appId", zzgo.zza(str), e9);
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return eVar;
            } catch (SQLiteException e10) {
                zzj().zzg().zza("Database error querying filters. appId", zzgo.zza(str), e10);
                Map<Integer, List<f2>> map2 = Collections.EMPTY_MAP;
                if (0 != 0) {
                    cursor.close();
                }
                return map2;
            }
        } finally {
        }
    }

    public final Map<Integer, List<Integer>> zzo(String str) {
        zzal();
        zzt();
        d0.d(str);
        e eVar = new e(0);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = e_().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str, str});
                if (!cursorRawQuery.moveToFirst()) {
                    Map<Integer, List<Integer>> map = Collections.EMPTY_MAP;
                    cursorRawQuery.close();
                    return map;
                }
                do {
                    int i6 = cursorRawQuery.getInt(0);
                    List arrayList = (List) eVar.get(Integer.valueOf(i6));
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        eVar.put(Integer.valueOf(i6), arrayList);
                    }
                    arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                } while (cursorRawQuery.moveToNext());
                cursorRawQuery.close();
                return eVar;
            } catch (SQLiteException e9) {
                zzj().zzg().zza("Database error querying scoped filters. appId", zzgo.zza(str), e9);
                Map<Integer, List<Integer>> map2 = Collections.EMPTY_MAP;
                if (0 != 0) {
                    cursor.close();
                }
                return map2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final void zzp() {
        zzal();
        e_().beginTransaction();
    }

    public final void zzq(String str) {
        zzbb zzbbVarZzd;
        zzi("events_snapshot", str);
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = e_().query("events", (String[]) Collections.singletonList("name").toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return;
                }
                do {
                    String string = cursorQuery.getString(0);
                    if (string != null && (zzbbVarZzd = zzd(str, string)) != null) {
                        zza("events_snapshot", zzbbVarZzd);
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
            } catch (SQLiteException e9) {
                zzj().zzg().zza("Error creating snapshot. appId", zzgo.zza(str), e9);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzr(java.lang.String r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zzr(java.lang.String):void");
    }

    public final boolean zzs(String str) {
        ea.a();
        return zze().zza(zzbh.zzcb) && zzb(x.k("SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=? AND NOT ", zzao()), new String[]{str}) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0064 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzt(java.lang.String r10) {
        /*
            r9 = this;
            r0 = 1
            r1 = 0
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r9.e_()     // Catch: java.lang.Throwable -> L4d android.database.sqlite.SQLiteException -> L53
            java.lang.String r4 = "select timestamp from raw_events where app_id=? and name = '_f' limit 1;"
            java.lang.String[] r5 = new java.lang.String[]{r10}     // Catch: java.lang.Throwable -> L4d android.database.sqlite.SQLiteException -> L53
            android.database.Cursor r2 = r3.rawQuery(r4, r5)     // Catch: java.lang.Throwable -> L4d android.database.sqlite.SQLiteException -> L53
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L4d android.database.sqlite.SQLiteException -> L53
            if (r3 != 0) goto L1b
            r2.close()
            return r1
        L1b:
            long r3 = r2.getLong(r1)     // Catch: java.lang.Throwable -> L4d android.database.sqlite.SQLiteException -> L53
            b4.a r5 = r9.zzb()     // Catch: java.lang.Throwable -> L4d android.database.sqlite.SQLiteException -> L53
            b4.b r5 = (b4.b) r5     // Catch: java.lang.Throwable -> L4d android.database.sqlite.SQLiteException -> L53
            r5.getClass()     // Catch: java.lang.Throwable -> L4d android.database.sqlite.SQLiteException -> L53
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L4d android.database.sqlite.SQLiteException -> L53
            r7 = 15000(0x3a98, double:7.411E-320)
            long r3 = r3 + r7
            int r3 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r3 >= 0) goto L35
            r3 = r0
            goto L36
        L35:
            r3 = r1
        L36:
            java.lang.String r4 = "select count(*) from raw_events where app_id=? and name not like '!_%' escape '!' limit 1;"
            java.lang.String[] r10 = new java.lang.String[]{r10}     // Catch: java.lang.Throwable -> L4d android.database.sqlite.SQLiteException -> L4f
            r5 = 0
            long r7 = r9.zza(r4, r10, r5)     // Catch: java.lang.Throwable -> L4d android.database.sqlite.SQLiteException -> L4f
            int r10 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r10 <= 0) goto L48
            r10 = r0
            goto L49
        L48:
            r10 = r1
        L49:
            r2.close()
            goto L68
        L4d:
            r10 = move-exception
            goto L6e
        L4f:
            r10 = move-exception
            goto L55
        L51:
            r3 = r1
            goto L55
        L53:
            r10 = move-exception
            goto L51
        L55:
            com.google.android.gms.measurement.internal.zzgo r4 = r9.zzj()     // Catch: java.lang.Throwable -> L4d
            com.google.android.gms.measurement.internal.zzgq r4 = r4.zzg()     // Catch: java.lang.Throwable -> L4d
            java.lang.String r5 = "Error checking backfill conditions"
            r4.zza(r5, r10)     // Catch: java.lang.Throwable -> L4d
            if (r2 == 0) goto L67
            r2.close()
        L67:
            r10 = r1
        L68:
            if (r3 == 0) goto L6d
            if (r10 != 0) goto L6d
            return r0
        L6d:
            return r1
        L6e:
            if (r2 == 0) goto L73
            r2.close()
        L73:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zzt(java.lang.String):boolean");
    }

    public final void zzu() {
        zzal();
        e_().endTransaction();
    }

    public final void zzv() {
        zzt();
        zzal();
        if (zzaa()) {
            long jZza = zzn().zza.zza();
            ((b) zzb()).getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (Math.abs(jElapsedRealtime - jZza) > zzag.zzn()) {
                zzn().zza.zza(jElapsedRealtime);
                zzt();
                zzal();
                if (zzaa()) {
                    SQLiteDatabase sQLiteDatabaseE_ = e_();
                    ((b) zzb()).getClass();
                    int iDelete = sQLiteDatabaseE_.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(System.currentTimeMillis()), String.valueOf(zzag.zzm())});
                    if (iDelete > 0) {
                        zzj().zzp().zza("Deleted stale rows. rowsDeleted", Integer.valueOf(iDelete));
                    }
                }
            }
        }
    }

    public final void zzw() {
        zzal();
        e_().setTransactionSuccessful();
    }

    public final boolean zzx() {
        return zzb("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean zzy() {
        return zzb("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    public final boolean zzz() {
        return zzb("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    public final int zza(String str, String str2) {
        d0.d(str);
        d0.d(str2);
        zzt();
        zzal();
        try {
            return e_().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error deleting conditional property", zzgo.zza(str), zzi().zzc(str2), e9);
            return 0;
        }
    }

    public final long zzc(String str) {
        d0.d(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    public final void zzp(String str) {
        zzt();
        zzal();
        try {
            e_().execSQL("delete from default_event_params where app_id=?", new String[]{str});
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error clearing default event params", e9);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzae zzc(java.lang.String r24, java.lang.String r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 285
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zzc(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzae");
    }

    private final void zzi(String str, String str2) {
        d0.d(str2);
        zzt();
        zzal();
        try {
            e_().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error deleting snapshot. appId", zzgo.zza(str2), e9);
        }
    }

    public final Map<Integer, List<l2>> zzg(String str, String str2) {
        zzal();
        zzt();
        d0.d(str);
        d0.d(str2);
        e eVar = new e(0);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = e_().query("property_filters", new String[]{"audience_id", MTCoreConstants.Protocol.KEY_DATA}, "app_id=? AND property_name=?", new String[]{str, str2}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    Map<Integer, List<l2>> map = Collections.EMPTY_MAP;
                    cursorQuery.close();
                    return map;
                }
                do {
                    try {
                        l2 l2Var = (l2) ((k2) zzoo.zza(l2.q(), cursorQuery.getBlob(1))).c();
                        int i6 = cursorQuery.getInt(0);
                        List arrayList = (List) eVar.get(Integer.valueOf(i6));
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            eVar.put(Integer.valueOf(i6), arrayList);
                        }
                        arrayList.add(l2Var);
                    } catch (IOException e9) {
                        zzj().zzg().zza("Failed to merge filter", zzgo.zza(str), e9);
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return eVar;
            } catch (SQLiteException e10) {
                zzj().zzg().zza("Database error querying filters. appId", zzgo.zza(str), e10);
                Map<Integer, List<l2>> map2 = Collections.EMPTY_MAP;
                if (0 != 0) {
                    cursor.close();
                }
                return map2;
            }
        } finally {
        }
    }

    public final void zzh(String str, String str2) {
        d0.d(str);
        d0.d(str2);
        zzt();
        zzal();
        try {
            e_().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error deleting user property. appId", zzgo.zza(str), zzi().zzc(str2), e9);
        }
    }

    public final long zza(String str) {
        d0.d(str);
        zzt();
        zzal();
        try {
            return e_().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, zze().zzb(str, zzbh.zzp))))});
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error deleting over the limit events. appId", zzgo.zza(str), e9);
            return 0L;
        }
    }

    public final zzbb zzd(String str, String str2) {
        return zzc("events", str, str2);
    }

    public final Map<Integer, List<f2>> zzf(String str, String str2) {
        zzal();
        zzt();
        d0.d(str);
        d0.d(str2);
        e eVar = new e(0);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = e_().query("event_filters", new String[]{"audience_id", MTCoreConstants.Protocol.KEY_DATA}, "app_id=? AND event_name=?", new String[]{str, str2}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    Map<Integer, List<f2>> map = Collections.EMPTY_MAP;
                    cursorQuery.close();
                    return map;
                }
                do {
                    try {
                        f2 f2Var = (f2) ((e2) zzoo.zza(f2.s(), cursorQuery.getBlob(1))).c();
                        int i6 = cursorQuery.getInt(0);
                        List arrayList = (List) eVar.get(Integer.valueOf(i6));
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            eVar.put(Integer.valueOf(i6), arrayList);
                        }
                        arrayList.add(f2Var);
                    } catch (IOException e9) {
                        zzj().zzg().zza("Failed to merge filter. appId", zzgo.zza(str), e9);
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return eVar;
            } catch (SQLiteException e10) {
                zzj().zzg().zza("Database error querying filters. appId", zzgo.zza(str), e10);
                Map<Integer, List<f2>> map2 = Collections.EMPTY_MAP;
                if (0 != 0) {
                    cursor.close();
                }
                return map2;
            }
        } finally {
        }
    }

    public final long zza(z3 z3Var) {
        zzt();
        zzal();
        d0.h(z3Var);
        d0.d(z3Var.e2());
        byte[] bArrC = z3Var.c();
        long jZza = g_().zza(bArrC);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", z3Var.e2());
        contentValues.put("metadata_fingerprint", Long.valueOf(jZza));
        contentValues.put("metadata", bArrC);
        try {
            e_().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return jZza;
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error storing raw event metadata. appId", zzgo.zza(z3Var.e2()), e9);
            throw e9;
        }
    }

    public final long zzb(String str) {
        d0.d(str);
        zzt();
        zzal();
        return zza("select first_open_count from app2 where app_id=?", new String[]{str}, -1L);
    }

    private final long zzb(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = e_().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    long j3 = cursorRawQuery.getLong(0);
                    cursorRawQuery.close();
                    return j3;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e9) {
                zzj().zzg().zza("Database error", str, e9);
                throw e9;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.android.gms.measurement.internal.zzbb zzc(java.lang.String r29, java.lang.String r30, java.lang.String r31) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 302
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zzc(java.lang.String, java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzbb");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final long zza(java.lang.String r3, java.lang.String[] r4, long r5) {
        /*
            r2 = this;
            android.database.sqlite.SQLiteDatabase r0 = r2.e_()
            r1 = 0
            android.database.Cursor r1 = r0.rawQuery(r3, r4)     // Catch: java.lang.Throwable -> L18 android.database.sqlite.SQLiteException -> L1a
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L18 android.database.sqlite.SQLiteException -> L1a
            if (r4 == 0) goto L1c
            r4 = 0
            long r3 = r1.getLong(r4)     // Catch: java.lang.Throwable -> L18 android.database.sqlite.SQLiteException -> L1a
            r1.close()
            return r3
        L18:
            r3 = move-exception
            goto L2e
        L1a:
            r4 = move-exception
            goto L20
        L1c:
            r1.close()
            return r5
        L20:
            com.google.android.gms.measurement.internal.zzgo r5 = r2.zzj()     // Catch: java.lang.Throwable -> L18
            com.google.android.gms.measurement.internal.zzgq r5 = r5.zzg()     // Catch: java.lang.Throwable -> L18
            java.lang.String r6 = "Database error"
            r5.zza(r6, r3, r4)     // Catch: java.lang.Throwable -> L18
            throw r4     // Catch: java.lang.Throwable -> L18
        L2e:
            if (r1 == 0) goto L33
            r1.close()
        L33:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zza(java.lang.String, java.lang.String[], long):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009e, code lost:
    
        zzj().zzg().zza("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzop> zzb(java.lang.String r18, java.lang.String r19, java.lang.String r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zzb(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0031: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:10:0x0031 */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.q3, java.lang.Long> zza(java.lang.String r6, java.lang.Long r7) throws java.lang.Throwable {
        /*
            r5 = this;
            r5.zzt()
            r5.zzal()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r5.e_()     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            java.lang.String r2 = "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"
            java.lang.String r3 = java.lang.String.valueOf(r7)     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            java.lang.String[] r3 = new java.lang.String[]{r6, r3}     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            if (r2 != 0) goto L35
            com.google.android.gms.measurement.internal.zzgo r6 = r5.zzj()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            com.google.android.gms.measurement.internal.zzgq r6 = r6.zzp()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            java.lang.String r7 = "Main event not found"
            r6.zza(r7)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r1.close()
            return r0
        L30:
            r6 = move-exception
            r0 = r1
            goto L88
        L33:
            r6 = move-exception
            goto L75
        L35:
            r2 = 0
            byte[] r2 = r1.getBlob(r2)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r3 = 1
            long r3 = r1.getLong(r3)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            com.google.android.gms.internal.measurement.p3 r4 = com.google.android.gms.internal.measurement.q3.A()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33 java.io.IOException -> L5b
            com.google.android.gms.internal.measurement.s6 r2 = com.google.android.gms.measurement.internal.zzoo.zza(r4, r2)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33 java.io.IOException -> L5b
            com.google.android.gms.internal.measurement.p3 r2 = (com.google.android.gms.internal.measurement.p3) r2     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33 java.io.IOException -> L5b
            com.google.android.gms.internal.measurement.z5 r2 = r2.c()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33 java.io.IOException -> L5b
            com.google.android.gms.internal.measurement.q3 r2 = (com.google.android.gms.internal.measurement.q3) r2     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33 java.io.IOException -> L5b
            android.util.Pair r6 = android.util.Pair.create(r2, r3)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r1.close()
            return r6
        L5b:
            r2 = move-exception
            com.google.android.gms.measurement.internal.zzgo r3 = r5.zzj()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            com.google.android.gms.measurement.internal.zzgq r3 = r3.zzg()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            java.lang.String r4 = "Failed to merge main event. appId, eventId"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.zzgo.zza(r6)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r3.zza(r4, r6, r7, r2)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r1.close()
            return r0
        L71:
            r6 = move-exception
            goto L88
        L73:
            r6 = move-exception
            r1 = r0
        L75:
            com.google.android.gms.measurement.internal.zzgo r7 = r5.zzj()     // Catch: java.lang.Throwable -> L30
            com.google.android.gms.measurement.internal.zzgq r7 = r7.zzg()     // Catch: java.lang.Throwable -> L30
            java.lang.String r2 = "Error selecting main event"
            r7.zza(r2, r6)     // Catch: java.lang.Throwable -> L30
            if (r1 == 0) goto L87
            r1.close()
        L87:
            return r0
        L88:
            if (r0 == 0) goto L8d
            r0.close()
        L8d:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zza(java.lang.String, java.lang.Long):android.util.Pair");
    }

    public final zzaq zza(long j3, String str, boolean z5, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13) {
        return zza(j3, str, 1L, false, false, z9, false, z11, z12, z13);
    }

    public final zzaq zza(long j3, String str, long j8, boolean z5, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13) {
        d0.d(str);
        zzt();
        zzal();
        String[] strArr = {str};
        zzaq zzaqVar = new zzaq();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseE_ = e_();
                Cursor cursorQuery = sQLiteDatabaseE_.query("apps", new String[]{MTPushConstants.NotificationTime.KEY_DAYS, "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count", "daily_realtime_dcu_count", "daily_registered_triggers_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    zzj().zzu().zza("Not updating daily counts, app is not known. appId", zzgo.zza(str));
                    cursorQuery.close();
                    return zzaqVar;
                }
                if (cursorQuery.getLong(0) == j3) {
                    zzaqVar.zzb = cursorQuery.getLong(1);
                    zzaqVar.zza = cursorQuery.getLong(2);
                    zzaqVar.zzc = cursorQuery.getLong(3);
                    zzaqVar.zzd = cursorQuery.getLong(4);
                    zzaqVar.zze = cursorQuery.getLong(5);
                    zzaqVar.zzf = cursorQuery.getLong(6);
                    zzaqVar.zzg = cursorQuery.getLong(7);
                }
                if (z5) {
                    zzaqVar.zzb += j8;
                }
                if (z8) {
                    zzaqVar.zza += j8;
                }
                if (z9) {
                    zzaqVar.zzc += j8;
                }
                if (z10) {
                    zzaqVar.zzd += j8;
                }
                if (z11) {
                    zzaqVar.zze += j8;
                }
                if (z12) {
                    zzaqVar.zzf += j8;
                }
                if (z13) {
                    zzaqVar.zzg += j8;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put(MTPushConstants.NotificationTime.KEY_DAYS, Long.valueOf(j3));
                contentValues.put("daily_public_events_count", Long.valueOf(zzaqVar.zza));
                contentValues.put("daily_events_count", Long.valueOf(zzaqVar.zzb));
                contentValues.put("daily_conversions_count", Long.valueOf(zzaqVar.zzc));
                contentValues.put("daily_error_events_count", Long.valueOf(zzaqVar.zzd));
                contentValues.put("daily_realtime_events_count", Long.valueOf(zzaqVar.zze));
                contentValues.put("daily_realtime_dcu_count", Long.valueOf(zzaqVar.zzf));
                contentValues.put("daily_registered_triggers_count", Long.valueOf(zzaqVar.zzg));
                sQLiteDatabaseE_.update("apps", contentValues, "app_id=?", strArr);
                cursorQuery.close();
                return zzaqVar;
            } catch (SQLiteException e9) {
                zzj().zzg().zza("Error updating daily counts. appId", zzgo.zza(str), e9);
                if (0 != 0) {
                    cursor.close();
                }
                return zzaqVar;
            }
        } finally {
        }
    }

    public final zzop zze(String str, String str2) {
        Throwable th;
        String str3;
        String str4;
        SQLiteException sQLiteException;
        Cursor cursorQuery;
        d0.d(str);
        d0.d(str2);
        zzt();
        zzal();
        Cursor cursor = null;
        try {
            cursorQuery = e_().query("user_attributes", new String[]{"set_timestamp", "value", "origin"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        cursorQuery.close();
                        return null;
                    }
                    long j3 = cursorQuery.getLong(0);
                    Object objZza = zza(cursorQuery, 1);
                    if (objZza == null) {
                        cursorQuery.close();
                        return null;
                    }
                    str3 = str;
                    str4 = str2;
                    try {
                        zzop zzopVar = new zzop(str3, cursorQuery.getString(2), str4, j3, objZza);
                        if (cursorQuery.moveToNext()) {
                            zzj().zzg().zza("Got multiple records for user property, expected one. appId", zzgo.zza(str3));
                        }
                        cursorQuery.close();
                        return zzopVar;
                    } catch (SQLiteException e9) {
                        e = e9;
                    }
                } catch (SQLiteException e10) {
                    e = e10;
                    str3 = str;
                    str4 = str2;
                }
                sQLiteException = e;
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                    throw th;
                }
                throw th;
            }
        } catch (SQLiteException e11) {
            str3 = str;
            str4 = str2;
            sQLiteException = e11;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
        }
        zzj().zzg().zza("Error querying user property. appId", zzgo.zza(str3), zzi().zzc(str4), sQLiteException);
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final void zzb(String str, zzje zzjeVar) {
        d0.h(str);
        d0.h(zzjeVar);
        zzt();
        zzal();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzjeVar.zzf());
        contentValues.put("consent_source", Integer.valueOf(zzjeVar.zza()));
        zza("consent_settings", "app_id", contentValues);
    }

    private final boolean zzb(String str, List<Integer> list) {
        d0.d(str);
        zzal();
        zzt();
        SQLiteDatabase sQLiteDatabaseE_ = e_();
        try {
            long jZzb = zzb("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int iMax = Math.max(0, Math.min(2000, zze().zzb(str, zzbh.zzah)));
            if (jZzb > iMax) {
                ArrayList arrayList = new ArrayList();
                int i6 = 0;
                while (true) {
                    if (i6 < list.size()) {
                        Integer num = list.get(i6);
                        if (num == null) {
                            break;
                        }
                        arrayList.add(Integer.toString(num.intValue()));
                        i6++;
                    } else if (sQLiteDatabaseE_.delete("audience_filter_values", x.g("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ", x.g("(", TextUtils.join(",", arrayList), ")"), " order by rowid desc limit -1 offset ?)"), new String[]{str, Integer.toString(iMax)}) > 0) {
                        return true;
                    }
                }
            }
            return false;
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Database error querying filters. appId", zzgo.zza(str), e9);
            return false;
        }
    }

    private final Object zza(Cursor cursor, int i6) {
        int type = cursor.getType(i6);
        if (type == 0) {
            zzj().zzg().zza("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i6));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i6));
        }
        if (type == 3) {
            return cursor.getString(i6);
        }
        if (type != 4) {
            zzj().zzg().zza("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        zzj().zzg().zza("Loaded invalid blob type value, ignoring it");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0046  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final <T> T zza(java.lang.String r3, java.lang.String[] r4, com.google.android.gms.measurement.internal.zzau<T> r5) throws java.lang.Throwable {
        /*
            r2 = this;
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r2.e_()     // Catch: java.lang.Throwable -> L2d android.database.sqlite.SQLiteException -> L2f
            android.database.Cursor r3 = r1.rawQuery(r3, r4)     // Catch: java.lang.Throwable -> L2d android.database.sqlite.SQLiteException -> L2f
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L20 android.database.sqlite.SQLiteException -> L23
            if (r4 != 0) goto L25
            com.google.android.gms.measurement.internal.zzgo r4 = r2.zzj()     // Catch: java.lang.Throwable -> L20 android.database.sqlite.SQLiteException -> L23
            com.google.android.gms.measurement.internal.zzgq r4 = r4.zzp()     // Catch: java.lang.Throwable -> L20 android.database.sqlite.SQLiteException -> L23
            java.lang.String r5 = "No data found"
            r4.zza(r5)     // Catch: java.lang.Throwable -> L20 android.database.sqlite.SQLiteException -> L23
            r3.close()
            return r0
        L20:
            r4 = move-exception
            r0 = r3
            goto L44
        L23:
            r4 = move-exception
            goto L31
        L25:
            java.lang.Object r4 = r5.zza(r3)     // Catch: java.lang.Throwable -> L20 android.database.sqlite.SQLiteException -> L23
            r3.close()
            return r4
        L2d:
            r4 = move-exception
            goto L44
        L2f:
            r4 = move-exception
            r3 = r0
        L31:
            com.google.android.gms.measurement.internal.zzgo r5 = r2.zzj()     // Catch: java.lang.Throwable -> L20
            com.google.android.gms.measurement.internal.zzgq r5 = r5.zzg()     // Catch: java.lang.Throwable -> L20
            java.lang.String r1 = "Error querying database."
            r5.zza(r1, r4)     // Catch: java.lang.Throwable -> L20
            if (r3 == 0) goto L43
            r3.close()
        L43:
            return r0
        L44:
            if (r0 == 0) goto L49
            r0.close()
        L49:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zza(java.lang.String, java.lang.String[], com.google.android.gms.measurement.internal.zzau):java.lang.Object");
    }

    public final boolean zzb(String str, Bundle bundle) {
        zzt();
        zzal();
        byte[] bArrC = g_().zza(new zzbc(this.zzu, "", str, "dep", 0L, 0L, bundle)).c();
        zzj().zzp().zza("Saving default event parameters, appId, data size", zzi().zza(str), Integer.valueOf(bArrC.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", bArrC);
        try {
            if (e_().insertWithOnConflict("default_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert default event parameters (got -1). appId", zzgo.zza(str));
            return false;
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error storing default event parameters. appId", zzgo.zza(str), e9);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r4v0, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String zza(long r4) throws java.lang.Throwable {
        /*
            r3 = this;
            r3.zzt()
            r3.zzal()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r3.e_()     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40
            java.lang.String r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40
            android.database.Cursor r4 = r1.rawQuery(r2, r4)     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40
            boolean r5 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            if (r5 != 0) goto L35
            com.google.android.gms.measurement.internal.zzgo r5 = r3.zzj()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            com.google.android.gms.measurement.internal.zzgq r5 = r5.zzp()     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            java.lang.String r1 = "No expired configs for apps with pending events"
            r5.zza(r1)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r4.close()
            return r0
        L30:
            r5 = move-exception
            r0 = r4
            goto L55
        L33:
            r5 = move-exception
            goto L42
        L35:
            r5 = 0
            java.lang.String r5 = r4.getString(r5)     // Catch: java.lang.Throwable -> L30 android.database.sqlite.SQLiteException -> L33
            r4.close()
            return r5
        L3e:
            r5 = move-exception
            goto L55
        L40:
            r5 = move-exception
            r4 = r0
        L42:
            com.google.android.gms.measurement.internal.zzgo r1 = r3.zzj()     // Catch: java.lang.Throwable -> L30
            com.google.android.gms.measurement.internal.zzgq r1 = r1.zzg()     // Catch: java.lang.Throwable -> L30
            java.lang.String r2 = "Error selecting expired configs"
            r1.zza(r2, r5)     // Catch: java.lang.Throwable -> L30
            if (r4 == 0) goto L54
            r4.close()
        L54:
            return r0
        L55:
            if (r0 == 0) goto L5a
            r0.close()
        L5a:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zza(long):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.String zza(java.lang.String r3, java.lang.String[] r4, java.lang.String r5) {
        /*
            r2 = this;
            android.database.sqlite.SQLiteDatabase r0 = r2.e_()
            r1 = 0
            android.database.Cursor r1 = r0.rawQuery(r3, r4)     // Catch: java.lang.Throwable -> L18 android.database.sqlite.SQLiteException -> L1a
            boolean r4 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L18 android.database.sqlite.SQLiteException -> L1a
            if (r4 == 0) goto L1c
            r4 = 0
            java.lang.String r3 = r1.getString(r4)     // Catch: java.lang.Throwable -> L18 android.database.sqlite.SQLiteException -> L1a
            r1.close()
            return r3
        L18:
            r3 = move-exception
            goto L2e
        L1a:
            r4 = move-exception
            goto L20
        L1c:
            r1.close()
            return r5
        L20:
            com.google.android.gms.measurement.internal.zzgo r5 = r2.zzj()     // Catch: java.lang.Throwable -> L18
            com.google.android.gms.measurement.internal.zzgq r5 = r5.zzg()     // Catch: java.lang.Throwable -> L18
            java.lang.String r0 = "Database error"
            r5.zza(r0, r3, r4)     // Catch: java.lang.Throwable -> L18
            throw r4     // Catch: java.lang.Throwable -> L18
        L2e:
            if (r1 == 0) goto L33
            r1.close()
        L33:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zza(java.lang.String, java.lang.String[], java.lang.String):java.lang.String");
    }

    public final List<Pair<z3, Long>> zza(String str, int i6, int i9) {
        byte[] bArrZzc;
        long jW;
        long jW2;
        zzt();
        zzal();
        int i10 = 1;
        d0.a(i6 > 0);
        d0.a(i9 > 0);
        d0.d(str);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = e_().query("queue", new String[]{"rowid", MTCoreConstants.Protocol.KEY_DATA, "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i6));
                if (!cursorQuery.moveToFirst()) {
                    List<Pair<z3, Long>> list = Collections.EMPTY_LIST;
                    cursorQuery.close();
                    return list;
                }
                ArrayList arrayList = new ArrayList();
                int length = 0;
                while (true) {
                    long j3 = cursorQuery.getLong(0);
                    try {
                        bArrZzc = g_().zzc(cursorQuery.getBlob(i10));
                    } catch (IOException e9) {
                        zzj().zzg().zza("Failed to unzip queued bundle. appId", zzgo.zza(str), e9);
                    }
                    if (!arrayList.isEmpty() && bArrZzc.length + length > i9) {
                        break;
                    }
                    try {
                        y3 y3Var = (y3) zzoo.zza(z3.c2(), bArrZzc);
                        if (!arrayList.isEmpty()) {
                            z3 z3Var = (z3) ((Pair) arrayList.get(0)).first;
                            z3 z3Var2 = (z3) y3Var.c();
                            if (!z3Var.G().equals(z3Var2.G()) || !z3Var.F().equals(z3Var2.F()) || z3Var.W() != z3Var2.W() || !z3Var.H().equals(z3Var2.H())) {
                                break;
                            }
                            Iterator it = z3Var.U().iterator();
                            while (true) {
                                jW = -1;
                                if (!it.hasNext()) {
                                    jW2 = -1;
                                    break;
                                }
                                h4 h4Var = (h4) it.next();
                                if ("_npa".equals(h4Var.A())) {
                                    jW2 = h4Var.w();
                                    break;
                                }
                            }
                            Iterator it2 = z3Var2.U().iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    break;
                                }
                                h4 h4Var2 = (h4) it2.next();
                                if ("_npa".equals(h4Var2.A())) {
                                    jW = h4Var2.w();
                                    break;
                                }
                            }
                            if (jW2 != jW) {
                                break;
                            }
                        }
                        if (!cursorQuery.isNull(2)) {
                            int i11 = cursorQuery.getInt(2);
                            y3Var.e();
                            z3.q1((z3) y3Var.f1993b, i11);
                        }
                        length += bArrZzc.length;
                        arrayList.add(Pair.create((z3) y3Var.c(), Long.valueOf(j3)));
                    } catch (IOException e10) {
                        zzj().zzg().zza("Failed to merge queued bundle. appId", zzgo.zza(str), e10);
                    }
                    if (!cursorQuery.moveToNext() || length > i9) {
                        break;
                    }
                    i10 = 1;
                }
                cursorQuery.close();
                return arrayList;
            } catch (SQLiteException e11) {
                zzj().zzg().zza("Error querying bundles. appId", zzgo.zza(str), e11);
                List<Pair<z3, Long>> list2 = Collections.EMPTY_LIST;
                if (0 != 0) {
                    cursor.close();
                }
                return list2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final List<zzae> zza(String str, String str2, String str3) {
        d0.d(str);
        zzt();
        zzal();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(str3 + "*");
            sb.append(" and name glob ?");
        }
        return zza(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0050, code lost:
    
        zzj().zzg().zza("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzae> zza(java.lang.String r21, java.lang.String[] r22) {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zza(java.lang.String, java.lang.String[]):java.util.List");
    }

    public final void zza(String str, Bundle bundle) {
        zzal zzalVar = this;
        d0.h(bundle);
        zzalVar.zzt();
        zzalVar.zzal();
        String str2 = str;
        zzar zzarVar = new zzar(zzalVar, str2);
        List<zzap> listZza = zzarVar.zza();
        while (!listZza.isEmpty()) {
            for (zzap zzapVar : listZza) {
                zzoo zzooVarG_ = zzalVar.g_();
                q3 q3Var = zzapVar.zzd;
                Bundle bundle2 = new Bundle();
                for (u3 u3Var : q3Var.C()) {
                    if (u3Var.F()) {
                        bundle2.putDouble(u3Var.C(), u3Var.n());
                    } else if (u3Var.G()) {
                        bundle2.putFloat(u3Var.C(), u3Var.u());
                    } else if (u3Var.H()) {
                        bundle2.putLong(u3Var.C(), u3Var.z());
                    } else if (u3Var.J()) {
                        bundle2.putString(u3Var.C(), u3Var.D());
                    } else if (!u3Var.E().isEmpty()) {
                        bundle2.putParcelableArray(u3Var.C(), zzoo.zzb((List<u3>) u3Var.E()));
                    } else {
                        zzooVarG_.zzj().zzg().zza("Unexpected parameter type for parameter", u3Var);
                    }
                }
                String string = bundle2.getString("_o");
                bundle2.remove("_o");
                String strB = q3Var.B();
                if (string == null) {
                    string = "";
                }
                zzgs zzgsVar = new zzgs(strB, string, bundle2, q3Var.z());
                zzalVar.zzq().zza(zzgsVar.zzc, bundle);
                zzalVar.zza(zzapVar.zza, new zzbc(zzalVar.zzu, zzgsVar.zzb, str2, zzapVar.zzd.B(), zzapVar.zzd.z(), zzapVar.zzd.y(), zzgsVar.zzc), zzapVar.zzb, zzapVar.zzc);
                zzalVar = this;
                str2 = str;
            }
            listZza = zzarVar.zza();
            zzalVar = this;
            str2 = str;
        }
    }

    public final void zza(List<Long> list) {
        zzt();
        zzal();
        d0.h(list);
        if (list.size() != 0) {
            if (zzaa()) {
                String strG = x.g("(", TextUtils.join(",", list), ")");
                if (zzb(x.g("SELECT COUNT(1) FROM queue WHERE rowid IN ", strG, " AND retry_count =  2147483647 LIMIT 1"), (String[]) null) > 0) {
                    zzj().zzu().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
                }
                try {
                    e_().execSQL("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN " + strG + " AND (retry_count IS NULL OR retry_count < 2147483647)");
                    return;
                } catch (SQLiteException e9) {
                    zzj().zzg().zza("Error incrementing retry count. error", e9);
                    return;
                }
            }
            return;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    public final void zza(Long l4) {
        zzt();
        zzal();
        d0.h(l4);
        ea.a();
        if (zze().zza(zzbh.zzcb) && zzaa()) {
            if (zzb("SELECT COUNT(1) FROM upload_queue WHERE rowid = " + l4 + " AND retry_count =  2147483647 LIMIT 1", (String[]) null) > 0) {
                zzj().zzu().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                e_().execSQL("UPDATE upload_queue SET retry_count = retry_count + 1 WHERE rowid = " + l4 + " AND retry_count < 2147483647");
            } catch (SQLiteException e9) {
                zzj().zzg().zza("Error incrementing retry count. error", e9);
            }
        }
    }

    private static void zza(ContentValues contentValues, String str, Object obj) {
        d0.d(str);
        d0.h(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else {
            if (obj instanceof Double) {
                contentValues.put(str, (Double) obj);
                return;
            }
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    public final void zza(String str, List<d2> list) {
        boolean z5;
        boolean z8;
        d0.h(list);
        for (int i6 = 0; i6 < list.size(); i6++) {
            c2 c2Var = (c2) list.get(i6).k();
            if (((d2) c2Var.f1993b).r() != 0) {
                for (int i9 = 0; i9 < ((d2) c2Var.f1993b).r(); i9++) {
                    e2 e2Var = (e2) ((d2) c2Var.f1993b).o(i9).k();
                    e2 e2Var2 = (e2) ((y5) e2Var.clone());
                    String strZzb = zzji.zzb(((f2) e2Var.f1993b).u());
                    if (strZzb != null) {
                        e2Var2.e();
                        f2.q((f2) e2Var2.f1993b, strZzb);
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    for (int i10 = 0; i10 < ((f2) e2Var.f1993b).n(); i10++) {
                        h2 h2VarO = ((f2) e2Var.f1993b).o(i10);
                        String strZza = zzjk.zza(h2VarO.r());
                        if (strZza != null) {
                            g2 g2Var = (g2) h2VarO.k();
                            g2Var.e();
                            h2.n((h2) g2Var.f1993b, strZza);
                            h2 h2Var = (h2) g2Var.c();
                            e2Var2.e();
                            f2.p((f2) e2Var2.f1993b, i10, h2Var);
                            z8 = true;
                        }
                    }
                    if (z8) {
                        c2Var.e();
                        d2.p((d2) c2Var.f1993b, i9, (f2) e2Var2.c());
                        list.set(i6, (d2) c2Var.c());
                    }
                }
            }
            if (((d2) c2Var.f1993b).t() != 0) {
                for (int i11 = 0; i11 < ((d2) c2Var.f1993b).t(); i11++) {
                    l2 l2VarS = ((d2) c2Var.f1993b).s(i11);
                    String strZza2 = zzjj.zza(l2VarS.r());
                    if (strZza2 != null) {
                        k2 k2Var = (k2) l2VarS.k();
                        k2Var.e();
                        l2.o((l2) k2Var.f1993b, strZza2);
                        c2Var.e();
                        d2.q((d2) c2Var.f1993b, i11, (l2) k2Var.c());
                        list.set(i6, (d2) c2Var.c());
                    }
                }
            }
        }
        zzal();
        zzt();
        d0.d(str);
        SQLiteDatabase sQLiteDatabaseE_ = e_();
        sQLiteDatabaseE_.beginTransaction();
        try {
            zzal();
            zzt();
            d0.d(str);
            SQLiteDatabase sQLiteDatabaseE_2 = e_();
            sQLiteDatabaseE_2.delete("property_filters", "app_id=?", new String[]{str});
            sQLiteDatabaseE_2.delete("event_filters", "app_id=?", new String[]{str});
            for (d2 d2Var : list) {
                zzal();
                zzt();
                d0.d(str);
                d0.h(d2Var);
                if (!d2Var.x()) {
                    zzj().zzu().zza("Audience with no ID. appId", zzgo.zza(str));
                } else {
                    int iN = d2Var.n();
                    Iterator it = d2Var.v().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (!((f2) it.next()).A()) {
                                zzj().zzu().zza("Event filter with no ID. Audience definition ignored. appId, audienceId", zzgo.zza(str), Integer.valueOf(iN));
                                break;
                            }
                        } else {
                            Iterator it2 = d2Var.w().iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    if (!((l2) it2.next()).v()) {
                                        zzj().zzu().zza("Property filter with no ID. Audience definition ignored. appId, audienceId", zzgo.zza(str), Integer.valueOf(iN));
                                        break;
                                    }
                                } else {
                                    Iterator it3 = d2Var.v().iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            if (!zza(str, iN, (f2) it3.next())) {
                                                z5 = false;
                                                break;
                                            }
                                        } else {
                                            z5 = true;
                                            break;
                                        }
                                    }
                                    if (z5) {
                                        Iterator it4 = d2Var.w().iterator();
                                        while (true) {
                                            if (it4.hasNext()) {
                                                if (!zza(str, iN, (l2) it4.next())) {
                                                    z5 = false;
                                                    break;
                                                }
                                            } else {
                                                break;
                                            }
                                        }
                                    }
                                    if (!z5) {
                                        zzal();
                                        zzt();
                                        d0.d(str);
                                        SQLiteDatabase sQLiteDatabaseE_3 = e_();
                                        sQLiteDatabaseE_3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iN)});
                                        sQLiteDatabaseE_3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(iN)});
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (d2 d2Var2 : list) {
                arrayList.add(d2Var2.x() ? Integer.valueOf(d2Var2.n()) : null);
            }
            zzb(str, arrayList);
            sQLiteDatabaseE_.setTransactionSuccessful();
            sQLiteDatabaseE_.endTransaction();
        } catch (Throwable th) {
            sQLiteDatabaseE_.endTransaction();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(com.google.android.gms.measurement.internal.zzg r9, boolean r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 819
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzal.zza(com.google.android.gms.measurement.internal.zzg, boolean, boolean):void");
    }

    public final void zza(String str, zzax zzaxVar) {
        d0.h(str);
        d0.h(zzaxVar);
        zzt();
        zzal();
        if (zze().zza(zzbh.zzcr)) {
            zzje zzjeVarZzi = zzi(str);
            zzje zzjeVar = zzje.zza;
            if (zzjeVarZzi == zzjeVar) {
                zzb(str, zzjeVar);
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("dma_consent_settings", zzaxVar.zzf());
        zza("consent_settings", "app_id", contentValues);
    }

    public final void zza(zzbb zzbbVar) {
        zza("events", zzbbVar);
    }

    private final void zza(String str, zzbb zzbbVar) {
        d0.h(zzbbVar);
        zzt();
        zzal();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzbbVar.zza);
        contentValues.put("name", zzbbVar.zzb);
        contentValues.put("lifetime_count", Long.valueOf(zzbbVar.zzc));
        contentValues.put("current_bundle_count", Long.valueOf(zzbbVar.zzd));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzbbVar.zzf));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzbbVar.zzg));
        contentValues.put("last_bundled_day", zzbbVar.zzh);
        contentValues.put("last_sampled_complex_event_id", zzbbVar.zzi);
        contentValues.put("last_sampling_rate", zzbbVar.zzj);
        contentValues.put("current_session_count", Long.valueOf(zzbbVar.zze));
        Boolean bool = zzbbVar.zzk;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (e_().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update event aggregates (got -1). appId", zzgo.zza(zzbbVar.zza));
            }
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error storing event aggregates. appId", zzgo.zza(zzbbVar.zza), e9);
        }
    }

    private final void zza(String str, String str2, ContentValues contentValues) {
        try {
            SQLiteDatabase sQLiteDatabaseE_ = e_();
            if (contentValues.getAsString(str2) == null) {
                zzj().zzm().zza("Value of the primary key is not set.", zzgo.zza(str2));
                return;
            }
            if (sQLiteDatabaseE_.update(str, contentValues, str2 + " = ?", new String[]{r1}) == 0 && sQLiteDatabaseE_.insertWithOnConflict(str, null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update table (got -1). key", zzgo.zza(str), zzgo.zza(str2));
            }
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error storing into table. key", zzgo.zza(str), zzgo.zza(str2), e9);
        }
    }

    public final void zza(String str, zzje zzjeVar) {
        d0.h(str);
        d0.h(zzjeVar);
        zzt();
        zzal();
        zzb(str, zzi(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("storage_consent_at_bundling", zzjeVar.zzf());
        zza("consent_settings", "app_id", contentValues);
    }

    public final boolean zza(z3 z3Var, boolean z5) {
        zzt();
        zzal();
        d0.h(z3Var);
        d0.d(z3Var.e2());
        if (z3Var.t0()) {
            zzv();
            ((b) zzb()).getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (z3Var.K1() < jCurrentTimeMillis - zzag.zzm() || z3Var.K1() > zzag.zzm() + jCurrentTimeMillis) {
                zzj().zzu().zza("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzgo.zza(z3Var.e2()), Long.valueOf(jCurrentTimeMillis), Long.valueOf(z3Var.K1()));
            }
            try {
                byte[] bArrZzb = g_().zzb(z3Var.c());
                zzj().zzp().zza("Saving bundle, size", Integer.valueOf(bArrZzb.length));
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_id", z3Var.e2());
                contentValues.put("bundle_end_timestamp", Long.valueOf(z3Var.K1()));
                contentValues.put(MTCoreConstants.Protocol.KEY_DATA, bArrZzb);
                contentValues.put("has_realtime", Integer.valueOf(z5 ? 1 : 0));
                if (z3Var.A0()) {
                    contentValues.put("retry_count", Integer.valueOf(z3Var.j1()));
                }
                try {
                    if (e_().insert("queue", null, contentValues) != -1) {
                        return true;
                    }
                    zzj().zzg().zza("Failed to insert bundle (got -1). appId", zzgo.zza(z3Var.e2()));
                    return false;
                } catch (SQLiteException e9) {
                    zzj().zzg().zza("Error storing bundle. appId", zzgo.zza(z3Var.e2()), e9);
                    return false;
                }
            } catch (IOException e10) {
                zzj().zzg().zza("Data loss. Failed to serialize bundle. appId", zzgo.zza(z3Var.e2()), e10);
                return false;
            }
        }
        throw new IllegalStateException();
    }

    private final boolean zza(String str, int i6, f2 f2Var) {
        zzal();
        zzt();
        d0.d(str);
        d0.h(f2Var);
        if (f2Var.u().isEmpty()) {
            zzj().zzu().zza("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzgo.zza(str), Integer.valueOf(i6), String.valueOf(f2Var.A() ? Integer.valueOf(f2Var.r()) : null));
            return false;
        }
        byte[] bArrC = f2Var.c();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i6));
        contentValues.put("filter_id", f2Var.A() ? Integer.valueOf(f2Var.r()) : null);
        contentValues.put("event_name", f2Var.u());
        contentValues.put("session_scoped", f2Var.B() ? Boolean.valueOf(f2Var.y()) : null);
        contentValues.put(MTCoreConstants.Protocol.KEY_DATA, bArrC);
        try {
            if (e_().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert event filter (got -1). appId", zzgo.zza(str));
            return true;
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error storing event filter. appId", zzgo.zza(str), e9);
            return false;
        }
    }

    private final boolean zza(String str, int i6, l2 l2Var) {
        zzal();
        zzt();
        d0.d(str);
        d0.h(l2Var);
        if (l2Var.r().isEmpty()) {
            zzj().zzu().zza("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzgo.zza(str), Integer.valueOf(i6), String.valueOf(l2Var.v() ? Integer.valueOf(l2Var.n()) : null));
            return false;
        }
        byte[] bArrC = l2Var.c();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i6));
        contentValues.put("filter_id", l2Var.v() ? Integer.valueOf(l2Var.n()) : null);
        contentValues.put("property_name", l2Var.r());
        contentValues.put("session_scoped", l2Var.w() ? Boolean.valueOf(l2Var.u()) : null);
        contentValues.put(MTCoreConstants.Protocol.KEY_DATA, bArrC);
        try {
            if (e_().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert property filter (got -1). appId", zzgo.zza(str));
            return false;
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error storing property filter. appId", zzgo.zza(str), e9);
            return false;
        }
    }

    public final boolean zza(zzbc zzbcVar, long j3, boolean z5) {
        zzt();
        zzal();
        d0.h(zzbcVar);
        d0.d(zzbcVar.zza);
        byte[] bArrC = g_().zza(zzbcVar).c();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzbcVar.zza);
        contentValues.put("name", zzbcVar.zzb);
        contentValues.put("timestamp", Long.valueOf(zzbcVar.zzd));
        contentValues.put("metadata_fingerprint", Long.valueOf(j3));
        contentValues.put(MTCoreConstants.Protocol.KEY_DATA, bArrC);
        contentValues.put("realtime", Integer.valueOf(z5 ? 1 : 0));
        try {
            if (e_().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert raw event (got -1). appId", zzgo.zza(zzbcVar.zza));
            return false;
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error storing raw event. appId", zzgo.zza(zzbcVar.zza), e9);
            return false;
        }
    }

    public final boolean zza(String str, zzno zznoVar) {
        zzt();
        zzal();
        d0.h(zznoVar);
        d0.d(str);
        ((b) zzb()).getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j3 = zznoVar.zzb;
        zzfz<Long> zzfzVar = zzbh.zzbh;
        if (j3 < jCurrentTimeMillis - zzfzVar.zza(null).longValue() || zznoVar.zzb > zzfzVar.zza(null).longValue() + jCurrentTimeMillis) {
            zzj().zzu().zza("Storing trigger URI outside of the max retention time span. appId, now, timestamp", zzgo.zza(str), Long.valueOf(jCurrentTimeMillis), Long.valueOf(zznoVar.zzb));
        }
        zzj().zzp().zza("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", zznoVar.zza);
        contentValues.put(FirebaseAnalytics.Param.SOURCE, Integer.valueOf(zznoVar.zzc));
        contentValues.put("timestamp_millis", Long.valueOf(zznoVar.zzb));
        try {
            if (e_().insert("trigger_uris", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert trigger URI (got -1). appId", zzgo.zza(str));
            return false;
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error storing trigger URI. appId", zzgo.zza(str), e9);
            return false;
        }
    }

    public final boolean zza(String str, x3 x3Var, String str2, Map<String, String> map, zznt zzntVar) {
        int iDelete;
        zzt();
        zzal();
        d0.h(x3Var);
        d0.d(str);
        ea.a();
        if (!zze().zza(zzbh.zzcb)) {
            return false;
        }
        zzt();
        zzal();
        if (zzaa()) {
            long jZza = zzn().zzb.zza();
            ((b) zzb()).getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (Math.abs(jElapsedRealtime - jZza) > zzag.zzn()) {
                zzn().zzb.zza(jElapsedRealtime);
                zzt();
                zzal();
                if (zzaa() && (iDelete = e_().delete("upload_queue", zzao(), new String[0])) > 0) {
                    zzj().zzp().zza("Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted", Integer.valueOf(iDelete));
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(entry.getKey() + "=" + entry.getValue());
        }
        byte[] bArrC = x3Var.c();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("measurement_batch", bArrC);
        contentValues.put("upload_uri", str2);
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        if (size > 0) {
            sb.append((CharSequence) arrayList.get(0));
            int i6 = 1;
            while (i6 < size) {
                sb.append((CharSequence) "\r\n");
                Object obj = arrayList.get(i6);
                i6++;
                sb.append((CharSequence) obj);
            }
        }
        contentValues.put("upload_headers", sb.toString());
        contentValues.put("upload_type", Integer.valueOf(zzntVar.zza()));
        ((b) zzb()).getClass();
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(System.currentTimeMillis()));
        contentValues.put("retry_count", (Integer) 0);
        try {
            if (e_().insert("upload_queue", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert MeasurementBatch (got -1) to upload_queue. appId", str);
            return false;
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error storing MeasurementBatch to upload_queue. appId", str, e9);
            return false;
        }
    }

    public final boolean zza(String str, Long l4, long j3, q3 q3Var) {
        zzt();
        zzal();
        d0.h(q3Var);
        d0.d(str);
        d0.h(l4);
        byte[] bArrC = q3Var.c();
        zzj().zzp().zza("Saving complex main event, appId, data size", zzi().zza(str), Integer.valueOf(bArrC.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l4);
        contentValues.put("children_to_process", Long.valueOf(j3));
        contentValues.put("main_event", bArrC);
        try {
            if (e_().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert complex main event (got -1). appId", zzgo.zza(str));
            return false;
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error storing complex main event. appId", zzgo.zza(str), e9);
            return false;
        }
    }

    public final boolean zza(zzae zzaeVar) {
        d0.h(zzaeVar);
        zzt();
        zzal();
        String str = zzaeVar.zza;
        d0.h(str);
        if (zze(str, zzaeVar.zzc.zza) == null && zzb("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", zzaeVar.zzb);
        contentValues.put("name", zzaeVar.zzc.zza);
        Object objZza = zzaeVar.zzc.zza();
        d0.h(objZza);
        zza(contentValues, "value", objZza);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.valueOf(zzaeVar.zze));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzaeVar.zzf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzaeVar.zzh));
        zzq();
        contentValues.put("timed_out_event", zzos.zza((Parcelable) zzaeVar.zzg));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzaeVar.zzd));
        zzq();
        contentValues.put("triggered_event", zzos.zza((Parcelable) zzaeVar.zzi));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzaeVar.zzc.zzb));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzaeVar.zzj));
        zzq();
        contentValues.put("expired_event", zzos.zza((Parcelable) zzaeVar.zzk));
        try {
            if (e_().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert/update conditional user property (got -1)", zzgo.zza(str));
            return true;
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error storing conditional user property", zzgo.zza(str), e9);
            return true;
        }
    }

    private final boolean zza(long j3, zzbc zzbcVar, long j8, boolean z5) {
        zzt();
        zzal();
        d0.h(zzbcVar);
        d0.d(zzbcVar.zza);
        byte[] bArrC = g_().zza(zzbcVar).c();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzbcVar.zza);
        contentValues.put("name", zzbcVar.zzb);
        contentValues.put("timestamp", Long.valueOf(zzbcVar.zzd));
        contentValues.put("metadata_fingerprint", Long.valueOf(j8));
        contentValues.put(MTCoreConstants.Protocol.KEY_DATA, bArrC);
        contentValues.put("realtime", Integer.valueOf(z5 ? 1 : 0));
        try {
            long jUpdate = e_().update("raw_events", contentValues, "rowid = ?", new String[]{String.valueOf(j3)});
            if (jUpdate == 1) {
                return true;
            }
            zzj().zzg().zza("Failed to update raw event. appId, updatedRows", zzgo.zza(zzbcVar.zza), Long.valueOf(jUpdate));
            return false;
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error updating raw event. appId", zzgo.zza(zzbcVar.zza), e9);
            return false;
        }
    }

    public final boolean zza(zzop zzopVar) {
        d0.h(zzopVar);
        zzt();
        zzal();
        if (zze(zzopVar.zza, zzopVar.zzc) == null) {
            if (zzos.zzh(zzopVar.zzc)) {
                if (zzb("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzopVar.zza}) >= zze().zza(zzopVar.zza, zzbh.zzai, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(zzopVar.zzc) && zzb("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzopVar.zza, zzopVar.zzb}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzopVar.zza);
        contentValues.put("origin", zzopVar.zzb);
        contentValues.put("name", zzopVar.zzc);
        contentValues.put("set_timestamp", Long.valueOf(zzopVar.zzd));
        zza(contentValues, "value", zzopVar.zze);
        try {
            if (e_().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert/update user property (got -1). appId", zzgo.zza(zzopVar.zza));
            return true;
        } catch (SQLiteException e9) {
            zzj().zzg().zza("Error storing user property. appId", zzgo.zza(zzopVar.zza), e9);
            return true;
        }
    }
}
