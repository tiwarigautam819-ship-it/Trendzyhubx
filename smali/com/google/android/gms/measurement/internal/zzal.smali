###### Class com.google.android.gms.measurement.internal.zzal (com.google.android.gms.measurement.internal.zzal)
.class final Lcom/google/android/gms/measurement/internal/zzal;
.super Lcom/google/android/gms/measurement/internal/zznr;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:[Ljava/lang/String;

.field private static final zzd:[Ljava/lang/String;

.field private static final zze:[Ljava/lang/String;

.field private static final zzf:[Ljava/lang/String;

.field private static final zzh:[Ljava/lang/String;

.field private static final zzi:[Ljava/lang/String;

.field private static final zzj:[Ljava/lang/String;

.field private static final zzk:[Ljava/lang/String;


# instance fields
.field private final zzl:Lcom/google/android/gms/measurement/internal/zzat;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zznl;


# direct methods
.method static constructor <clinit>()V
    .registers 91

    .line 1
    const-string v10, "current_session_count"

    .line 2
    .line 3
    const-string v11, "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"

    .line 4
    .line 5
    const-string v0, "last_bundled_timestamp"

    .line 6
    .line 7
    const-string v1, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    .line 8
    .line 9
    const-string v2, "last_bundled_day"

    .line 10
    .line 11
    const-string v3, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    .line 12
    .line 13
    const-string v4, "last_sampled_complex_event_id"

    .line 14
    .line 15
    const-string v5, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    .line 16
    .line 17
    const-string v6, "last_sampling_rate"

    .line 18
    .line 19
    const-string v7, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    .line 20
    .line 21
    const-string v8, "last_exempt_from_sampling"

    .line 22
    .line 23
    const-string v9, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zza:[Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "origin"

    .line 32
    .line 33
    const-string v1, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    .line 34
    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzb:[Ljava/lang/String;

    .line 40
    .line 41
    const-string v89, "daily_registered_triggers_count"

    .line 42
    .line 43
    const-string v90, "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;"

    .line 44
    .line 45
    const-string v1, "app_version"

    .line 46
    .line 47
    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    .line 48
    .line 49
    const-string v3, "app_store"

    .line 50
    .line 51
    const-string v4, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    .line 52
    .line 53
    const-string v5, "gmp_version"

    .line 54
    .line 55
    const-string v6, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    .line 56
    .line 57
    const-string v7, "dev_cert_hash"

    .line 58
    .line 59
    const-string v8, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    .line 60
    .line 61
    const-string v9, "measurement_enabled"

    .line 62
    .line 63
    const-string v10, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    .line 64
    .line 65
    const-string v11, "last_bundle_start_timestamp"

    .line 66
    .line 67
    const-string v12, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    .line 68
    .line 69
    const-string v13, "day"

    .line 70
    .line 71
    const-string v14, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    .line 72
    .line 73
    const-string v15, "daily_public_events_count"

    .line 74
    .line 75
    const-string v16, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    .line 76
    .line 77
    const-string v17, "daily_events_count"

    .line 78
    .line 79
    const-string v18, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    .line 80
    .line 81
    const-string v19, "daily_conversions_count"

    .line 82
    .line 83
    const-string v20, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    .line 84
    .line 85
    const-string v21, "remote_config"

    .line 86
    .line 87
    const-string v22, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    .line 88
    .line 89
    const-string v23, "config_fetched_time"

    .line 90
    .line 91
    const-string v24, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    .line 92
    .line 93
    const-string v25, "failed_config_fetch_time"

    .line 94
    .line 95
    const-string v26, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    .line 96
    .line 97
    const-string v27, "app_version_int"

    .line 98
    .line 99
    const-string v28, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    .line 100
    .line 101
    const-string v29, "firebase_instance_id"

    .line 102
    .line 103
    const-string v30, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    .line 104
    .line 105
    const-string v31, "daily_error_events_count"

    .line 106
    .line 107
    const-string v32, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    .line 108
    .line 109
    const-string v33, "daily_realtime_events_count"

    .line 110
    .line 111
    const-string v34, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    .line 112
    .line 113
    const-string v35, "health_monitor_sample"

    .line 114
    .line 115
    const-string v36, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    .line 116
    .line 117
    const-string v37, "android_id"

    .line 118
    .line 119
    const-string v38, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    .line 120
    .line 121
    const-string v39, "adid_reporting_enabled"

    .line 122
    .line 123
    const-string v40, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    .line 124
    .line 125
    const-string v41, "ssaid_reporting_enabled"

    .line 126
    .line 127
    const-string v42, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    .line 128
    .line 129
    const-string v43, "admob_app_id"

    .line 130
    .line 131
    const-string v44, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    .line 132
    .line 133
    const-string v45, "linked_admob_app_id"

    .line 134
    .line 135
    const-string v46, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    .line 136
    .line 137
    const-string v47, "dynamite_version"

    .line 138
    .line 139
    const-string v48, "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"

    .line 140
    .line 141
    const-string v49, "safelisted_events"

    .line 142
    .line 143
    const-string v50, "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;"

    .line 144
    .line 145
    const-string v51, "ga_app_id"

    .line 146
    .line 147
    const-string v52, "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"

    .line 148
    .line 149
    const-string v53, "config_last_modified_time"

    .line 150
    .line 151
    const-string v54, "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"

    .line 152
    .line 153
    const-string v55, "e_tag"

    .line 154
    .line 155
    const-string v56, "ALTER TABLE apps ADD COLUMN e_tag TEXT;"

    .line 156
    .line 157
    const-string v57, "session_stitching_token"

    .line 158
    .line 159
    const-string v58, "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;"

    .line 160
    .line 161
    const-string v59, "sgtm_upload_enabled"

    .line 162
    .line 163
    const-string v60, "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;"

    .line 164
    .line 165
    const-string v61, "target_os_version"

    .line 166
    .line 167
    const-string v62, "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;"

    .line 168
    .line 169
    const-string v63, "session_stitching_token_hash"

    .line 170
    .line 171
    const-string v64, "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;"

    .line 172
    .line 173
    const-string v65, "ad_services_version"

    .line 174
    .line 175
    const-string v66, "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;"

    .line 176
    .line 177
    const-string v67, "unmatched_first_open_without_ad_id"

    .line 178
    .line 179
    const-string v68, "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;"

    .line 180
    .line 181
    const-string v69, "npa_metadata_value"

    .line 182
    .line 183
    const-string v70, "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;"

    .line 184
    .line 185
    const-string v71, "attribution_eligibility_status"

    .line 186
    .line 187
    const-string v72, "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;"

    .line 188
    .line 189
    const-string v73, "sgtm_preview_key"

    .line 190
    .line 191
    const-string v74, "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;"

    .line 192
    .line 193
    const-string v75, "dma_consent_state"

    .line 194
    .line 195
    const-string v76, "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;"

    .line 196
    .line 197
    const-string v77, "daily_realtime_dcu_count"

    .line 198
    .line 199
    const-string v78, "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;"

    .line 200
    .line 201
    const-string v79, "bundle_delivery_index"

    .line 202
    .line 203
    const-string v80, "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;"

    .line 204
    .line 205
    const-string v81, "serialized_npa_metadata"

    .line 206
    .line 207
    const-string v82, "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;"

    .line 208
    .line 209
    const-string v83, "unmatched_pfo"

    .line 210
    .line 211
    const-string v84, "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;"

    .line 212
    .line 213
    const-string v85, "unmatched_uwa"

    .line 214
    .line 215
    const-string v86, "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;"

    .line 216
    .line 217
    const-string v87, "ad_campaign_info"

    .line 218
    .line 219
    const-string v88, "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;"

    .line 220
    .line 221
    filled-new-array/range {v1 .. v90}, [Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzc:[Ljava/lang/String;

    .line 226
    .line 227
    const-string v0, "realtime"

    .line 228
    .line 229
    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    .line 230
    .line 231
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzd:[Ljava/lang/String;

    .line 236
    .line 237
    const-string v0, "retry_count"

    .line 238
    .line 239
    const-string v1, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    .line 240
    .line 241
    const-string v2, "has_realtime"

    .line 242
    .line 243
    const-string v3, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    .line 244
    .line 245
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zze:[Ljava/lang/String;

    .line 250
    .line 251
    const-string v0, "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"

    .line 252
    .line 253
    const-string v1, "session_scoped"

    .line 254
    .line 255
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzf:[Ljava/lang/String;

    .line 260
    .line 261
    const-string v0, "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"

    .line 262
    .line 263
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzh:[Ljava/lang/String;

    .line 268
    .line 269
    const-string v0, "previous_install_count"

    .line 270
    .line 271
    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    .line 272
    .line 273
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzi:[Ljava/lang/String;

    .line 278
    .line 279
    const-string v5, "storage_consent_at_bundling"

    .line 280
    .line 281
    const-string v6, "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"

    .line 282
    .line 283
    const-string v1, "consent_source"

    .line 284
    .line 285
    const-string v2, "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;"

    .line 286
    .line 287
    const-string v3, "dma_consent_settings"

    .line 288
    .line 289
    const-string v4, "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;"

    .line 290
    .line 291
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzj:[Ljava/lang/String;

    .line 296
    .line 297
    const-string v0, "idempotent"

    .line 298
    .line 299
    const-string v1, "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"

    .line 300
    .line 301
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzk:[Ljava/lang/String;

    .line 306
    .line 307
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznv;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznr;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/measurement/internal/zznl;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/zznl;-><init>(Lb4/a;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzm:Lcom/google/android/gms/measurement/internal/zznl;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzat;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "google_app_measurement.db"

    .line 22
    .line 23
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Lcom/google/android/gms/measurement/internal/zzal;Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzl:Lcom/google/android/gms/measurement/internal/zzat;

    .line 27
    .line 28
    return-void
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;J)J
    .registers 7

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 46
    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 47
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x0

    .line 48
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_14} :catch_1a
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide p1

    :catchall_18
    move-exception p1

    goto :goto_2e

    :catch_1a
    move-exception p2

    goto :goto_20

    .line 50
    :cond_1c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide p3

    .line 51
    :goto_20
    :try_start_20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    const-string p4, "Database error"

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    throw p2
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_18

    :goto_2e
    if-eqz v1, :cond_33

    .line 53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_33
    throw p1
.end method

.method public static synthetic zza(Landroid/database/Cursor;)Lcom/google/android/gms/measurement/internal/zzje;
    .registers 3

    const/4 v0, 0x0

    .line 124
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 125
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 126
    invoke-static {v0, p0}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzal;)Lcom/google/android/gms/measurement/internal/zznl;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzm:Lcom/google/android/gms/measurement/internal/zznl;

    return-object p0
.end method

.method private final zza(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 6

    .line 127
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_41

    const/4 v2, 0x2

    if-eq v0, v2, :cond_38

    const/4 v2, 0x3

    if-eq v0, v2, :cond_33

    const/4 p1, 0x4

    if-eq v0, p1, :cond_25

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Loaded invalid unknown value type, ignoring it"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 129
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Loaded invalid blob type value, ignoring it"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-object v1

    .line 130
    :cond_33
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 131
    :cond_38
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 132
    :cond_41
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 133
    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Loaded invalid null value from database"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-object v1
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzau;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzau<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 135
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_9} :catch_2f
    .catchall {:try_start_1 .. :try_end_9} :catchall_2d

    .line 136
    :try_start_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_25

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "No data found"

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_1c} :catch_23
    .catchall {:try_start_9 .. :try_end_1c} :catchall_20

    .line 138
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_20
    move-exception p2

    move-object v0, p1

    goto :goto_44

    :catch_23
    move-exception p2

    goto :goto_31

    .line 139
    :cond_25
    :try_start_25
    invoke-interface {p3, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zza(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p2
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_29} :catch_23
    .catchall {:try_start_25 .. :try_end_29} :catchall_20

    .line 140
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_2d
    move-exception p2

    goto :goto_44

    :catch_2f
    move-exception p2

    move-object p1, v0

    .line 141
    :goto_31
    :try_start_31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    const-string v1, "Error querying database."

    invoke-virtual {p3, v1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_20

    if-eqz p1, :cond_43

    .line 142
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_43
    return-object v0

    :goto_44
    if-eqz v0, :cond_49

    .line 143
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_49
    throw p2
.end method

.method private final zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 161
    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x0

    .line 163
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_14} :catch_1a
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 164
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_18
    move-exception p1

    goto :goto_2e

    :catch_1a
    move-exception p2

    goto :goto_20

    .line 165
    :cond_1c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object p3

    .line 166
    :goto_20
    :try_start_20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    const-string v0, "Database error"

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    throw p2
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_18

    :goto_2e
    if-eqz v1, :cond_33

    .line 168
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_33
    throw p1
.end method

.method private static zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 342
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 343
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 344
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 345
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 346
    :cond_10
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    .line 347
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    .line 348
    :cond_1a
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_24

    .line 349
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void

    .line 350
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;)V
    .registers 8

    .line 547
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 548
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 549
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 550
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 551
    const-string v1, "app_id"

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v1, "name"

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zzc:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lifetime_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 554
    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zzd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_bundle_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zzf:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_fire_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 556
    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zzg:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_bundled_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 557
    const-string v1, "last_bundled_day"

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zzh:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 558
    const-string v1, "last_sampled_complex_event_id"

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zzi:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 559
    const-string v1, "last_sampling_rate"

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zzj:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 560
    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zze:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_session_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 561
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zzk:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7a

    const-wide/16 v3, 0x1

    .line 562
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_7b

    :cond_7a
    move-object v1, v2

    .line 563
    :goto_7b
    const-string v3, "last_exempt_from_sampling"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 564
    :try_start_80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x5

    .line 565
    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_a5

    .line 566
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 567
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Failed to insert/update event aggregates (got -1). appId"

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zza:Ljava/lang/String;

    .line 568
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 569
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_80 .. :try_end_a2} :catch_a3

    return-void

    :catch_a3
    move-exception p1

    goto :goto_a6

    :cond_a5
    return-void

    .line 570
    :goto_a6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbb;->zza:Ljava/lang/String;

    .line 572
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 573
    const-string v1, "Error storing event aggregates. appId"

    invoke-virtual {v0, v1, p2, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 9

    .line 574
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 575
    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 576
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 577
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    const-string v0, "Value of the primary key is not set."

    .line 578
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_1c
    move-exception p3

    goto :goto_60

    .line 579
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-virtual {v0, p1, p3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_5f

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 581
    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_5f

    .line 582
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 583
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    const-string v0, "Failed to insert/update table (got -1). key"

    .line 584
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 585
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 586
    invoke-virtual {p3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5f} :catch_1c

    :cond_5f
    return-void

    .line 587
    :goto_60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    .line 589
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 590
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 591
    const-string v1, "Error storing into table. key"

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zza(JLcom/google/android/gms/measurement/internal/zzbc;JZ)Z
    .registers 11

    .line 853
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 854
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 855
    invoke-static {p3}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 856
    iget-object v0, p3, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/measurement/internal/zzbc;)Lcom/google/android/gms/internal/measurement/q3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/i5;->c()[B

    move-result-object v0

    .line 858
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 859
    const-string v2, "app_id"

    iget-object v3, p3, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v2, "name"

    iget-object v3, p3, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-wide v2, p3, Lcom/google/android/gms/measurement/internal/zzbc;->zzd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 862
    const-string v2, "metadata_fingerprint"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 863
    const-string p4, "data"

    invoke-virtual {v1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 864
    const-string p4, "realtime"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p4, 0x0

    .line 865
    :try_start_50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    .line 866
    const-string p6, "raw_events"

    const-string v0, "rowid = ?"

    .line 867
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 868
    invoke-virtual {p5, p6, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    const-wide/16 p5, 0x1

    cmp-long p5, p1, p5

    if-eqz p5, :cond_85

    .line 869
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p5

    .line 870
    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p5

    const-string p6, "Failed to update raw event. appId, updatedRows"

    iget-object v0, p3, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    .line 871
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 872
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 873
    invoke-virtual {p5, p6, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_82
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_82} :catch_83

    return p4

    :catch_83
    move-exception p1

    goto :goto_87

    :cond_85
    const/4 p1, 0x1

    return p1

    .line 874
    :goto_87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 875
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    .line 876
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p5, "Error updating raw event. appId"

    invoke-virtual {p2, p5, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p4
.end method

.method private final zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/f2;)Z
    .registers 9

    .line 640
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 641
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 642
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 643
    invoke-static {p3}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 644
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/f2;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 645
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    .line 647
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 648
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 649
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/f2;->A()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/f2;->r()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_36
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 650
    const-string v2, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 651
    :cond_40
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/i5;->c()[B

    move-result-object v0

    .line 652
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 653
    const-string v4, "app_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v4, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/f2;->A()Z

    move-result p2

    if-eqz p2, :cond_66

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/f2;->r()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_67

    :cond_66
    move-object p2, v2

    :goto_67
    const-string v4, "filter_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    const-string p2, "event_name"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/f2;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/f2;->B()Z

    move-result p2

    if-eqz p2, :cond_84

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/f2;->y()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_85

    :cond_84
    move-object p2, v2

    .line 658
    :goto_85
    const-string p3, "session_scoped"

    invoke-virtual {v3, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 659
    const-string p2, "data"

    invoke-virtual {v3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 660
    :try_start_8f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 661
    const-string p3, "event_filters"

    const/4 v0, 0x5

    .line 662
    invoke-virtual {p2, p3, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_b4

    .line 663
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 664
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Failed to insert event filter (got -1). appId"

    .line 665
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8f .. :try_end_b1} :catch_b2

    goto :goto_b4

    :catch_b2
    move-exception p2

    goto :goto_b6

    :cond_b4
    :goto_b4
    const/4 p1, 0x1

    return p1

    .line 666
    :goto_b6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 667
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    const-string v0, "Error storing event filter. appId"

    .line 668
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private final zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/l2;)Z
    .registers 9

    .line 669
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 670
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 671
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 672
    invoke-static {p3}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 673
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/l2;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 674
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    .line 676
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 677
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 678
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/l2;->v()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/l2;->n()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_36
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 679
    const-string v2, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 680
    :cond_40
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/i5;->c()[B

    move-result-object v0

    .line 681
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 682
    const-string v4, "app_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v4, "audience_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/l2;->v()Z

    move-result p2

    if-eqz p2, :cond_66

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/l2;->n()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_67

    :cond_66
    move-object p2, v2

    :goto_67
    const-string v4, "filter_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    const-string p2, "property_name"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/l2;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/l2;->w()Z

    move-result p2

    if-eqz p2, :cond_84

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/l2;->u()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_85

    :cond_84
    move-object p2, v2

    .line 687
    :goto_85
    const-string p3, "session_scoped"

    invoke-virtual {v3, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 688
    const-string p2, "data"

    invoke-virtual {v3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 689
    :try_start_8f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 690
    const-string p3, "property_filters"

    const/4 v0, 0x5

    .line 691
    invoke-virtual {p2, p3, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_b4

    .line 692
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 693
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Failed to insert property filter (got -1). appId"

    .line 694
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8f .. :try_end_b1} :catch_b2

    return v1

    :catch_b2
    move-exception p2

    goto :goto_b6

    :cond_b4
    const/4 p1, 0x1

    return p1

    .line 695
    :goto_b6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 696
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    const-string v0, "Error storing property filter. appId"

    .line 697
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method public static bridge synthetic zzab()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzi:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic zzac()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzc:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic zzad()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzj:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic zzae()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zza:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic zzaf()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzf:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic zzag()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzh:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic zzah()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zze:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic zzai()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzd:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic zzaj()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzk:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic zzak()[Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzal;->zzb:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final zzao()Ljava/lang/String;
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lb4/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sget-object v2, Lcom/google/android/gms/measurement/internal/zznt;->zzb:Lcom/google/android/gms/measurement/internal/zznt;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznt;->zza()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzaf:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v7, "(upload_type = "

    .line 36
    .line 37
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v3, " AND (ABS(creation_timestamp - "

    .line 44
    .line 45
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v7, ") > CAST("

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, " AS INTEGER)))"

    .line 60
    .line 61
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznt;->zza()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzm()J

    .line 73
    .line 74
    .line 75
    move-result-wide v8

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v10, "(upload_type != "

    .line 79
    .line 80
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v2, "("

    .line 108
    .line 109
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v2, " OR "

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, ")"

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    return-object v0
.end method

.method private final zzb(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    :try_start_5
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 42
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x0

    .line 43
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_14} :catch_1a
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide p1

    :catchall_18
    move-exception p1

    goto :goto_32

    :catch_1a
    move-exception p2

    goto :goto_24

    .line 45
    :cond_1c
    :try_start_1c
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database returned empty set"

    invoke-direct {p2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_24} :catch_1a
    .catchall {:try_start_1c .. :try_end_24} :catchall_18

    .line 46
    :goto_24
    :try_start_24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Database error"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    throw p2
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_18

    :goto_32
    if-eqz v1, :cond_37

    .line 48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_37
    throw p1
.end method

.method private final zzb(Ljava/lang/String;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    :try_start_e
    const-string v2, "select count(1) from audience_filter_values where app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_18} :catch_7e

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    .line 111
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzah:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, p1, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v4

    const/16 v5, 0x7d0

    .line 112
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 113
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v5, v4

    cmp-long v2, v2, v5

    if-gtz v2, :cond_32

    goto :goto_7d

    .line 114
    :cond_32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 115
    :goto_38
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_55

    .line 116
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_47

    goto :goto_7d

    .line 117
    :cond_47
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 118
    :cond_55
    const-string p2, ","

    invoke-static {p2, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "("

    const-string v3, ")"

    .line 119
    invoke-static {v2, p2, v3}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 120
    const-string v2, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    const-string v3, " order by rowid desc limit -1 offset ?)"

    .line 121
    invoke-static {v2, p2, v3}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    .line 123
    const-string v2, "audience_filter_values"

    invoke-virtual {v0, v2, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_7d

    const/4 p1, 0x1

    return p1

    :cond_7d
    :goto_7d
    return v1

    :catch_7e
    move-exception p2

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Database error querying filters. appId"

    .line 126
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private final zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 32

    .line 42
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 43
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const-string v8, "last_exempt_from_sampling"

    const-string v9, "current_session_count"

    const-string v1, "lifetime_count"

    const-string v2, "current_bundle_count"

    const-string v3, "last_fire_timestamp"

    const-string v4, "last_bundled_timestamp"

    const-string v5, "last_bundled_day"

    const-string v6, "last_sampled_complex_event_id"

    const-string v7, "last_sampling_rate"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 48
    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v10, 0x0

    .line 49
    new-array v3, v10, [Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    const-string v5, "app_id=? and name=?"

    filled-new-array/range {p2 .. p3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    .line 51
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_49
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_49} :catch_105
    .catchall {:try_start_2c .. :try_end_49} :catchall_103

    .line 52
    :try_start_49
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_4d} :catch_cb
    .catchall {:try_start_49 .. :try_end_4d} :catchall_c8

    if-nez v0, :cond_53

    .line 53
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 54
    :cond_53
    :try_start_53
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v0, 0x1

    .line 55
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v3, 0x2

    .line 56
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v3, 0x3

    .line 57
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_6d

    move-wide/from16 v22, v5

    goto :goto_73

    :cond_6d
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide/from16 v22, v3

    :goto_73
    const/4 v3, 0x4

    .line 58
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7d

    move-object/from16 v24, v1

    goto :goto_87

    :cond_7d
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v24, v3

    :goto_87
    const/4 v3, 0x5

    .line 59
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_91

    move-object/from16 v25, v1

    goto :goto_9b

    :cond_91
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v25, v3

    :goto_9b
    const/4 v3, 0x6

    .line 60
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a5

    move-object/from16 v26, v1

    goto :goto_af

    :cond_a5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v26, v3

    :goto_af
    const/4 v3, 0x7

    .line 61
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_cd

    .line 62
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v7, 0x1

    cmp-long v3, v3, v7

    if-nez v3, :cond_c1

    move v10, v0

    :cond_c1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v27, v0

    goto :goto_cf

    :catchall_c8
    move-exception v0

    move-object v1, v2

    goto :goto_128

    :catch_cb
    move-exception v0

    goto :goto_107

    :cond_cd
    move-object/from16 v27, v1

    :goto_cf
    const/16 v0, 0x8

    .line 63
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_da

    :goto_d7
    move-wide/from16 v18, v5

    goto :goto_df

    :cond_da
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_d7

    .line 64
    :goto_df
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzbb;

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 65
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v3, "Got multiple records for event aggregates, expected one. appId"

    .line 68
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 69
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ff
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_ff} :catch_cb
    .catchall {:try_start_53 .. :try_end_ff} :catchall_c8

    .line 70
    :cond_ff
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v11

    :catchall_103
    move-exception v0

    goto :goto_128

    :catch_105
    move-exception v0

    move-object v2, v1

    .line 71
    :goto_107
    :try_start_107
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Error querying events. appId"

    .line 73
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    move-object/from16 v13, p3

    invoke-virtual {v6, v13}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_122
    .catchall {:try_start_107 .. :try_end_122} :catchall_c8

    if-eqz v2, :cond_127

    .line 76
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_127
    return-object v1

    :goto_128
    if-eqz v1, :cond_12d

    .line 77
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_12d
    throw v0
.end method

.method private final zzi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 10
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 11
    const-string v1, "app_id=?"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Error deleting snapshot. appId"

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b_()J
    .registers 7

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const-string v4, "select rowid from raw_events order by rowid desc limit 1;"

    .line 9
    .line 10
    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 15
    .line 16
    .line 17
    move-result v3
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_11} :catch_22
    .catchall {:try_start_3 .. :try_end_11} :catchall_20

    .line 18
    if-nez v3, :cond_17

    .line 19
    .line 20
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 21
    .line 22
    .line 23
    return-wide v0

    .line 24
    :cond_17
    const/4 v3, 0x0

    .line 25
    :try_start_18
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_1c} :catch_22
    .catchall {:try_start_18 .. :try_end_1c} :catchall_20

    .line 29
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 30
    .line 31
    .line 32
    return-wide v0

    .line 33
    :catchall_20
    move-exception v0

    .line 34
    goto :goto_36

    .line 35
    :catch_22
    move-exception v3

    .line 36
    :try_start_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-string v5, "Error querying raw events"

    .line 45
    .line 46
    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_20

    .line 47
    .line 48
    .line 49
    if-eqz v2, :cond_35

    .line 50
    .line 51
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    :cond_35
    return-wide v0

    .line 55
    :goto_36
    if-eqz v2, :cond_3b

    .line 56
    .line 57
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 58
    .line 59
    .line 60
    :cond_3b
    throw v0
.end method

.method public final c_()J
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const-string v3, "select max(bundle_end_timestamp) from queue"

    .line 5
    .line 6
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public final d_()J
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const-string v3, "select max(timestamp) from raw_events"

    .line 5
    .line 6
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public final e_()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2
    .line 3
    .line 4
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzal;->zzl:Lcom/google/android/gms/measurement/internal/zzat;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzat;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_9} :catch_a

    .line 10
    return-object v0

    .line 11
    :catch_a
    move-exception v0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "Error opening database"

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final f_()Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_5
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_b} :catch_27
    .catchall {:try_start_5 .. :try_end_b} :catchall_22

    .line 12
    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1e

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_16} :catch_1c
    .catchall {:try_start_b .. :try_end_16} :catchall_1a

    .line 23
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :catchall_1a
    move-exception v1

    .line 28
    goto :goto_3c

    .line 29
    :catch_1c
    move-exception v2

    .line 30
    goto :goto_29

    .line 31
    :cond_1e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :catchall_22
    move-exception v0

    .line 36
    move-object v5, v1

    .line 37
    move-object v1, v0

    .line 38
    move-object v0, v5

    .line 39
    goto :goto_3c

    .line 40
    :catch_27
    move-exception v2

    .line 41
    move-object v0, v1

    .line 42
    :goto_29
    :try_start_29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "Database error getting next bundle app id"

    .line 51
    .line 52
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_1a

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_3b

    .line 56
    .line 57
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 58
    .line 59
    .line 60
    :cond_3b
    return-object v1

    .line 61
    :goto_3c
    if-eqz v0, :cond_41

    .line 62
    .line 63
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 64
    .line 65
    .line 66
    :cond_41
    throw v1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 6
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7
    const-string v1, "conditional_properties"

    const-string v2, "app_id=? and name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_1c} :catch_1d

    return p1

    :catch_1d
    move-exception v0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    const-string v2, "Error deleting conditional property"

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/z3;)J
    .registers 9

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/i5;->c()[B

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([B)J

    move-result-wide v1

    .line 34
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 35
    const-string v4, "app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v4, "metadata_fingerprint"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    const-string v4, "metadata"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 38
    :try_start_38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 39
    const-string v4, "raw_events_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_43} :catch_44

    return-wide v1

    :catch_44
    move-exception v0

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    const-string v2, "Error storing raw event metadata. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    throw v0
.end method

.method public final zza(Ljava/lang/String;)J
    .registers 6

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 17
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    .line 19
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzp:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v1

    const v2, 0xf4240

    .line 20
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 21
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 23
    const-string v2, "raw_events"

    const-string v3, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_33} :catch_35

    int-to-long v0, p1

    return-wide v0

    :catch_35
    move-exception v0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Error deleting over the limit events. appId"

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/q3;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    const/4 v0, 0x0

    .line 57
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 58
    const-string v2, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    .line 59
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_19} :catch_73
    .catchall {:try_start_7 .. :try_end_19} :catchall_71

    .line 61
    :try_start_19
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_35

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Main event not found"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_2c} :catch_33
    .catchall {:try_start_19 .. :try_end_2c} :catchall_30

    .line 63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_30
    move-exception p1

    move-object v0, v1

    goto :goto_88

    :catch_33
    move-exception p1

    goto :goto_75

    :cond_35
    const/4 v2, 0x0

    .line 64
    :try_start_36
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v3, 0x1

    .line 65
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_43} :catch_33
    .catchall {:try_start_36 .. :try_end_43} :catchall_30

    .line 66
    :try_start_43
    invoke-static {}, Lcom/google/android/gms/internal/measurement/q3;->A()Lcom/google/android/gms/internal/measurement/p3;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/s6;[B)Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/q3;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_53} :catch_5b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_53} :catch_33
    .catchall {:try_start_43 .. :try_end_53} :catchall_30

    .line 67
    :try_start_53
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_57} :catch_33
    .catchall {:try_start_53 .. :try_end_57} :catchall_30

    .line 68
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object p1

    :catch_5b
    move-exception v2

    .line 69
    :try_start_5c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Failed to merge main event. appId, eventId"

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 72
    invoke-virtual {v3, v4, p1, p2, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_6d} :catch_33
    .catchall {:try_start_5c .. :try_end_6d} :catchall_30

    .line 73
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_71
    move-exception p1

    goto :goto_88

    :catch_73
    move-exception p1

    move-object v1, v0

    .line 74
    :goto_75
    :try_start_75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v2, "Error selecting main event"

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_75 .. :try_end_82} :catchall_30

    if-eqz v1, :cond_87

    .line 75
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_87
    return-object v0

    :goto_88
    if-eqz v0, :cond_8d

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_8d
    throw p1
.end method

.method public final zza(JLjava/lang/String;JZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 26

    .line 79
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 82
    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>()V

    const/4 v2, 0x0

    .line 84
    :try_start_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 85
    const-string v4, "apps"

    const-string v5, "day"

    const-string v6, "daily_events_count"

    const-string v7, "daily_public_events_count"

    const-string v8, "daily_conversions_count"

    const-string v9, "daily_error_events_count"

    const-string v10, "daily_realtime_events_count"

    const-string v11, "daily_realtime_dcu_count"

    const-string v12, "daily_registered_triggers_count"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id=?"

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 86
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_5d

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Not updating daily counts, app is not known. appId"

    .line 90
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_51} :catch_59
    .catchall {:try_start_13 .. :try_end_51} :catchall_55

    .line 91
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_55
    move-exception v0

    move-object p1, v0

    goto/16 :goto_14c

    :catch_59
    move-exception v0

    move-object p1, v0

    goto/16 :goto_135

    :cond_5d
    const/4 v4, 0x0

    .line 92
    :try_start_5e
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_97

    const/4 v4, 0x1

    .line 93
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:J

    const/4 v4, 0x2

    .line 94
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zza:J

    const/4 v4, 0x3

    .line 95
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:J

    const/4 v4, 0x4

    .line 96
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    const/4 v4, 0x5

    .line 97
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zze:J

    const/4 v4, 0x6

    .line 98
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzf:J

    const/4 v4, 0x7

    .line 99
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzg:J

    :cond_97
    if-eqz p6, :cond_9f

    .line 100
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:J

    add-long v4, v4, p4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:J

    :cond_9f
    if-eqz p7, :cond_a7

    .line 101
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zza:J

    add-long v4, v4, p4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zza:J

    :cond_a7
    if-eqz p8, :cond_af

    .line 102
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:J

    add-long v4, v4, p4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:J

    :cond_af
    if-eqz p9, :cond_b7

    .line 103
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    add-long v4, v4, p4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    :cond_b7
    if-eqz p10, :cond_bf

    .line 104
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zze:J

    add-long v4, v4, p4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zze:J

    :cond_bf
    if-eqz p11, :cond_c7

    .line 105
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzf:J

    add-long v4, v4, p4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzf:J

    :cond_c7
    if-eqz p12, :cond_cf

    .line 106
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzg:J

    add-long v4, v4, p4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzg:J

    .line 107
    :cond_cf
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 108
    const-string v5, "day"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string p1, "daily_public_events_count"

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zza:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string p1, "daily_events_count"

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    const-string p1, "daily_conversions_count"

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    const-string p1, "daily_error_events_count"

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    const-string p1, "daily_realtime_events_count"

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zze:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    const-string p1, "daily_realtime_dcu_count"

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzf:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string p1, "daily_registered_triggers_count"

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzg:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    const-string p1, "apps"

    const-string p2, "app_id=?"

    invoke-virtual {v3, p1, v4, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_131
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5e .. :try_end_131} :catch_59
    .catchall {:try_start_5e .. :try_end_131} :catchall_55

    .line 117
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 118
    :goto_135
    :try_start_135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 119
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Error updating daily counts. appId"

    .line 120
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v0, v3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_146
    .catchall {:try_start_135 .. :try_end_146} :catchall_55

    if-eqz v2, :cond_14b

    .line 121
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_14b
    return-object v1

    :goto_14c
    if-eqz v2, :cond_151

    .line 122
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_151
    throw p1
.end method

.method public final zza(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;
    .registers 24

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    .line 78
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;JZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    return-object p1
.end method

.method public final zza(J)Ljava/lang/String;
    .registers 6

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    const/4 v0, 0x0

    .line 147
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 148
    const-string v2, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 149
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_19} :catch_40
    .catchall {:try_start_7 .. :try_end_19} :catchall_3e

    .line 151
    :try_start_19
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_35

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v1, "No expired configs for apps with pending events"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_2c} :catch_33
    .catchall {:try_start_19 .. :try_end_2c} :catchall_30

    .line 153
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_30
    move-exception p2

    move-object v0, p1

    goto :goto_55

    :catch_33
    move-exception p2

    goto :goto_42

    :cond_35
    const/4 p2, 0x0

    .line 154
    :try_start_36
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_3a} :catch_33
    .catchall {:try_start_36 .. :try_end_3a} :catchall_30

    .line 155
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_3e
    move-exception p2

    goto :goto_55

    :catch_40
    move-exception p2

    move-object p1, v0

    .line 156
    :goto_42
    :try_start_42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Error selecting expired configs"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_30

    if-eqz p1, :cond_54

    .line 157
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_54
    return-object v0

    :goto_55
    if-eqz v0, :cond_5a

    .line 158
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_5a
    throw p2
.end method

.method public final zza(Ljava/lang/String;II)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/z3;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    move/from16 v1, p3

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p2, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v3

    .line 172
    :goto_f
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->a(Z)V

    if-lez v1, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v3

    .line 173
    :goto_17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->a(Z)V

    .line 174
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 175
    :try_start_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 176
    const-string v6, "queue"

    const-string v0, "rowid"

    const-string v7, "data"

    const-string v8, "retry_count"

    filled-new-array {v0, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "app_id=?"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v9

    const-string v12, "rowid"

    .line 177
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 178
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 179
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_52

    .line 180
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_48} :catch_4f
    .catchall {:try_start_1e .. :try_end_48} :catchall_4c

    .line 181
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_4c
    move-exception v0

    goto/16 :goto_18e

    :catch_4f
    move-exception v0

    goto/16 :goto_175

    .line 182
    :cond_52
    :try_start_52
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    .line 183
    :goto_58
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_52 .. :try_end_5c} :catch_4f
    .catchall {:try_start_52 .. :try_end_5c} :catchall_4c

    .line 184
    :try_start_5c
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzc([B)[B

    move-result-object v0
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_68} :catch_153
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_68} :catch_4f
    .catchall {:try_start_5c .. :try_end_68} :catchall_4c

    .line 186
    :try_start_68
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_72

    array-length v9, v0
    :try_end_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_68 .. :try_end_6f} :catch_4f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_4c

    add-int/2addr v9, v6

    if-gt v9, v1, :cond_171

    .line 187
    :cond_72
    :try_start_72
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z3;->c2()Lcom/google/android/gms/internal/measurement/y3;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/s6;[B)Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/y3;
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7c} :catch_140
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_72 .. :try_end_7c} :catch_4f
    .catchall {:try_start_72 .. :try_end_7c} :catchall_4c

    .line 188
    :try_start_7c
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_117

    .line 189
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/z3;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/z3;

    .line 190
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/z3;->G()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/z3;->G()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_171

    .line 191
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/z3;->F()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/z3;->F()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_171

    .line 192
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/z3;->W()Z

    move-result v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/z3;->W()Z

    move-result v13

    if-ne v12, v13, :cond_171

    .line 193
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/z3;->H()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/z3;->H()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_171

    .line 194
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/z3;->U()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_ce
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_d2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7c .. :try_end_d2} :catch_4f
    .catchall {:try_start_7c .. :try_end_d2} :catchall_4c

    const-string v13, "_npa"

    const-wide/16 v14, -0x1

    if-eqz v12, :cond_ef

    :try_start_d8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/h4;

    .line 195
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/h4;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 196
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/h4;->w()J

    move-result-wide v16

    goto :goto_f1

    :cond_ed
    const/4 v2, 0x1

    goto :goto_ce

    :cond_ef
    move-wide/from16 v16, v14

    .line 197
    :goto_f1
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/z3;->U()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_113

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/h4;

    .line 198
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h4;->A()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f9

    .line 199
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h4;->w()J

    move-result-wide v14

    :cond_113
    cmp-long v2, v16, v14

    if-nez v2, :cond_171

    :cond_117
    const/4 v2, 0x2

    .line 200
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_12c

    .line 201
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 202
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 203
    iget-object v10, v9, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v10, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/z3;->q1(Lcom/google/android/gms/internal/measurement/z3;I)V

    .line 204
    :cond_12c
    array-length v0, v0

    add-int/2addr v6, v0

    .line 205
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/z3;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_165

    :catch_140
    move-exception v0

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v7, "Failed to merge queued bundle. appId"

    .line 208
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_165

    :catch_153
    move-exception v0

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v7, "Failed to unzip queued bundle. appId"

    .line 211
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    :goto_165
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_169
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d8 .. :try_end_169} :catch_4f
    .catchall {:try_start_d8 .. :try_end_169} :catchall_4c

    if-eqz v0, :cond_171

    if-le v6, v1, :cond_16e

    goto :goto_171

    :cond_16e
    const/4 v2, 0x1

    goto/16 :goto_58

    .line 213
    :cond_171
    :goto_171
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v5

    .line 214
    :goto_175
    :try_start_175
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Error querying bundles. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_188
    .catchall {:try_start_175 .. :try_end_188} :catchall_4c

    if-eqz v4, :cond_18d

    .line 216
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_18d
    return-object v0

    :goto_18e
    if-eqz v4, :cond_193

    .line 217
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_193
    throw v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzae;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 226
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const-string p2, " and origin=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_27
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_46

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const-string p2, " and name glob ?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzae;",
            ">;"
        }
    .end annotation

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 236
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 237
    const-string v3, "conditional_properties"

    const-string v4, "app_id"

    const-string v5, "origin"

    const-string v6, "name"

    const-string v7, "value"

    const-string v8, "active"

    const-string v9, "trigger_event_name"

    const-string v10, "trigger_timeout"

    const-string v11, "timed_out_event"

    const-string v12, "creation_timestamp"

    const-string v13, "triggered_event"

    const-string v14, "triggered_timestamp"

    const-string v15, "time_to_live"

    const-string v16, "expired_event"

    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v4

    const-string v9, "rowid"

    .line 238
    const-string v10, "1001"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 239
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 240
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_42} :catch_66
    .catchall {:try_start_c .. :try_end_42} :catchall_63

    if-nez v2, :cond_48

    .line 241
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 242
    :cond_48
    :try_start_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_69

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 244
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v4, "Read more than the max allowed conditional properties, ignoring extra"

    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 246
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_fd

    :catchall_63
    move-exception v0

    goto/16 :goto_116

    :catch_66
    move-exception v0

    goto/16 :goto_101

    :cond_69
    const/4 v2, 0x0

    .line 247
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    .line 248
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 249
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v11, p0

    .line 250
    invoke-direct {v11, v1, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x4

    .line 251
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_87

    move v2, v3

    :cond_87
    const/4 v3, 0x5

    .line 252
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x6

    .line 253
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 254
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v7

    const/4 v8, 0x7

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzbf;

    const/16 v7, 0x8

    .line 255
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 256
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v7

    const/16 v8, 0x9

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Lcom/google/android/gms/measurement/internal/zzbf;

    const/16 v7, 0xa

    .line 257
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move/from16 p1, v2

    const/16 v2, 0xb

    .line 258
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 259
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v2

    move-object/from16 p2, v3

    const/16 v3, 0xc

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzbf;

    move-object v10, v5

    .line 260
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzon;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 261
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzae;

    move/from16 v9, p1

    move-object v6, v5

    move-object v5, v10

    move-object v11, v14

    move-wide v7, v15

    move-object/from16 v14, v17

    move-wide/from16 v15, v18

    move-object/from16 v10, p2

    move-object/from16 v17, v2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzon;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzbf;JLcom/google/android/gms/measurement/internal/zzbf;JLcom/google/android/gms/measurement/internal/zzbf;)V

    .line 262
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_fb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_fb} :catch_66
    .catchall {:try_start_48 .. :try_end_fb} :catchall_63

    if-nez v2, :cond_48

    .line 264
    :goto_fd
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 265
    :goto_101
    :try_start_101
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Error querying conditional user property value"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_110
    .catchall {:try_start_101 .. :try_end_110} :catchall_63

    if-eqz v1, :cond_115

    .line 267
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_115
    return-object v0

    :goto_116
    if-eqz v1, :cond_11b

    .line 268
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_11b
    throw v0
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzbb;)V
    .registers 3

    .line 546
    const-string v0, "events"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V
    .registers 12

    .line 447
    const-string p3, "apps"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 448
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 449
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 450
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 452
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 453
    const-string v2, "app_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    .line 455
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzcy:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v2

    const-string v4, "app_instance_id"

    const/4 v5, 0x0

    if-eqz v2, :cond_42

    if-eqz p2, :cond_34

    .line 456
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 457
    :cond_34
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object p2

    .line 458
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 459
    :cond_42
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_49
    :goto_49
    const-string p2, "gmp_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    .line 462
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_6d

    .line 463
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object p2

    .line 464
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result p2

    if-eqz p2, :cond_76

    .line 465
    :cond_6d
    const-string p2, "resettable_device_id_hash"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_76
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "last_bundle_index"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 467
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "last_bundle_start_timestamp"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 468
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "last_bundle_end_timestamp"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 469
    const-string p2, "app_version"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string p2, "app_store"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "gmp_version"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 472
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "dev_cert_hash"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 473
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzar()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v2, "measurement_enabled"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 474
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "day"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 475
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "daily_public_events_count"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 476
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "daily_events_count"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 477
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "daily_conversions_count"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 478
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "config_fetched_time"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 479
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "failed_config_fetch_time"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 480
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "app_version_int"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 481
    const-string p2, "firebase_instance_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "daily_error_events_count"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 483
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "daily_realtime_events_count"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 484
    const-string p2, "health_monitor_sample"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "android_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 486
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaq()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v2, "adid_reporting_enabled"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 487
    const-string p2, "admob_app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "dynamite_version"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 489
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    .line 490
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_1a8

    .line 491
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object p2

    .line 492
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result p2

    if-eqz p2, :cond_1b1

    .line 493
    :cond_1a8
    const-string p2, "session_stitching_token"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_1b1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzat()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v2, "sgtm_upload_enabled"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 495
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "target_os_version"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "session_stitching_token_hash"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x9;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzch:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_201

    .line 498
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "ad_services_version"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "attribution_eligibility_status"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 500
    :cond_201
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzau()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v2, "unmatched_first_open_without_ad_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 501
    const-string p2, "npa_metadata_value"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 502
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->a()V

    .line 503
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzbx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_23c

    .line 504
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_23c

    .line 505
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "bundle_delivery_index"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 506
    :cond_23c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzby:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_254

    .line 507
    const-string p2, "sgtm_preview_key"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_254
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "dma_consent_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "daily_realtime_dcu_count"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 510
    const-string p2, "serialized_npa_metadata"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzan()Ljava/util/List;

    move-result-object p2

    .line 512
    const-string v2, "safelisted_events"

    if-eqz p2, :cond_29c

    .line 513
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_293

    .line 514
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v3, "Safelisted events should not be an empty list. appId"

    invoke-virtual {p2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_29c

    .line 515
    :cond_293
    const-string v3, ","

    .line 516
    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    .line 517
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_29c
    :goto_29c
    sget-object p2, Lcom/google/android/gms/internal/measurement/h8;->b:Lcom/google/android/gms/internal/measurement/h8;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/h8;->get()Ljava/lang/Object;

    .line 519
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzbu:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_2b6

    .line 520
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2b6

    .line 521
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_2b6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_2d4

    .line 523
    const-string p2, "unmatched_pfo"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzy()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 524
    const-string p2, "unmatched_uwa"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 525
    :cond_2d4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f9;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcu:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_2ec

    .line 526
    const-string p2, "ad_campaign_info"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzav()[B

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 527
    :cond_2ec
    :try_start_2ec
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 528
    const-string p2, "app_id = ?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p3, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    int-to-long v2, p2

    const-wide/16 v6, 0x0

    cmp-long p2, v2, v6

    if-nez p2, :cond_320

    const/4 p2, 0x5

    .line 529
    invoke-virtual {p1, p3, v5, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    const-wide/16 v1, -0x1

    cmp-long p1, p1, v1

    if-nez p1, :cond_320

    .line 530
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 531
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Failed to insert/update app (got -1). appId"

    .line 532
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_31d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2ec .. :try_end_31d} :catch_31e

    return-void

    :catch_31e
    move-exception p1

    goto :goto_321

    :cond_320
    return-void

    .line 533
    :goto_321
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Error storing app. appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Ljava/lang/Long;)V
    .registers 6

    .line 330
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 331
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 332
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 333
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1f

    .line 334
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzaa()Z

    move-result v0

    if-nez v0, :cond_20

    :goto_1f
    return-void

    .line 335
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT COUNT(1) FROM upload_queue WHERE rowid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " AND retry_count =  2147483647 LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4b

    .line 336
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 338
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 339
    :cond_4b
    :try_start_4b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE upload_queue SET retry_count = retry_count + 1 WHERE rowid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " AND retry_count < 2147483647"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_65
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_65} :catch_66

    return-void

    :catch_66
    move-exception p1

    .line 341
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Error incrementing retry count. error"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 22

    move-object/from16 v0, p0

    .line 270
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 272
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 273
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzar;

    move-object/from16 v11, p1

    invoke-direct {v7, v0, v11}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzal;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzar;->zza()Ljava/util/List;

    move-result-object v1

    .line 275
    :goto_16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11d

    .line 276
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_20
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_113

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzap;

    .line 277
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzap;->zzd:Lcom/google/android/gms/internal/measurement/q3;

    .line 278
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 279
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->C()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/u3;

    .line 280
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->F()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 281
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->n()D

    move-result-wide v8

    invoke-virtual {v15, v6, v8, v9}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_3f

    .line 282
    :cond_5d
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->G()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 283
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->u()F

    move-result v5

    invoke-virtual {v15, v6, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_3f

    .line 284
    :cond_6f
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->H()Z

    move-result v6

    if-eqz v6, :cond_81

    .line 285
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->z()J

    move-result-wide v8

    invoke-virtual {v15, v6, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3f

    .line 286
    :cond_81
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->J()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 287
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->D()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 288
    :cond_93
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->E()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_ad

    .line 289
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/u3;->E()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v5

    .line 290
    invoke-virtual {v15, v6, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_3f

    .line 291
    :cond_ad
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    const-string v8, "Unexpected parameter type for parameter"

    invoke-virtual {v6, v8, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3f

    .line 292
    :cond_bb
    const-string v2, "_o"

    invoke-virtual {v15, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 294
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzgs;

    .line 295
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->B()Ljava/lang/String;

    move-result-object v13

    if-nez v4, :cond_ce

    const-string v4, ""

    :cond_ce
    move-object v14, v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/q3;->z()J

    move-result-wide v16

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzgs;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 296
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:Landroid/os/Bundle;

    move-object/from16 v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 297
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbc;

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    iget-object v10, v12, Lcom/google/android/gms/measurement/internal/zzgs;->zzb:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzap;->zzd:Lcom/google/android/gms/internal/measurement/q3;

    .line 298
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q3;->B()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzap;->zzd:Lcom/google/android/gms/internal/measurement/q3;

    .line 299
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->z()J

    move-result-wide v13

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzap;->zzd:Lcom/google/android/gms/internal/measurement/q3;

    .line 300
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q3;->y()J

    move-result-wide v15

    iget-object v5, v12, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:Landroid/os/Bundle;

    move-object v12, v2

    move-object v8, v3

    move-object/from16 v17, v5

    invoke-direct/range {v8 .. v17}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 301
    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzap;->zza:J

    move-wide v8, v5

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzap;->zzb:J

    iget-boolean v6, v1, Lcom/google/android/gms/measurement/internal/zzap;->zzc:Z

    move-wide v1, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLcom/google/android/gms/measurement/internal/zzbc;JZ)Z

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    goto/16 :goto_20

    .line 302
    :cond_113
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzar;->zza()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    goto/16 :goto_16

    :cond_11d
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;)V
    .registers 5

    .line 534
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 535
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 536
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 537
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 538
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcr:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 539
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzi(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v0

    .line 540
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    if-ne v0, v1, :cond_23

    .line 541
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 542
    :cond_23
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 543
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string p1, "dma_consent_settings"

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzax;->zzf()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string p1, "consent_settings"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje;)V
    .registers 5

    .line 592
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 593
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 594
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 595
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 596
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzi(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 597
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 598
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string p1, "storage_consent_at_bundling"

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzje;->zzf()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string p1, "consent_settings"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/d2;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 351
    const-string v3, "app_id=? and audience_id=?"

    const-string v4, "event_filters"

    const-string v5, "app_id=?"

    const-string v6, "property_filters"

    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    const/4 v8, 0x0

    .line 352
    :goto_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_121

    .line 353
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/d2;

    .line 354
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/z5;->k()Lcom/google/android/gms/internal/measurement/y5;

    move-result-object v9

    .line 355
    check-cast v9, Lcom/google/android/gms/internal/measurement/c2;

    .line 356
    iget-object v11, v9, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v11, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/d2;->r()I

    move-result v11

    if-eqz v11, :cond_ca

    const/4 v11, 0x0

    .line 357
    :goto_2f
    iget-object v12, v9, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v12, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/d2;->r()I

    move-result v12

    if-ge v11, v12, :cond_ca

    .line 358
    iget-object v12, v9, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v12, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/measurement/d2;->o(I)Lcom/google/android/gms/internal/measurement/f2;

    move-result-object v12

    .line 359
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/z5;->k()Lcom/google/android/gms/internal/measurement/y5;

    move-result-object v12

    .line 360
    check-cast v12, Lcom/google/android/gms/internal/measurement/e2;

    .line 361
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/y5;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/y5;

    check-cast v13, Lcom/google/android/gms/internal/measurement/e2;

    .line 362
    iget-object v14, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v14, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/f2;->u()Ljava/lang/String;

    move-result-object v14

    .line 363
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzji;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_69

    .line 364
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 365
    iget-object v15, v13, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v15, Lcom/google/android/gms/internal/measurement/f2;

    invoke-static {v15, v14}, Lcom/google/android/gms/internal/measurement/f2;->q(Lcom/google/android/gms/internal/measurement/f2;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto :goto_6a

    :cond_69
    const/4 v14, 0x0

    :goto_6a
    const/4 v15, 0x0

    .line 366
    :goto_6b
    iget-object v7, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v7, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/f2;->n()I

    move-result v7

    if-ge v15, v7, :cond_ab

    .line 367
    iget-object v7, v12, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v7, Lcom/google/android/gms/internal/measurement/f2;

    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/measurement/f2;->o(I)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v7

    .line 368
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzjk;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a8

    .line 369
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/z5;->k()Lcom/google/android/gms/internal/measurement/y5;

    move-result-object v7

    .line 370
    check-cast v7, Lcom/google/android/gms/internal/measurement/g2;

    .line 371
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 372
    iget-object v14, v7, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v14, Lcom/google/android/gms/internal/measurement/h2;

    invoke-static {v14, v10}, Lcom/google/android/gms/internal/measurement/h2;->n(Lcom/google/android/gms/internal/measurement/h2;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/h2;

    .line 374
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 375
    iget-object v10, v13, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v10, Lcom/google/android/gms/internal/measurement/f2;

    invoke-static {v10, v15, v7}, Lcom/google/android/gms/internal/measurement/f2;->p(Lcom/google/android/gms/internal/measurement/f2;ILcom/google/android/gms/internal/measurement/h2;)V

    const/4 v14, 0x1

    :cond_a8
    add-int/lit8 v15, v15, 0x1

    goto :goto_6b

    :cond_ab
    if-eqz v14, :cond_c6

    .line 376
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 377
    iget-object v7, v9, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v7, Lcom/google/android/gms/internal/measurement/d2;

    .line 378
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/f2;

    .line 379
    invoke-static {v7, v11, v10}, Lcom/google/android/gms/internal/measurement/d2;->p(Lcom/google/android/gms/internal/measurement/d2;ILcom/google/android/gms/internal/measurement/f2;)V

    .line 380
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/d2;

    invoke-interface {v2, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_c6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2f

    .line 381
    :cond_ca
    iget-object v7, v9, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v7, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/d2;->t()I

    move-result v7

    if-eqz v7, :cond_11d

    const/4 v7, 0x0

    .line 382
    :goto_d5
    iget-object v10, v9, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v10, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/d2;->t()I

    move-result v10

    if-ge v7, v10, :cond_11d

    .line 383
    iget-object v10, v9, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v10, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/measurement/d2;->s(I)Lcom/google/android/gms/internal/measurement/l2;

    move-result-object v10

    .line 384
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/l2;->r()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzjj;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_11a

    .line 385
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/z5;->k()Lcom/google/android/gms/internal/measurement/y5;

    move-result-object v10

    .line 386
    check-cast v10, Lcom/google/android/gms/internal/measurement/k2;

    .line 387
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 388
    iget-object v12, v10, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v12, Lcom/google/android/gms/internal/measurement/l2;

    invoke-static {v12, v11}, Lcom/google/android/gms/internal/measurement/l2;->o(Lcom/google/android/gms/internal/measurement/l2;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 390
    iget-object v11, v9, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    check-cast v11, Lcom/google/android/gms/internal/measurement/d2;

    .line 391
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/l2;

    .line 392
    invoke-static {v11, v7, v10}, Lcom/google/android/gms/internal/measurement/d2;->q(Lcom/google/android/gms/internal/measurement/d2;ILcom/google/android/gms/internal/measurement/l2;)V

    .line 393
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/d2;

    invoke-interface {v2, v8, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_11a
    add-int/lit8 v7, v7, 0x1

    goto :goto_d5

    :cond_11d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_12

    .line 394
    :cond_121
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 395
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 396
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 398
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 399
    :try_start_131
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 400
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 401
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 403
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 404
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 405
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_150
    :goto_150
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_249

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/d2;

    .line 406
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 407
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 408
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 409
    invoke-static {v8}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 410
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/d2;->x()Z

    move-result v9

    if-nez v9, :cond_183

    .line 411
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v8

    const-string v9, "Audience with no ID. appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_150

    :catchall_180
    move-exception v0

    goto/16 :goto_27c

    .line 412
    :cond_183
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/d2;->n()I

    move-result v9

    .line 413
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/d2;->v()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_18f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/f2;

    .line 414
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/f2;->A()Z

    move-result v11

    if-nez v11, :cond_18f

    .line 415
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v8

    .line 416
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v8

    const-string v10, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    .line 417
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 418
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 419
    invoke-virtual {v8, v10, v11, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_150

    .line 420
    :cond_1b7
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/d2;->w()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1bf
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1e8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/l2;

    .line 421
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/l2;->v()Z

    move-result v11

    if-nez v11, :cond_1bf

    .line 422
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v8

    .line 423
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v8

    const-string v10, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    .line 424
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 425
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 426
    invoke-virtual {v8, v10, v11, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_150

    .line 427
    :cond_1e8
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/d2;->v()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1f0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_204

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/f2;

    .line 428
    invoke-direct {v1, v0, v9, v11}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/f2;)Z

    move-result v11

    if-nez v11, :cond_1f0

    const/4 v10, 0x0

    goto :goto_205

    :cond_204
    const/4 v10, 0x1

    :goto_205
    if-eqz v10, :cond_222

    .line 429
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/d2;->w()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_20f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_222

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/l2;

    .line 430
    invoke-direct {v1, v0, v9, v11}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/l2;)Z

    move-result v11

    if-nez v11, :cond_20f

    const/4 v10, 0x0

    :cond_222
    if-nez v10, :cond_150

    .line 431
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 432
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 433
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 435
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v0, v10}, [Ljava/lang/String;

    move-result-object v10

    .line 436
    invoke-virtual {v8, v6, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 437
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v0, v9}, [Ljava/lang/String;

    move-result-object v9

    .line 438
    invoke-virtual {v8, v4, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_150

    .line 439
    :cond_249
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 440
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_252
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_272

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/d2;

    .line 441
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/d2;->x()Z

    move-result v5

    if-eqz v5, :cond_26d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/d2;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_26e

    :cond_26d
    const/4 v4, 0x0

    :goto_26e
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_252

    .line 442
    :cond_272
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;Ljava/util/List;)Z

    .line 443
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_278
    .catchall {:try_start_131 .. :try_end_278} :catchall_180

    .line 444
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    .line 445
    :goto_27c
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 446
    throw v0
.end method

.method public final zza(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 304
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 305
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 306
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6e

    .line 307
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzaa()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 308
    :cond_16
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "("

    const-string v1, ")"

    .line 309
    invoke-static {v0, p1, v1}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 310
    const-string v0, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    const-string v1, " AND retry_count =  2147483647 LIMIT 1"

    .line 311
    invoke-static {v0, p1, v1}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 312
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_44

    .line 313
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 315
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 316
    :cond_44
    :try_start_44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_44 .. :try_end_5e} :catch_5f

    return-void

    :catch_5f
    move-exception p1

    .line 318
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Error incrementing retry count. error"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 319
    :cond_6e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given Integer is zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/z3;Z)Z
    .registers 9

    .line 601
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 602
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 603
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 604
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->t0()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 606
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzv()V

    .line 607
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 609
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->K1()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzm()J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_41

    .line 610
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->K1()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzm()J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_62

    .line 611
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 612
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    .line 613
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 614
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 615
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->K1()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 616
    const-string v4, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 617
    :cond_62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/i5;->c()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 618
    :try_start_67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb([B)[B

    move-result-object v0
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6f} :catch_fe

    .line 619
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Saving bundle, size"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 620
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 621
    const-string v3, "app_id"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->K1()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "bundle_end_timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 623
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 624
    const-string v0, "has_realtime"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->A0()Z

    move-result p2

    if-eqz p2, :cond_bd

    .line 626
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->j1()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "retry_count"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    :cond_bd
    :try_start_bd
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 628
    const-string v0, "queue"

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-nez p2, :cond_e6

    .line 629
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 630
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Failed to insert bundle (got -1). appId"

    .line 631
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bd .. :try_end_e3} :catch_e4

    return v1

    :catch_e4
    move-exception p2

    goto :goto_e8

    :cond_e6
    const/4 p1, 0x1

    return p1

    .line 632
    :goto_e8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    .line 634
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing bundle. appId"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :catch_fe
    move-exception p2

    .line 635
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    .line 637
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z3;->e2()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 638
    const-string v2, "Data loss. Failed to serialize bundle. appId"

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 639
    :cond_115
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzae;)Z
    .registers 7

    .line 819
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 820
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 821
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 822
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 823
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 824
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 825
    const-string v1, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 826
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2a

    const/4 p1, 0x0

    return p1

    .line 827
    :cond_2a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 828
    const-string v2, "app_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v2, "origin"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    .line 832
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 833
    const-string v3, "value"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 834
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "active"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 835
    const-string v2, "trigger_event_name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzf:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzh:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "trigger_timeout"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 837
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzg:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "timed_out_event"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 838
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "creation_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 839
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "triggered_event"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 840
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "triggered_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 841
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "time_to_live"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 842
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Parcelable;)[B

    move-result-object p1

    const-string v2, "expired_event"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 843
    :try_start_bc
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 844
    const-string v2, "conditional_properties"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 845
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_f2

    .line 846
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 847
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v1, "Failed to insert/update conditional user property (got -1)"

    .line 848
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 849
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_df
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bc .. :try_end_df} :catch_e0

    goto :goto_f2

    :catch_e0
    move-exception p1

    .line 850
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 851
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Error storing conditional user property"

    .line 852
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f2
    :goto_f2
    const/4 p1, 0x1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzbc;JZ)Z
    .registers 9

    .line 698
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 699
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 700
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 701
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/measurement/internal/zzbc;)Lcom/google/android/gms/internal/measurement/q3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/i5;->c()[B

    move-result-object v0

    .line 703
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 704
    const-string v2, "app_id"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v2, "name"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 707
    const-string v2, "metadata_fingerprint"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 708
    const-string p2, "data"

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 709
    const-string p2, "realtime"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    .line 710
    :try_start_50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 711
    const-string p4, "raw_events"

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p3

    const-wide/16 v0, -0x1

    cmp-long p3, p3, v0

    if-nez p3, :cond_77

    .line 712
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 713
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    const-string p4, "Failed to insert raw event (got -1). appId"

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    .line 714
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_74
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_74} :catch_75

    return p2

    :catch_75
    move-exception p3

    goto :goto_79

    :cond_77
    const/4 p1, 0x1

    return p1

    .line 715
    :goto_79
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p4

    .line 716
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p4

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    .line 717
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error storing raw event. appId"

    invoke-virtual {p4, v0, p1, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzop;)Z
    .registers 9

    .line 877
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 878
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 879
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 880
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v0

    if-nez v0, :cond_5d

    .line 881
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 882
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 883
    const-string v1, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 884
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Ljava/lang/String;

    .line 885
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzai:Lcom/google/android/gms/measurement/internal/zzfz;

    const/16 v5, 0x19

    const/16 v6, 0x64

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;II)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5d

    goto :goto_5b

    .line 886
    :cond_3d
    const-string v0, "_npa"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 887
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 888
    const-string v1, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x19

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5d

    :goto_5b
    const/4 p1, 0x0

    return p1

    .line 889
    :cond_5d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 890
    const-string v1, "app_id"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v1, "origin"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzop;->zzd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "set_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 894
    const-string v1, "value"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 895
    :try_start_89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 896
    const-string v2, "user_attributes"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 897
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c3

    .line 898
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Failed to insert/update user property (got -1). appId"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Ljava/lang/String;

    .line 900
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 901
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_89 .. :try_end_ae} :catch_af

    goto :goto_c3

    :catch_af
    move-exception v0

    .line 902
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 903
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Ljava/lang/String;

    .line 904
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing user property. appId"

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c3
    :goto_c3
    const/4 p1, 0x1

    return p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/x3;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zznt;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/x3;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zznt;",
            ")Z"
        }
    .end annotation

    .line 749
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 750
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 751
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 752
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    return v1

    .line 754
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 755
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 756
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzaa()Z

    move-result v0

    const-string v2, "upload_queue"

    if-eqz v0, :cond_86

    .line 757
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzn()Lcom/google/android/gms/measurement/internal/zzmw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmw;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    move-result-wide v3

    .line 758
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v3, v5, v3

    .line 760
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 761
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzn()J

    move-result-wide v7

    cmp-long v0, v3, v7

    if-lez v0, :cond_86

    .line 762
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzn()Lcom/google/android/gms/measurement/internal/zzmw;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmw;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 763
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 764
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 765
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzaa()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 766
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 767
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzao()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_86

    .line 768
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 769
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted"

    .line 770
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 771
    :cond_86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 772
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_93
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 773
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 774
    :cond_c3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/i5;->c()[B

    move-result-object p2

    .line 775
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 776
    const-string v3, "app_id"

    invoke-virtual {p4, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v3, "measurement_batch"

    invoke-virtual {p4, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 778
    const-string p2, "upload_uri"

    invoke-virtual {p4, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v3, 0x1

    if-lez p3, :cond_104

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move v4, v3

    :goto_f1
    if-ge v4, p3, :cond_104

    const-string v5, "\r\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_f1

    :cond_104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 780
    const-string p3, "upload_headers"

    invoke-virtual {p4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zznt;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "upload_type"

    invoke-virtual {p4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    move-result-object p2

    check-cast p2, Lb4/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 784
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "creation_timestamp"

    invoke-virtual {p4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 785
    const-string p2, "retry_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    :try_start_139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const/4 p3, 0x0

    .line 787
    invoke-virtual {p2, v2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    const-wide/16 p4, -0x1

    cmp-long p2, p2, p4

    if-nez p2, :cond_158

    .line 788
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 789
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Failed to insert MeasurementBatch (got -1) to upload_queue. appId"

    .line 790
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_155
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_139 .. :try_end_155} :catch_156

    return v1

    :catch_156
    move-exception p2

    goto :goto_159

    :cond_158
    return v3

    .line 791
    :goto_159
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 792
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    const-string p4, "Error storing MeasurementBatch to upload_queue. appId"

    .line 793
    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzno;)Z
    .registers 11

    .line 718
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 719
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 720
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 721
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    move-result-object v0

    check-cast v0, Lb4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 724
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/zzno;->zzb:J

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbh:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v5, 0x0

    .line 725
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 726
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v2, v2, v6

    if-ltz v2, :cond_3f

    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/zzno;->zzb:J

    .line 727
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 728
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v0

    cmp-long v2, v2, v6

    if-lez v2, :cond_5a

    .line 729
    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 730
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    .line 731
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 732
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v6, p2, Lcom/google/android/gms/measurement/internal/zzno;->zzb:J

    .line 733
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 734
    const-string v4, "Storing trigger URI outside of the max retention time span. appId, now, timestamp"

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 735
    :cond_5a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Saving trigger URI"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 736
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 737
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v1, "trigger_uri"

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzno;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget v1, p2, Lcom/google/android/gms/measurement/internal/zzno;->zzc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    iget-wide v1, p2, Lcom/google/android/gms/measurement/internal/zzno;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "timestamp_millis"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    .line 741
    :try_start_8f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 742
    const-string v2, "trigger_uris"

    invoke-virtual {v1, v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b3

    .line 743
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Failed to insert trigger URI (got -1). appId"

    .line 745
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8f .. :try_end_b0} :catch_b1

    return p2

    :catch_b1
    move-exception v0

    goto :goto_b5

    :cond_b3
    const/4 p1, 0x1

    return p1

    .line 746
    :goto_b5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 747
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Error storing trigger URI. appId"

    .line 748
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/q3;)Z
    .registers 10

    .line 794
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 795
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 796
    invoke-static {p5}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 797
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 798
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 799
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/i5;->c()[B

    move-result-object p5

    .line 800
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    .line 802
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p5

    .line 803
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 804
    const-string v3, "Saving complex main event, appId, data size"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 805
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 806
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 808
    const-string p2, "children_to_process"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 809
    const-string p2, "main_event"

    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p2, 0x0

    .line 810
    :try_start_4b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 811
    const-string p4, "main_event_params"

    const/4 p5, 0x0

    const/4 v1, 0x5

    .line 812
    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p3

    const-wide/16 v0, -0x1

    cmp-long p3, p3, v0

    if-nez p3, :cond_71

    .line 813
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 814
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    const-string p4, "Failed to insert complex main event (got -1). appId"

    .line 815
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_6e} :catch_6f

    return p2

    :catch_6f
    move-exception p3

    goto :goto_73

    :cond_71
    const/4 p1, 0x1

    return p1

    .line 816
    :goto_73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p4

    .line 817
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p4

    const-string p5, "Error storing complex main event. appId"

    .line 818
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p5, p1, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public final zzaa()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "google_app_measurement.db"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final zzb(Ljava/lang/String;)J
    .registers 5

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 39
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    const-string v2, "select first_open_count from app2 where app_id=?"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)J
    .registers 15

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v2, 0x0

    .line 8
    :try_start_1a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "select "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from app2 where app_id=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    .line 9
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v4
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_37} :catch_72
    .catchall {:try_start_1a .. :try_end_37} :catchall_70

    cmp-long v8, v4, v6

    .line 10
    const-string v9, "app2"

    const-string v10, "app_id"

    if-nez v8, :cond_75

    .line 11
    :try_start_3f
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 12
    invoke-virtual {v4, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v5, "first_open_count"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    const-string v5, "previous_install_count"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    const/4 v5, 0x5

    .line 15
    invoke-virtual {v1, v9, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-nez v0, :cond_74

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v4, "Failed to insert column (got -1). appId"

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_6c} :catch_72
    .catchall {:try_start_3f .. :try_end_6c} :catchall_70

    .line 19
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v6

    :catchall_70
    move-exception p1

    goto :goto_ca

    :catch_72
    move-exception v0

    goto :goto_b5

    :cond_74
    move-wide v4, v2

    .line 20
    :cond_75
    :try_start_75
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 21
    invoke-virtual {v0, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v10, 0x1

    add-long/2addr v10, v4

    .line 22
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, p2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    const-string v8, "app_id = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v0, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    cmp-long v0, v8, v2

    if-nez v0, :cond_ae

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Failed to update column (got 0). appId"

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_75 .. :try_end_a7} :catch_ab
    .catchall {:try_start_75 .. :try_end_a7} :catchall_70

    .line 27
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v6

    :catch_ab
    move-exception v0

    move-wide v2, v4

    goto :goto_b5

    .line 28
    :cond_ae
    :try_start_ae
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ae .. :try_end_b1} :catch_ab
    .catchall {:try_start_ae .. :try_end_b1} :catchall_70

    .line 29
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v4

    .line 30
    :goto_b5
    :try_start_b5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v4

    const-string v5, "Error inserting column. appId"

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v5, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c6
    .catchall {:try_start_b5 .. :try_end_c6} :catchall_70

    .line 33
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v2

    .line 34
    :goto_ca
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 35
    throw p1
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzop;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 50
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 54
    :try_start_11
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v6, p1

    .line 55
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "app_id=?"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_27} :catch_f4
    .catchall {:try_start_11 .. :try_end_27} :catchall_34

    if-nez v7, :cond_3e

    move-object/from16 v7, p2

    .line 58
    :try_start_2b
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v8, " and origin=?"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    :catchall_34
    move-exception v0

    move-object/from16 v12, p0

    goto/16 :goto_112

    :catch_39
    move-exception v0

    move-object/from16 v12, p0

    goto/16 :goto_f9

    :cond_3e
    move-object/from16 v7, p2

    .line 60
    :goto_40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v8, " and name glob ?"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_5f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, [Ljava/lang/String;

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 65
    const-string v9, "user_attributes"

    const-string v3, "name"

    const-string v10, "set_timestamp"

    const-string v11, "value"

    const-string v13, "origin"

    filled-new-array {v3, v10, v11, v13}, [Ljava/lang/String;

    move-result-object v10

    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v15, "rowid"

    .line 67
    const-string v16, "1001"

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 68
    invoke-virtual/range {v8 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 69
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_90
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b .. :try_end_90} :catch_39
    .catchall {:try_start_2b .. :try_end_90} :catchall_34

    if-nez v3, :cond_96

    .line 70
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 71
    :cond_96
    :goto_96
    :try_start_96
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0x3e8

    if-lt v3, v5, :cond_b2

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v3, "Read more than the max allowed user properties, ignoring excess"

    .line 74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 75
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v12, p0

    goto :goto_ed

    :cond_b2
    const/4 v3, 0x0

    .line 76
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x1

    .line 77
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9
    :try_end_bc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_96 .. :try_end_bc} :catch_39
    .catchall {:try_start_96 .. :try_end_bc} :catchall_34

    const/4 v3, 0x2

    move-object/from16 v12, p0

    .line 78
    :try_start_bf
    invoke-direct {v12, v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v11

    .line 79
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v11, :cond_df

    .line 80
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v5, "(2)Read invalid user property value, ignoring it"

    .line 82
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 83
    invoke-virtual {v3, v5, v8, v7, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e7

    :catchall_db
    move-exception v0

    goto :goto_112

    :catch_dd
    move-exception v0

    goto :goto_f9

    .line 84
    :cond_df
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzop;

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 85
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_e7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_eb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bf .. :try_end_eb} :catch_dd
    .catchall {:try_start_bf .. :try_end_eb} :catchall_db

    if-nez v3, :cond_f1

    .line 87
    :goto_ed
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_f1
    move-object/from16 v6, p1

    goto :goto_96

    :catch_f4
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v7, p2

    .line 88
    :goto_f9
    :try_start_f9
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v3, "(2)Error querying user properties"

    .line 90
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v7, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_10c
    .catchall {:try_start_f9 .. :try_end_10c} :catchall_db

    if-eqz v2, :cond_111

    .line 92
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_111
    return-object v0

    :goto_112
    if-eqz v2, :cond_117

    .line 93
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_117
    throw v0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje;)V
    .registers 6

    .line 95
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 96
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string p1, "consent_state"

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzje;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzje;->zza()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "consent_source"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string p1, "consent_settings"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 13

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 139
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbc;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-string v2, ""

    const-string v4, "dep"

    move-object v3, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/measurement/internal/zzbc;)Lcom/google/android/gms/internal/measurement/q3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/i5;->c()[B

    move-result-object p1

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 142
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 145
    const-string v2, "Saving default event parameters, appId, data size"

    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 147
    const-string v0, "app_id"

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "parameters"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p1, 0x0

    .line 149
    :try_start_4d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 150
    const-string v1, "default_event_params"

    const/4 v2, 0x0

    const/4 v4, 0x5

    .line 151
    invoke-virtual {v0, v1, v2, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long p2, v0, v4

    if-nez p2, :cond_74

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 153
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Failed to insert default event parameters (got -1). appId"

    .line 154
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 155
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_70} :catch_71

    return p1

    :catch_71
    move-exception v0

    move-object p2, v0

    goto :goto_76

    :cond_74
    const/4 p1, 0x1

    return p1

    .line 156
    :goto_76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Error storing default event parameters. appId"

    .line 158
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p1
.end method

.method public final zzc(Ljava/lang/String;)J
    .registers 5

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzae;
    .registers 26

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    const/4 v6, 0x0

    .line 8
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 9
    const-string v8, "conditional_properties"

    const-string v9, "origin"

    const-string v10, "value"

    const-string v11, "active"

    const-string v12, "trigger_event_name"

    const-string v13, "trigger_timeout"

    const-string v14, "timed_out_event"

    const-string v15, "creation_timestamp"

    const-string v16, "triggered_event"

    const-string v17, "triggered_timestamp"

    const-string v18, "time_to_live"

    const-string v19, "expired_event"

    filled-new-array/range {v9 .. v19}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "app_id=? and name=?"

    filled-new-array/range {p1 .. p2}, [Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    .line 10
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_3a} :catch_f4
    .catchall {:try_start_d .. :try_end_3a} :catchall_f2

    .line 11
    :try_start_3a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3a .. :try_end_3e} :catch_53
    .catchall {:try_start_3a .. :try_end_3e} :catchall_4f

    if-nez v0, :cond_44

    .line 12
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v6

    :cond_44
    const/4 v0, 0x0

    .line 13
    :try_start_45
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4d

    .line 14
    const-string v1, ""

    :cond_4d
    move-object v5, v1

    goto :goto_58

    :catchall_4f
    move-exception v0

    move-object v6, v7

    goto/16 :goto_117

    :catch_53
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_f8

    :goto_58
    const/4 v1, 0x1

    move-object/from16 v8, p0

    .line 15
    invoke-direct {v8, v7, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v4

    const/4 v2, 0x2

    .line 16
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_68

    move v14, v1

    goto :goto_69

    :cond_68
    move v14, v0

    :goto_69
    const/4 v0, 0x3

    .line 17
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v0, 0x4

    .line 18
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 19
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/google/android/gms/measurement/internal/zzbf;

    const/4 v0, 0x6

    .line 20
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 21
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/google/android/gms/measurement/internal/zzbf;

    const/16 v0, 0x8

    .line 22
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/16 v3, 0x9

    .line 23
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 24
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v3

    const/16 v9, 0xa

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-virtual {v3, v9, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/google/android/gms/measurement/internal/zzbf;

    .line 25
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzon;
    :try_end_bc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_bc} :catch_53
    .catchall {:try_start_45 .. :try_end_bc} :catchall_4f

    move-wide v2, v0

    move-object v0, v11

    move-object/from16 v1, p2

    :try_start_c0
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzae;

    move-object/from16 v9, p1

    move-object v11, v0

    move-object v10, v5

    invoke-direct/range {v8 .. v22}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzon;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzbf;JLcom/google/android/gms/measurement/internal/zzbf;JLcom/google/android/gms/measurement/internal/zzbf;)V

    .line 27
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Got multiple records for conditional property, expected one"

    .line 30
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_eb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c0 .. :try_end_eb} :catch_ec
    .catchall {:try_start_c0 .. :try_end_eb} :catchall_4f

    goto :goto_ee

    :catch_ec
    move-exception v0

    goto :goto_f8

    .line 33
    :cond_ee
    :goto_ee
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v8

    :catchall_f2
    move-exception v0

    goto :goto_117

    :catch_f4
    move-exception v0

    move-object/from16 v1, p2

    move-object v7, v6

    .line 34
    :goto_f8
    :try_start_f8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Error querying conditional property"

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_111
    .catchall {:try_start_f8 .. :try_end_111} :catchall_4f

    if-eqz v7, :cond_116

    .line 39
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_116
    return-object v6

    :goto_117
    if-eqz v6, :cond_11c

    .line 40
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_11c
    throw v0
.end method

.method public final zzc()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    const/4 v0, 0x0

    .line 3
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4
    const-string v2, "select parameters from default_event_params where app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_15} :catch_6d
    .catchall {:try_start_7 .. :try_end_15} :catchall_6b

    .line 6
    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_31

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v2, "Default event parameters not found"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_28} :catch_2f
    .catchall {:try_start_15 .. :try_end_28} :catchall_2c

    .line 8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_2c
    move-exception p1

    move-object v0, v1

    goto :goto_82

    :catch_2f
    move-exception p1

    goto :goto_6f

    :cond_31
    const/4 v2, 0x0

    .line 9
    :try_start_32
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_36} :catch_2f
    .catchall {:try_start_32 .. :try_end_36} :catchall_2c

    .line 10
    :try_start_36
    invoke-static {}, Lcom/google/android/gms/internal/measurement/q3;->A()Lcom/google/android/gms/internal/measurement/p3;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/s6;[B)Lcom/google/android/gms/internal/measurement/s6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/q3;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_46} :catch_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_46} :catch_2f
    .catchall {:try_start_36 .. :try_end_46} :catchall_2c

    .line 11
    :try_start_46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/q3;->C()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_46 .. :try_end_51} :catch_2f
    .catchall {:try_start_46 .. :try_end_51} :catchall_2c

    .line 12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object p1

    :catch_55
    move-exception v2

    .line 13
    :try_start_56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Failed to retrieve default event parameters. appId"

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_67} :catch_2f
    .catchall {:try_start_56 .. :try_end_67} :catchall_2c

    .line 17
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_6b
    move-exception p1

    goto :goto_82

    :catch_6d
    move-exception p1

    move-object v1, v0

    .line 18
    :goto_6f
    :try_start_6f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Error selecting default event parameters"

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7c
    .catchall {:try_start_6f .. :try_end_7c} :catchall_2c

    if-eqz v1, :cond_81

    .line 19
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_81
    return-object v0

    :goto_82
    if-eqz v0, :cond_87

    .line 20
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_87
    throw p1
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 4

    .line 22
    const-string v0, "events"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 52

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    const/4 v3, 0x0

    .line 4
    :try_start_e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5
    const-string v5, "apps"

    const-string v6, "app_instance_id"

    const-string v7, "gmp_app_id"

    const-string v8, "resettable_device_id_hash"

    const-string v9, "last_bundle_index"

    const-string v10, "last_bundle_start_timestamp"

    const-string v11, "last_bundle_end_timestamp"

    const-string v12, "app_version"

    const-string v13, "app_store"

    const-string v14, "gmp_version"

    const-string v15, "dev_cert_hash"

    const-string v16, "measurement_enabled"

    const-string v17, "day"

    const-string v18, "daily_public_events_count"

    const-string v19, "daily_events_count"

    const-string v20, "daily_conversions_count"

    const-string v21, "config_fetched_time"

    const-string v22, "failed_config_fetch_time"

    const-string v23, "app_version_int"

    const-string v24, "firebase_instance_id"

    const-string v25, "daily_error_events_count"

    const-string v26, "daily_realtime_events_count"

    const-string v27, "health_monitor_sample"

    const-string v28, "android_id"

    const-string v29, "adid_reporting_enabled"

    const-string v30, "admob_app_id"

    const-string v31, "dynamite_version"

    const-string v32, "safelisted_events"

    const-string v33, "ga_app_id"

    const-string v34, "session_stitching_token"

    const-string v35, "sgtm_upload_enabled"

    const-string v36, "target_os_version"

    const-string v37, "session_stitching_token_hash"

    const-string v38, "ad_services_version"

    const-string v39, "unmatched_first_open_without_ad_id"

    const-string v40, "npa_metadata_value"

    const-string v41, "attribution_eligibility_status"

    const-string v42, "sgtm_preview_key"

    const-string v43, "dma_consent_state"

    const-string v44, "daily_realtime_dcu_count"

    const-string v45, "bundle_delivery_index"

    const-string v46, "serialized_npa_metadata"

    const-string v47, "unmatched_pfo"

    const-string v48, "unmatched_uwa"

    const-string v49, "ad_campaign_info"

    filled-new-array/range {v6 .. v49}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "app_id=?"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 6
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_7d} :catch_34f
    .catchall {:try_start_e .. :try_end_7d} :catchall_34d

    .line 7
    :try_start_7d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7d .. :try_end_81} :catch_b5
    .catchall {:try_start_7d .. :try_end_81} :catchall_b1

    if-nez v0, :cond_87

    .line 8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 9
    :cond_87
    :try_start_87
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zznv;->zzk()Lcom/google/android/gms/measurement/internal/zzhy;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzcy:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_b8

    .line 12
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v5

    .line 13
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result v5

    if-eqz v5, :cond_bf

    goto :goto_b8

    :catchall_b1
    move-exception v0

    move-object v3, v4

    goto/16 :goto_368

    :catch_b5
    move-exception v0

    goto/16 :goto_351

    .line 14
    :cond_b8
    :goto_b8
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    :cond_bf
    const/4 v5, 0x1

    .line 15
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v8

    if-eqz v8, :cond_e2

    .line 18
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v8

    .line 19
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result v8

    if-eqz v8, :cond_ea

    :cond_e2
    const/4 v8, 0x2

    .line 20
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    :cond_ea
    const/4 v8, 0x3

    .line 21
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    const/4 v8, 0x4

    .line 22
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzr(J)V

    const/4 v8, 0x5

    .line 23
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    const/4 v8, 0x6

    .line 24
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Ljava/lang/String;)V

    const/4 v8, 0x7

    .line 25
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Ljava/lang/String;)V

    const/16 v8, 0x8

    .line 26
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzn(J)V

    const/16 v8, 0x9

    .line 27
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(J)V

    const/16 v8, 0xa

    .line 28
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_135

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_133

    goto :goto_135

    :cond_133
    move v8, v7

    goto :goto_136

    :cond_135
    :goto_135
    move v8, v5

    :goto_136
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Z)V

    const/16 v8, 0xb

    .line 29
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzj(J)V

    const/16 v8, 0xc

    .line 30
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(J)V

    const/16 v8, 0xd

    .line 31
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(J)V

    const/16 v8, 0xe

    .line 32
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zze(J)V

    const/16 v8, 0xf

    .line 33
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(J)V

    const/16 v8, 0x10

    .line 34
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(J)V

    const/16 v8, 0x11

    .line 35
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_17b

    const-wide/32 v8, -0x80000000

    goto :goto_180

    :cond_17b
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    :goto_180
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(J)V

    const/16 v8, 0x12

    .line 36
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    const/16 v8, 0x13

    .line 37
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(J)V

    const/16 v8, 0x14

    .line 38
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(J)V

    const/16 v8, 0x15

    .line 39
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    const/16 v8, 0x17

    .line 40
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_1b8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_1b6

    goto :goto_1b8

    :cond_1b6
    move v8, v7

    goto :goto_1b9

    :cond_1b8
    :goto_1b8
    move v8, v5

    :goto_1b9
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Z)V

    const/16 v8, 0x18

    .line 41
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    const/16 v8, 0x19

    .line 42
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1d0

    const-wide/16 v8, 0x0

    goto :goto_1d4

    :cond_1d0
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    :goto_1d4
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzl(J)V

    const/16 v8, 0x1a

    .line 43
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_1f1

    .line 44
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 45
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/util/List;)V

    .line 46
    :cond_1f1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v6

    if-eqz v6, :cond_20c

    .line 48
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzns;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v6

    .line 49
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result v6

    if-eqz v6, :cond_215

    :cond_20c
    const/16 v6, 0x1c

    .line 50
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzj(Ljava/lang/String;)V

    .line 51
    :cond_215
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->a()V

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzbx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v6

    if-eqz v6, :cond_25f

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzf(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25f

    const/16 v6, 0x1d

    .line 54
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_23d

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_23d

    move v6, v5

    goto :goto_23e

    :cond_23d
    move v6, v7

    :goto_23e
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Z)V

    const/16 v6, 0x27

    .line 55
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(J)V

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzby:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v6

    if-eqz v6, :cond_25f

    const/16 v6, 0x24

    .line 57
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(Ljava/lang/String;)V

    :cond_25f
    const/16 v6, 0x1e

    .line 58
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzt(J)V

    const/16 v6, 0x1f

    .line 59
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x9;->a()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzch:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v6, v2, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v6

    if-eqz v6, :cond_292

    const/16 v6, 0x20

    .line 61
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zza(I)V

    const/16 v6, 0x23

    .line 62
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(J)V

    :cond_292
    const/16 v6, 0x21

    .line 63
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_2a2

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2a2

    move v6, v5

    goto :goto_2a3

    :cond_2a2
    move v6, v7

    :goto_2a3
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Z)V

    const/16 v6, 0x22

    .line 64
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2b0

    move-object v5, v3

    goto :goto_2bb

    :cond_2b0
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2b7

    move v7, v5

    :cond_2b7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_2bb
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/Boolean;)V

    const/16 v5, 0x25

    .line 65
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(I)V

    const/16 v5, 0x26

    .line 66
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(I)V

    const/16 v5, 0x28

    .line 67
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2db

    const-string v5, ""

    goto :goto_2e2

    :cond_2db
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 68
    :goto_2e2
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzcw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v5

    if-eqz v5, :cond_317

    const/16 v5, 0x29

    .line 70
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_304

    .line 71
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/Long;)V

    :cond_304
    const/16 v5, 0x2a

    .line 72
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_317

    .line 73
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/Long;)V

    .line 74
    :cond_317
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f9;->a()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzcu:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v5

    if-eqz v5, :cond_32f

    const/16 v5, 0x2b

    .line 75
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zza([B)V

    .line 76
    :cond_32f
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzao()V

    .line 77
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_349

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v5

    .line 79
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v5

    const-string v6, "Got multiple records for app, expected one. appId"

    .line 80
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_349
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_87 .. :try_end_349} :catch_b5
    .catchall {:try_start_87 .. :try_end_349} :catchall_b1

    .line 81
    :cond_349
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_34d
    move-exception v0

    goto :goto_368

    :catch_34f
    move-exception v0

    move-object v4, v3

    .line 82
    :goto_351
    :try_start_351
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v5

    const-string v6, "Error querying app. appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v6, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_362
    .catchall {:try_start_351 .. :try_end_362} :catchall_b1

    if-eqz v4, :cond_367

    .line 83
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_367
    return-object v3

    :goto_368
    if-eqz v3, :cond_36d

    .line 84
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_36d
    throw v0
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;
    .registers 13

    .line 86
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 87
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    const/4 v1, 0x0

    .line 90
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 91
    const-string v3, "user_attributes"

    const-string v0, "set_timestamp"

    const-string v4, "value"

    const-string v5, "origin"

    filled-new-array {v0, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id=? and name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 92
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_2a} :catch_7a
    .catchall {:try_start_d .. :try_end_2a} :catchall_77

    .line 93
    :try_start_2a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_2e} :catch_73
    .catchall {:try_start_2a .. :try_end_2e} :catchall_68

    if-nez v0, :cond_34

    .line 94
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_34
    const/4 v0, 0x0

    .line 95
    :try_start_35
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v9
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_3e} :catch_73
    .catchall {:try_start_35 .. :try_end_3e} :catchall_68

    if-nez v9, :cond_44

    .line 97
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_44
    const/4 v0, 0x2

    .line 98
    :try_start_45
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 99
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzop;
    :try_end_4b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_4b} :catch_73
    .catchall {:try_start_45 .. :try_end_4b} :catchall_68

    move-object v4, p1

    move-object v6, p2

    :try_start_4d
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 100
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Got multiple records for user property, expected one. appId"

    .line 103
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_67} :catch_6c
    .catchall {:try_start_4d .. :try_end_67} :catchall_68

    goto :goto_6f

    :catchall_68
    move-exception v0

    move-object p1, v0

    move-object v1, v2

    goto :goto_9e

    :catch_6c
    move-exception v0

    :goto_6d
    move-object p1, v0

    goto :goto_7f

    .line 105
    :cond_6f
    :goto_6f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    :catch_73
    move-exception v0

    move-object v4, p1

    move-object v6, p2

    goto :goto_6d

    :catchall_77
    move-exception v0

    move-object p1, v0

    goto :goto_9e

    :catch_7a
    move-exception v0

    move-object v4, p1

    move-object v6, p2

    move-object p1, v0

    move-object v2, v1

    .line 106
    :goto_7f
    :try_start_7f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 107
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Error querying user property. appId"

    .line 108
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {p2, v0, v3, v4, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_98
    .catchall {:try_start_7f .. :try_end_98} :catchall_68

    if-eqz v2, :cond_9d

    .line 111
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9d
    return-object v1

    :goto_9e
    if-eqz v1, :cond_a3

    .line 112
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_a3
    throw p1
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzan;
    .registers 12

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    const/4 v1, 0x0

    .line 4
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5
    const-string v3, "apps"

    const-string v0, "remote_config"

    const-string v4, "config_last_modified_time"

    const-string v5, "e_tag"

    filled-new-array {v0, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 6
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_27} :catch_70
    .catchall {:try_start_a .. :try_end_27} :catchall_6d

    .line 7
    :try_start_27
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_2b} :catch_5c
    .catchall {:try_start_27 .. :try_end_2b} :catchall_58

    if-nez v0, :cond_31

    .line 8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_31
    const/4 v0, 0x0

    .line 9
    :try_start_32
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v3, 0x1

    .line 10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 11
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v5

    const-string v6, "Got multiple records for app config, expected one. appId"

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 16
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_57} :catch_5c
    .catchall {:try_start_32 .. :try_end_57} :catchall_58

    goto :goto_5e

    :catchall_58
    move-exception v0

    move-object p1, v0

    move-object v1, v2

    goto :goto_89

    :catch_5c
    move-exception v0

    goto :goto_72

    :cond_5e
    :goto_5e
    if-nez v0, :cond_64

    .line 17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 18
    :cond_64
    :try_start_64
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzan;

    invoke-direct {v5, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzan;-><init>([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_64 .. :try_end_69} :catch_5c
    .catchall {:try_start_64 .. :try_end_69} :catchall_58

    .line 19
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_6d
    move-exception v0

    move-object p1, v0

    goto :goto_89

    :catch_70
    move-exception v0

    move-object v2, v1

    .line 20
    :goto_72
    :try_start_72
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Error querying remote config. appId"

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_83
    .catchall {:try_start_72 .. :try_end_83} :catchall_58

    if-eqz v2, :cond_88

    .line 23
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_88
    return-object v1

    :goto_89
    if-eqz v1, :cond_8e

    .line 24
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 25
    :cond_8e
    throw p1
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/f2;",
            ">;>;"
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 29
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 30
    new-instance v1, Ls/e;

    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, v2}, Ls/j;-><init>(I)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v11, 0x0

    .line 33
    :try_start_17
    const-string v4, "event_filters"

    const-string v0, "audience_id"

    const-string v5, "data"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id=? AND event_name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 34
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 35
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_40

    .line 36
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_36} :catch_3d
    .catchall {:try_start_17 .. :try_end_36} :catchall_3a

    .line 37
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_3a
    move-exception v0

    move-object p1, v0

    goto :goto_ab

    :catch_3d
    move-exception v0

    move-object p2, v0

    goto :goto_92

    :cond_40
    const/4 p2, 0x1

    .line 38
    :try_start_41
    invoke-interface {v11, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_41 .. :try_end_45} :catch_3d
    .catchall {:try_start_41 .. :try_end_45} :catchall_3a

    .line 39
    :try_start_45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f2;->s()Lcom/google/android/gms/internal/measurement/e2;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/s6;[B)Lcom/google/android/gms/internal/measurement/s6;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/e2;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/f2;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_55} :catch_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_55} :catch_3d
    .catchall {:try_start_45 .. :try_end_55} :catchall_3a

    .line 40
    :try_start_55
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_71

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_71
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :catch_75
    move-exception v0

    move-object p2, v0

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v3, "Failed to merge filter. appId"

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    :goto_88
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_8c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_8c} :catch_3d
    .catchall {:try_start_55 .. :try_end_8c} :catchall_3a

    if-nez p2, :cond_40

    .line 49
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 50
    :goto_92
    :try_start_92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Database error querying filters. appId"

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_a5
    .catchall {:try_start_92 .. :try_end_a5} :catchall_3a

    if-eqz v11, :cond_aa

    .line 54
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_aa
    return-object p1

    :goto_ab
    if-eqz v11, :cond_b0

    .line 55
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_b0
    throw p1
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 5
    const-string v1, "select dma_consent_settings from consent_settings where app_id=? limit 1;"

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/l2;",
            ">;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 11
    new-instance v1, Ls/e;

    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2}, Ls/j;-><init>(I)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v11, 0x0

    .line 14
    :try_start_17
    const-string v4, "property_filters"

    const-string v0, "audience_id"

    const-string v5, "data"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id=? AND property_name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 15
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 16
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_40

    .line 17
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_36} :catch_3d
    .catchall {:try_start_17 .. :try_end_36} :catchall_3a

    .line 18
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_3a
    move-exception v0

    move-object p1, v0

    goto :goto_ab

    :catch_3d
    move-exception v0

    move-object p2, v0

    goto :goto_92

    :cond_40
    const/4 p2, 0x1

    .line 19
    :try_start_41
    invoke-interface {v11, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_41 .. :try_end_45} :catch_3d
    .catchall {:try_start_41 .. :try_end_45} :catchall_3a

    .line 20
    :try_start_45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/l2;->q()Lcom/google/android/gms/internal/measurement/k2;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/s6;[B)Lcom/google/android/gms/internal/measurement/s6;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/k2;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/l2;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_55} :catch_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_55} :catch_3d
    .catchall {:try_start_45 .. :try_end_55} :catchall_3a

    .line 21
    :try_start_55
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_71

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_71
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :catch_75
    move-exception v0

    move-object p2, v0

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v3, "Failed to merge filter"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    :goto_88
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_8c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_8c} :catch_3d
    .catchall {:try_start_55 .. :try_end_8c} :catchall_3a

    if-nez p2, :cond_40

    .line 28
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 29
    :goto_92
    :try_start_92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Database error querying filters. appId"

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_a5
    .catchall {:try_start_92 .. :try_end_a5} :catchall_3a

    if-eqz v11, :cond_aa

    .line 33
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_aa
    return-object p1

    :goto_ab
    if-eqz v11, :cond_b0

    .line 34
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 35
    :cond_b0
    throw p1
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 5
    const-string v1, "select storage_consent_at_bundling from consent_settings where app_id=? limit 1;"

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 11
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 12
    const-string v1, "user_attributes"

    const-string v2, "app_id=? and name=?"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    const-string v2, "Error deleting user property. appId"

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzao;-><init>()V

    .line 5
    const-string v1, "select consent_state, consent_source from consent_settings where app_id=? limit 1;"

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzau;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzje;

    if-nez p1, :cond_1e

    .line 6
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzje;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    :cond_1e
    return-object p1
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzoj;
    .registers 16

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->a()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcb:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_1b

    .line 25
    .line 26
    goto/16 :goto_195

    .line 27
    .line 28
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "upload_queue"

    .line 33
    .line 34
    const-string v4, "rowId"

    .line 35
    .line 36
    const-string v5, "app_id"

    .line 37
    .line 38
    const-string v6, "measurement_batch"

    .line 39
    .line 40
    const-string v7, "upload_uri"

    .line 41
    .line 42
    const-string v8, "upload_headers"

    .line 43
    .line 44
    const-string v9, "upload_type"

    .line 45
    .line 46
    const-string v10, "retry_count"

    .line 47
    .line 48
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzao()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v6, "app_id=? AND NOT "

    .line 59
    .line 60
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    filled-new-array {p1}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-string v9, "creation_timestamp ASC"

    .line 75
    .line 76
    const-string v10, "1"

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, 0x0

    .line 80
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 81
    .line 82
    .line 83
    move-result-object v2
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_53} :catch_181
    .catchall {:try_start_1b .. :try_end_53} :catchall_17e

    .line 84
    :try_start_53
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 85
    .line 86
    .line 87
    move-result v0
    :try_end_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_57} :catch_7e
    .catchall {:try_start_53 .. :try_end_57} :catchall_79

    .line 88
    if-nez v0, :cond_5d

    .line 89
    .line 90
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 91
    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_5d
    const/4 v0, 0x3

    .line 95
    :try_start_5e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_81

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v3, "Upload uri is null or empty. Destination is unknown. Dropping batch. "

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_75
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5e .. :try_end_75} :catch_7e
    .catchall {:try_start_5e .. :try_end_75} :catchall_79

    .line 116
    .line 117
    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 119
    .line 120
    .line 121
    return-object v1

    .line 122
    :catchall_79
    move-exception v0

    .line 123
    move-object p1, v0

    .line 124
    move-object v1, v2

    .line 125
    goto/16 :goto_196

    .line 126
    .line 127
    :catch_7e
    move-exception v0

    .line 128
    goto/16 :goto_183

    .line 129
    .line 130
    :cond_81
    :try_start_81
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x3;->v()Lcom/google/android/gms/internal/measurement/w3;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    const/4 v4, 0x2

    .line 135
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/s6;[B)Lcom/google/android/gms/internal/measurement/s6;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Lcom/google/android/gms/internal/measurement/w3;

    .line 144
    .line 145
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zznt;->values()[Lcom/google/android/gms/measurement/internal/zznt;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    const/4 v6, 0x5

    .line 150
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    aget-object v5, v5, v6

    .line 155
    .line 156
    sget-object v6, Lcom/google/android/gms/measurement/internal/zznt;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    .line 157
    .line 158
    if-eq v5, v6, :cond_a7

    .line 159
    .line 160
    sget-object v6, Lcom/google/android/gms/measurement/internal/zznt;->zza:Lcom/google/android/gms/measurement/internal/zznt;

    .line 161
    .line 162
    if-ne v5, v6, :cond_101

    .line 163
    .line 164
    goto :goto_a7

    .line 165
    :catch_a4
    move-exception v0

    .line 166
    goto/16 :goto_16d

    .line 167
    .line 168
    :cond_a7
    :goto_a7
    const/4 v6, 0x6

    .line 169
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-lez v7, :cond_101

    .line 174
    .line 175
    new-instance v7, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .line 179
    .line 180
    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    .line 181
    .line 182
    check-cast v8, Lcom/google/android/gms/internal/measurement/x3;

    .line 183
    .line 184
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/x3;->y()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    :goto_c3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    if-eqz v9, :cond_ed

    .line 201
    .line 202
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    check-cast v9, Lcom/google/android/gms/internal/measurement/z3;

    .line 207
    .line 208
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/z5;->k()Lcom/google/android/gms/internal/measurement/y5;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    check-cast v9, Lcom/google/android/gms/internal/measurement/y3;

    .line 213
    .line 214
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 219
    .line 220
    .line 221
    iget-object v11, v9, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    .line 222
    .line 223
    check-cast v11, Lcom/google/android/gms/internal/measurement/z3;

    .line 224
    .line 225
    invoke-static {v11, v10}, Lcom/google/android/gms/internal/measurement/z3;->q1(Lcom/google/android/gms/internal/measurement/z3;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    check-cast v9, Lcom/google/android/gms/internal/measurement/z3;

    .line 233
    .line 234
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto :goto_c3

    .line 238
    :cond_ed
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 239
    .line 240
    .line 241
    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    .line 242
    .line 243
    check-cast v6, Lcom/google/android/gms/internal/measurement/x3;

    .line 244
    .line 245
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/x3;->t(Lcom/google/android/gms/internal/measurement/x3;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 249
    .line 250
    .line 251
    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    .line 252
    .line 253
    check-cast v6, Lcom/google/android/gms/internal/measurement/x3;

    .line 254
    .line 255
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/x3;->s(Lcom/google/android/gms/internal/measurement/x3;Ljava/util/ArrayList;)V

    .line 256
    .line 257
    .line 258
    :cond_101
    new-instance v6, Ljava/util/HashMap;

    .line 259
    .line 260
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 261
    .line 262
    .line 263
    const/4 v7, 0x4

    .line 264
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    const/4 v8, 0x0

    .line 269
    if-eqz v7, :cond_142

    .line 270
    .line 271
    const-string v9, "\r\n"

    .line 272
    .line 273
    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    array-length v9, v7

    .line 278
    move v10, v8

    .line 279
    :goto_116
    if-ge v10, v9, :cond_142

    .line 280
    .line 281
    aget-object v11, v7, v10

    .line 282
    .line 283
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 284
    .line 285
    .line 286
    move-result v12

    .line 287
    if-nez v12, :cond_142

    .line 288
    .line 289
    const-string v12, "="

    .line 290
    .line 291
    invoke-virtual {v11, v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    array-length v13, v12

    .line 296
    if-eq v13, v4, :cond_137

    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    const-string v7, "Invalid upload header: "

    .line 307
    .line 308
    invoke-virtual {v4, v7, v11}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    goto :goto_142

    .line 312
    :cond_137
    aget-object v11, v12, v8

    .line 313
    .line 314
    const/4 v13, 0x1

    .line 315
    aget-object v12, v12, v13

    .line 316
    .line 317
    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    add-int/lit8 v10, v10, 0x1

    .line 321
    .line 322
    goto :goto_116

    .line 323
    :cond_142
    :goto_142
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzom;

    .line 324
    .line 325
    invoke-direct {v4}, Lcom/google/android/gms/measurement/internal/zzom;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 329
    .line 330
    .line 331
    move-result-wide v7

    .line 332
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzom;->zza(J)Lcom/google/android/gms/measurement/internal/zzom;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    check-cast v3, Lcom/google/android/gms/internal/measurement/x3;

    .line 341
    .line 342
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzom;->zza(Lcom/google/android/gms/internal/measurement/x3;)Lcom/google/android/gms/measurement/internal/zzom;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzom;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzom;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzom;->zza(Ljava/util/Map;)Lcom/google/android/gms/measurement/internal/zzom;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzom;->zza(Lcom/google/android/gms/measurement/internal/zznt;)Lcom/google/android/gms/measurement/internal/zzom;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzom;->zza()Lcom/google/android/gms/measurement/internal/zzoj;

    .line 359
    .line 360
    .line 361
    move-result-object p1
    :try_end_169
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_169} :catch_a4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_81 .. :try_end_169} :catch_7e
    .catchall {:try_start_81 .. :try_end_169} :catchall_79

    .line 362
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 363
    .line 364
    .line 365
    return-object p1

    .line 366
    :goto_16d
    :try_start_16d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    const-string v4, "Failed to queued MeasurementBatch from upload_queue. appId"

    .line 375
    .line 376
    invoke-virtual {v3, v4, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_17a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16d .. :try_end_17a} :catch_7e
    .catchall {:try_start_16d .. :try_end_17a} :catchall_79

    .line 377
    .line 378
    .line 379
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 380
    .line 381
    .line 382
    return-object v1

    .line 383
    :catchall_17e
    move-exception v0

    .line 384
    move-object p1, v0

    .line 385
    goto :goto_196

    .line 386
    :catch_181
    move-exception v0

    .line 387
    move-object v2, v1

    .line 388
    :goto_183
    :try_start_183
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    const-string v4, "Error to querying MeasurementBatch from upload_queue. appId"

    .line 397
    .line 398
    invoke-virtual {v3, v4, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_190
    .catchall {:try_start_183 .. :try_end_190} :catchall_79

    .line 399
    .line 400
    .line 401
    if-eqz v2, :cond_195

    .line 402
    .line 403
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 404
    .line 405
    .line 406
    :cond_195
    :goto_195
    return-object v1

    .line 407
    :goto_196
    if-eqz v1, :cond_19b

    .line 408
    .line 409
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 410
    .line 411
    .line 412
    :cond_19b
    throw p1
.end method

.method public final zzk(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzno;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "trigger_uris"

    .line 21
    .line 22
    const-string v4, "trigger_uri"

    .line 23
    .line 24
    const-string v5, "timestamp_millis"

    .line 25
    .line 26
    const-string v6, "source"

    .line 27
    .line 28
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v5, "app_id=?"

    .line 33
    .line 34
    filled-new-array {p1}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string v9, "rowid"

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 48
    .line 49
    .line 50
    move-result v2
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_32} :catch_45
    .catchall {:try_start_f .. :try_end_32} :catchall_42

    .line 51
    if-nez v2, :cond_38

    .line 52
    .line 53
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_38
    const/4 v2, 0x0

    .line 58
    :try_start_39
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_47

    .line 63
    .line 64
    const-string v2, ""

    .line 65
    .line 66
    goto :goto_47

    .line 67
    :catchall_42
    move-exception v0

    .line 68
    move-object p1, v0

    .line 69
    goto :goto_7c

    .line 70
    :catch_45
    move-exception v0

    .line 71
    goto :goto_63

    .line 72
    :cond_47
    :goto_47
    const/4 v3, 0x1

    .line 73
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    const/4 v5, 0x2

    .line 78
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzno;

    .line 83
    .line 84
    invoke-direct {v6, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzno;-><init>(Ljava/lang/String;JI)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 91
    .line 92
    .line 93
    move-result v2
    :try_end_5d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39 .. :try_end_5d} :catch_45
    .catchall {:try_start_39 .. :try_end_5d} :catchall_42

    .line 94
    if-nez v2, :cond_38

    .line 95
    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 97
    .line 98
    .line 99
    return-object v0

    .line 100
    :goto_63
    :try_start_63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const-string v3, "Error querying trigger uris. appId"

    .line 109
    .line 110
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_76
    .catchall {:try_start_63 .. :try_end_76} :catchall_42

    .line 118
    .line 119
    if-eqz v1, :cond_7b

    .line 120
    .line 121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 122
    .line 123
    .line 124
    :cond_7b
    return-object p1

    .line 125
    :goto_7c
    if-eqz v1, :cond_81

    .line 126
    .line 127
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 128
    .line 129
    .line 130
    :cond_81
    throw p1
.end method

.method public final zzl(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzop;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "user_attributes"

    .line 21
    .line 22
    const-string v4, "name"

    .line 23
    .line 24
    const-string v5, "origin"

    .line 25
    .line 26
    const-string v6, "set_timestamp"

    .line 27
    .line 28
    const-string v7, "value"

    .line 29
    .line 30
    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v5, "app_id=?"

    .line 35
    .line 36
    filled-new-array {p1}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const-string v9, "rowid"

    .line 41
    .line 42
    const-string v10, "1000"

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 51
    .line 52
    .line 53
    move-result v2
    :try_end_35
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_35} :catch_4e
    .catchall {:try_start_f .. :try_end_35} :catchall_4b

    .line 54
    if-nez v2, :cond_3b

    .line 55
    .line 56
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_3b
    :goto_3b
    const/4 v2, 0x0

    .line 61
    :try_start_3c
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-nez v2, :cond_49

    .line 71
    .line 72
    const-string v2, ""

    .line 73
    .line 74
    :cond_49
    move-object v5, v2

    .line 75
    goto :goto_51

    .line 76
    :catchall_4b
    move-exception v0

    .line 77
    move-object p1, v0

    .line 78
    goto :goto_9f

    .line 79
    :catch_4e
    move-exception v0

    .line 80
    move-object v4, p1

    .line 81
    goto :goto_86

    .line 82
    :goto_51
    const/4 v2, 0x2

    .line 83
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 84
    .line 85
    .line 86
    move-result-wide v7

    .line 87
    const/4 v2, 0x3

    .line 88
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    if-nez v9, :cond_70

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-string v3, "Read invalid user property value, ignoring it. appId"

    .line 103
    .line 104
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    move-object v4, p1

    .line 112
    goto :goto_79

    .line 113
    :cond_70
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzop;
    :try_end_72
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_72} :catch_4e
    .catchall {:try_start_3c .. :try_end_72} :catchall_4b

    .line 114
    .line 115
    move-object v4, p1

    .line 116
    :try_start_73
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :goto_79
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 123
    .line 124
    .line 125
    move-result p1
    :try_end_7d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_73 .. :try_end_7d} :catch_85
    .catchall {:try_start_73 .. :try_end_7d} :catchall_4b

    .line 126
    if-nez p1, :cond_83

    .line 127
    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 129
    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_83
    move-object p1, v4

    .line 133
    goto :goto_3b

    .line 134
    :catch_85
    move-exception v0

    .line 135
    :goto_86
    :try_start_86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string v2, "Error querying user properties. appId"

    .line 144
    .line 145
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {p1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_99
    .catchall {:try_start_86 .. :try_end_99} :catchall_4b

    .line 153
    .line 154
    if-eqz v1, :cond_9e

    .line 155
    .line 156
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    .line 158
    .line 159
    :cond_9e
    return-object p1

    .line 160
    :goto_9f
    if-eqz v1, :cond_a4

    .line 161
    .line 162
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 163
    .line 164
    .line 165
    :cond_a4
    throw p1
.end method

.method public final zzm(Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/measurement/d4;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v8, 0x0

    .line 15
    :try_start_e
    const-string v1, "audience_filter_values"

    .line 16
    .line 17
    const-string v2, "audience_id"

    .line 18
    .line 19
    const-string v3, "current_results"

    .line 20
    .line 21
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "app_id=?"

    .line 26
    .line 27
    filled-new-array {p1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_36

    .line 43
    .line 44
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_2d} :catch_34
    .catchall {:try_start_e .. :try_end_2d} :catchall_31

    .line 45
    .line 46
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :catchall_31
    move-exception v0

    .line 51
    move-object p1, v0

    .line 52
    goto :goto_96

    .line 53
    :catch_34
    move-exception v0

    .line 54
    goto :goto_7d

    .line 55
    :cond_36
    :try_start_36
    new-instance v1, Ls/e;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-direct {v1, v2}, Ls/j;-><init>(I)V

    .line 59
    .line 60
    .line 61
    :cond_3c
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 67
    .line 68
    .line 69
    move-result-object v0
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_45} :catch_34
    .catchall {:try_start_36 .. :try_end_45} :catchall_31

    .line 70
    :try_start_45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d4;->z()Lcom/google/android/gms/internal/measurement/c4;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/s6;[B)Lcom/google/android/gms/internal/measurement/s6;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/google/android/gms/internal/measurement/c4;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/google/android/gms/internal/measurement/d4;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_55} :catch_5d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_55} :catch_34
    .catchall {:try_start_45 .. :try_end_55} :catchall_31

    .line 85
    .line 86
    :try_start_55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v3, v0}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_73

    .line 94
    :catch_5d
    move-exception v0

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    const-string v5, "Failed to merge filter results. appId, audienceId, error"

    .line 104
    .line 105
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v4, v5, v6, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :goto_73
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 117
    .line 118
    .line 119
    move-result v0
    :try_end_77
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_77} :catch_34
    .catchall {:try_start_55 .. :try_end_77} :catchall_31

    .line 120
    if-nez v0, :cond_3c

    .line 121
    .line 122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 123
    .line 124
    .line 125
    return-object v1

    .line 126
    :goto_7d
    :try_start_7d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const-string v2, "Database error querying filter results. appId"

    .line 135
    .line 136
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_90
    .catchall {:try_start_7d .. :try_end_90} :catchall_31

    .line 144
    .line 145
    if-eqz v8, :cond_95

    .line 146
    .line 147
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 148
    .line 149
    .line 150
    :cond_95
    return-object p1

    .line 151
    :goto_96
    if-eqz v8, :cond_9b

    .line 152
    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 154
    .line 155
    .line 156
    :cond_9b
    throw p1
.end method

.method public final zzn(Ljava/lang/String;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/f2;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v1, Ls/e;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v1, v2}, Ls/j;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v11, 0x0

    .line 15
    :try_start_e
    const-string v4, "event_filters"

    .line 16
    .line 17
    const-string v0, "audience_id"

    .line 18
    .line 19
    const-string v5, "data"

    .line 20
    .line 21
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const-string v6, "app_id=?"

    .line 26
    .line 27
    filled-new-array {p1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_36

    .line 43
    .line 44
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_2d} :catch_34
    .catchall {:try_start_e .. :try_end_2d} :catchall_31

    .line 45
    .line 46
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :catchall_31
    move-exception v0

    .line 51
    move-object p1, v0

    .line 52
    goto :goto_a6

    .line 53
    :catch_34
    move-exception v0

    .line 54
    goto :goto_8d

    .line 55
    :cond_36
    const/4 v0, 0x1

    .line 56
    :try_start_37
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_3b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_3b} :catch_34
    .catchall {:try_start_37 .. :try_end_3b} :catchall_31

    .line 60
    :try_start_3b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f2;->s()Lcom/google/android/gms/internal/measurement/e2;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/s6;[B)Lcom/google/android/gms/internal/measurement/s6;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/google/android/gms/internal/measurement/e2;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/google/android/gms/internal/measurement/f2;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4b} :catch_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3b .. :try_end_4b} :catch_34
    .catchall {:try_start_3b .. :try_end_4b} :catchall_31

    .line 75
    .line 76
    :try_start_4b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/f2;->z()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_83

    .line 81
    .line 82
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v1, v4}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Ljava/util/List;

    .line 95
    .line 96
    if-nez v4, :cond_6d

    .line 97
    .line 98
    new-instance v4, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v1, v3, v4}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_6d
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_83

    .line 114
    :catch_71
    move-exception v0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    const-string v4, "Failed to merge filter. appId"

    .line 124
    .line 125
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_83
    :goto_83
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 133
    .line 134
    .line 135
    move-result v0
    :try_end_87
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_87} :catch_34
    .catchall {:try_start_4b .. :try_end_87} :catchall_31

    .line 136
    if-nez v0, :cond_36

    .line 137
    .line 138
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 139
    .line 140
    .line 141
    return-object v1

    .line 142
    :goto_8d
    :try_start_8d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v2, "Database error querying filters. appId"

    .line 151
    .line 152
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_a0
    .catchall {:try_start_8d .. :try_end_a0} :catchall_31

    .line 160
    .line 161
    if-eqz v11, :cond_a5

    .line 162
    .line 163
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 164
    .line 165
    .line 166
    :cond_a5
    return-object p1

    .line 167
    :goto_a6
    if-eqz v11, :cond_ab

    .line 168
    .line 169
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 170
    .line 171
    .line 172
    :cond_ab
    throw p1
.end method

.method public final zzo(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ls/e;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Ls/j;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    :try_start_14
    const-string v4, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    .line 22
    .line 23
    filled-new-array {p1, p1}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2e

    .line 36
    .line 37
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_26} :catch_2c
    .catchall {:try_start_14 .. :try_end_26} :catchall_2a

    .line 38
    .line 39
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    goto :goto_79

    .line 45
    :catch_2c
    move-exception v0

    .line 46
    goto :goto_60

    .line 47
    :cond_2e
    :try_start_2e
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v0, v4}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Ljava/util/List;

    .line 60
    .line 61
    if-nez v4, :cond_4a

    .line 62
    .line 63
    new-instance v4, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2, v4}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_4a
    const/4 v2, 0x1

    .line 76
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 88
    .line 89
    .line 90
    move-result v2
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e .. :try_end_5a} :catch_2c
    .catchall {:try_start_2e .. :try_end_5a} :catchall_2a

    .line 91
    if-nez v2, :cond_2e

    .line 92
    .line 93
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 94
    .line 95
    .line 96
    return-object v0

    .line 97
    :goto_60
    :try_start_60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "Database error querying scoped filters. appId"

    .line 106
    .line 107
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_73
    .catchall {:try_start_60 .. :try_end_73} :catchall_2a

    .line 115
    .line 116
    if-eqz v3, :cond_78

    .line 117
    .line 118
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 119
    .line 120
    .line 121
    :cond_78
    return-object p1

    .line 122
    :goto_79
    if-eqz v3, :cond_7e

    .line 123
    .line 124
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 125
    .line 126
    .line 127
    :cond_7e
    throw p1
.end method

.method public final zzp()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final zzp(Ljava/lang/String;)V
    .registers 4

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 5
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6
    const-string v1, "delete from default_event_params where app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Error clearing default event params"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzq(Ljava/lang/String;)V
    .registers 14

    .line 1
    const-string v0, "events_snapshot"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "events"

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    new-array v5, v11, [Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v5, v1

    .line 27
    check-cast v5, [Ljava/lang/String;

    .line 28
    .line 29
    const-string v6, "app_id=?"

    .line 30
    .line 31
    filled-new-array {p1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 43
    .line 44
    .line 45
    move-result v1
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_2d} :catch_46
    .catchall {:try_start_c .. :try_end_2d} :catchall_43

    .line 46
    if-nez v1, :cond_33

    .line 47
    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_33
    :try_start_33
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_48

    .line 57
    .line 58
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_48

    .line 63
    .line 64
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 65
    .line 66
    .line 67
    goto :goto_48

    .line 68
    :catchall_43
    move-exception v0

    .line 69
    move-object p1, v0

    .line 70
    goto :goto_69

    .line 71
    :catch_46
    move-exception v0

    .line 72
    goto :goto_52

    .line 73
    :cond_48
    :goto_48
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_4c} :catch_46
    .catchall {:try_start_33 .. :try_end_4c} :catchall_43

    .line 77
    if-nez v1, :cond_33

    .line 78
    .line 79
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_52
    :try_start_52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v3, "Error creating snapshot. appId"

    .line 92
    .line 93
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v1, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_52 .. :try_end_63} :catchall_43

    .line 98
    .line 99
    .line 100
    if-eqz v2, :cond_68

    .line 101
    .line 102
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 103
    .line 104
    .line 105
    :cond_68
    return-void

    .line 106
    :goto_69
    if-eqz v2, :cond_6e

    .line 107
    .line 108
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 109
    .line 110
    .line 111
    :cond_6e
    throw p1
.end method

.method public final zzr(Ljava/lang/String;)V
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "events_snapshot"

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const-string v4, "name"

    .line 10
    .line 11
    const-string v5, "lifetime_count"

    .line 12
    .line 13
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    const-string v4, "_f"

    .line 25
    .line 26
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-string v6, "_v"

    .line 31
    .line 32
    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    const-string v8, "events"

    .line 37
    .line 38
    invoke-direct {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    :try_start_2a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    const-string v12, "events_snapshot"

    .line 48
    .line 49
    new-array v13, v9, [Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v13, v0

    .line 56
    check-cast v13, [Ljava/lang/String;

    .line 57
    .line 58
    const-string v14, "app_id=?"

    .line 59
    .line 60
    filled-new-array {v2}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    const/16 v17, 0x0

    .line 65
    .line 66
    const/16 v18, 0x0

    .line 67
    .line 68
    const/16 v16, 0x0

    .line 69
    .line 70
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    .line 76
    .line 77
    move-result v0
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_4d} :catch_cc
    .catchall {:try_start_2a .. :try_end_4d} :catchall_c9

    .line 78
    if-nez v0, :cond_61

    .line 79
    .line 80
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 81
    .line 82
    .line 83
    if-eqz v5, :cond_58

    .line 84
    .line 85
    invoke-direct {v1, v8, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 86
    .line 87
    .line 88
    goto :goto_5d

    .line 89
    :cond_58
    if-eqz v7, :cond_5d

    .line 90
    .line 91
    invoke-direct {v1, v8, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 92
    .line 93
    .line 94
    :cond_5d
    :goto_5d
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_61
    move v11, v9

    .line 99
    move v12, v11

    .line 100
    :cond_63
    :try_start_63
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbh;->zzda:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 109
    .line 110
    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    const/4 v14, 0x1

    .line 115
    if-eqz v13, :cond_94

    .line 116
    .line 117
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 118
    .line 119
    .line 120
    move-result-wide v15

    .line 121
    const-wide/16 v17, 0x1

    .line 122
    .line 123
    cmp-long v13, v15, v17

    .line 124
    .line 125
    if-ltz v13, :cond_a2

    .line 126
    .line 127
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    if-eqz v13, :cond_86

    .line 132
    .line 133
    :goto_84
    move v11, v14

    .line 134
    goto :goto_a2

    .line 135
    :cond_86
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    if-eqz v13, :cond_a2

    .line 140
    .line 141
    goto :goto_a1

    .line 142
    :catchall_8d
    move-exception v0

    .line 143
    move v9, v11

    .line 144
    goto/16 :goto_f8

    .line 145
    .line 146
    :catch_91
    move-exception v0

    .line 147
    move v9, v11

    .line 148
    goto :goto_ce

    .line 149
    :cond_94
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    if-eqz v13, :cond_9b

    .line 154
    .line 155
    goto :goto_84

    .line 156
    :cond_9b
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    if-eqz v13, :cond_a2

    .line 161
    .line 162
    :goto_a1
    move v12, v14

    .line 163
    :cond_a2
    :goto_a2
    if-eqz v0, :cond_ad

    .line 164
    .line 165
    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_ad

    .line 170
    .line 171
    invoke-direct {v1, v8, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 172
    .line 173
    .line 174
    :cond_ad
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 175
    .line 176
    .line 177
    move-result v0
    :try_end_b1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_63 .. :try_end_b1} :catch_91
    .catchall {:try_start_63 .. :try_end_b1} :catchall_8d

    .line 178
    if-nez v0, :cond_63

    .line 179
    .line 180
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 181
    .line 182
    .line 183
    if-nez v11, :cond_be

    .line 184
    .line 185
    if-eqz v5, :cond_be

    .line 186
    .line 187
    invoke-direct {v1, v8, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 188
    .line 189
    .line 190
    goto :goto_c5

    .line 191
    :cond_be
    if-nez v12, :cond_c5

    .line 192
    .line 193
    if-eqz v7, :cond_c5

    .line 194
    .line 195
    invoke-direct {v1, v8, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 196
    .line 197
    .line 198
    :cond_c5
    :goto_c5
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :catchall_c9
    move-exception v0

    .line 203
    move v12, v9

    .line 204
    goto :goto_f8

    .line 205
    :catch_cc
    move-exception v0

    .line 206
    move v12, v9

    .line 207
    :goto_ce
    :try_start_ce
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    const-string v6, "Error querying snapshot. appId"

    .line 216
    .line 217
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    invoke-virtual {v4, v6, v11, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_df
    .catchall {:try_start_ce .. :try_end_df} :catchall_f7

    .line 222
    .line 223
    .line 224
    if-eqz v10, :cond_e4

    .line 225
    .line 226
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 227
    .line 228
    .line 229
    :cond_e4
    if-nez v9, :cond_ec

    .line 230
    .line 231
    if-eqz v5, :cond_ec

    .line 232
    .line 233
    invoke-direct {v1, v8, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 234
    .line 235
    .line 236
    goto :goto_f3

    .line 237
    :cond_ec
    if-nez v12, :cond_f3

    .line 238
    .line 239
    if-eqz v7, :cond_f3

    .line 240
    .line 241
    invoke-direct {v1, v8, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 242
    .line 243
    .line 244
    :cond_f3
    :goto_f3
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :catchall_f7
    move-exception v0

    .line 249
    :goto_f8
    if-eqz v10, :cond_fd

    .line 250
    .line 251
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 252
    .line 253
    .line 254
    :cond_fd
    if-nez v9, :cond_106

    .line 255
    .line 256
    if-nez v5, :cond_102

    .line 257
    .line 258
    goto :goto_106

    .line 259
    :cond_102
    invoke-direct {v1, v8, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 260
    .line 261
    .line 262
    goto :goto_10d

    .line 263
    :cond_106
    :goto_106
    if-nez v12, :cond_10d

    .line 264
    .line 265
    if-eqz v7, :cond_10d

    .line 266
    .line 267
    invoke-direct {v1, v8, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 268
    .line 269
    .line 270
    :cond_10d
    :goto_10d
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v0
.end method

.method public final zzs(Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcb:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_10

    .line 15
    .line 16
    goto :goto_2a

    .line 17
    :cond_10
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzao()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=? AND NOT "

    .line 22
    .line 23
    invoke-static {v1, v0}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    filled-new-array {p1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    cmp-long p1, v0, v2

    .line 38
    .line 39
    if-eqz p1, :cond_2a

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    .line 44
    return p1
.end method

.method public final zzt(Ljava/lang/String;)Z
    .registers 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const-string v4, "select timestamp from raw_events where app_id=? and name = \'_f\' limit 1;"

    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 19
    .line 20
    .line 21
    move-result v3
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_15} :catch_53
    .catchall {:try_start_3 .. :try_end_15} :catchall_4d

    .line 22
    if-nez v3, :cond_1b

    .line 23
    .line 24
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_1b
    :try_start_1b
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lb4/b;

    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_2c} :catch_53
    .catchall {:try_start_1b .. :try_end_2c} :catchall_4d

    .line 45
    const-wide/16 v7, 0x3a98

    .line 46
    .line 47
    add-long/2addr v3, v7

    .line 48
    cmp-long v3, v5, v3

    .line 49
    .line 50
    if-gez v3, :cond_35

    .line 51
    .line 52
    move v3, v0

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v3, v1

    .line 55
    :goto_36
    :try_start_36
    const-string v4, "select count(*) from raw_events where app_id=? and name not like \'!_%\' escape \'!\' limit 1;"

    .line 56
    .line 57
    filled-new-array {p1}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-wide/16 v5, 0x0

    .line 62
    .line 63
    invoke-direct {p0, v4, p1, v5, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v7
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_42} :catch_4f
    .catchall {:try_start_36 .. :try_end_42} :catchall_4d

    .line 67
    cmp-long p1, v7, v5

    .line 68
    .line 69
    if-lez p1, :cond_48

    .line 70
    .line 71
    move p1, v0

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    move p1, v1

    .line 74
    :goto_49
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 75
    .line 76
    .line 77
    goto :goto_68

    .line 78
    :catchall_4d
    move-exception p1

    .line 79
    goto :goto_6e

    .line 80
    :catch_4f
    move-exception p1

    .line 81
    goto :goto_55

    .line 82
    :goto_51
    move v3, v1

    .line 83
    goto :goto_55

    .line 84
    :catch_53
    move-exception p1

    .line 85
    goto :goto_51

    .line 86
    :goto_55
    :try_start_55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const-string v5, "Error checking backfill conditions"

    .line 95
    .line 96
    invoke-virtual {v4, v5, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_4d

    .line 97
    .line 98
    .line 99
    if-eqz v2, :cond_67

    .line 100
    .line 101
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 102
    .line 103
    .line 104
    :cond_67
    move p1, v1

    .line 105
    :goto_68
    if-eqz v3, :cond_6d

    .line 106
    .line 107
    if-nez p1, :cond_6d

    .line 108
    .line 109
    return v0

    .line 110
    :cond_6d
    return v1

    .line 111
    :goto_6e
    if-eqz v2, :cond_73

    .line 112
    .line 113
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 114
    .line 115
    .line 116
    :cond_73
    throw p1
.end method

.method public final zzu()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzv()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzaa()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 12
    .line 13
    goto :goto_83

    .line 14
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzn()Lcom/google/android/gms/measurement/internal/zzmw;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmw;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lb4/b;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    sub-long v0, v2, v0

    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzn()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    cmp-long v0, v0, v4

    .line 48
    .line 49
    if-lez v0, :cond_83

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzn()Lcom/google/android/gms/measurement/internal/zzmw;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmw;->zza:Lcom/google/android/gms/measurement/internal/zzhb;

    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->zzaa()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_83

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lb4/b;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzm()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "queue"

    .line 106
    .line 107
    const-string v3, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    .line 108
    .line 109
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-lez v0, :cond_83

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v2, "Deleted stale rows. rowsDeleted"

    .line 124
    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_83
    :goto_83
    return-void
.end method

.method public final zzw()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzx()Z
    .registers 5

    .line 1
    const-string v0, "select count(1) > 0 from raw_events"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_f

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final zzy()Z
    .registers 5

    .line 1
    const-string v0, "select count(1) > 0 from queue where has_realtime = 1"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_f

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final zzz()Z
    .registers 5

    .line 1
    const-string v0, "select count(1) > 0 from raw_events where realtime = 1"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;[Ljava/lang/String;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_f

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return v0
.end method

###### Class com.google.android.gms.measurement.internal.zzao (com.google.android.gms.measurement.internal.zzao)
.class public final synthetic Lcom/google/android/gms/measurement/internal/zzao;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzau;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Landroid/database/Cursor;)Lcom/google/android/gms/measurement/internal/zzje;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
