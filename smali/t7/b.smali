###### Class t7.b (t7.b)
.class public final Lt7/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lr7/o;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lw7/f;)Lr7/u;
    .registers 32

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lw7/f;->e:Lcom/google/android/gms/common/internal/g;

    .line 7
    .line 8
    new-instance v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 9
    .line 10
    const/16 v3, 0x1c

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v5, v1, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v5, Lr7/c;

    .line 19
    .line 20
    if-nez v5, :cond_1f5

    .line 21
    .line 22
    sget v5, Lr7/c;->n:I

    .line 23
    .line 24
    iget-object v5, v1, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v5, Lr7/k;

    .line 27
    .line 28
    invoke-virtual {v5}, Lr7/k;->size()I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    move-object v12, v4

    .line 33
    const/4 v10, 0x0

    .line 34
    const/4 v11, 0x1

    .line 35
    const/4 v13, 0x0

    .line 36
    const/4 v14, 0x0

    .line 37
    const/4 v15, -0x1

    .line 38
    const/16 v16, -0x1

    .line 39
    .line 40
    const/16 v17, 0x0

    .line 41
    .line 42
    const/16 v18, 0x0

    .line 43
    .line 44
    const/16 v19, 0x0

    .line 45
    .line 46
    const/16 v20, -0x1

    .line 47
    .line 48
    const/16 v21, -0x1

    .line 49
    .line 50
    const/16 v22, 0x0

    .line 51
    .line 52
    const/16 v23, 0x0

    .line 53
    .line 54
    const/16 v24, 0x0

    .line 55
    .line 56
    :goto_37
    if-ge v10, v7, :cond_1e3

    .line 57
    .line 58
    const/16 v25, 0x1

    .line 59
    .line 60
    invoke-virtual {v5, v10}, Lr7/k;->b(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v5, v10}, Lr7/k;->d(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-string v3, "Cache-Control"

    .line 69
    .line 70
    invoke-static {v8, v3}, Lk7/o;->q(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_51

    .line 75
    .line 76
    if-eqz v12, :cond_4f

    .line 77
    .line 78
    :goto_4d
    const/4 v11, 0x0

    .line 79
    goto :goto_5a

    .line 80
    :cond_4f
    move-object v12, v6

    .line 81
    goto :goto_5a

    .line 82
    :cond_51
    const-string v3, "Pragma"

    .line 83
    .line 84
    invoke-static {v8, v3}, Lk7/o;->q(Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_1cf

    .line 89
    .line 90
    goto :goto_4d

    .line 91
    :goto_5a
    const/4 v3, 0x0

    .line 92
    :goto_5b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-ge v3, v8, :cond_1cf

    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    move v4, v3

    .line 103
    :goto_66
    if-ge v4, v8, :cond_7c

    .line 104
    .line 105
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    move-object/from16 v27, v2

    .line 110
    .line 111
    const-string v2, "=,;"

    .line 112
    .line 113
    invoke-static {v2, v9}, Lk7/g;->w(Ljava/lang/CharSequence;C)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_77

    .line 118
    .line 119
    goto :goto_82

    .line 120
    :cond_77
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    move-object/from16 v2, v27

    .line 123
    .line 124
    goto :goto_66

    .line 125
    :cond_7c
    move-object/from16 v27, v2

    .line 126
    .line 127
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    :goto_82
    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 136
    .line 137
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v2}, Lk7/g;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-eq v4, v8, :cond_a9

    .line 153
    .line 154
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    const/16 v9, 0x2c

    .line 159
    .line 160
    if-eq v8, v9, :cond_a9

    .line 161
    .line 162
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    const/16 v9, 0x3b

    .line 167
    .line 168
    if-ne v8, v9, :cond_af

    .line 169
    .line 170
    :cond_a9
    move-object/from16 v28, v5

    .line 171
    .line 172
    move/from16 v29, v7

    .line 173
    .line 174
    goto/16 :goto_12e

    .line 175
    .line 176
    :cond_af
    add-int/lit8 v4, v4, 0x1

    .line 177
    .line 178
    sget-object v8, Ls7/b;->a:[B

    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    :goto_b7
    if-ge v4, v8, :cond_cd

    .line 185
    .line 186
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    move/from16 v28, v4

    .line 191
    .line 192
    const/16 v4, 0x20

    .line 193
    .line 194
    if-eq v9, v4, :cond_ca

    .line 195
    .line 196
    const/16 v4, 0x9

    .line 197
    .line 198
    if-eq v9, v4, :cond_ca

    .line 199
    .line 200
    move/from16 v4, v28

    .line 201
    .line 202
    goto :goto_d1

    .line 203
    :cond_ca
    add-int/lit8 v4, v28, 0x1

    .line 204
    .line 205
    goto :goto_b7

    .line 206
    :cond_cd
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    :goto_d1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    if-ge v4, v8, :cond_f5

    .line 215
    .line 216
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    const/16 v9, 0x22

    .line 221
    .line 222
    if-ne v8, v9, :cond_f5

    .line 223
    .line 224
    add-int/lit8 v4, v4, 0x1

    .line 225
    .line 226
    const/4 v8, 0x4

    .line 227
    invoke-static {v6, v9, v4, v8}, Lk7/g;->A(Ljava/lang/CharSequence;CII)I

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-static {v3, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    add-int/lit8 v8, v8, 0x1

    .line 239
    .line 240
    move-object/from16 v28, v5

    .line 241
    .line 242
    move/from16 v29, v7

    .line 243
    .line 244
    move v3, v8

    .line 245
    goto :goto_132

    .line 246
    :cond_f5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    move v9, v4

    .line 251
    :goto_fa
    if-ge v9, v8, :cond_114

    .line 252
    .line 253
    move-object/from16 v28, v5

    .line 254
    .line 255
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    move/from16 v29, v7

    .line 260
    .line 261
    const-string v7, ",;"

    .line 262
    .line 263
    invoke-static {v7, v5}, Lk7/g;->w(Ljava/lang/CharSequence;C)Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-eqz v5, :cond_10d

    .line 268
    .line 269
    goto :goto_11c

    .line 270
    :cond_10d
    add-int/lit8 v9, v9, 0x1

    .line 271
    .line 272
    move-object/from16 v5, v28

    .line 273
    .line 274
    move/from16 v7, v29

    .line 275
    .line 276
    goto :goto_fa

    .line 277
    :cond_114
    move-object/from16 v28, v5

    .line 278
    .line 279
    move/from16 v29, v7

    .line 280
    .line 281
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    :goto_11c
    invoke-virtual {v6, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-static {v3, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-static {v4}, Lk7/g;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    move-object v4, v3

    .line 301
    move v3, v9

    .line 302
    goto :goto_132

    .line 303
    :goto_12e
    add-int/lit8 v4, v4, 0x1

    .line 304
    .line 305
    move v3, v4

    .line 306
    const/4 v4, 0x0

    .line 307
    :goto_132
    const-string v5, "no-cache"

    .line 308
    .line 309
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-eqz v5, :cond_145

    .line 314
    .line 315
    move/from16 v13, v25

    .line 316
    .line 317
    :cond_13c
    :goto_13c
    move-object/from16 v2, v27

    .line 318
    .line 319
    move-object/from16 v5, v28

    .line 320
    .line 321
    move/from16 v7, v29

    .line 322
    .line 323
    const/4 v4, 0x0

    .line 324
    goto/16 :goto_5b

    .line 325
    .line 326
    :cond_145
    const-string v5, "no-store"

    .line 327
    .line 328
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    if-eqz v5, :cond_150

    .line 333
    .line 334
    move/from16 v14, v25

    .line 335
    .line 336
    goto :goto_13c

    .line 337
    :cond_150
    const-string v5, "max-age"

    .line 338
    .line 339
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-eqz v5, :cond_15e

    .line 344
    .line 345
    const/4 v5, -0x1

    .line 346
    invoke-static {v5, v4}, Ls7/b;->x(ILjava/lang/String;)I

    .line 347
    .line 348
    .line 349
    move-result v15

    .line 350
    goto :goto_13c

    .line 351
    :cond_15e
    const/4 v5, -0x1

    .line 352
    const-string v7, "s-maxage"

    .line 353
    .line 354
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    if-eqz v7, :cond_16c

    .line 359
    .line 360
    invoke-static {v5, v4}, Ls7/b;->x(ILjava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v16

    .line 364
    goto :goto_13c

    .line 365
    :cond_16c
    const-string v5, "private"

    .line 366
    .line 367
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    if-eqz v5, :cond_177

    .line 372
    .line 373
    move/from16 v17, v25

    .line 374
    .line 375
    goto :goto_13c

    .line 376
    :cond_177
    const-string v5, "public"

    .line 377
    .line 378
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-eqz v5, :cond_182

    .line 383
    .line 384
    move/from16 v18, v25

    .line 385
    .line 386
    goto :goto_13c

    .line 387
    :cond_182
    const-string v5, "must-revalidate"

    .line 388
    .line 389
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    if-eqz v5, :cond_18d

    .line 394
    .line 395
    move/from16 v19, v25

    .line 396
    .line 397
    goto :goto_13c

    .line 398
    :cond_18d
    const-string v5, "max-stale"

    .line 399
    .line 400
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-eqz v5, :cond_19d

    .line 405
    .line 406
    const v2, 0x7fffffff

    .line 407
    .line 408
    .line 409
    invoke-static {v2, v4}, Ls7/b;->x(ILjava/lang/String;)I

    .line 410
    .line 411
    .line 412
    move-result v20

    .line 413
    goto :goto_13c

    .line 414
    :cond_19d
    const-string v5, "min-fresh"

    .line 415
    .line 416
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    if-eqz v5, :cond_1ab

    .line 421
    .line 422
    const/4 v5, -0x1

    .line 423
    invoke-static {v5, v4}, Ls7/b;->x(ILjava/lang/String;)I

    .line 424
    .line 425
    .line 426
    move-result v21

    .line 427
    goto :goto_13c

    .line 428
    :cond_1ab
    const/4 v5, -0x1

    .line 429
    const-string v4, "only-if-cached"

    .line 430
    .line 431
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 432
    .line 433
    .line 434
    move-result v4

    .line 435
    if-eqz v4, :cond_1b7

    .line 436
    .line 437
    move/from16 v22, v25

    .line 438
    .line 439
    goto :goto_13c

    .line 440
    :cond_1b7
    const-string v4, "no-transform"

    .line 441
    .line 442
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_1c3

    .line 447
    .line 448
    move/from16 v23, v25

    .line 449
    .line 450
    goto/16 :goto_13c

    .line 451
    .line 452
    :cond_1c3
    const-string v4, "immutable"

    .line 453
    .line 454
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_13c

    .line 459
    .line 460
    move/from16 v24, v25

    .line 461
    .line 462
    goto/16 :goto_13c

    .line 463
    .line 464
    :cond_1cf
    move-object/from16 v27, v2

    .line 465
    .line 466
    move-object/from16 v28, v5

    .line 467
    .line 468
    move/from16 v29, v7

    .line 469
    .line 470
    const/4 v5, -0x1

    .line 471
    add-int/lit8 v10, v10, 0x1

    .line 472
    .line 473
    move-object/from16 v2, v27

    .line 474
    .line 475
    move-object/from16 v5, v28

    .line 476
    .line 477
    move/from16 v7, v29

    .line 478
    .line 479
    const/16 v3, 0x1c

    .line 480
    .line 481
    const/4 v4, 0x0

    .line 482
    goto/16 :goto_37

    .line 483
    .line 484
    :cond_1e3
    move-object/from16 v27, v2

    .line 485
    .line 486
    if-nez v11, :cond_1ea

    .line 487
    .line 488
    const/16 v25, 0x0

    .line 489
    .line 490
    goto :goto_1ec

    .line 491
    :cond_1ea
    move-object/from16 v25, v12

    .line 492
    .line 493
    :goto_1ec
    new-instance v12, Lr7/c;

    .line 494
    .line 495
    invoke-direct/range {v12 .. v25}, Lr7/c;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 496
    .line 497
    .line 498
    iput-object v12, v1, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    .line 499
    .line 500
    move-object v5, v12

    .line 501
    goto :goto_1f7

    .line 502
    :cond_1f5
    move-object/from16 v27, v2

    .line 503
    .line 504
    :goto_1f7
    iget-boolean v2, v5, Lr7/c;->j:Z

    .line 505
    .line 506
    if-eqz v2, :cond_204

    .line 507
    .line 508
    new-instance v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 509
    .line 510
    const/4 v3, 0x0

    .line 511
    const/16 v4, 0x1c

    .line 512
    .line 513
    invoke-direct {v2, v3, v4, v3}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    goto :goto_206

    .line 517
    :cond_204
    move-object/from16 v2, v27

    .line 518
    .line 519
    :goto_206
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v3, Lcom/google/android/gms/common/internal/g;

    .line 522
    .line 523
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v2, Lr7/u;

    .line 526
    .line 527
    const/16 v4, 0x14

    .line 528
    .line 529
    if-nez v3, :cond_240

    .line 530
    .line 531
    if-nez v2, :cond_240

    .line 532
    .line 533
    new-instance v0, Ljava/util/ArrayList;

    .line 534
    .line 535
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 536
    .line 537
    .line 538
    sget-object v7, Ls7/b;->c:Lr7/v;

    .line 539
    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 541
    .line 542
    .line 543
    move-result-wide v13

    .line 544
    new-instance v6, Lr7/k;

    .line 545
    .line 546
    const/4 v2, 0x0

    .line 547
    new-array v2, v2, [Ljava/lang/String;

    .line 548
    .line 549
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    check-cast v0, [Ljava/lang/String;

    .line 554
    .line 555
    invoke-direct {v6, v0}, Lr7/k;-><init>([Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    new-instance v0, Lr7/u;

    .line 559
    .line 560
    sget-object v2, Lr7/s;->c:Lr7/s;

    .line 561
    .line 562
    const-string v3, "Unsatisfiable Request (only-if-cached)"

    .line 563
    .line 564
    const/16 v4, 0x1f8

    .line 565
    .line 566
    const/4 v5, 0x0

    .line 567
    const/4 v8, 0x0

    .line 568
    const/4 v9, 0x0

    .line 569
    const/4 v10, 0x0

    .line 570
    const-wide/16 v11, -0x1

    .line 571
    .line 572
    const/4 v15, 0x0

    .line 573
    invoke-direct/range {v0 .. v15}, Lr7/u;-><init>(Lcom/google/android/gms/common/internal/g;Lr7/s;Ljava/lang/String;ILr7/i;Lr7/k;Lr7/w;Lr7/u;Lr7/u;Lr7/u;JJLcom/google/firebase/messaging/p;)V

    .line 574
    .line 575
    .line 576
    return-object v0

    .line 577
    :cond_240
    const-string v1, "cacheResponse"

    .line 578
    .line 579
    if-nez v3, :cond_259

    .line 580
    .line 581
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v2}, Lr7/u;->c()Lr7/t;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    invoke-static {v2}, Lt7/a;->a(Lr7/u;)Lr7/u;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-static {v1, v2}, Lr7/t;->b(Ljava/lang/String;Lr7/u;)V

    .line 593
    .line 594
    .line 595
    iput-object v2, v0, Lr7/t;->i:Lr7/u;

    .line 596
    .line 597
    invoke-virtual {v0}, Lr7/t;->a()Lr7/u;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    return-object v0

    .line 602
    :cond_259
    invoke-virtual {v0, v3}, Lw7/f;->b(Lcom/google/android/gms/common/internal/g;)Lr7/u;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    const-string v3, "networkResponse"

    .line 607
    .line 608
    if-eqz v2, :cond_366

    .line 609
    .line 610
    iget v5, v0, Lr7/u;->d:I

    .line 611
    .line 612
    const/16 v6, 0x130

    .line 613
    .line 614
    if-ne v5, v6, :cond_35f

    .line 615
    .line 616
    invoke-virtual {v2}, Lr7/u;->c()Lr7/t;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    iget-object v6, v2, Lr7/u;->f:Lr7/k;

    .line 621
    .line 622
    iget-object v7, v0, Lr7/u;->f:Lr7/k;

    .line 623
    .line 624
    new-instance v8, Ljava/util/ArrayList;

    .line 625
    .line 626
    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v6}, Lr7/k;->size()I

    .line 630
    .line 631
    .line 632
    move-result v4

    .line 633
    const/4 v9, 0x0

    .line 634
    :goto_279
    const-string v10, "value"

    .line 635
    .line 636
    const-string v11, "name"

    .line 637
    .line 638
    const-string v12, "Content-Type"

    .line 639
    .line 640
    const-string v13, "Content-Encoding"

    .line 641
    .line 642
    const-string v14, "Content-Length"

    .line 643
    .line 644
    if-ge v9, v4, :cond_2e1

    .line 645
    .line 646
    invoke-virtual {v6, v9}, Lr7/k;->b(I)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v15

    .line 650
    move/from16 p1, v4

    .line 651
    .line 652
    invoke-virtual {v6, v9}, Lr7/k;->d(I)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    move-object/from16 v16, v6

    .line 657
    .line 658
    const-string v6, "Warning"

    .line 659
    .line 660
    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 661
    .line 662
    .line 663
    move-result v6

    .line 664
    if-eqz v6, :cond_2a5

    .line 665
    .line 666
    const-string v6, "1"

    .line 667
    .line 668
    move/from16 v17, v9

    .line 669
    .line 670
    const/4 v9, 0x0

    .line 671
    invoke-static {v4, v6, v9}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 672
    .line 673
    .line 674
    move-result v6

    .line 675
    if-eqz v6, :cond_2a7

    .line 676
    .line 677
    goto :goto_2da

    .line 678
    :cond_2a5
    move/from16 v17, v9

    .line 679
    .line 680
    :cond_2a7
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 681
    .line 682
    .line 683
    move-result v6

    .line 684
    if-nez v6, :cond_2c6

    .line 685
    .line 686
    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 687
    .line 688
    .line 689
    move-result v6

    .line 690
    if-nez v6, :cond_2c6

    .line 691
    .line 692
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 693
    .line 694
    .line 695
    move-result v6

    .line 696
    if-eqz v6, :cond_2ba

    .line 697
    .line 698
    goto :goto_2c6

    .line 699
    :cond_2ba
    invoke-static {v15}, Lt7/a;->b(Ljava/lang/String;)Z

    .line 700
    .line 701
    .line 702
    move-result v6

    .line 703
    if-eqz v6, :cond_2c6

    .line 704
    .line 705
    invoke-virtual {v7, v15}, Lr7/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v6

    .line 709
    if-nez v6, :cond_2da

    .line 710
    .line 711
    :cond_2c6
    :goto_2c6
    invoke-static {v11, v15}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 712
    .line 713
    .line 714
    invoke-static {v10, v4}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    invoke-static {v4}, Lk7/g;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 721
    .line 722
    .line 723
    move-result-object v4

    .line 724
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    :cond_2da
    :goto_2da
    add-int/lit8 v9, v17, 0x1

    .line 732
    .line 733
    move/from16 v4, p1

    .line 734
    .line 735
    move-object/from16 v6, v16

    .line 736
    .line 737
    goto :goto_279

    .line 738
    :cond_2e1
    invoke-virtual {v7}, Lr7/k;->size()I

    .line 739
    .line 740
    .line 741
    move-result v4

    .line 742
    const/4 v6, 0x0

    .line 743
    :goto_2e6
    if-ge v6, v4, :cond_320

    .line 744
    .line 745
    invoke-virtual {v7, v6}, Lr7/k;->b(I)Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v9

    .line 749
    invoke-virtual {v14, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 750
    .line 751
    .line 752
    move-result v15

    .line 753
    if-nez v15, :cond_31d

    .line 754
    .line 755
    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 756
    .line 757
    .line 758
    move-result v15

    .line 759
    if-nez v15, :cond_31d

    .line 760
    .line 761
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 762
    .line 763
    .line 764
    move-result v15

    .line 765
    if-eqz v15, :cond_2ff

    .line 766
    .line 767
    goto :goto_31d

    .line 768
    :cond_2ff
    invoke-static {v9}, Lt7/a;->b(Ljava/lang/String;)Z

    .line 769
    .line 770
    .line 771
    move-result v15

    .line 772
    if-eqz v15, :cond_31d

    .line 773
    .line 774
    invoke-virtual {v7, v6}, Lr7/k;->d(I)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v15

    .line 778
    invoke-static {v11, v9}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 779
    .line 780
    .line 781
    invoke-static {v10, v15}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    invoke-static {v15}, Lk7/g;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 788
    .line 789
    .line 790
    move-result-object v9

    .line 791
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v9

    .line 795
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    :cond_31d
    :goto_31d
    add-int/lit8 v6, v6, 0x1

    .line 799
    .line 800
    goto :goto_2e6

    .line 801
    :cond_320
    new-instance v4, Lr7/k;

    .line 802
    .line 803
    const/4 v9, 0x0

    .line 804
    new-array v6, v9, [Ljava/lang/String;

    .line 805
    .line 806
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v6

    .line 810
    check-cast v6, [Ljava/lang/String;

    .line 811
    .line 812
    invoke-direct {v4, v6}, Lr7/k;-><init>([Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v4}, Lr7/k;->c()Lr7/j;

    .line 816
    .line 817
    .line 818
    move-result-object v4

    .line 819
    iput-object v4, v5, Lr7/t;->f:Lr7/j;

    .line 820
    .line 821
    iget-wide v6, v0, Lr7/u;->k:J

    .line 822
    .line 823
    iput-wide v6, v5, Lr7/t;->k:J

    .line 824
    .line 825
    iget-wide v6, v0, Lr7/u;->l:J

    .line 826
    .line 827
    iput-wide v6, v5, Lr7/t;->l:J

    .line 828
    .line 829
    invoke-static {v2}, Lt7/a;->a(Lr7/u;)Lr7/u;

    .line 830
    .line 831
    .line 832
    move-result-object v2

    .line 833
    invoke-static {v1, v2}, Lr7/t;->b(Ljava/lang/String;Lr7/u;)V

    .line 834
    .line 835
    .line 836
    iput-object v2, v5, Lr7/t;->i:Lr7/u;

    .line 837
    .line 838
    invoke-static {v0}, Lt7/a;->a(Lr7/u;)Lr7/u;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    invoke-static {v3, v1}, Lr7/t;->b(Ljava/lang/String;Lr7/u;)V

    .line 843
    .line 844
    .line 845
    iput-object v1, v5, Lr7/t;->h:Lr7/u;

    .line 846
    .line 847
    invoke-virtual {v5}, Lr7/t;->a()Lr7/u;

    .line 848
    .line 849
    .line 850
    iget-object v0, v0, Lr7/u;->g:Lr7/w;

    .line 851
    .line 852
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v0}, Lr7/w;->close()V

    .line 856
    .line 857
    .line 858
    const/16 v26, 0x0

    .line 859
    .line 860
    invoke-static/range {v26 .. v26}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 861
    .line 862
    .line 863
    throw v26

    .line 864
    :cond_35f
    iget-object v4, v2, Lr7/u;->g:Lr7/w;

    .line 865
    .line 866
    if-eqz v4, :cond_366

    .line 867
    .line 868
    invoke-static {v4}, Ls7/b;->d(Ljava/io/Closeable;)V

    .line 869
    .line 870
    .line 871
    :cond_366
    invoke-virtual {v0}, Lr7/u;->c()Lr7/t;

    .line 872
    .line 873
    .line 874
    move-result-object v4

    .line 875
    invoke-static {v2}, Lt7/a;->a(Lr7/u;)Lr7/u;

    .line 876
    .line 877
    .line 878
    move-result-object v2

    .line 879
    invoke-static {v1, v2}, Lr7/t;->b(Ljava/lang/String;Lr7/u;)V

    .line 880
    .line 881
    .line 882
    iput-object v2, v4, Lr7/t;->i:Lr7/u;

    .line 883
    .line 884
    invoke-static {v0}, Lt7/a;->a(Lr7/u;)Lr7/u;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    invoke-static {v3, v0}, Lr7/t;->b(Ljava/lang/String;Lr7/u;)V

    .line 889
    .line 890
    .line 891
    iput-object v0, v4, Lr7/t;->h:Lr7/u;

    .line 892
    .line 893
    invoke-virtual {v4}, Lr7/t;->a()Lr7/u;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    return-object v0
.end method
