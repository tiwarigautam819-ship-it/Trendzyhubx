###### Class com.google.android.gms.measurement.internal.zzkz (com.google.android.gms.measurement.internal.zzkz)
.class final Lcom/google/android/gms/measurement/internal/zzkz;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/measurement/internal/zzkz;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const-string v3, "gclid="

    .line 8
    .line 9
    const-string v4, "https://google.com/search?"

    .line 10
    .line 11
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 12
    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjq;->zzt()V

    .line 14
    .line 15
    .line 16
    :try_start_f
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 17
    .line 18
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f9;->a()V

    .line 23
    .line 24
    .line 25
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 26
    .line 27
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzct:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 32
    .line 33
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v8
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_28} :catch_4a

    .line 41
    const-string v9, "_cis"

    .line 42
    .line 43
    const-string v10, "Activity created with data \'referrer\' without required params"

    .line 44
    .line 45
    const-string v11, "utm_medium"

    .line 46
    .line 47
    const-string v12, "utm_source"

    .line 48
    .line 49
    const-string v13, "utm_campaign"

    .line 50
    .line 51
    const/4 v14, 0x0

    .line 52
    const-string v15, "gclid"

    .line 53
    .line 54
    if-eqz v8, :cond_39

    .line 55
    .line 56
    :goto_37
    move-object v4, v14

    .line 57
    goto :goto_9e

    .line 58
    :cond_39
    :try_start_39
    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-nez v8, :cond_8b

    .line 63
    .line 64
    if-eqz v6, :cond_4d

    .line 65
    .line 66
    const-string v8, "gbraid"

    .line 67
    .line 68
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-nez v8, :cond_8b

    .line 73
    .line 74
    goto :goto_4d

    .line 75
    :catch_4a
    move-exception v0

    .line 76
    goto/16 :goto_181

    .line 77
    .line 78
    :cond_4d
    :goto_4d
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-nez v8, :cond_8b

    .line 83
    .line 84
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-nez v8, :cond_8b

    .line 89
    .line 90
    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-nez v8, :cond_8b

    .line 95
    .line 96
    const-string v8, "utm_id"

    .line 97
    .line 98
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-nez v8, :cond_8b

    .line 103
    .line 104
    const-string v8, "dclid"

    .line 105
    .line 106
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-nez v8, :cond_8b

    .line 111
    .line 112
    const-string v8, "srsltid"

    .line 113
    .line 114
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-nez v8, :cond_8b

    .line 119
    .line 120
    const-string v8, "sfmc_id"

    .line 121
    .line 122
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-nez v8, :cond_8b

    .line 127
    .line 128
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzos;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_37

    .line 140
    :cond_8b
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/net/Uri;Z)Landroid/os/Bundle;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    if-eqz v4, :cond_9e

    .line 153
    .line 154
    const-string v5, "referrer"

    .line 155
    .line 156
    invoke-virtual {v4, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_9e} :catch_4a

    .line 157
    .line 158
    .line 159
    :cond_9e
    :goto_9e
    const-string v5, "_cmp"

    .line 160
    .line 161
    if-eqz p1, :cond_f1

    .line 162
    .line 163
    :try_start_a2
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 164
    .line 165
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f9;->a()V

    .line 170
    .line 171
    .line 172
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 173
    .line 174
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    move-object/from16 v8, p2

    .line 183
    .line 184
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/net/Uri;Z)Landroid/os/Bundle;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    if-eqz v6, :cond_f1

    .line 189
    .line 190
    const-string v7, "intent"

    .line 191
    .line 192
    invoke-virtual {v6, v9, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-nez v7, :cond_e5

    .line 200
    .line 201
    if-eqz v4, :cond_e5

    .line 202
    .line 203
    invoke-virtual {v4, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-eqz v7, :cond_e5

    .line 208
    .line 209
    const-string v7, "_cer"

    .line 210
    .line 211
    invoke-virtual {v4, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    new-instance v9, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v6, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_e5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 231
    .line 232
    invoke-virtual {v3, v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 233
    .line 234
    .line 235
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 236
    .line 237
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Lcom/google/android/gms/measurement/internal/zzu;

    .line 238
    .line 239
    invoke-virtual {v3, v0, v6}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 240
    .line 241
    .line 242
    :cond_f1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_f9

    .line 247
    .line 248
    goto/16 :goto_172

    .line 249
    .line 250
    :cond_f9
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 251
    .line 252
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    const-string v6, "Activity created with referrer"

    .line 261
    .line 262
    invoke-virtual {v3, v6, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 266
    .line 267
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzbq:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 272
    .line 273
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 274
    .line 275
    .line 276
    move-result v3
    :try_end_114
    .catch Ljava/lang/RuntimeException; {:try_start_a2 .. :try_end_114} :catch_4a

    .line 277
    const/4 v6, 0x1

    .line 278
    const-string v7, "_ldl"

    .line 279
    .line 280
    const-string v8, "auto"

    .line 281
    .line 282
    if-eqz v3, :cond_13f

    .line 283
    .line 284
    if-eqz v4, :cond_12a

    .line 285
    .line 286
    :try_start_11d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 287
    .line 288
    invoke-virtual {v2, v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 289
    .line 290
    .line 291
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 292
    .line 293
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zza:Lcom/google/android/gms/measurement/internal/zzu;

    .line 294
    .line 295
    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/measurement/internal/zzu;->zza(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 296
    .line 297
    .line 298
    goto :goto_139

    .line 299
    :cond_12a
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    const-string v3, "Referrer does not contain valid parameters"

    .line 310
    .line 311
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :goto_139
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 315
    .line 316
    invoke-virtual {v0, v8, v7, v14, v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_13f
    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_173

    .line 325
    .line 326
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-nez v0, :cond_167

    .line 331
    .line 332
    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-nez v0, :cond_167

    .line 337
    .line 338
    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-nez v0, :cond_167

    .line 343
    .line 344
    const-string v0, "utm_term"

    .line 345
    .line 346
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_167

    .line 351
    .line 352
    const-string v0, "utm_content"

    .line 353
    .line 354
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_173

    .line 359
    .line 360
    :cond_167
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_172

    .line 365
    .line 366
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 367
    .line 368
    invoke-virtual {v0, v8, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 369
    .line 370
    .line 371
    :cond_172
    :goto_172
    return-void

    .line 372
    :cond_173
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 373
    .line 374
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_180
    .catch Ljava/lang/RuntimeException; {:try_start_11d .. :try_end_180} :catch_4a

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :goto_181
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 387
    .line 388
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    .line 397
    .line 398
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "onActivityCreated"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_13} :catch_31
    .catchall {:try_start_0 .. :try_end_13} :catchall_2d

    .line 20
    if-nez v0, :cond_1f

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_35

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_35

    .line 43
    .line 44
    :goto_2b
    move-object v5, v1

    .line 45
    goto :goto_4e

    .line 46
    :catchall_2d
    move-exception v0

    .line 47
    move-object v3, p0

    .line 48
    goto/16 :goto_b7

    .line 49
    .line 50
    :catch_31
    move-exception v0

    .line 51
    move-object v3, p0

    .line 52
    goto/16 :goto_9e

    .line 53
    .line 54
    :cond_35
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_4c

    .line 59
    .line 60
    const-string v2, "com.android.vending.referral_url"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_4c

    .line 71
    .line 72
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_2b

    .line 77
    :cond_4c
    const/4 v1, 0x0

    .line 78
    goto :goto_2b

    .line 79
    :goto_4e
    if-eqz v5, :cond_56

    .line 80
    .line 81
    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_58

    .line 86
    .line 87
    :cond_56
    move-object v3, p0

    .line 88
    goto :goto_94

    .line 89
    :cond_58
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/content/Intent;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_67

    .line 99
    .line 100
    const-string v0, "gs"

    .line 101
    .line 102
    :goto_65
    move-object v6, v0

    .line 103
    goto :goto_6a

    .line 104
    :cond_67
    const-string v0, "auto"

    .line 105
    .line 106
    goto :goto_65

    .line 107
    :goto_6a
    const-string v0, "referrer"

    .line 108
    .line 109
    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    if-nez p2, :cond_75

    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    :goto_73
    move v4, v0

    .line 117
    goto :goto_77

    .line 118
    :cond_75
    const/4 v0, 0x0

    .line 119
    goto :goto_73

    .line 120
    :goto_77
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzlc;
    :try_end_7f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_7f} :catch_31
    .catchall {:try_start_1f .. :try_end_7f} :catchall_2d

    .line 127
    .line 128
    move-object v3, p0

    .line 129
    :try_start_80
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzlc;-><init>(Lcom/google/android/gms/measurement/internal/zzkz;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V
    :try_end_86
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_86} :catch_92
    .catchall {:try_start_80 .. :try_end_86} :catchall_90

    .line 133
    .line 134
    .line 135
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :catchall_90
    move-exception v0

    .line 146
    goto :goto_b7

    .line 147
    :catch_92
    move-exception v0

    .line 148
    goto :goto_9e

    .line 149
    :goto_94
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :goto_9e
    :try_start_9e
    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const-string v2, "Throwable caught in onActivityCreated"

    .line 170
    .line 171
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ad
    .catchall {:try_start_9e .. :try_end_ad} :catchall_90

    .line 172
    .line 173
    .line 174
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :goto_b7
    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 191
    .line 192
    .line 193
    throw v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zza(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zzb(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznb;->zzb()Lb4/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lb4/b;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznb;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Lcom/google/android/gms/measurement/internal/zznd;

    .line 34
    .line 35
    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zznd;-><init>(Lcom/google/android/gms/measurement/internal/zznb;J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzp()Lcom/google/android/gms/measurement/internal/zznb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznb;->zzb()Lb4/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lb4/b;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznb;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzne;

    .line 25
    .line 26
    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzne;-><init>(Lcom/google/android/gms/measurement/internal/zznb;J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlj;->zzc(Landroid/app/Activity;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Lcom/google/android/gms/measurement/internal/zzjq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzn()Lcom/google/android/gms/measurement/internal/zzlj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzlj;->zzb(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 1
    return-void
.end method
