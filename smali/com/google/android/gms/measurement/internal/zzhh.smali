###### Class com.google.android.gms.measurement.internal.zzhh (com.google.android.gms.measurement.internal.zzhh)
.class final Lcom/google/android/gms/measurement/internal/zzhh;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/j0;

.field private final synthetic zzb:Landroid/content/ServiceConnection;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzhi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhi;Lcom/google/android/gms/internal/measurement/j0;Landroid/content/ServiceConnection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zza:Lcom/google/android/gms/internal/measurement/j0;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zzb:Landroid/content/ServiceConnection;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zzc:Lcom/google/android/gms/measurement/internal/zzhi;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zzc:Lcom/google/android/gms/measurement/internal/zzhi;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhi;->zza:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhi;->zza(Lcom/google/android/gms/measurement/internal/zzhi;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zza:Lcom/google/android/gms/internal/measurement/j0;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhh;->zzb:Landroid/content/ServiceConnection;

    .line 12
    .line 13
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzhf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/j0;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhv;->zzt()V

    .line 24
    .line 25
    .line 26
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhy;->zzy()V

    .line 29
    .line 30
    .line 31
    if-eqz v2, :cond_153

    .line 32
    .line 33
    const-string v4, "install_begin_timestamp_seconds"

    .line 34
    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    const-wide/16 v9, 0x3e8

    .line 42
    .line 43
    mul-long/2addr v7, v9

    .line 44
    cmp-long v4, v7, v5

    .line 45
    .line 46
    if-nez v4, :cond_40

    .line 47
    .line 48
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v2, "Service response is missing Install Referrer install timestamp"

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_153

    .line 64
    .line 65
    :cond_40
    const-string v4, "install_referrer"

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_144

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    if-eqz v11, :cond_50

    .line 78
    .line 79
    goto/16 :goto_144

    .line 80
    .line 81
    :cond_50
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 82
    .line 83
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    const-string v12, "InstallReferrer API result"

    .line 92
    .line 93
    invoke-virtual {v11, v12, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f9;->a()V

    .line 97
    .line 98
    .line 99
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 100
    .line 101
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhy;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbh;->zzcu:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 106
    .line 107
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 112
    .line 113
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhy;->zzt()Lcom/google/android/gms/measurement/internal/zzos;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    const-string v13, "?"

    .line 118
    .line 119
    invoke-virtual {v13, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v12, v4, v11}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/net/Uri;Z)Landroid/os/Bundle;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    if-nez v4, :cond_95

    .line 132
    .line 133
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v2, "No campaign params defined in Install Referrer result"

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_153

    .line 149
    .line 150
    :cond_95
    const-string v12, "click_timestamp"

    .line 151
    .line 152
    if-eqz v11, :cond_b8

    .line 153
    .line 154
    const-string v11, "gclid"

    .line 155
    .line 156
    invoke-virtual {v4, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    if-nez v11, :cond_a9

    .line 161
    .line 162
    const-string v11, "gbraid"

    .line 163
    .line 164
    invoke-virtual {v4, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    if-eqz v11, :cond_ee

    .line 169
    .line 170
    :cond_a9
    const-string v11, "referrer_click_timestamp_server_seconds"

    .line 171
    .line 172
    invoke-virtual {v2, v11, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 173
    .line 174
    .line 175
    move-result-wide v13

    .line 176
    mul-long/2addr v13, v9

    .line 177
    cmp-long v2, v13, v5

    .line 178
    .line 179
    if-lez v2, :cond_ee

    .line 180
    .line 181
    invoke-virtual {v4, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 182
    .line 183
    .line 184
    goto :goto_ee

    .line 185
    :cond_b8
    const-string v11, "medium"

    .line 186
    .line 187
    invoke-virtual {v4, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v11

    .line 191
    if-eqz v11, :cond_ee

    .line 192
    .line 193
    const-string v13, "(not set)"

    .line 194
    .line 195
    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    if-nez v13, :cond_ee

    .line 200
    .line 201
    const-string v13, "organic"

    .line 202
    .line 203
    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    if-nez v11, :cond_ee

    .line 208
    .line 209
    const-string v11, "referrer_click_timestamp_seconds"

    .line 210
    .line 211
    invoke-virtual {v2, v11, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 212
    .line 213
    .line 214
    move-result-wide v13

    .line 215
    mul-long/2addr v13, v9

    .line 216
    cmp-long v2, v13, v5

    .line 217
    .line 218
    if-nez v2, :cond_eb

    .line 219
    .line 220
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const-string v2, "Install Referrer is missing click timestamp for ad campaign"

    .line 231
    .line 232
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto :goto_153

    .line 236
    :cond_eb
    invoke-virtual {v4, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 237
    .line 238
    .line 239
    :cond_ee
    :goto_ee
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzn()Lcom/google/android/gms/measurement/internal/zzha;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzha;->zzd:Lcom/google/android/gms/measurement/internal/zzhb;

    .line 246
    .line 247
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    .line 248
    .line 249
    .line 250
    move-result-wide v5

    .line 251
    cmp-long v2, v7, v5

    .line 252
    .line 253
    if-nez v2, :cond_10d

    .line 254
    .line 255
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 256
    .line 257
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    const-string v5, "Logging Install Referrer campaign from module while it may have already been logged."

    .line 266
    .line 267
    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_10d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 271
    .line 272
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_153

    .line 277
    .line 278
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 279
    .line 280
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzn()Lcom/google/android/gms/measurement/internal/zzha;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzha;->zzd:Lcom/google/android/gms/measurement/internal/zzhb;

    .line 285
    .line 286
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 287
    .line 288
    .line 289
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    const-string v5, "Logging Install Referrer campaign from gmscore with "

    .line 300
    .line 301
    const-string v6, "referrer API v2"

    .line 302
    .line 303
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    const-string v2, "_cis"

    .line 307
    .line 308
    invoke-virtual {v4, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 312
    .line 313
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzp()Lcom/google/android/gms/measurement/internal/zzjq;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    const-string v5, "auto"

    .line 318
    .line 319
    const-string v6, "_cmp"

    .line 320
    .line 321
    invoke-virtual {v2, v5, v6, v4, v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    goto :goto_153

    .line 325
    :cond_144
    :goto_144
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 326
    .line 327
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    const-string v2, "No referrer defined in Install Referrer response"

    .line 336
    .line 337
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    :cond_153
    :goto_153
    if-eqz v3, :cond_162

    .line 341
    .line 342
    invoke-static {}, La4/b;->b()La4/b;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 347
    .line 348
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v0, v1, v3}, La4/b;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 353
    .line 354
    .line 355
    :cond_162
    return-void
.end method
