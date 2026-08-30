###### Class com.google.android.gms.measurement.internal.zzgf (com.google.android.gms.measurement.internal.zzgf)
.class public final Lcom/google/android/gms/measurement/internal/zzgf;
.super Lcom/google/android/gms/measurement/internal/zzh;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzgi;

.field private zzb:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzh;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zza()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "google_app_measurement_local.db"

    .line 11
    .line 12
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgi;-><init>(Lcom/google/android/gms/measurement/internal/zzgf;Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zza:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 16
    .line 17
    return-void
.end method

.method private static zza(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 12

    const/4 v1, 0x0

    .line 1
    :try_start_1
    const-string v3, "messages"

    const-string v0, "rowid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "type=?"

    const-string v0, "3"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v9, "rowid desc"

    const-string v10, "1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    .line 3
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 p0, 0x0

    .line 5
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2b

    .line 6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide v2

    :catchall_2b
    move-exception v0

    move-object p0, v0

    goto :goto_34

    .line 7
    :cond_2e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, -0x1

    return-wide v0

    :goto_34
    if-eqz v1, :cond_39

    .line 8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_39
    throw p0
.end method

.method private final zza(I[B)Z
    .registers 20

    move-object/from16 v1, p0

    .line 96
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzt()V

    .line 97
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    return v2

    .line 98
    :cond_b
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 99
    const-string v0, "type"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v0, "entry"

    move-object/from16 v4, p2

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v4, 0x5

    move v5, v2

    move v6, v4

    :goto_23
    if-ge v5, v4, :cond_170

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 101
    :try_start_27
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_27 .. :try_end_2b} :catch_140
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_27 .. :try_end_2b} :catch_12c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_2b} :catch_fa
    .catchall {:try_start_27 .. :try_end_2b} :catchall_f6

    if-nez v9, :cond_4a

    .line 102
    :try_start_2d
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2d .. :try_end_2f} :catch_45
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2d .. :try_end_2f} :catch_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_2f} :catch_38
    .catchall {:try_start_2d .. :try_end_2f} :catchall_35

    if-eqz v9, :cond_34

    .line 103
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_34
    return v2

    :catchall_35
    move-exception v0

    goto/16 :goto_165

    :catch_38
    move-exception v0

    move/from16 v16, v2

    move-object v10, v7

    :goto_3c
    move/from16 p2, v8

    :goto_3e
    move-object v7, v9

    goto/16 :goto_100

    :catch_41
    move/from16 v16, v2

    goto/16 :goto_12f

    :catch_45
    move-exception v0

    move/from16 v16, v2

    goto/16 :goto_144

    .line 104
    :cond_4a
    :try_start_4a
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 105
    const-string v0, "select count(1) from messages"

    invoke-virtual {v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4a .. :try_end_53} :catch_f0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4a .. :try_end_53} :catch_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4a .. :try_end_53} :catch_e8
    .catchall {:try_start_4a .. :try_end_53} :catchall_35

    if-eqz v10, :cond_72

    .line 106
    :try_start_55
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 107
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_55 .. :try_end_5f} :catch_6c
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_55 .. :try_end_5f} :catch_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_5f} :catch_64
    .catchall {:try_start_55 .. :try_end_5f} :catchall_60

    goto :goto_74

    :catchall_60
    move-exception v0

    :goto_61
    move-object v7, v10

    goto/16 :goto_165

    :catch_64
    move-exception v0

    move/from16 v16, v2

    goto :goto_3c

    :catch_68
    move/from16 v16, v2

    goto/16 :goto_e6

    :catch_6c
    move-exception v0

    move/from16 v16, v2

    :goto_6f
    move-object v7, v10

    goto/16 :goto_144

    :cond_72
    const-wide/16 v11, 0x0

    :goto_74
    const-wide/32 v13, 0x186a0

    cmp-long v0, v11, v13

    .line 108
    const-string v13, "messages"

    if-ltz v0, :cond_d0

    .line 109
    :try_start_7d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v14, "Data loss, local db full"

    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    const-wide/32 v14, 0x186a1

    sub-long/2addr v14, v11

    .line 110
    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    .line 111
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    .line 112
    invoke-virtual {v9, v13, v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v11, v0

    cmp-long v0, v11, v14

    if-eqz v0, :cond_d0

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0
    :try_end_a9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7d .. :try_end_a9} :catch_cc
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7d .. :try_end_a9} :catch_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7d .. :try_end_a9} :catch_64
    .catchall {:try_start_7d .. :try_end_a9} :catchall_60

    move/from16 v16, v2

    :try_start_ab
    const-string v2, "Different delete count than expected in local db. expected, received, difference"

    .line 115
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_b1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ab .. :try_end_b1} :catch_c8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ab .. :try_end_b1} :catch_e6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ab .. :try_end_b1} :catch_c5
    .catchall {:try_start_ab .. :try_end_b1} :catchall_60

    move/from16 p2, v8

    .line 116
    :try_start_b3
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sub-long/2addr v14, v11

    .line 117
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 118
    invoke-virtual {v0, v2, v4, v8, v11}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d4

    :catch_c0
    move-exception v0

    goto/16 :goto_3e

    :catch_c3
    move-exception v0

    goto :goto_6f

    :catch_c5
    move-exception v0

    goto/16 :goto_3c

    :catch_c8
    move-exception v0

    :goto_c9
    move/from16 p2, v8

    goto :goto_6f

    :catch_cc
    move-exception v0

    move/from16 v16, v2

    goto :goto_c9

    :cond_d0
    move/from16 v16, v2

    move/from16 p2, v8

    .line 119
    :goto_d4
    invoke-virtual {v9, v13, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 120
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 121
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_dd
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b3 .. :try_end_dd} :catch_c3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b3 .. :try_end_dd} :catch_e6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b3 .. :try_end_dd} :catch_c0
    .catchall {:try_start_b3 .. :try_end_dd} :catchall_60

    if-eqz v10, :cond_e2

    .line 122
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_e2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return p2

    :catch_e6
    :goto_e6
    move-object v7, v10

    goto :goto_12f

    :catch_e8
    move-exception v0

    move/from16 v16, v2

    move/from16 p2, v8

    move-object v10, v7

    goto/16 :goto_3e

    :catch_f0
    move-exception v0

    move/from16 v16, v2

    move/from16 p2, v8

    goto :goto_144

    :catchall_f6
    move-exception v0

    move-object v9, v7

    goto/16 :goto_165

    :catch_fa
    move-exception v0

    move/from16 v16, v2

    move/from16 p2, v8

    move-object v10, v7

    :goto_100
    if-eqz v7, :cond_110

    .line 124
    :try_start_102
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_110

    .line 125
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_110

    :catchall_10c
    move-exception v0

    move-object v9, v7

    goto/16 :goto_61

    .line 126
    :cond_110
    :goto_110
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    move/from16 v2, p2

    .line 127
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z
    :try_end_121
    .catchall {:try_start_102 .. :try_end_121} :catchall_10c

    if-eqz v10, :cond_126

    .line 128
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_126
    if-eqz v7, :cond_15e

    .line 129
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_15e

    :catch_12c
    move/from16 v16, v2

    move-object v9, v7

    :goto_12f
    int-to-long v10, v6

    .line 130
    :try_start_130
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_35

    add-int/lit8 v6, v6, 0x14

    if-eqz v7, :cond_13a

    .line 131
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_13a
    if-eqz v9, :cond_15e

    .line 132
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_15e

    :catch_140
    move-exception v0

    move/from16 v16, v2

    move-object v9, v7

    .line 133
    :goto_144
    :try_start_144
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v4, "Error writing entry; local database full"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 134
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z
    :try_end_154
    .catchall {:try_start_144 .. :try_end_154} :catchall_35

    if-eqz v7, :cond_159

    .line 135
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_159
    if-eqz v9, :cond_15e

    .line 136
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_15e
    :goto_15e
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v16

    const/4 v4, 0x5

    goto/16 :goto_23

    :goto_165
    if-eqz v7, :cond_16a

    .line 137
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_16a
    if-eqz v9, :cond_16f

    .line 138
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 139
    :cond_16f
    throw v0

    :cond_170
    move/from16 v16, v2

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return v16
.end method

.method private final zzad()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zza:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_12

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_12
    return-object v0
.end method

.method private final zzae()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zza()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "google_app_measurement_local.db"

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


# virtual methods
.method public final bridge synthetic zza()Landroid/content/Context;
    .registers 2

    .line 10
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza(I)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ly3/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 11
    const-string v2, "Error reading entries from local database"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzt()V

    .line 12
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    return-object v3

    .line 13
    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzae()Z

    move-result v0

    if-nez v0, :cond_19

    return-object v4

    :cond_19
    const/4 v5, 0x5

    const/4 v6, 0x0

    move v8, v5

    move v7, v6

    :goto_1d
    if-ge v7, v5, :cond_1e8

    const/4 v9, 0x1

    .line 15
    :try_start_20
    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzad()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_20 .. :try_end_24} :catch_1bf
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_20 .. :try_end_24} :catch_1ac
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20 .. :try_end_24} :catch_186
    .catchall {:try_start_20 .. :try_end_24} :catchall_183

    if-nez v10, :cond_39

    .line 16
    :try_start_26
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_26 .. :try_end_28} :catch_35
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_26 .. :try_end_28} :catch_181
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_28} :catch_31
    .catchall {:try_start_26 .. :try_end_28} :catchall_2e

    if-eqz v10, :cond_2d

    .line 17
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_2d
    return-object v3

    :catchall_2e
    move-exception v0

    goto/16 :goto_1dd

    :catch_31
    move-exception v0

    move-object v11, v3

    goto/16 :goto_189

    :catch_35
    move-exception v0

    move-object v11, v3

    goto/16 :goto_1c2

    .line 18
    :cond_39
    :try_start_39
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 19
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v11

    const-wide/16 v19, -0x1

    cmp-long v0, v11, v19

    if-eqz v0, :cond_53

    .line 20
    const-string v0, "rowid<?"

    .line 21
    new-array v13, v9, [Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v6

    move-object v14, v13

    move-object v13, v0

    goto :goto_55

    :cond_53
    move-object v13, v3

    move-object v14, v13

    .line 22
    :goto_55
    const-string v11, "messages"

    const-string v0, "rowid"

    const-string v12, "type"

    const-string v15, "entry"

    filled-new-array {v0, v12, v15}, [Ljava/lang/String;

    move-result-object v12

    const-string v17, "rowid asc"

    const/16 v0, 0x64

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 24
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_70
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_39 .. :try_end_70} :catch_35
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_39 .. :try_end_70} :catch_181
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39 .. :try_end_70} :catch_31
    .catchall {:try_start_39 .. :try_end_70} :catchall_2e

    .line 25
    :cond_70
    :goto_70
    :try_start_70
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 26
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 27
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v12, 0x2

    .line 28
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    if-nez v0, :cond_c2

    .line 29
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_89
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_70 .. :try_end_89} :catch_a8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_70 .. :try_end_89} :catch_1ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_70 .. :try_end_89} :catch_a5
    .catchall {:try_start_70 .. :try_end_89} :catchall_a1

    .line 30
    :try_start_89
    array-length v0, v13

    invoke-virtual {v12, v13, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 31
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzbf;
    :try_end_98
    .catch Ly3/b; {:try_start_89 .. :try_end_98} :catch_ad
    .catchall {:try_start_89 .. :try_end_98} :catchall_ab

    .line 33
    :try_start_98
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_70

    .line 34
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_98 .. :try_end_a0} :catch_a8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_98 .. :try_end_a0} :catch_1ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_98 .. :try_end_a0} :catch_a5
    .catchall {:try_start_98 .. :try_end_a0} :catchall_a1

    goto :goto_70

    :catchall_a1
    move-exception v0

    move-object v3, v11

    goto/16 :goto_1dd

    :catch_a5
    move-exception v0

    goto/16 :goto_189

    :catch_a8
    move-exception v0

    goto/16 :goto_1c2

    :catchall_ab
    move-exception v0

    goto :goto_be

    .line 35
    :catch_ad
    :try_start_ad
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v13, "Failed to load event from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_ad .. :try_end_ba} :catchall_ab

    .line 36
    :try_start_ba
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    goto :goto_70

    .line 37
    :goto_be
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 38
    throw v0

    :cond_c2
    if-ne v0, v9, :cond_f9

    .line 39
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_c8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ba .. :try_end_c8} :catch_a8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ba .. :try_end_c8} :catch_1ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ba .. :try_end_c8} :catch_a5
    .catchall {:try_start_ba .. :try_end_c8} :catchall_a1

    .line 40
    :try_start_c8
    array-length v0, v13

    invoke-virtual {v12, v13, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 41
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzon;
    :try_end_d7
    .catch Ly3/b; {:try_start_c8 .. :try_end_d7} :catch_dd
    .catchall {:try_start_c8 .. :try_end_d7} :catchall_db

    .line 43
    :try_start_d7
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_da
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d7 .. :try_end_da} :catch_a8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d7 .. :try_end_da} :catch_1ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d7 .. :try_end_da} :catch_a5
    .catchall {:try_start_d7 .. :try_end_da} :catchall_a1

    goto :goto_ee

    :catchall_db
    move-exception v0

    goto :goto_f5

    .line 44
    :catch_dd
    :try_start_dd
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v13, "Failed to load user property from local database"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_ea
    .catchall {:try_start_dd .. :try_end_ea} :catchall_db

    .line 45
    :try_start_ea
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v0, v3

    :goto_ee
    if-eqz v0, :cond_70

    .line 46
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_70

    .line 47
    :goto_f5
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 48
    throw v0

    :cond_f9
    if-ne v0, v12, :cond_130

    .line 49
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12
    :try_end_ff
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ea .. :try_end_ff} :catch_a8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ea .. :try_end_ff} :catch_1ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ea .. :try_end_ff} :catch_a5
    .catchall {:try_start_ea .. :try_end_ff} :catchall_a1

    .line 50
    :try_start_ff
    array-length v0, v13

    invoke-virtual {v12, v13, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 51
    invoke-virtual {v12, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 53
    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzae;
    :try_end_10e
    .catch Ly3/b; {:try_start_ff .. :try_end_10e} :catch_114
    .catchall {:try_start_ff .. :try_end_10e} :catchall_112

    .line 54
    :try_start_10e
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V
    :try_end_111
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10e .. :try_end_111} :catch_a8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10e .. :try_end_111} :catch_1ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10e .. :try_end_111} :catch_a5
    .catchall {:try_start_10e .. :try_end_111} :catchall_a1

    goto :goto_125

    :catchall_112
    move-exception v0

    goto :goto_12c

    .line 55
    :catch_114
    :try_start_114
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v13, "Failed to load conditional user property from local database"

    .line 57
    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_121
    .catchall {:try_start_114 .. :try_end_121} :catchall_112

    .line 58
    :try_start_121
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    move-object v0, v3

    :goto_125
    if-eqz v0, :cond_70

    .line 59
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_70

    .line 60
    :goto_12c
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 61
    throw v0

    :cond_130
    const/4 v12, 0x3

    if-ne v0, v12, :cond_142

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v12, "Skipping app launch break"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    goto/16 :goto_70

    .line 63
    :cond_142
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v12, "Unknown record type in local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    goto/16 :goto_70

    .line 64
    :cond_151
    const-string v0, "messages"

    const-string v12, "rowid <= ?"

    .line 65
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    .line 66
    invoke-virtual {v10, v0, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 67
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v0, v12, :cond_174

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v12, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 69
    :cond_174
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 70
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_17a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_121 .. :try_end_17a} :catch_a8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_121 .. :try_end_17a} :catch_1ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_121 .. :try_end_17a} :catch_a5
    .catchall {:try_start_121 .. :try_end_17a} :catchall_a1

    .line 71
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 72
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-object v4

    :catch_181
    move-object v11, v3

    goto :goto_1ae

    :catchall_183
    move-exception v0

    move-object v10, v3

    goto :goto_1dd

    :catch_186
    move-exception v0

    move-object v10, v3

    move-object v11, v10

    :goto_189
    if-eqz v10, :cond_194

    .line 73
    :try_start_18b
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v12

    if-eqz v12, :cond_194

    .line 74
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 75
    :cond_194
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v12

    invoke-virtual {v12, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z
    :try_end_1a1
    .catchall {:try_start_18b .. :try_end_1a1} :catchall_a1

    if-eqz v11, :cond_1a6

    .line 77
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1a6
    if-eqz v10, :cond_1d9

    .line 78
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_1d9

    :catch_1ac
    move-object v10, v3

    move-object v11, v10

    :catch_1ae
    :goto_1ae
    int-to-long v12, v8

    .line 79
    :try_start_1af
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1b2
    .catchall {:try_start_1af .. :try_end_1b2} :catchall_a1

    add-int/lit8 v8, v8, 0x14

    if-eqz v11, :cond_1b9

    .line 80
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1b9
    if-eqz v10, :cond_1d9

    .line 81
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_1d9

    :catch_1bf
    move-exception v0

    move-object v10, v3

    move-object v11, v10

    .line 82
    :goto_1c2
    :try_start_1c2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v12

    invoke-virtual {v12, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z
    :try_end_1cf
    .catchall {:try_start_1c2 .. :try_end_1cf} :catchall_a1

    if-eqz v11, :cond_1d4

    .line 84
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1d4
    if-eqz v10, :cond_1d9

    .line 85
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1d9
    :goto_1d9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1d

    :goto_1dd
    if-eqz v3, :cond_1e2

    .line 86
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1e2
    if-eqz v10, :cond_1e7

    .line 87
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 88
    :cond_1e7
    throw v0

    .line 89
    :cond_1e8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-object v3
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzae;)Z
    .registers 4

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 91
    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_1b

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 94
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1b
    const/4 v0, 0x2

    .line 95
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzbf;)Z
    .registers 5

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbf;->writeToParcel(Landroid/os/Parcel;I)V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_22

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 148
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return v1

    .line 149
    :cond_22
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzon;)Z
    .registers 5

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 154
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_22

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    .line 157
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return v1

    :cond_22
    const/4 v0, 0x1

    .line 158
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzaa()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzt()V

    .line 2
    .line 3
    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzad()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_26

    .line 9
    .line 10
    const-string v1, "messages"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_26

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "Reset local analytics data. records"

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_23} :catch_24

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_24
    move-exception v0

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    return-void

    .line 40
    :goto_27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "Error resetting local analytics data. error"

    .line 49
    .line 50
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final zzab()Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(I[B)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final zzac()Z
    .registers 11

    .line 1
    const-string v0, "Error deleting app launch break from local database"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzt()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_b

    .line 10
    .line 11
    return v2

    .line 12
    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzae()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_12

    .line 17
    .line 18
    return v2

    .line 19
    :cond_12
    const/4 v1, 0x5

    .line 20
    move v4, v1

    .line 21
    move v3, v2

    .line 22
    :goto_15
    if-ge v3, v1, :cond_8f

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    const/4 v6, 0x0

    .line 26
    :try_start_19
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzad()Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    if-nez v6, :cond_2d

    .line 31
    .line 32
    iput-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_19 .. :try_end_21} :catch_2b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_19 .. :try_end_21} :catch_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_21} :catch_29
    .catchall {:try_start_19 .. :try_end_21} :catchall_27

    .line 33
    .line 34
    if-eqz v6, :cond_26

    .line 35
    .line 36
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 37
    .line 38
    .line 39
    :cond_26
    return v2

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    goto :goto_89

    .line 42
    :catch_29
    move-exception v7

    .line 43
    goto :goto_4a

    .line 44
    :catch_2b
    move-exception v7

    .line 45
    goto :goto_74

    .line 46
    :cond_2d
    :try_start_2d
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 47
    .line 48
    .line 49
    const-string v7, "messages"

    .line 50
    .line 51
    const-string v8, "type == ?"

    .line 52
    .line 53
    const/4 v9, 0x3

    .line 54
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    filled-new-array {v9}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2d .. :try_end_46} :catch_2b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2d .. :try_end_46} :catch_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_46} :catch_29
    .catchall {:try_start_2d .. :try_end_46} :catchall_27

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 72
    .line 73
    .line 74
    return v5

    .line 75
    :goto_4a
    if-eqz v6, :cond_55

    .line 76
    .line 77
    :try_start_4c
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_55

    .line 82
    .line 83
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 84
    .line 85
    .line 86
    :cond_55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iput-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z
    :try_end_62
    .catchall {:try_start_4c .. :try_end_62} :catchall_27

    .line 98
    .line 99
    if-eqz v6, :cond_86

    .line 100
    .line 101
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 102
    .line 103
    .line 104
    goto :goto_86

    .line 105
    :catch_68
    int-to-long v7, v4

    .line 106
    :try_start_69
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_27

    .line 107
    .line 108
    .line 109
    add-int/lit8 v4, v4, 0x14

    .line 110
    .line 111
    if-eqz v6, :cond_86

    .line 112
    .line 113
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 114
    .line 115
    .line 116
    goto :goto_86

    .line 117
    :goto_74
    :try_start_74
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iput-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Z
    :try_end_81
    .catchall {:try_start_74 .. :try_end_81} :catchall_27

    .line 129
    .line 130
    if-eqz v6, :cond_86

    .line 131
    .line 132
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 133
    .line 134
    .line 135
    :cond_86
    :goto_86
    add-int/lit8 v3, v3, 0x1

    .line 136
    .line 137
    goto :goto_15

    .line 138
    :goto_89
    if-eqz v6, :cond_8e

    .line 139
    .line 140
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 141
    .line 142
    .line 143
    :cond_8e
    throw v0

    .line 144
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v1, "Error deleting app launch break from local database in reasonable time"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return v2
.end method

.method public final bridge synthetic zzb()Lb4/a;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lb4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzc()Lcom/google/android/gms/measurement/internal/zzb;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzc()Lcom/google/android/gms/measurement/internal/zzb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzag;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzaz;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzgg;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzg()Lcom/google/android/gms/measurement/internal/zzgg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzgf;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzh()Lcom/google/android/gms/measurement/internal/zzgf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzgh;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzgo;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzha;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzhv;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/measurement/internal/zzjq;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzlj;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzls;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zznb;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzos;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzr()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzr()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic zzs()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzs()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final bridge synthetic zzt()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zzz()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
