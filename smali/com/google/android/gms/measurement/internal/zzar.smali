###### Class com.google.android.gms.measurement.internal.zzar (com.google.android.gms.measurement.internal.zzar)
.class public final Lcom/google/android/gms/measurement/internal/zzar;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private final zza:Ljava/lang/String;

.field private zzb:J

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzal;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Lcom/google/android/gms/measurement/internal/zzal;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzar;->zzb:J

    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzap;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v6, "app_id = ? and rowid > ?"

    .line 9
    .line 10
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 11
    .line 12
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:J

    .line 13
    .line 14
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    const/4 v12, 0x0

    .line 23
    :try_start_16
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Lcom/google/android/gms/measurement/internal/zzal;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "raw_events"

    .line 30
    .line 31
    const-string v13, "rowid"

    .line 32
    .line 33
    const-string v14, "name"

    .line 34
    .line 35
    const-string v15, "timestamp"

    .line 36
    .line 37
    const-string v16, "metadata_fingerprint"

    .line 38
    .line 39
    const-string v17, "data"

    .line 40
    .line 41
    const-string v18, "realtime"

    .line 42
    .line 43
    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string v10, "rowid"

    .line 48
    .line 49
    const-string v11, "1000"

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_4a

    .line 62
    .line 63
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_40} :catch_47
    .catchall {:try_start_16 .. :try_end_40} :catchall_44

    .line 64
    .line 65
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :catchall_44
    move-exception v0

    .line 70
    goto/16 :goto_e0

    .line 71
    .line 72
    :catch_47
    move-exception v0

    .line 73
    goto/16 :goto_c5

    .line 74
    .line 75
    :cond_4a
    const/4 v0, 0x0

    .line 76
    :try_start_4b
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    const/4 v3, 0x3

    .line 81
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 82
    .line 83
    .line 84
    move-result-wide v6

    .line 85
    const/4 v3, 0x5

    .line 86
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    const-wide/16 v10, 0x1

    .line 91
    .line 92
    cmp-long v3, v8, v10

    .line 93
    .line 94
    const/4 v8, 0x1

    .line 95
    if-nez v3, :cond_61

    .line 96
    .line 97
    move v0, v8

    .line 98
    :cond_61
    const/4 v3, 0x4

    .line 99
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:J

    .line 104
    .line 105
    cmp-long v9, v4, v9

    .line 106
    .line 107
    if-lez v9, :cond_6e

    .line 108
    .line 109
    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:J
    :try_end_6e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_6e} :catch_47
    .catchall {:try_start_4b .. :try_end_6e} :catchall_44

    .line 110
    .line 111
    :cond_6e
    :try_start_6e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/q3;->A()Lcom/google/android/gms/internal/measurement/p3;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-static {v9, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/s6;[B)Lcom/google/android/gms/internal/measurement/s6;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lcom/google/android/gms/internal/measurement/p3;
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_78} :catch_a5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6e .. :try_end_78} :catch_47
    .catchall {:try_start_6e .. :try_end_78} :catchall_44

    .line 120
    .line 121
    :try_start_78
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    if-eqz v8, :cond_7f

    .line 126
    .line 127
    goto :goto_81

    .line 128
    :cond_7f
    const-string v8, ""

    .line 129
    .line 130
    :goto_81
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/p3;->j(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const/4 v8, 0x2

    .line 134
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 135
    .line 136
    .line 137
    move-result-wide v8

    .line 138
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 139
    .line 140
    .line 141
    iget-object v10, v3, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    .line 142
    .line 143
    check-cast v10, Lcom/google/android/gms/internal/measurement/q3;

    .line 144
    .line 145
    invoke-static {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/q3;->x(JLcom/google/android/gms/internal/measurement/q3;)V

    .line 146
    .line 147
    .line 148
    move-object v8, v3

    .line 149
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzap;

    .line 150
    .line 151
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    move-object v9, v8

    .line 156
    check-cast v9, Lcom/google/android/gms/internal/measurement/q3;

    .line 157
    .line 158
    move v8, v0

    .line 159
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(JJZLcom/google/android/gms/internal/measurement/q3;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_bb

    .line 166
    :catch_a5
    move-exception v0

    .line 167
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Lcom/google/android/gms/measurement/internal/zzal;

    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    const-string v4, "Data loss. Failed to merge raw event. appId"

    .line 178
    .line 179
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :goto_bb
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 189
    .line 190
    .line 191
    move-result v0
    :try_end_bf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_78 .. :try_end_bf} :catch_47
    .catchall {:try_start_78 .. :try_end_bf} :catchall_44

    .line 192
    if-nez v0, :cond_4a

    .line 193
    .line 194
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 195
    .line 196
    .line 197
    goto :goto_df

    .line 198
    :goto_c5
    :try_start_c5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Lcom/google/android/gms/measurement/internal/zzal;

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    const-string v4, "Data loss. Error querying raw events batch. appId"

    .line 209
    .line 210
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_da
    .catchall {:try_start_c5 .. :try_end_da} :catchall_44

    .line 217
    .line 218
    .line 219
    if-eqz v12, :cond_df

    .line 220
    .line 221
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 222
    .line 223
    .line 224
    :cond_df
    :goto_df
    return-object v2

    .line 225
    :goto_e0
    if-eqz v12, :cond_e5

    .line 226
    .line 227
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 228
    .line 229
    .line 230
    :cond_e5
    throw v0
.end method
