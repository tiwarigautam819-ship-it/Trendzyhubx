###### Class com.google.android.gms.measurement.internal.zzgw (com.google.android.gms.measurement.internal.zzgw)
.class final Lcom/google/android/gms/measurement/internal/zzgw;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Ljava/net/URL;

.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzgu;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzgr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgr;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgu;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzgu;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/d0;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p6}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zza:Ljava/net/URL;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzb:[B

    .line 18
    .line 19
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzd:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zze:Ljava/util/Map;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    .line 1
    const-string v1, "Error closing HTTP compressed POST connection output stream. appId"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zza:Ljava/net/URL;

    .line 11
    .line 12
    const-class v4, Lcom/google/android/gms/internal/measurement/q0;

    .line 13
    .line 14
    monitor-enter v4

    .line 15
    monitor-exit v4

    .line 16
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v4, v0, Ljava/net/HttpURLConnection;

    .line 21
    .line 22
    if-eqz v4, :cond_f4

    .line 23
    .line 24
    move-object v4, v0

    .line 25
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 28
    .line 29
    .line 30
    const v0, 0xea60

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 34
    .line 35
    .line 36
    const v0, 0xee48

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_30} :catch_ee
    .catchall {:try_start_9 .. :try_end_30} :catchall_e9

    .line 47
    .line 48
    .line 49
    :try_start_30
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zze:Ljava/util/Map;

    .line 50
    .line 51
    if-eqz v5, :cond_65

    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_65

    .line 66
    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Ljava/util/Map$Entry;

    .line 72
    .line 73
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v4, v7, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3c

    .line 89
    :catchall_58
    move-exception v0

    .line 90
    move-object v6, v2

    .line 91
    :goto_5a
    move-object v13, v6

    .line 92
    :goto_5b
    move v10, v3

    .line 93
    :goto_5c
    move-object v2, v0

    .line 94
    goto/16 :goto_fc

    .line 95
    .line 96
    :catch_5f
    move-exception v0

    .line 97
    move-object v8, v0

    .line 98
    move-object v10, v2

    .line 99
    :goto_62
    move v7, v3

    .line 100
    goto/16 :goto_131

    .line 101
    .line 102
    :cond_65
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzb:[B

    .line 103
    .line 104
    if-eqz v5, :cond_af

    .line 105
    .line 106
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzb:[B

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb([B)[B

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 119
    .line 120
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgr;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const-string v7, "Uploading data. size"

    .line 129
    .line 130
    array-length v8, v5

    .line 131
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 139
    .line 140
    .line 141
    const-string v0, "Content-Encoding"

    .line 142
    .line 143
    const-string v6, "gzip"

    .line 144
    .line 145
    invoke-virtual {v4, v0, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    array-length v0, v5

    .line 149
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 156
    .line 157
    .line 158
    move-result-object v6
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_9e} :catch_5f
    .catchall {:try_start_30 .. :try_end_9e} :catchall_58

    .line 159
    :try_start_9e
    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a4} :catch_a8
    .catchall {:try_start_9e .. :try_end_a4} :catchall_a5

    .line 163
    .line 164
    .line 165
    goto :goto_af

    .line 166
    :catchall_a5
    move-exception v0

    .line 167
    move-object v13, v2

    .line 168
    goto :goto_5b

    .line 169
    :catch_a8
    move-exception v0

    .line 170
    move-object v8, v0

    .line 171
    move-object v10, v2

    .line 172
    move v7, v3

    .line 173
    move-object v2, v6

    .line 174
    goto/16 :goto_131

    .line 175
    .line 176
    :cond_af
    :goto_af
    :try_start_af
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 177
    .line 178
    .line 179
    move-result v8
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b3} :catch_5f
    .catchall {:try_start_af .. :try_end_b3} :catchall_58

    .line 180
    :try_start_b3
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 181
    .line 182
    .line 183
    move-result-object v11
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b7} :catch_e5
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_df

    .line 184
    :try_start_b7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 185
    .line 186
    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(Lcom/google/android/gms/measurement/internal/zzgr;Ljava/net/HttpURLConnection;)[B

    .line 187
    .line 188
    .line 189
    move-result-object v10
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bd} :catch_da
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_d5

    .line 190
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgt;

    .line 200
    .line 201
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzd:Ljava/lang/String;

    .line 202
    .line 203
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 204
    .line 205
    const/4 v9, 0x0

    .line 206
    const/4 v12, 0x0

    .line 207
    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzgt;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgu;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgv;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :catchall_d5
    move-exception v0

    .line 215
    move-object v6, v2

    .line 216
    move v10, v8

    .line 217
    move-object v13, v11

    .line 218
    goto :goto_5c

    .line 219
    :catch_da
    move-exception v0

    .line 220
    move v7, v8

    .line 221
    move-object v10, v11

    .line 222
    :goto_dd
    move-object v8, v0

    .line 223
    goto :goto_131

    .line 224
    :catchall_df
    move-exception v0

    .line 225
    move-object v6, v2

    .line 226
    move-object v13, v6

    .line 227
    move v10, v8

    .line 228
    goto/16 :goto_5c

    .line 229
    .line 230
    :catch_e5
    move-exception v0

    .line 231
    move-object v10, v2

    .line 232
    move v7, v8

    .line 233
    goto :goto_dd

    .line 234
    :catchall_e9
    move-exception v0

    .line 235
    move-object v4, v2

    .line 236
    move-object v6, v4

    .line 237
    goto/16 :goto_5a

    .line 238
    .line 239
    :catch_ee
    move-exception v0

    .line 240
    move-object v8, v0

    .line 241
    move-object v4, v2

    .line 242
    move-object v10, v4

    .line 243
    goto/16 :goto_62

    .line 244
    .line 245
    :cond_f4
    :try_start_f4
    new-instance v0, Ljava/io/IOException;

    .line 246
    .line 247
    const-string v4, "Failed to obtain HTTP connection"

    .line 248
    .line 249
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v0
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_fc} :catch_ee
    .catchall {:try_start_f4 .. :try_end_fc} :catchall_e9

    .line 253
    :goto_fc
    if-eqz v6, :cond_116

    .line 254
    .line 255
    :try_start_fe
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_102

    .line 256
    .line 257
    .line 258
    goto :goto_116

    .line 259
    :catch_102
    move-exception v0

    .line 260
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 261
    .line 262
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzd:Ljava/lang/String;

    .line 271
    .line 272
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-virtual {v3, v1, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_116
    :goto_116
    if-eqz v4, :cond_11b

    .line 280
    .line 281
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 282
    .line 283
    .line 284
    :cond_11b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzgt;

    .line 291
    .line 292
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzd:Ljava/lang/String;

    .line 293
    .line 294
    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 295
    .line 296
    const/4 v12, 0x0

    .line 297
    const/4 v14, 0x0

    .line 298
    const/4 v11, 0x0

    .line 299
    invoke-direct/range {v7 .. v14}, Lcom/google/android/gms/measurement/internal/zzgt;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgu;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgv;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 303
    .line 304
    .line 305
    throw v2

    .line 306
    :goto_131
    if-eqz v2, :cond_14b

    .line 307
    .line 308
    :try_start_133
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_137

    .line 309
    .line 310
    .line 311
    goto :goto_14b

    .line 312
    :catch_137
    move-exception v0

    .line 313
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 314
    .line 315
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzd:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :cond_14b
    :goto_14b
    if-eqz v4, :cond_150

    .line 333
    .line 334
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 335
    .line 336
    .line 337
    :cond_150
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzf:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 338
    .line 339
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzgt;

    .line 344
    .line 345
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzd:Ljava/lang/String;

    .line 346
    .line 347
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgw;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    .line 348
    .line 349
    const/4 v9, 0x0

    .line 350
    const/4 v11, 0x0

    .line 351
    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/zzgt;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgu;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgv;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 355
    .line 356
    .line 357
    return-void
.end method
