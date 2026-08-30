###### Class com.google.android.gms.internal.measurement.p (com.google.android.gms.internal.measurement.p)
.class public final Lcom/google/android/gms/internal/measurement/p;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/n;
.implements Ljava/lang/Iterable;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_8

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "StringValue cannot be null."

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/n;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final c()Ljava/lang/Double;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_f

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    :try_start_f
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_13} :catch_14

    .line 20
    return-object v0

    .line 21
    :catch_14
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final d(Ljava/lang/String;Lcom/google/firebase/messaging/y;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;
    .registers 29

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v4, "charAt"

    .line 4
    .line 5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v5

    .line 9
    const-string v6, "trim"

    .line 10
    .line 11
    const-string v7, "concat"

    .line 12
    .line 13
    const-string v8, "toLocaleUpperCase"

    .line 14
    .line 15
    const-string v9, "toString"

    .line 16
    .line 17
    const-string v10, "toLocaleLowerCase"

    .line 18
    .line 19
    const-string v11, "toLowerCase"

    .line 20
    .line 21
    const-string v12, "substring"

    .line 22
    .line 23
    const-string v13, "split"

    .line 24
    .line 25
    const-string v14, "slice"

    .line 26
    .line 27
    const-string v15, "search"

    .line 28
    .line 29
    move/from16 v16, v5

    .line 30
    .line 31
    const-string v5, "replace"

    .line 32
    .line 33
    const-string v2, "match"

    .line 34
    .line 35
    const-string v3, "lastIndexOf"

    .line 36
    .line 37
    const-string v0, "indexOf"

    .line 38
    .line 39
    move-object/from16 v17, v4

    .line 40
    .line 41
    const-string v4, "hasOwnProperty"

    .line 42
    .line 43
    move-object/from16 v18, v6

    .line 44
    .line 45
    const-string v6, "toUpperCase"

    .line 46
    .line 47
    if-nez v16, :cond_a1

    .line 48
    .line 49
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v16

    .line 53
    if-nez v16, :cond_a1

    .line 54
    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v16

    .line 59
    if-nez v16, :cond_a1

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v16

    .line 65
    if-nez v16, :cond_a1

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v16

    .line 71
    if-nez v16, :cond_a1

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v16

    .line 77
    if-nez v16, :cond_a1

    .line 78
    .line 79
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v16

    .line 83
    if-nez v16, :cond_a1

    .line 84
    .line 85
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v16

    .line 89
    if-nez v16, :cond_a1

    .line 90
    .line 91
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v16

    .line 95
    if-nez v16, :cond_a1

    .line 96
    .line 97
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v16

    .line 101
    if-nez v16, :cond_a1

    .line 102
    .line 103
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v16

    .line 107
    if-nez v16, :cond_a1

    .line 108
    .line 109
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v16

    .line 113
    if-nez v16, :cond_a1

    .line 114
    .line 115
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v16

    .line 119
    if-nez v16, :cond_a1

    .line 120
    .line 121
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v16

    .line 125
    if-nez v16, :cond_a1

    .line 126
    .line 127
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v16

    .line 131
    if-nez v16, :cond_a1

    .line 132
    .line 133
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v16

    .line 137
    if-nez v16, :cond_a1

    .line 138
    .line 139
    move-object/from16 v16, v4

    .line 140
    .line 141
    move-object/from16 v4, v18

    .line 142
    .line 143
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v18

    .line 147
    if-eqz v18, :cond_95

    .line 148
    .line 149
    goto :goto_a5

    .line 150
    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string v2, " is not a String function"

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_a1
    move-object/from16 v16, v4

    .line 163
    .line 164
    move-object/from16 v4, v18

    .line 165
    .line 166
    :goto_a5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 167
    .line 168
    .line 169
    move-result v18

    .line 170
    move-object/from16 v19, v9

    .line 171
    .line 172
    const/16 v20, -0x1

    .line 173
    .line 174
    sparse-switch v18, :sswitch_data_674

    .line 175
    .line 176
    .line 177
    :goto_b0
    move-object/from16 v9, v16

    .line 178
    .line 179
    move-object/from16 v4, v17

    .line 180
    .line 181
    :goto_b4
    move-object/from16 v7, v19

    .line 182
    .line 183
    goto/16 :goto_17e

    .line 184
    .line 185
    :sswitch_b8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_bf

    .line 190
    .line 191
    goto :goto_b0

    .line 192
    :cond_bf
    const/16 v20, 0x10

    .line 193
    .line 194
    goto :goto_b0

    .line 195
    :sswitch_c2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_c9

    .line 200
    .line 201
    goto :goto_b0

    .line 202
    :cond_c9
    const/16 v20, 0xf

    .line 203
    .line 204
    goto :goto_b0

    .line 205
    :sswitch_cc
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_d3

    .line 210
    .line 211
    goto :goto_b0

    .line 212
    :cond_d3
    const/16 v20, 0xe

    .line 213
    .line 214
    goto :goto_b0

    .line 215
    :sswitch_d6
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_dd

    .line 220
    .line 221
    goto :goto_b0

    .line 222
    :cond_dd
    const/16 v20, 0xd

    .line 223
    .line 224
    goto :goto_b0

    .line 225
    :sswitch_e0
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_e7

    .line 230
    .line 231
    goto :goto_b0

    .line 232
    :cond_e7
    const/16 v20, 0xc

    .line 233
    .line 234
    goto :goto_b0

    .line 235
    :sswitch_ea
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-nez v1, :cond_f1

    .line 240
    .line 241
    goto :goto_b0

    .line 242
    :cond_f1
    const/16 v20, 0xb

    .line 243
    .line 244
    goto :goto_b0

    .line 245
    :sswitch_f4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-nez v1, :cond_fb

    .line 250
    .line 251
    goto :goto_b0

    .line 252
    :cond_fb
    const/16 v20, 0xa

    .line 253
    .line 254
    goto :goto_b0

    .line 255
    :sswitch_fe
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-nez v1, :cond_105

    .line 260
    .line 261
    goto :goto_b0

    .line 262
    :cond_105
    const/16 v20, 0x9

    .line 263
    .line 264
    goto :goto_b0

    .line 265
    :sswitch_108
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_10f

    .line 270
    .line 271
    goto :goto_b0

    .line 272
    :cond_10f
    const/16 v20, 0x8

    .line 273
    .line 274
    goto :goto_b0

    .line 275
    :sswitch_112
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-nez v1, :cond_119

    .line 280
    .line 281
    goto :goto_b0

    .line 282
    :cond_119
    const/16 v20, 0x7

    .line 283
    .line 284
    goto :goto_b0

    .line 285
    :sswitch_11c
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-nez v1, :cond_123

    .line 290
    .line 291
    goto :goto_b0

    .line 292
    :cond_123
    const/16 v20, 0x6

    .line 293
    .line 294
    goto :goto_b0

    .line 295
    :sswitch_126
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-nez v1, :cond_12d

    .line 300
    .line 301
    goto :goto_b0

    .line 302
    :cond_12d
    const/16 v20, 0x5

    .line 303
    .line 304
    goto :goto_b0

    .line 305
    :sswitch_130
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-nez v1, :cond_138

    .line 310
    .line 311
    goto/16 :goto_b0

    .line 312
    .line 313
    :cond_138
    const/16 v20, 0x4

    .line 314
    .line 315
    goto/16 :goto_b0

    .line 316
    .line 317
    :sswitch_13c
    move-object/from16 v4, v17

    .line 318
    .line 319
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-nez v1, :cond_145

    .line 324
    .line 325
    goto :goto_154

    .line 326
    :cond_145
    move-object/from16 v9, v16

    .line 327
    .line 328
    move-object/from16 v7, v19

    .line 329
    .line 330
    const/16 v20, 0x3

    .line 331
    .line 332
    goto :goto_17e

    .line 333
    :sswitch_14c
    move-object/from16 v4, v17

    .line 334
    .line 335
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-nez v1, :cond_158

    .line 340
    .line 341
    :goto_154
    move-object/from16 v9, v16

    .line 342
    .line 343
    goto/16 :goto_b4

    .line 344
    .line 345
    :cond_158
    move-object/from16 v9, v16

    .line 346
    .line 347
    move-object/from16 v7, v19

    .line 348
    .line 349
    const/16 v20, 0x2

    .line 350
    .line 351
    goto :goto_17e

    .line 352
    :sswitch_15f
    move-object/from16 v4, v17

    .line 353
    .line 354
    move-object/from16 v7, v19

    .line 355
    .line 356
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    move-object/from16 v9, v16

    .line 361
    .line 362
    if-nez v1, :cond_16c

    .line 363
    .line 364
    goto :goto_17e

    .line 365
    :cond_16c
    const/16 v20, 0x1

    .line 366
    .line 367
    goto :goto_17e

    .line 368
    :sswitch_16f
    move-object/from16 v9, v16

    .line 369
    .line 370
    move-object/from16 v4, v17

    .line 371
    .line 372
    move-object/from16 v7, v19

    .line 373
    .line 374
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-nez v1, :cond_17c

    .line 379
    .line 380
    goto :goto_17e

    .line 381
    :cond_17c
    const/16 v20, 0x0

    .line 382
    .line 383
    :goto_17e
    const-string v1, "undefined"

    .line 384
    .line 385
    move-object/from16 v18, v9

    .line 386
    .line 387
    move-object/from16 v16, v10

    .line 388
    .line 389
    const-wide/16 v23, 0x0

    .line 390
    .line 391
    move-object/from16 v9, p0

    .line 392
    .line 393
    iget-object v10, v9, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 394
    .line 395
    packed-switch v20, :pswitch_data_6ba

    .line 396
    .line 397
    .line 398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 399
    .line 400
    const-string v1, "Command not supported"

    .line 401
    .line 402
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v0

    .line 406
    :pswitch_195
    move-object/from16 v7, p3

    .line 407
    .line 408
    const/4 v2, 0x2

    .line 409
    invoke-static {v0, v2, v7}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-gtz v0, :cond_1a4

    .line 417
    .line 418
    move-object/from16 v6, p2

    .line 419
    .line 420
    goto :goto_1b9

    .line 421
    :cond_1a4
    const/4 v0, 0x0

    .line 422
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 427
    .line 428
    move-object/from16 v6, p2

    .line 429
    .line 430
    iget-object v1, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 433
    .line 434
    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    :goto_1b9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    const/4 v2, 0x2

    .line 447
    if-ge v0, v2, :cond_1c3

    .line 448
    .line 449
    move-wide/from16 v2, v23

    .line 450
    .line 451
    goto :goto_1da

    .line 452
    :cond_1c3
    const/4 v0, 0x1

    .line 453
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 458
    .line 459
    iget-object v2, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 462
    .line 463
    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 472
    .line 473
    .line 474
    move-result-wide v2

    .line 475
    :goto_1da
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 476
    .line 477
    .line 478
    move-result-wide v2

    .line 479
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 480
    .line 481
    double-to-int v2, v2

    .line 482
    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    int-to-double v1, v1

    .line 487
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 492
    .line 493
    .line 494
    return-object v0

    .line 495
    :pswitch_1ee
    move-object/from16 v6, p2

    .line 496
    .line 497
    move-object/from16 v7, p3

    .line 498
    .line 499
    const/4 v2, 0x2

    .line 500
    invoke-static {v5, v2, v7}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    sget-object v2, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 508
    .line 509
    if-nez v0, :cond_226

    .line 510
    .line 511
    const/4 v0, 0x0

    .line 512
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 517
    .line 518
    iget-object v0, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 521
    .line 522
    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    const/4 v3, 0x1

    .line 535
    if-le v0, v3, :cond_226

    .line 536
    .line 537
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 542
    .line 543
    iget-object v2, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 544
    .line 545
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 546
    .line 547
    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    :cond_226
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 552
    .line 553
    .line 554
    move-result v0

    .line 555
    if-gez v0, :cond_22e

    .line 556
    .line 557
    goto/16 :goto_5a0

    .line 558
    .line 559
    :cond_22e
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/j;

    .line 560
    .line 561
    if-eqz v3, :cond_25a

    .line 562
    .line 563
    check-cast v2, Lcom/google/android/gms/internal/measurement/j;

    .line 564
    .line 565
    new-instance v3, Lcom/google/android/gms/internal/measurement/p;

    .line 566
    .line 567
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    new-instance v4, Lcom/google/android/gms/internal/measurement/g;

    .line 571
    .line 572
    int-to-double v7, v0

    .line 573
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 578
    .line 579
    .line 580
    const/4 v5, 0x3

    .line 581
    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/n;

    .line 582
    .line 583
    const/4 v7, 0x0

    .line 584
    aput-object v3, v5, v7

    .line 585
    .line 586
    const/16 v22, 0x1

    .line 587
    .line 588
    aput-object v4, v5, v22

    .line 589
    .line 590
    const/16 v21, 0x2

    .line 591
    .line 592
    aput-object v9, v5, v21

    .line 593
    .line 594
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/internal/measurement/j;->e(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    goto :goto_25b

    .line 603
    :cond_25a
    const/4 v7, 0x0

    .line 604
    :goto_25b
    new-instance v3, Lcom/google/android/gms/internal/measurement/p;

    .line 605
    .line 606
    invoke-virtual {v10, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v4

    .line 610
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    add-int/2addr v1, v0

    .line 619
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    return-object v3

    .line 645
    :pswitch_284
    move-object/from16 v6, p2

    .line 646
    .line 647
    move-object/from16 v7, p3

    .line 648
    .line 649
    const/4 v2, 0x2

    .line 650
    invoke-static {v12, v2, v7}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    if-nez v0, :cond_2af

    .line 658
    .line 659
    const/4 v0, 0x0

    .line 660
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 665
    .line 666
    iget-object v0, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 669
    .line 670
    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 679
    .line 680
    .line 681
    move-result-wide v0

    .line 682
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 683
    .line 684
    .line 685
    move-result-wide v0

    .line 686
    double-to-int v0, v0

    .line 687
    goto :goto_2b0

    .line 688
    :cond_2af
    const/4 v0, 0x0

    .line 689
    :goto_2b0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    const/4 v3, 0x1

    .line 694
    if-le v1, v3, :cond_2d4

    .line 695
    .line 696
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 701
    .line 702
    iget-object v2, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 703
    .line 704
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 705
    .line 706
    invoke-virtual {v2, v6, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 707
    .line 708
    .line 709
    move-result-object v1

    .line 710
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 715
    .line 716
    .line 717
    move-result-wide v1

    .line 718
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 719
    .line 720
    .line 721
    move-result-wide v1

    .line 722
    double-to-int v1, v1

    .line 723
    :goto_2d2
    const/4 v7, 0x0

    .line 724
    goto :goto_2d9

    .line 725
    :cond_2d4
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 726
    .line 727
    .line 728
    move-result v1

    .line 729
    goto :goto_2d2

    .line 730
    :goto_2d9
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    .line 731
    .line 732
    .line 733
    move-result v0

    .line 734
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 735
    .line 736
    .line 737
    move-result v2

    .line 738
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    .line 743
    .line 744
    .line 745
    move-result v1

    .line 746
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 747
    .line 748
    .line 749
    move-result v2

    .line 750
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    new-instance v2, Lcom/google/android/gms/internal/measurement/p;

    .line 755
    .line 756
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 757
    .line 758
    .line 759
    move-result v3

    .line 760
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 761
    .line 762
    .line 763
    move-result v0

    .line 764
    invoke-virtual {v10, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    return-object v2

    .line 772
    :pswitch_303
    move-object/from16 v6, p2

    .line 773
    .line 774
    move-object/from16 v7, p3

    .line 775
    .line 776
    const/4 v2, 0x2

    .line 777
    invoke-static {v13, v2, v7}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 781
    .line 782
    .line 783
    move-result v0

    .line 784
    if-nez v0, :cond_31d

    .line 785
    .line 786
    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    .line 787
    .line 788
    const/4 v3, 0x1

    .line 789
    new-array v1, v3, [Lcom/google/android/gms/internal/measurement/n;

    .line 790
    .line 791
    const/4 v2, 0x0

    .line 792
    aput-object v9, v1, v2

    .line 793
    .line 794
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/e;-><init>([Lcom/google/android/gms/internal/measurement/n;)V

    .line 795
    .line 796
    .line 797
    return-object v0

    .line 798
    :cond_31d
    const/4 v2, 0x0

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    .line 800
    .line 801
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 805
    .line 806
    .line 807
    move-result v1

    .line 808
    if-eqz v1, :cond_32e

    .line 809
    .line 810
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    .line 812
    .line 813
    goto/16 :goto_3be

    .line 814
    .line 815
    :cond_32e
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v1

    .line 819
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 820
    .line 821
    iget-object v2, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 822
    .line 823
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 824
    .line 825
    invoke-virtual {v2, v6, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 834
    .line 835
    .line 836
    move-result v2

    .line 837
    const/4 v3, 0x1

    .line 838
    if-le v2, v3, :cond_369

    .line 839
    .line 840
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v2

    .line 844
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 845
    .line 846
    iget-object v3, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 847
    .line 848
    check-cast v3, Lcom/google/android/gms/internal/measurement/y4;

    .line 849
    .line 850
    invoke-virtual {v3, v6, v2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 851
    .line 852
    .line 853
    move-result-object v2

    .line 854
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 859
    .line 860
    .line 861
    move-result-wide v2

    .line 862
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    .line 863
    .line 864
    .line 865
    move-result v2

    .line 866
    int-to-long v2, v2

    .line 867
    const-wide v4, 0xffffffffL

    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    and-long/2addr v2, v4

    .line 873
    goto :goto_36c

    .line 874
    :cond_369
    const-wide/32 v2, 0x7fffffff

    .line 875
    .line 876
    .line 877
    :goto_36c
    const-wide/16 v4, 0x0

    .line 878
    .line 879
    cmp-long v4, v2, v4

    .line 880
    .line 881
    if-nez v4, :cond_378

    .line 882
    .line 883
    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    .line 884
    .line 885
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    .line 886
    .line 887
    .line 888
    return-object v0

    .line 889
    :cond_378
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v4

    .line 893
    long-to-int v5, v2

    .line 894
    const/16 v22, 0x1

    .line 895
    .line 896
    add-int/lit8 v5, v5, 0x1

    .line 897
    .line 898
    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v4

    .line 902
    array-length v5, v4

    .line 903
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 904
    .line 905
    .line 906
    move-result v1

    .line 907
    if-eqz v1, :cond_3a6

    .line 908
    .line 909
    array-length v1, v4

    .line 910
    if-lez v1, :cond_3a6

    .line 911
    .line 912
    const/16 v17, 0x0

    .line 913
    .line 914
    aget-object v1, v4, v17

    .line 915
    .line 916
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 917
    .line 918
    .line 919
    move-result v1

    .line 920
    array-length v6, v4

    .line 921
    add-int/lit8 v6, v6, -0x1

    .line 922
    .line 923
    aget-object v6, v4, v6

    .line 924
    .line 925
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 926
    .line 927
    .line 928
    move-result v6

    .line 929
    if-eqz v6, :cond_3a7

    .line 930
    .line 931
    array-length v5, v4

    .line 932
    add-int/lit8 v5, v5, -0x1

    .line 933
    .line 934
    goto :goto_3a7

    .line 935
    :cond_3a6
    const/4 v1, 0x0

    .line 936
    :cond_3a7
    :goto_3a7
    array-length v6, v4

    .line 937
    int-to-long v6, v6

    .line 938
    cmp-long v2, v6, v2

    .line 939
    .line 940
    if-lez v2, :cond_3af

    .line 941
    .line 942
    add-int/lit8 v5, v5, -0x1

    .line 943
    .line 944
    :cond_3af
    :goto_3af
    if-ge v1, v5, :cond_3be

    .line 945
    .line 946
    new-instance v2, Lcom/google/android/gms/internal/measurement/p;

    .line 947
    .line 948
    aget-object v3, v4, v1

    .line 949
    .line 950
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    .line 955
    .line 956
    add-int/lit8 v1, v1, 0x1

    .line 957
    .line 958
    goto :goto_3af

    .line 959
    :cond_3be
    :goto_3be
    new-instance v1, Lcom/google/android/gms/internal/measurement/e;

    .line 960
    .line 961
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/e;-><init>(Ljava/util/List;)V

    .line 962
    .line 963
    .line 964
    return-object v1

    .line 965
    :pswitch_3c4
    move-object/from16 v6, p2

    .line 966
    .line 967
    move-object/from16 v7, p3

    .line 968
    .line 969
    const/4 v2, 0x2

    .line 970
    invoke-static {v14, v2, v7}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 974
    .line 975
    .line 976
    move-result v0

    .line 977
    if-nez v0, :cond_3ea

    .line 978
    .line 979
    const/4 v0, 0x0

    .line 980
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 981
    .line 982
    .line 983
    move-result-object v1

    .line 984
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 985
    .line 986
    iget-object v0, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 987
    .line 988
    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 989
    .line 990
    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 999
    .line 1000
    .line 1001
    move-result-wide v0

    .line 1002
    goto :goto_3ec

    .line 1003
    :cond_3ea
    move-wide/from16 v0, v23

    .line 1004
    .line 1005
    :goto_3ec
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 1006
    .line 1007
    .line 1008
    move-result-wide v0

    .line 1009
    cmpg-double v2, v0, v23

    .line 1010
    .line 1011
    if-gez v2, :cond_401

    .line 1012
    .line 1013
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1014
    .line 1015
    .line 1016
    move-result v2

    .line 1017
    int-to-double v2, v2

    .line 1018
    add-double/2addr v2, v0

    .line 1019
    move-wide/from16 v0, v23

    .line 1020
    .line 1021
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    .line 1022
    .line 1023
    .line 1024
    move-result-wide v2

    .line 1025
    goto :goto_40a

    .line 1026
    :cond_401
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1027
    .line 1028
    .line 1029
    move-result v2

    .line 1030
    int-to-double v2, v2

    .line 1031
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 1032
    .line 1033
    .line 1034
    move-result-wide v2

    .line 1035
    :goto_40a
    double-to-int v0, v2

    .line 1036
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1037
    .line 1038
    .line 1039
    move-result v1

    .line 1040
    const/4 v3, 0x1

    .line 1041
    if-le v1, v3, :cond_429

    .line 1042
    .line 1043
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v1

    .line 1047
    check-cast v1, Lcom/google/android/gms/internal/measurement/n;

    .line 1048
    .line 1049
    iget-object v2, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1050
    .line 1051
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 1052
    .line 1053
    invoke-virtual {v2, v6, v1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v1

    .line 1057
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 1062
    .line 1063
    .line 1064
    move-result-wide v1

    .line 1065
    goto :goto_42e

    .line 1066
    :cond_429
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1067
    .line 1068
    .line 1069
    move-result v1

    .line 1070
    int-to-double v1, v1

    .line 1071
    :goto_42e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 1072
    .line 1073
    .line 1074
    move-result-wide v1

    .line 1075
    const-wide/16 v3, 0x0

    .line 1076
    .line 1077
    cmpg-double v5, v1, v3

    .line 1078
    .line 1079
    if-gez v5, :cond_443

    .line 1080
    .line 1081
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1082
    .line 1083
    .line 1084
    move-result v5

    .line 1085
    int-to-double v5, v5

    .line 1086
    add-double/2addr v5, v1

    .line 1087
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 1088
    .line 1089
    .line 1090
    move-result-wide v1

    .line 1091
    goto :goto_44c

    .line 1092
    :cond_443
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1093
    .line 1094
    .line 1095
    move-result v3

    .line 1096
    int-to-double v3, v3

    .line 1097
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 1098
    .line 1099
    .line 1100
    move-result-wide v1

    .line 1101
    :goto_44c
    double-to-int v1, v1

    .line 1102
    sub-int/2addr v1, v0

    .line 1103
    const/4 v3, 0x0

    .line 1104
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 1105
    .line 1106
    .line 1107
    move-result v1

    .line 1108
    add-int/2addr v1, v0

    .line 1109
    new-instance v2, Lcom/google/android/gms/internal/measurement/p;

    .line 1110
    .line 1111
    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    return-object v2

    .line 1119
    :pswitch_45e
    move-object/from16 v6, p2

    .line 1120
    .line 1121
    move-object/from16 v7, p3

    .line 1122
    .line 1123
    const/4 v0, 0x1

    .line 1124
    const/4 v3, 0x0

    .line 1125
    invoke-static {v2, v0, v7}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1129
    .line 1130
    .line 1131
    move-result v0

    .line 1132
    if-gtz v0, :cond_470

    .line 1133
    .line 1134
    const-string v0, ""

    .line 1135
    .line 1136
    goto :goto_482

    .line 1137
    :cond_470
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v0

    .line 1141
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1142
    .line 1143
    iget-object v1, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1144
    .line 1145
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 1146
    .line 1147
    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v0

    .line 1155
    :goto_482
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v0

    .line 1159
    invoke-virtual {v0, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v0

    .line 1163
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 1164
    .line 1165
    .line 1166
    move-result v1

    .line 1167
    if-eqz v1, :cond_4a5

    .line 1168
    .line 1169
    new-instance v1, Lcom/google/android/gms/internal/measurement/e;

    .line 1170
    .line 1171
    new-instance v2, Lcom/google/android/gms/internal/measurement/p;

    .line 1172
    .line 1173
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 1178
    .line 1179
    .line 1180
    const/4 v3, 0x1

    .line 1181
    new-array v0, v3, [Lcom/google/android/gms/internal/measurement/n;

    .line 1182
    .line 1183
    const/4 v4, 0x0

    .line 1184
    aput-object v2, v0, v4

    .line 1185
    .line 1186
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/e;-><init>([Lcom/google/android/gms/internal/measurement/n;)V

    .line 1187
    .line 1188
    .line 1189
    return-object v1

    .line 1190
    :cond_4a5
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->o:Lcom/google/android/gms/internal/measurement/l;

    .line 1191
    .line 1192
    return-object v0

    .line 1193
    :pswitch_4a8
    move-object/from16 v7, p3

    .line 1194
    .line 1195
    const/4 v4, 0x0

    .line 1196
    invoke-static {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 1197
    .line 1198
    .line 1199
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1200
    .line 1201
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v1

    .line 1205
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    return-object v0

    .line 1209
    :pswitch_4b8
    move-object/from16 v7, p3

    .line 1210
    .line 1211
    const/4 v4, 0x0

    .line 1212
    invoke-static {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 1213
    .line 1214
    .line 1215
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1216
    .line 1217
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1218
    .line 1219
    invoke-virtual {v10, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v1

    .line 1223
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    return-object v0

    .line 1227
    :pswitch_4ca
    move-object/from16 v6, p2

    .line 1228
    .line 1229
    move-object/from16 v7, p3

    .line 1230
    .line 1231
    const/4 v2, 0x2

    .line 1232
    const/4 v4, 0x0

    .line 1233
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1237
    .line 1238
    .line 1239
    move-result v0

    .line 1240
    if-gtz v0, :cond_4da

    .line 1241
    .line 1242
    goto :goto_4ec

    .line 1243
    :cond_4da
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0

    .line 1247
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1248
    .line 1249
    iget-object v1, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1250
    .line 1251
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 1252
    .line 1253
    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v1

    .line 1261
    :goto_4ec
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1262
    .line 1263
    .line 1264
    move-result v0

    .line 1265
    const/4 v2, 0x2

    .line 1266
    if-ge v0, v2, :cond_4f6

    .line 1267
    .line 1268
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1269
    .line 1270
    goto :goto_50d

    .line 1271
    :cond_4f6
    const/4 v3, 0x1

    .line 1272
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1277
    .line 1278
    iget-object v2, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1279
    .line 1280
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 1281
    .line 1282
    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v0

    .line 1286
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1291
    .line 1292
    .line 1293
    move-result-wide v2

    .line 1294
    :goto_50d
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 1295
    .line 1296
    .line 1297
    move-result v0

    .line 1298
    if-eqz v0, :cond_516

    .line 1299
    .line 1300
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 1301
    .line 1302
    goto :goto_51a

    .line 1303
    :cond_516
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 1304
    .line 1305
    .line 1306
    move-result-wide v2

    .line 1307
    :goto_51a
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 1308
    .line 1309
    double-to-int v2, v2

    .line 1310
    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 1311
    .line 1312
    .line 1313
    move-result v1

    .line 1314
    int-to-double v1, v1

    .line 1315
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v1

    .line 1319
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1320
    .line 1321
    .line 1322
    return-object v0

    .line 1323
    :pswitch_52a
    move-object/from16 v7, p3

    .line 1324
    .line 1325
    const/4 v0, 0x0

    .line 1326
    invoke-static {v0, v8, v7}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 1327
    .line 1328
    .line 1329
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1330
    .line 1331
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v1

    .line 1335
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 1336
    .line 1337
    .line 1338
    return-object v0

    .line 1339
    :pswitch_53a
    move-object/from16 v6, p2

    .line 1340
    .line 1341
    move-object/from16 v7, p3

    .line 1342
    .line 1343
    const/4 v0, 0x0

    .line 1344
    const/4 v3, 0x1

    .line 1345
    invoke-static {v15, v3, v7}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1349
    .line 1350
    .line 1351
    move-result v2

    .line 1352
    if-nez v2, :cond_55b

    .line 1353
    .line 1354
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v0

    .line 1358
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1359
    .line 1360
    iget-object v1, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1361
    .line 1362
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 1363
    .line 1364
    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v0

    .line 1368
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v1

    .line 1372
    :cond_55b
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v0

    .line 1376
    invoke-virtual {v0, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v0

    .line 1380
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 1381
    .line 1382
    .line 1383
    move-result v1

    .line 1384
    if-eqz v1, :cond_578

    .line 1385
    .line 1386
    new-instance v1, Lcom/google/android/gms/internal/measurement/g;

    .line 1387
    .line 1388
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 1389
    .line 1390
    .line 1391
    move-result v0

    .line 1392
    int-to-double v2, v0

    .line 1393
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v0

    .line 1397
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1398
    .line 1399
    .line 1400
    return-object v1

    .line 1401
    :cond_578
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 1402
    .line 1403
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 1404
    .line 1405
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v1

    .line 1409
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 1410
    .line 1411
    .line 1412
    return-object v0

    .line 1413
    :pswitch_584
    move-object/from16 v7, p3

    .line 1414
    .line 1415
    const/4 v0, 0x0

    .line 1416
    invoke-static {v0, v11, v7}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 1417
    .line 1418
    .line 1419
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1420
    .line 1421
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1422
    .line 1423
    invoke-virtual {v10, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v1

    .line 1427
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 1428
    .line 1429
    .line 1430
    return-object v0

    .line 1431
    :pswitch_596
    move-object/from16 v6, p2

    .line 1432
    .line 1433
    move-object/from16 v7, p3

    .line 1434
    .line 1435
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1436
    .line 1437
    .line 1438
    move-result v0

    .line 1439
    if-eqz v0, :cond_5a1

    .line 1440
    .line 1441
    :goto_5a0
    return-object v9

    .line 1442
    :cond_5a1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1443
    .line 1444
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1445
    .line 1446
    .line 1447
    const/4 v1, 0x0

    .line 1448
    :goto_5a7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1449
    .line 1450
    .line 1451
    move-result v2

    .line 1452
    if-ge v1, v2, :cond_5c5

    .line 1453
    .line 1454
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v2

    .line 1458
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 1459
    .line 1460
    iget-object v3, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1461
    .line 1462
    check-cast v3, Lcom/google/android/gms/internal/measurement/y4;

    .line 1463
    .line 1464
    invoke-virtual {v3, v6, v2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v2

    .line 1468
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v2

    .line 1472
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    .line 1475
    add-int/lit8 v1, v1, 0x1

    .line 1476
    .line 1477
    goto :goto_5a7

    .line 1478
    :cond_5c5
    new-instance v1, Lcom/google/android/gms/internal/measurement/p;

    .line 1479
    .line 1480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v0

    .line 1484
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    return-object v1

    .line 1488
    :pswitch_5cf
    move-object/from16 v6, p2

    .line 1489
    .line 1490
    move-object/from16 v7, p3

    .line 1491
    .line 1492
    const/4 v3, 0x1

    .line 1493
    invoke-static {v4, v3, v7}, Lcom/google/android/gms/internal/measurement/p4;->q(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1497
    .line 1498
    .line 1499
    move-result v0

    .line 1500
    if-nez v0, :cond_5fa

    .line 1501
    .line 1502
    const/4 v0, 0x0

    .line 1503
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v0

    .line 1507
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1508
    .line 1509
    iget-object v1, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1510
    .line 1511
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 1512
    .line 1513
    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v0

    .line 1517
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v0

    .line 1521
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1522
    .line 1523
    .line 1524
    move-result-wide v0

    .line 1525
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/p4;->a(D)D

    .line 1526
    .line 1527
    .line 1528
    move-result-wide v0

    .line 1529
    double-to-int v0, v0

    .line 1530
    goto :goto_5fb

    .line 1531
    :cond_5fa
    const/4 v0, 0x0

    .line 1532
    :goto_5fb
    if-ltz v0, :cond_612

    .line 1533
    .line 1534
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1535
    .line 1536
    .line 1537
    move-result v1

    .line 1538
    if-lt v0, v1, :cond_604

    .line 1539
    .line 1540
    goto :goto_612

    .line 1541
    :cond_604
    new-instance v1, Lcom/google/android/gms/internal/measurement/p;

    .line 1542
    .line 1543
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    .line 1544
    .line 1545
    .line 1546
    move-result v0

    .line 1547
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v0

    .line 1551
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 1552
    .line 1553
    .line 1554
    return-object v1

    .line 1555
    :cond_612
    :goto_612
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->u:Lcom/google/android/gms/internal/measurement/p;

    .line 1556
    .line 1557
    return-object v0

    .line 1558
    :pswitch_615
    move-object/from16 v7, p3

    .line 1559
    .line 1560
    move-object/from16 v0, v16

    .line 1561
    .line 1562
    const/4 v2, 0x0

    .line 1563
    invoke-static {v2, v0, v7}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 1564
    .line 1565
    .line 1566
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 1567
    .line 1568
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v1

    .line 1572
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 1573
    .line 1574
    .line 1575
    return-object v0

    .line 1576
    :pswitch_627
    move-object/from16 v3, p3

    .line 1577
    .line 1578
    const/4 v2, 0x0

    .line 1579
    invoke-static {v2, v7, v3}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 1580
    .line 1581
    .line 1582
    return-object v9

    .line 1583
    :pswitch_62e
    move-object/from16 v6, p2

    .line 1584
    .line 1585
    move-object/from16 v3, p3

    .line 1586
    .line 1587
    move-object/from16 v0, v18

    .line 1588
    .line 1589
    const/4 v1, 0x1

    .line 1590
    const/4 v2, 0x0

    .line 1591
    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 1592
    .line 1593
    .line 1594
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v0

    .line 1598
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 1599
    .line 1600
    iget-object v1, v6, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 1601
    .line 1602
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 1603
    .line 1604
    invoke-virtual {v1, v6, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v0

    .line 1608
    const-string v1, "length"

    .line 1609
    .line 1610
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v2

    .line 1614
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1615
    .line 1616
    .line 1617
    move-result v1

    .line 1618
    if-eqz v1, :cond_654

    .line 1619
    .line 1620
    goto :goto_66d

    .line 1621
    :cond_654
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v0

    .line 1625
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1626
    .line 1627
    .line 1628
    move-result-wide v0

    .line 1629
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 1630
    .line 1631
    .line 1632
    move-result-wide v2

    .line 1633
    cmpl-double v2, v0, v2

    .line 1634
    .line 1635
    if-nez v2, :cond_670

    .line 1636
    .line 1637
    double-to-int v0, v0

    .line 1638
    if-ltz v0, :cond_670

    .line 1639
    .line 1640
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 1641
    .line 1642
    .line 1643
    move-result v1

    .line 1644
    if-ge v0, v1, :cond_670

    .line 1645
    .line 1646
    :goto_66d
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/f;

    .line 1647
    .line 1648
    return-object v0

    .line 1649
    :cond_670
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->t:Lcom/google/android/gms/internal/measurement/f;

    .line 1650
    .line 1651
    return-object v0

    .line 1652
    nop

    .line 1653
    :sswitch_data_674
    .sparse-switch
        -0x6aaca37f -> :sswitch_16f
        -0x69e9ad94 -> :sswitch_15f
        -0x57513364 -> :sswitch_14c
        -0x5128e1d7 -> :sswitch_13c
        -0x50c088ec -> :sswitch_130
        -0x43ce226a -> :sswitch_126
        -0x36059a58 -> :sswitch_11c
        -0x2b53be43 -> :sswitch_112
        -0x1bdda92d -> :sswitch_108
        -0x17d0ad49 -> :sswitch_fe
        0x367422 -> :sswitch_f4
        0x62dd9c5 -> :sswitch_ea
        0x6873d92 -> :sswitch_e0
        0x6891b1a -> :sswitch_d6
        0x1f9f6e51 -> :sswitch_cc
        0x413cb2b4 -> :sswitch_c2
        0x73d44649 -> :sswitch_b8
    .end sparse-switch

    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    :pswitch_data_6ba
    .packed-switch 0x0
        :pswitch_62e
        :pswitch_627
        :pswitch_615
        :pswitch_5cf
        :pswitch_596
        :pswitch_584
        :pswitch_53a
        :pswitch_52a
        :pswitch_4ca
        :pswitch_4b8
        :pswitch_4a8
        :pswitch_45e
        :pswitch_3c4
        :pswitch_303
        :pswitch_284
        :pswitch_1ee
        :pswitch_195
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_4

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/p;

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/r;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "\""

    .line 4
    .line 5
    invoke-static {v1, v0, v1}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final zzd()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzh()Ljava/util/Iterator;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/r;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/r;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
