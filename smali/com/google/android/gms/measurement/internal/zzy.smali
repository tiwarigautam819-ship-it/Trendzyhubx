###### Class com.google.android.gms.measurement.internal.zzy (com.google.android.gms.measurement.internal.zzy)
.class final Lcom/google/android/gms/measurement/internal/zzy;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/q3;

.field private zzb:Ljava/lang/Long;

.field private zzc:J

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Lcom/google/android/gms/measurement/internal/zzac;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzt;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/q3;)Lcom/google/android/gms/internal/measurement/q3;
    .registers 15

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/q3;->B()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/q3;->C()Lcom/google/android/gms/internal/measurement/j6;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    .line 12
    .line 13
    .line 14
    const-string v2, "_eid"

    .line 15
    .line 16
    invoke-static {p2, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    move-object v6, v3

    .line 21
    check-cast v6, Ljava/lang/Long;

    .line 22
    .line 23
    if-eqz v6, :cond_1a

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v3, 0x0

    .line 28
    :goto_1b
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    if-eqz v3, :cond_13c

    .line 31
    .line 32
    const-string v7, "_ep"

    .line 33
    .line 34
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_13c

    .line 39
    .line 40
    invoke-static {v6}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    .line 46
    .line 47
    .line 48
    const-string v0, "_en"

    .line 49
    .line 50
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    move-object v3, v0

    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v7, 0x0

    .line 62
    if-eqz v0, :cond_4f

    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string p2, "Extra parameter without an event name. eventId"

    .line 75
    .line 76
    invoke-virtual {p1, p2, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object v7

    .line 80
    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zza:Lcom/google/android/gms/internal/measurement/q3;

    .line 81
    .line 82
    if-eqz v0, :cond_65

    .line 83
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/Long;

    .line 85
    .line 86
    if-eqz v0, :cond_65

    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v8

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v10

    .line 98
    cmp-long v0, v8, v10

    .line 99
    .line 100
    if-eqz v0, :cond_94

    .line 101
    .line 102
    :cond_65
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0, p1, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_12c

    .line 113
    .line 114
    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 115
    .line 116
    if-nez v8, :cond_77

    .line 117
    .line 118
    goto/16 :goto_12c

    .line 119
    .line 120
    :cond_77
    check-cast v8, Lcom/google/android/gms/internal/measurement/q3;

    .line 121
    .line 122
    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/zzy;->zza:Lcom/google/android/gms/internal/measurement/q3;

    .line 123
    .line 124
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, Ljava/lang/Long;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v7

    .line 132
    iput-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:J

    .line 133
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zza:Lcom/google/android/gms/internal/measurement/q3;

    .line 140
    .line 141
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Ljava/lang/Long;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/Long;

    .line 148
    .line 149
    :cond_94
    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:J

    .line 150
    .line 151
    const-wide/16 v9, 0x1

    .line 152
    .line 153
    sub-long/2addr v7, v9

    .line 154
    iput-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:J

    .line 155
    .line 156
    cmp-long v0, v7, v4

    .line 157
    .line 158
    if-gtz v0, :cond_d3

    .line 159
    .line 160
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v4, "Clearing complex main event info. appId"

    .line 178
    .line 179
    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :try_start_b5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const-string v4, "delete from main_event_params where app_id=?"

    .line 187
    .line 188
    filled-new-array {p1}, [Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {v0, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b5 .. :try_end_c2} :catch_c3

    .line 193
    .line 194
    .line 195
    goto :goto_e1

    .line 196
    :catch_c3
    move-exception v0

    .line 197
    move-object p1, v0

    .line 198
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    const-string v2, "Error clearing complex main event"

    .line 207
    .line 208
    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    goto :goto_e1

    .line 212
    :cond_d3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:J

    .line 219
    .line 220
    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzy;->zza:Lcom/google/android/gms/internal/measurement/q3;

    .line 221
    .line 222
    move-object v5, p1

    .line 223
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/q3;)Z

    .line 224
    .line 225
    .line 226
    :goto_e1
    new-instance p1, Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzy;->zza:Lcom/google/android/gms/internal/measurement/q3;

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q3;->C()Lcom/google/android/gms/internal/measurement/j6;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :cond_f0
    :goto_f0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    if-eqz v2, :cond_10f

    .line 246
    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    check-cast v2, Lcom/google/android/gms/internal/measurement/u3;

    .line 252
    .line 253
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 254
    .line 255
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/u3;->C()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-static {p2, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/u3;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    if-nez v4, :cond_f0

    .line 267
    .line 268
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    goto :goto_f0

    .line 272
    :cond_10f
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-nez v0, :cond_11c

    .line 277
    .line 278
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 279
    .line 280
    .line 281
    move-object v1, p1

    .line 282
    :goto_119
    move-object v9, p2

    .line 283
    move-object v0, v3

    .line 284
    goto :goto_17f

    .line 285
    :cond_11c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    const-string v0, "No unique parameters in main event. eventName"

    .line 296
    .line 297
    invoke-virtual {p1, v0, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto :goto_119

    .line 301
    :cond_12c
    :goto_12c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    const-string p2, "Extra parameter without existing main event. eventName, eventId"

    .line 312
    .line 313
    invoke-virtual {p1, p2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    return-object v7

    .line 317
    :cond_13c
    move-wide v7, v4

    .line 318
    move-object v5, p1

    .line 319
    if-eqz v3, :cond_16e

    .line 320
    .line 321
    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/Long;

    .line 322
    .line 323
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzy;->zza:Lcom/google/android/gms/internal/measurement/q3;

    .line 324
    .line 325
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 326
    .line 327
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    .line 328
    .line 329
    .line 330
    const-string p1, "_epc"

    .line 331
    .line 332
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-static {p2, p1, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    check-cast p1, Ljava/lang/Long;

    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 343
    .line 344
    .line 345
    move-result-wide v2

    .line 346
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:J

    .line 347
    .line 348
    cmp-long p1, v2, v7

    .line 349
    .line 350
    if-gtz p1, :cond_170

    .line 351
    .line 352
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 353
    .line 354
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    const-string v2, "Complex event with zero extra param count. eventName"

    .line 363
    .line 364
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_16e
    move-object v9, p2

    .line 368
    goto :goto_17f

    .line 369
    :cond_170
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 370
    .line 371
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    invoke-static {v6}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:J

    .line 379
    .line 380
    move-object v9, p2

    .line 381
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/q3;)Z

    .line 382
    .line 383
    .line 384
    :goto_17f
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/z5;->k()Lcom/google/android/gms/internal/measurement/y5;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    check-cast p1, Lcom/google/android/gms/internal/measurement/p3;

    .line 389
    .line 390
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/p3;->j(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 394
    .line 395
    .line 396
    iget-object p2, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    .line 397
    .line 398
    check-cast p2, Lcom/google/android/gms/internal/measurement/q3;

    .line 399
    .line 400
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/q3;->r(Lcom/google/android/gms/internal/measurement/q3;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->e()V

    .line 404
    .line 405
    .line 406
    iget-object p2, p1, Lcom/google/android/gms/internal/measurement/y5;->b:Lcom/google/android/gms/internal/measurement/z5;

    .line 407
    .line 408
    check-cast p2, Lcom/google/android/gms/internal/measurement/q3;

    .line 409
    .line 410
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/q3;->u(Lcom/google/android/gms/internal/measurement/q3;Ljava/lang/Iterable;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/y5;->c()Lcom/google/android/gms/internal/measurement/z5;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    check-cast p1, Lcom/google/android/gms/internal/measurement/q3;

    .line 418
    .line 419
    return-object p1
.end method
