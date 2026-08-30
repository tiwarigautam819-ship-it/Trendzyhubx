###### Class l3.i (l3.i)
.class public final Ll3/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg3/d;

.field public final c:Lm3/d;

.field public final d:Lc5/h;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ln3/c;

.field public final g:Lo3/a;

.field public final h:Lo3/a;

.field public final i:Lm3/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg3/d;Lm3/d;Lc5/h;Ljava/util/concurrent/Executor;Ln3/c;Lo3/a;Lo3/a;Lm3/c;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll3/i;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Ll3/i;->b:Lg3/d;

    .line 7
    .line 8
    iput-object p3, p0, Ll3/i;->c:Lm3/d;

    .line 9
    .line 10
    iput-object p4, p0, Ll3/i;->d:Lc5/h;

    .line 11
    .line 12
    iput-object p5, p0, Ll3/i;->e:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p6, p0, Ll3/i;->f:Ln3/c;

    .line 15
    .line 16
    iput-object p7, p0, Ll3/i;->g:Lo3/a;

    .line 17
    .line 18
    iput-object p8, p0, Ll3/i;->h:Lo3/a;

    .line 19
    .line 20
    iput-object p9, p0, Ll3/i;->i:Lm3/c;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lf3/i;I)V
    .registers 48

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    iget-object v2, v3, Lf3/i;->b:[B

    .line 6
    .line 7
    iget-object v0, v1, Ll3/i;->b:Lg3/d;

    .line 8
    .line 9
    iget-object v4, v3, Lf3/i;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v4}, Lg3/d;->a(Ljava/lang/String;)Lg3/e;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    move-wide v7, v5

    .line 18
    move-object v6, v4

    .line 19
    move-wide v4, v7

    .line 20
    :goto_13
    new-instance v0, Ll3/f;

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    invoke-direct {v0, v1, v3, v9}, Ll3/f;-><init>(Ll3/i;Lf3/i;I)V

    .line 24
    .line 25
    .line 26
    iget-object v10, v1, Ll3/i;->f:Ln3/c;

    .line 27
    .line 28
    check-cast v10, Lm3/h;

    .line 29
    .line 30
    invoke-virtual {v10, v0}, Lm3/h;->t(Ln3/b;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_466

    .line 41
    .line 42
    new-instance v0, Ll3/f;

    .line 43
    .line 44
    const/4 v11, 0x1

    .line 45
    invoke-direct {v0, v1, v3, v11}, Ll3/f;-><init>(Ll3/i;Lf3/i;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v10, v0}, Lm3/h;->t(Ln3/b;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v12, v0

    .line 53
    check-cast v12, Ljava/lang/Iterable;

    .line 54
    .line 55
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_41

    .line 64
    .line 65
    return-void

    .line 66
    :cond_41
    const/4 v14, 0x2

    .line 67
    const/4 v0, 0x3

    .line 68
    const-wide/16 v7, -0x1

    .line 69
    .line 70
    if-nez v6, :cond_5a

    .line 71
    .line 72
    const-string v9, "Uploader"

    .line 73
    .line 74
    const-string v15, "Unknown backend for %s, deleting event batch for it..."

    .line 75
    .line 76
    invoke-static {v9, v15, v3}, Ly1/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance v9, Lg3/a;

    .line 80
    .line 81
    invoke-direct {v9, v0, v7, v8}, Lg3/a;-><init>(IJ)V

    .line 82
    .line 83
    .line 84
    move-object/from16 v31, v2

    .line 85
    .line 86
    move-wide/from16 v32, v4

    .line 87
    .line 88
    move v3, v14

    .line 89
    goto/16 :goto_3d3

    .line 90
    .line 91
    :cond_5a
    new-instance v15, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v16

    .line 100
    :goto_63
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v17

    .line 104
    if-eqz v17, :cond_78

    .line 105
    .line 106
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v17

    .line 110
    move-object/from16 v11, v17

    .line 111
    .line 112
    check-cast v11, Lm3/b;

    .line 113
    .line 114
    iget-object v11, v11, Lm3/b;->c:Lf3/h;

    .line 115
    .line 116
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    const/4 v11, 0x1

    .line 120
    goto :goto_63

    .line 121
    :cond_78
    const-string v11, "proto"

    .line 122
    .line 123
    if-eqz v2, :cond_e3

    .line 124
    .line 125
    iget-object v0, v1, Ll3/i;->i:Lm3/c;

    .line 126
    .line 127
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    new-instance v7, Lcom/google/firebase/messaging/j0;

    .line 131
    .line 132
    const/4 v8, 0x6

    .line 133
    invoke-direct {v7, v8, v0}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v7}, Lm3/h;->t(Ln3/b;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Li3/a;

    .line 141
    .line 142
    new-instance v7, Lcom/google/android/gms/common/internal/g;

    .line 143
    .line 144
    invoke-direct {v7, v14}, Lcom/google/android/gms/common/internal/g;-><init>(I)V

    .line 145
    .line 146
    .line 147
    new-instance v8, Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object v8, v7, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 153
    .line 154
    iget-object v8, v1, Ll3/i;->g:Lo3/a;

    .line 155
    .line 156
    invoke-virtual {v8}, Lo3/a;->f()J

    .line 157
    .line 158
    .line 159
    move-result-wide v19

    .line 160
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    iput-object v8, v7, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 165
    .line 166
    iget-object v8, v1, Ll3/i;->h:Lo3/a;

    .line 167
    .line 168
    invoke-virtual {v8}, Lo3/a;->f()J

    .line 169
    .line 170
    .line 171
    move-result-wide v19

    .line 172
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    iput-object v8, v7, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 177
    .line 178
    const-string v8, "GDT_CLIENT_METRICS"

    .line 179
    .line 180
    iput-object v8, v7, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 181
    .line 182
    new-instance v8, Lf3/l;

    .line 183
    .line 184
    new-instance v14, Lc3/c;

    .line 185
    .line 186
    invoke-direct {v14, v11}, Lc3/c;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    sget-object v13, Lf3/n;->a:Lc5/h;

    .line 193
    .line 194
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 198
    .line 199
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 200
    .line 201
    .line 202
    :try_start_c9
    invoke-virtual {v13, v0, v9}, Lc5/h;->i(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cc

    .line 203
    .line 204
    .line 205
    :catch_cc
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-direct {v8, v14, v0}, Lf3/l;-><init>(Lc3/c;[B)V

    .line 210
    .line 211
    .line 212
    iput-object v8, v7, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 213
    .line 214
    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/g;->c()Lf3/h;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    move-object v7, v6

    .line 219
    check-cast v7, Ld3/c;

    .line 220
    .line 221
    invoke-virtual {v7, v0}, Ld3/c;->a(Lf3/h;)Lf3/h;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    :cond_e3
    move-object v0, v6

    .line 229
    check-cast v0, Ld3/c;

    .line 230
    .line 231
    new-instance v7, Ljava/util/HashMap;

    .line 232
    .line 233
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    const/4 v9, 0x0

    .line 241
    :goto_f0
    if-ge v9, v8, :cond_11a

    .line 242
    .line 243
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    add-int/lit8 v9, v9, 0x1

    .line 248
    .line 249
    check-cast v13, Lf3/h;

    .line 250
    .line 251
    iget-object v14, v13, Lf3/h;->a:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v7, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v21

    .line 257
    if-nez v21, :cond_10e

    .line 258
    .line 259
    new-instance v1, Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    goto :goto_117

    .line 271
    :cond_10e
    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    check-cast v1, Ljava/util/List;

    .line 276
    .line 277
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    :goto_117
    move-object/from16 v1, p0

    .line 281
    .line 282
    goto :goto_f0

    .line 283
    :cond_11a
    new-instance v1, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    :goto_127
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    const-string v13, "CctTransportBackend"

    .line 301
    .line 302
    if-eqz v8, :cond_327

    .line 303
    .line 304
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    check-cast v8, Ljava/util/Map$Entry;

    .line 309
    .line 310
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v14

    .line 314
    check-cast v14, Ljava/util/List;

    .line 315
    .line 316
    const/4 v15, 0x0

    .line 317
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    check-cast v14, Lf3/h;

    .line 322
    .line 323
    sget-object v20, Le3/w;->a:Le3/w;

    .line 324
    .line 325
    iget-object v9, v0, Ld3/c;->f:Lo3/a;

    .line 326
    .line 327
    invoke-virtual {v9}, Lo3/a;->f()J

    .line 328
    .line 329
    .line 330
    move-result-wide v22

    .line 331
    iget-object v9, v0, Ld3/c;->e:Lo3/a;

    .line 332
    .line 333
    invoke-virtual {v9}, Lo3/a;->f()J

    .line 334
    .line 335
    .line 336
    move-result-wide v24

    .line 337
    const-string v9, "sdk-version"

    .line 338
    .line 339
    invoke-virtual {v14, v9}, Lf3/h;->b(Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v27

    .line 347
    const-string v9, "model"

    .line 348
    .line 349
    invoke-virtual {v14, v9}, Lf3/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v28

    .line 353
    const-string v9, "hardware"

    .line 354
    .line 355
    invoke-virtual {v14, v9}, Lf3/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v29

    .line 359
    const-string v9, "device"

    .line 360
    .line 361
    invoke-virtual {v14, v9}, Lf3/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v30

    .line 365
    const-string v9, "product"

    .line 366
    .line 367
    invoke-virtual {v14, v9}, Lf3/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v31

    .line 371
    const-string v9, "os-uild"

    .line 372
    .line 373
    invoke-virtual {v14, v9}, Lf3/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v32

    .line 377
    const-string v9, "manufacturer"

    .line 378
    .line 379
    invoke-virtual {v14, v9}, Lf3/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v33

    .line 383
    const-string v9, "fingerprint"

    .line 384
    .line 385
    invoke-virtual {v14, v9}, Lf3/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v34

    .line 389
    const-string v9, "country"

    .line 390
    .line 391
    invoke-virtual {v14, v9}, Lf3/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v36

    .line 395
    const-string v9, "locale"

    .line 396
    .line 397
    invoke-virtual {v14, v9}, Lf3/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v35

    .line 401
    const-string v9, "mcc_mnc"

    .line 402
    .line 403
    invoke-virtual {v14, v9}, Lf3/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v37

    .line 407
    const-string v9, "application_build"

    .line 408
    .line 409
    invoke-virtual {v14, v9}, Lf3/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v38

    .line 413
    new-instance v26, Le3/h;

    .line 414
    .line 415
    invoke-direct/range {v26 .. v38}, Le3/h;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    move-object/from16 v9, v26

    .line 419
    .line 420
    new-instance v14, Le3/j;

    .line 421
    .line 422
    invoke-direct {v14, v9}, Le3/j;-><init>(Le3/h;)V

    .line 423
    .line 424
    .line 425
    :try_start_1a8
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v9

    .line 429
    check-cast v9, Ljava/lang/String;

    .line 430
    .line 431
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v9
    :try_end_1b6
    .catch Ljava/lang/NumberFormatException; {:try_start_1a8 .. :try_end_1b6} :catch_1bb

    .line 439
    move-object/from16 v27, v9

    .line 440
    .line 441
    const/16 v28, 0x0

    .line 442
    .line 443
    goto :goto_1c5

    .line 444
    :catch_1bb
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v9

    .line 448
    check-cast v9, Ljava/lang/String;

    .line 449
    .line 450
    move-object/from16 v28, v9

    .line 451
    .line 452
    const/16 v27, 0x0

    .line 453
    .line 454
    :goto_1c5
    new-instance v9, Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v8

    .line 463
    check-cast v8, Ljava/util/List;

    .line 464
    .line 465
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    :goto_1d4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 470
    .line 471
    .line 472
    move-result v20

    .line 473
    if-eqz v20, :cond_30f

    .line 474
    .line 475
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v20

    .line 479
    move-object/from16 v15, v20

    .line 480
    .line 481
    check-cast v15, Lf3/h;

    .line 482
    .line 483
    move-object/from16 v31, v2

    .line 484
    .line 485
    iget-object v2, v15, Lf3/h;->c:Lf3/l;

    .line 486
    .line 487
    iget-object v3, v2, Lf3/l;->a:Lc3/c;

    .line 488
    .line 489
    iget-object v2, v2, Lf3/l;->b:[B

    .line 490
    .line 491
    move-wide/from16 v32, v4

    .line 492
    .line 493
    new-instance v4, Lc3/c;

    .line 494
    .line 495
    invoke-direct {v4, v11}, Lc3/c;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3, v4}, Lc3/c;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    if-eqz v4, :cond_1ff

    .line 503
    .line 504
    new-instance v3, Lm/h3;

    .line 505
    .line 506
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 507
    .line 508
    .line 509
    iput-object v2, v3, Lm/h3;->d:Ljava/lang/Object;

    .line 510
    .line 511
    goto :goto_21f

    .line 512
    :cond_1ff
    new-instance v4, Lc3/c;

    .line 513
    .line 514
    const-string v5, "json"

    .line 515
    .line 516
    invoke-direct {v4, v5}, Lc3/c;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v3, v4}, Lc3/c;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v4

    .line 523
    if-eqz v4, :cond_2ed

    .line 524
    .line 525
    new-instance v3, Ljava/lang/String;

    .line 526
    .line 527
    const-string v4, "UTF-8"

    .line 528
    .line 529
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 534
    .line 535
    .line 536
    new-instance v2, Lm/h3;

    .line 537
    .line 538
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 539
    .line 540
    .line 541
    iput-object v3, v2, Lm/h3;->e:Ljava/lang/Object;

    .line 542
    .line 543
    move-object v3, v2

    .line 544
    :goto_21f
    iget-wide v4, v15, Lf3/h;->d:J

    .line 545
    .line 546
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    iput-object v2, v3, Lm/h3;->a:Ljava/lang/Object;

    .line 551
    .line 552
    iget-wide v4, v15, Lf3/h;->e:J

    .line 553
    .line 554
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    iput-object v2, v3, Lm/h3;->c:Ljava/lang/Object;

    .line 559
    .line 560
    const-string v2, "tz-offset"

    .line 561
    .line 562
    iget-object v4, v15, Lf3/h;->f:Ljava/util/Map;

    .line 563
    .line 564
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    check-cast v2, Ljava/lang/String;

    .line 569
    .line 570
    if-nez v2, :cond_23e

    .line 571
    .line 572
    const-wide/16 v4, 0x0

    .line 573
    .line 574
    goto :goto_246

    .line 575
    :cond_23e
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 580
    .line 581
    .line 582
    move-result-wide v4

    .line 583
    :goto_246
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    iput-object v2, v3, Lm/h3;->f:Ljava/lang/Object;

    .line 588
    .line 589
    const-string v2, "net-type"

    .line 590
    .line 591
    invoke-virtual {v15, v2}, Lf3/h;->b(Ljava/lang/String;)I

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    sget-object v4, Le3/u;->a:Landroid/util/SparseArray;

    .line 596
    .line 597
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    check-cast v2, Le3/u;

    .line 602
    .line 603
    const-string v4, "mobile-subtype"

    .line 604
    .line 605
    invoke-virtual {v15, v4}, Lf3/h;->b(Ljava/lang/String;)I

    .line 606
    .line 607
    .line 608
    move-result v4

    .line 609
    sget-object v5, Le3/t;->a:Landroid/util/SparseArray;

    .line 610
    .line 611
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    check-cast v4, Le3/t;

    .line 616
    .line 617
    new-instance v5, Le3/n;

    .line 618
    .line 619
    invoke-direct {v5, v2, v4}, Le3/n;-><init>(Le3/u;Le3/t;)V

    .line 620
    .line 621
    .line 622
    iput-object v5, v3, Lm/h3;->g:Ljava/lang/Object;

    .line 623
    .line 624
    iget-object v2, v15, Lf3/h;->b:Ljava/lang/Integer;

    .line 625
    .line 626
    if-eqz v2, :cond_275

    .line 627
    .line 628
    iput-object v2, v3, Lm/h3;->b:Ljava/lang/Object;

    .line 629
    .line 630
    :cond_275
    iget-object v2, v3, Lm/h3;->a:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v2, Ljava/lang/Long;

    .line 633
    .line 634
    if-nez v2, :cond_27e

    .line 635
    .line 636
    const-string v2, " eventTimeMs"

    .line 637
    .line 638
    goto :goto_280

    .line 639
    :cond_27e
    const-string v2, ""

    .line 640
    .line 641
    :goto_280
    iget-object v4, v3, Lm/h3;->c:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v4, Ljava/lang/Long;

    .line 644
    .line 645
    if-nez v4, :cond_28c

    .line 646
    .line 647
    const-string v4, " eventUptimeMs"

    .line 648
    .line 649
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    :cond_28c
    iget-object v4, v3, Lm/h3;->f:Ljava/lang/Object;

    .line 654
    .line 655
    check-cast v4, Ljava/lang/Long;

    .line 656
    .line 657
    if-nez v4, :cond_298

    .line 658
    .line 659
    const-string v4, " timezoneOffsetSeconds"

    .line 660
    .line 661
    invoke-static {v2, v4}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    :cond_298
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 666
    .line 667
    .line 668
    move-result v4

    .line 669
    if-eqz v4, :cond_2e1

    .line 670
    .line 671
    new-instance v34, Le3/k;

    .line 672
    .line 673
    iget-object v2, v3, Lm/h3;->a:Ljava/lang/Object;

    .line 674
    .line 675
    check-cast v2, Ljava/lang/Long;

    .line 676
    .line 677
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 678
    .line 679
    .line 680
    move-result-wide v35

    .line 681
    iget-object v2, v3, Lm/h3;->b:Ljava/lang/Object;

    .line 682
    .line 683
    move-object/from16 v37, v2

    .line 684
    .line 685
    check-cast v37, Ljava/lang/Integer;

    .line 686
    .line 687
    iget-object v2, v3, Lm/h3;->c:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast v2, Ljava/lang/Long;

    .line 690
    .line 691
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 692
    .line 693
    .line 694
    move-result-wide v38

    .line 695
    iget-object v2, v3, Lm/h3;->d:Ljava/lang/Object;

    .line 696
    .line 697
    move-object/from16 v40, v2

    .line 698
    .line 699
    check-cast v40, [B

    .line 700
    .line 701
    iget-object v2, v3, Lm/h3;->e:Ljava/lang/Object;

    .line 702
    .line 703
    move-object/from16 v41, v2

    .line 704
    .line 705
    check-cast v41, Ljava/lang/String;

    .line 706
    .line 707
    iget-object v2, v3, Lm/h3;->f:Ljava/lang/Object;

    .line 708
    .line 709
    check-cast v2, Ljava/lang/Long;

    .line 710
    .line 711
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 712
    .line 713
    .line 714
    move-result-wide v42

    .line 715
    iget-object v2, v3, Lm/h3;->g:Ljava/lang/Object;

    .line 716
    .line 717
    move-object/from16 v44, v2

    .line 718
    .line 719
    check-cast v44, Le3/n;

    .line 720
    .line 721
    invoke-direct/range {v34 .. v44}, Le3/k;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLe3/v;)V

    .line 722
    .line 723
    .line 724
    move-object/from16 v2, v34

    .line 725
    .line 726
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    :cond_2d8
    :goto_2d8
    move-object/from16 v3, p1

    .line 730
    .line 731
    move-object/from16 v2, v31

    .line 732
    .line 733
    move-wide/from16 v4, v32

    .line 734
    .line 735
    const/4 v15, 0x0

    .line 736
    goto/16 :goto_1d4

    .line 737
    .line 738
    :cond_2e1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 739
    .line 740
    const-string v1, "Missing required properties:"

    .line 741
    .line 742
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    throw v0

    .line 750
    :cond_2ed
    invoke-static {v13}, Ly1/j;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    const/4 v4, 0x5

    .line 755
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 756
    .line 757
    .line 758
    move-result v5

    .line 759
    if-eqz v5, :cond_2d8

    .line 760
    .line 761
    new-instance v4, Ljava/lang/StringBuilder;

    .line 762
    .line 763
    const-string v5, "Received event of unsupported encoding "

    .line 764
    .line 765
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    const-string v3, ". Skipping..."

    .line 772
    .line 773
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v3

    .line 780
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .line 782
    .line 783
    goto :goto_2d8

    .line 784
    :cond_30f
    move-object/from16 v31, v2

    .line 785
    .line 786
    move-wide/from16 v32, v4

    .line 787
    .line 788
    new-instance v21, Le3/l;

    .line 789
    .line 790
    move-object/from16 v29, v9

    .line 791
    .line 792
    move-object/from16 v26, v14

    .line 793
    .line 794
    invoke-direct/range {v21 .. v29}, Le3/l;-><init>(JJLe3/j;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 795
    .line 796
    .line 797
    move-object/from16 v2, v21

    .line 798
    .line 799
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    move-object/from16 v3, p1

    .line 803
    .line 804
    move-object/from16 v2, v31

    .line 805
    .line 806
    goto/16 :goto_127

    .line 807
    .line 808
    :cond_327
    move-object/from16 v31, v2

    .line 809
    .line 810
    move-wide/from16 v32, v4

    .line 811
    .line 812
    new-instance v2, Le3/i;

    .line 813
    .line 814
    invoke-direct {v2, v1}, Le3/i;-><init>(Ljava/util/ArrayList;)V

    .line 815
    .line 816
    .line 817
    iget-object v1, v0, Ld3/c;->d:Ljava/net/URL;

    .line 818
    .line 819
    if-eqz v31, :cond_354

    .line 820
    .line 821
    :try_start_334
    invoke-static/range {v31 .. v31}, Ld3/a;->a([B)Ld3/a;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    iget-object v4, v3, Ld3/a;->b:Ljava/lang/String;

    .line 826
    .line 827
    if-eqz v4, :cond_33d

    .line 828
    .line 829
    goto :goto_33e

    .line 830
    :cond_33d
    const/4 v4, 0x0

    .line 831
    :goto_33e
    iget-object v3, v3, Ld3/a;->a:Ljava/lang/String;

    .line 832
    .line 833
    if-eqz v3, :cond_346

    .line 834
    .line 835
    invoke-static {v3}, Ld3/c;->b(Ljava/lang/String;)Ljava/net/URL;

    .line 836
    .line 837
    .line 838
    move-result-object v1
    :try_end_346
    .catch Ljava/lang/IllegalArgumentException; {:try_start_334 .. :try_end_346} :catch_348

    .line 839
    :cond_346
    :goto_346
    const/4 v3, 0x3

    .line 840
    goto :goto_356

    .line 841
    :catch_348
    new-instance v0, Lg3/a;

    .line 842
    .line 843
    const-wide/16 v1, -0x1

    .line 844
    .line 845
    const/4 v3, 0x3

    .line 846
    invoke-direct {v0, v3, v1, v2}, Lg3/a;-><init>(IJ)V

    .line 847
    .line 848
    .line 849
    :goto_350
    move-object v9, v0

    .line 850
    :goto_351
    const/4 v3, 0x2

    .line 851
    goto/16 :goto_3d3

    .line 852
    .line 853
    :cond_354
    const/4 v4, 0x0

    .line 854
    goto :goto_346

    .line 855
    :goto_356
    :try_start_356
    new-instance v5, Lc5/h;

    .line 856
    .line 857
    const/4 v7, 0x5

    .line 858
    invoke-direct {v5, v1, v2, v4, v7}, Lc5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 859
    .line 860
    .line 861
    new-instance v1, Lcom/google/firebase/messaging/j0;

    .line 862
    .line 863
    invoke-direct {v1, v3, v0}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    .line 864
    .line 865
    .line 866
    const/4 v4, 0x5

    .line 867
    :cond_362
    invoke-virtual {v1, v5}, Lcom/google/firebase/messaging/j0;->b(Lc5/h;)Ld3/b;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    iget-object v2, v0, Ld3/b;->b:Ljava/net/URL;

    .line 872
    .line 873
    if-eqz v2, :cond_37f

    .line 874
    .line 875
    const-string v3, "Following redirect to: %s"

    .line 876
    .line 877
    invoke-static {v13, v3, v2}, Ly1/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 878
    .line 879
    .line 880
    new-instance v3, Lc5/h;

    .line 881
    .line 882
    iget-object v7, v5, Lc5/h;->c:Ljava/lang/Object;

    .line 883
    .line 884
    check-cast v7, Le3/i;

    .line 885
    .line 886
    iget-object v5, v5, Lc5/h;->d:Ljava/lang/Object;

    .line 887
    .line 888
    check-cast v5, Ljava/lang/String;

    .line 889
    .line 890
    const/4 v8, 0x5

    .line 891
    invoke-direct {v3, v2, v7, v5, v8}, Lc5/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 892
    .line 893
    .line 894
    move-object v5, v3

    .line 895
    goto :goto_380

    .line 896
    :cond_37f
    const/4 v5, 0x0

    .line 897
    :goto_380
    if-eqz v5, :cond_387

    .line 898
    .line 899
    add-int/lit8 v4, v4, -0x1

    .line 900
    .line 901
    const/4 v2, 0x1

    .line 902
    if-ge v4, v2, :cond_362

    .line 903
    .line 904
    :cond_387
    iget v1, v0, Ld3/b;->a:I

    .line 905
    .line 906
    const/16 v2, 0xc8

    .line 907
    .line 908
    if-ne v1, v2, :cond_399

    .line 909
    .line 910
    iget-wide v0, v0, Ld3/b;->c:J

    .line 911
    .line 912
    new-instance v2, Lg3/a;

    .line 913
    .line 914
    const/4 v3, 0x1

    .line 915
    invoke-direct {v2, v3, v0, v1}, Lg3/a;-><init>(IJ)V
    :try_end_395
    .catch Ljava/io/IOException; {:try_start_356 .. :try_end_395} :catch_397

    .line 916
    .line 917
    .line 918
    move-object v9, v2

    .line 919
    goto :goto_351

    .line 920
    :catch_397
    move-exception v0

    .line 921
    goto :goto_3c5

    .line 922
    :cond_399
    const/16 v0, 0x1f4

    .line 923
    .line 924
    if-ge v1, v0, :cond_3a1

    .line 925
    .line 926
    const/16 v0, 0x194

    .line 927
    .line 928
    if-ne v1, v0, :cond_3a4

    .line 929
    .line 930
    :cond_3a1
    const-wide/16 v1, -0x1

    .line 931
    .line 932
    goto :goto_3be

    .line 933
    :cond_3a4
    const/16 v0, 0x190

    .line 934
    .line 935
    if-ne v1, v0, :cond_3b5

    .line 936
    .line 937
    :try_start_3a8
    new-instance v0, Lg3/a;
    :try_end_3aa
    .catch Ljava/io/IOException; {:try_start_3a8 .. :try_end_3aa} :catch_3b1

    .line 938
    .line 939
    const-wide/16 v1, -0x1

    .line 940
    .line 941
    const/4 v3, 0x4

    .line 942
    :try_start_3ad
    invoke-direct {v0, v3, v1, v2}, Lg3/a;-><init>(IJ)V

    .line 943
    .line 944
    .line 945
    goto :goto_350

    .line 946
    :catch_3b1
    move-exception v0

    .line 947
    const-wide/16 v1, -0x1

    .line 948
    .line 949
    goto :goto_3c5

    .line 950
    :cond_3b5
    const-wide/16 v1, -0x1

    .line 951
    .line 952
    new-instance v0, Lg3/a;

    .line 953
    .line 954
    const/4 v3, 0x3

    .line 955
    invoke-direct {v0, v3, v1, v2}, Lg3/a;-><init>(IJ)V

    .line 956
    .line 957
    .line 958
    goto :goto_350

    .line 959
    :goto_3be
    new-instance v0, Lg3/a;

    .line 960
    .line 961
    const/4 v3, 0x2

    .line 962
    invoke-direct {v0, v3, v1, v2}, Lg3/a;-><init>(IJ)V
    :try_end_3c4
    .catch Ljava/io/IOException; {:try_start_3ad .. :try_end_3c4} :catch_397

    .line 963
    .line 964
    .line 965
    goto :goto_350

    .line 966
    :goto_3c5
    const-string v1, "Could not make request to the backend"

    .line 967
    .line 968
    invoke-static {v13, v1, v0}, Ly1/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 969
    .line 970
    .line 971
    new-instance v0, Lg3/a;

    .line 972
    .line 973
    const-wide/16 v1, -0x1

    .line 974
    .line 975
    const/4 v3, 0x2

    .line 976
    invoke-direct {v0, v3, v1, v2}, Lg3/a;-><init>(IJ)V

    .line 977
    .line 978
    .line 979
    move-object v9, v0

    .line 980
    :goto_3d3
    iget v0, v9, Lg3/a;->a:I

    .line 981
    .line 982
    if-ne v0, v3, :cond_3ef

    .line 983
    .line 984
    new-instance v0, Ll3/g;

    .line 985
    .line 986
    move-object/from16 v1, p0

    .line 987
    .line 988
    move-object/from16 v3, p1

    .line 989
    .line 990
    move-object v2, v12

    .line 991
    move-wide/from16 v4, v32

    .line 992
    .line 993
    invoke-direct/range {v0 .. v5}, Ll3/g;-><init>(Ll3/i;Ljava/lang/Iterable;Lf3/i;J)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v10, v0}, Lm3/h;->t(Ln3/b;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    const/4 v2, 0x1

    .line 1000
    add-int/lit8 v0, p2, 0x1

    .line 1001
    .line 1002
    iget-object v4, v1, Ll3/i;->d:Lc5/h;

    .line 1003
    .line 1004
    invoke-virtual {v4, v3, v0, v2}, Lc5/h;->t(Lf3/i;IZ)V

    .line 1005
    .line 1006
    .line 1007
    return-void

    .line 1008
    :cond_3ef
    move-object/from16 v1, p0

    .line 1009
    .line 1010
    move-object/from16 v3, p1

    .line 1011
    .line 1012
    move-object v7, v12

    .line 1013
    move-wide/from16 v4, v32

    .line 1014
    .line 1015
    const/4 v2, 0x1

    .line 1016
    new-instance v8, Lb2/d;

    .line 1017
    .line 1018
    const/4 v11, 0x4

    .line 1019
    invoke-direct {v8, v1, v11, v7}, Lb2/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v10, v8}, Lm3/h;->t(Ln3/b;)Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    if-ne v0, v2, :cond_415

    .line 1026
    .line 1027
    iget-wide v7, v9, Lg3/a;->b:J

    .line 1028
    .line 1029
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 1030
    .line 1031
    .line 1032
    move-result-wide v4

    .line 1033
    if-eqz v31, :cond_460

    .line 1034
    .line 1035
    new-instance v0, Lcom/google/firebase/messaging/j0;

    .line 1036
    .line 1037
    const/16 v2, 0x8

    .line 1038
    .line 1039
    invoke-direct {v0, v2, v1}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v10, v0}, Lm3/h;->t(Ln3/b;)Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    goto :goto_460

    .line 1046
    :cond_415
    const/4 v11, 0x4

    .line 1047
    if-ne v0, v11, :cond_460

    .line 1048
    .line 1049
    new-instance v0, Ljava/util/HashMap;

    .line 1050
    .line 1051
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1052
    .line 1053
    .line 1054
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v2

    .line 1058
    :goto_421
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1059
    .line 1060
    .line 1061
    move-result v7

    .line 1062
    if-eqz v7, :cond_457

    .line 1063
    .line 1064
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v7

    .line 1068
    check-cast v7, Lm3/b;

    .line 1069
    .line 1070
    iget-object v7, v7, Lm3/b;->c:Lf3/h;

    .line 1071
    .line 1072
    iget-object v7, v7, Lf3/h;->a:Ljava/lang/String;

    .line 1073
    .line 1074
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1075
    .line 1076
    .line 1077
    move-result v8

    .line 1078
    if-nez v8, :cond_441

    .line 1079
    .line 1080
    const/16 v18, 0x1

    .line 1081
    .line 1082
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v8

    .line 1086
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    goto :goto_421

    .line 1090
    :cond_441
    const/16 v18, 0x1

    .line 1091
    .line 1092
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v8

    .line 1096
    check-cast v8, Ljava/lang/Integer;

    .line 1097
    .line 1098
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1099
    .line 1100
    .line 1101
    move-result v8

    .line 1102
    add-int/lit8 v8, v8, 0x1

    .line 1103
    .line 1104
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v8

    .line 1108
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    goto :goto_421

    .line 1112
    :cond_457
    new-instance v2, Lb2/d;

    .line 1113
    .line 1114
    const/4 v7, 0x5

    .line 1115
    invoke-direct {v2, v1, v7, v0}, Lb2/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v10, v2}, Lm3/h;->t(Ln3/b;)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    :cond_460
    :goto_460
    move-object/from16 v2, v31

    .line 1122
    .line 1123
    const-wide/16 v7, 0x0

    .line 1124
    .line 1125
    goto/16 :goto_13

    .line 1126
    .line 1127
    :cond_466
    new-instance v0, Ll3/h;

    .line 1128
    .line 1129
    invoke-direct {v0, v4, v5, v1, v3}, Ll3/h;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v10, v0}, Lm3/h;->t(Ln3/b;)Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    return-void
.end method

###### Class l3.f (l3.f)
.class public final synthetic Ll3/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ln3/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll3/i;

.field public final synthetic c:Lf3/i;


# direct methods
.method public synthetic constructor <init>(Ll3/i;Lf3/i;I)V
    .registers 4

    .line 1
    iput p3, p0, Ll3/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll3/f;->b:Ll3/i;

    .line 4
    .line 5
    iput-object p2, p0, Ll3/f;->c:Lf3/i;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Ll3/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_66

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll3/f;->b:Ll3/i;

    .line 7
    .line 8
    iget-object v0, v0, Ll3/i;->c:Lm3/d;

    .line 9
    .line 10
    check-cast v0, Lm3/h;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lb2/d;

    .line 16
    .line 17
    const/4 v2, 0x6

    .line 18
    iget-object v3, p0, Ll3/f;->c:Lf3/i;

    .line 19
    .line 20
    invoke-direct {v1, v0, v2, v3}, Lb2/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lm3/h;->g(Lm3/f;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Iterable;

    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_1d
    iget-object v0, p0, Ll3/f;->c:Lf3/i;

    .line 31
    .line 32
    iget-object v1, p0, Ll3/f;->b:Ll3/i;

    .line 33
    .line 34
    iget-object v1, v1, Ll3/i;->c:Lm3/d;

    .line 35
    .line 36
    check-cast v1, Lm3/h;

    .line 37
    .line 38
    invoke-virtual {v1}, Lm3/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 43
    .line 44
    .line 45
    :try_start_2c
    invoke-static {v2, v0}, Lm3/h;->c(Landroid/database/sqlite/SQLiteDatabase;Lf3/i;)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_35

    .line 50
    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    goto :goto_53

    .line 54
    :cond_35
    invoke-virtual {v1}, Lm3/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v3, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    filled-new-array {v0}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_5a

    .line 72
    :try_start_47
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v1
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_5c

    .line 80
    :try_start_4f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 81
    .line 82
    .line 83
    move-object v0, v1

    .line 84
    :goto_53
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_5a

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :catchall_5a
    move-exception v0

    .line 92
    goto :goto_61

    .line 93
    :catchall_5c
    move-exception v1

    .line 94
    :try_start_5d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    .line 96
    .line 97
    throw v1
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_5a

    .line 98
    :goto_61
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    nop

    .line 103
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method
