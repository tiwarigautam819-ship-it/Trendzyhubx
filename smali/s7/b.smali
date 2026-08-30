###### Class s7.b (s7.b)
.class public abstract Ls7/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:[B

.field public static final b:Lr7/k;

.field public static final c:Lr7/v;

.field public static final d:Le8/o;

.field public static final e:Ljava/util/TimeZone;

.field public static final f:Lk7/f;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    sput-object v1, Ls7/b;->a:[B

    .line 5
    .line 6
    new-array v2, v0, [Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v2}, Ly1/g;->t([Ljava/lang/String;)Lr7/k;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sput-object v2, Ls7/b;->b:Lr7/k;

    .line 13
    .line 14
    new-instance v2, Le8/g;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1, v0}, Le8/g;->x([BI)V

    .line 20
    .line 21
    .line 22
    int-to-long v3, v0

    .line 23
    new-instance v1, Lr7/v;

    .line 24
    .line 25
    invoke-direct {v1, v3, v4, v2}, Lr7/v;-><init>(JLe8/g;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Ls7/b;->c:Lr7/v;

    .line 29
    .line 30
    move-wide v5, v3

    .line 31
    move-wide v7, v3

    .line 32
    invoke-static/range {v3 .. v8}, Ls7/b;->c(JJJ)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Le8/j;->d:Le8/j;

    .line 36
    .line 37
    const-string v1, "efbbbf"

    .line 38
    .line 39
    invoke-static {v1}, Le5/e;->h(Ljava/lang/String;)Le8/j;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "feff"

    .line 44
    .line 45
    invoke-static {v2}, Le5/e;->h(Ljava/lang/String;)Le8/j;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "fffe"

    .line 50
    .line 51
    invoke-static {v3}, Le5/e;->h(Ljava/lang/String;)Le8/j;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const-string v4, "0000ffff"

    .line 56
    .line 57
    invoke-static {v4}, Le5/e;->h(Ljava/lang/String;)Le8/j;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v5, "ffff0000"

    .line 62
    .line 63
    invoke-static {v5}, Le5/e;->h(Ljava/lang/String;)Le8/j;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const/4 v6, 0x5

    .line 68
    new-array v7, v6, [Le8/j;

    .line 69
    .line 70
    aput-object v1, v7, v0

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    aput-object v2, v7, v1

    .line 74
    .line 75
    const/4 v2, 0x2

    .line 76
    aput-object v3, v7, v2

    .line 77
    .line 78
    const/4 v2, 0x3

    .line 79
    aput-object v4, v7, v2

    .line 80
    .line 81
    const/4 v2, 0x4

    .line 82
    aput-object v5, v7, v2

    .line 83
    .line 84
    new-instance v12, Ljava/util/ArrayList;

    .line 85
    .line 86
    new-instance v3, Ls6/d;

    .line 87
    .line 88
    invoke-direct {v3, v7, v0}, Ls6/d;-><init>([Ljava/lang/Object;Z)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-le v3, v1, :cond_66

    .line 99
    .line 100
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    :cond_66
    new-instance v3, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .line 107
    .line 108
    move v4, v0

    .line 109
    :goto_6c
    const/4 v5, -0x1

    .line 110
    if-ge v4, v6, :cond_7b

    .line 111
    .line 112
    aget-object v8, v7, v4

    .line 113
    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    add-int/lit8 v4, v4, 0x1

    .line 122
    .line 123
    goto :goto_6c

    .line 124
    :cond_7b
    new-array v4, v0, [Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, [Ljava/lang/Integer;

    .line 131
    .line 132
    array-length v4, v3

    .line 133
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v3}, Ls6/h;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    move v3, v0

    .line 142
    move v4, v3

    .line 143
    :goto_8e
    if-ge v3, v6, :cond_103

    .line 144
    .line 145
    aget-object v8, v7, v3

    .line 146
    .line 147
    add-int/lit8 v9, v4, 0x1

    .line 148
    .line 149
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    const-string v13, ")."

    .line 158
    .line 159
    if-ltz v10, :cond_f7

    .line 160
    .line 161
    if-gt v10, v11, :cond_d8

    .line 162
    .line 163
    add-int/lit8 v10, v10, -0x1

    .line 164
    .line 165
    move v11, v0

    .line 166
    :goto_a5
    if-gt v11, v10, :cond_ca

    .line 167
    .line 168
    add-int v13, v11, v10

    .line 169
    .line 170
    ushr-int/2addr v13, v1

    .line 171
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v14

    .line 175
    check-cast v14, Ljava/lang/Comparable;

    .line 176
    .line 177
    if-ne v14, v8, :cond_b4

    .line 178
    .line 179
    move v14, v0

    .line 180
    goto :goto_c0

    .line 181
    :cond_b4
    if-nez v14, :cond_b8

    .line 182
    .line 183
    move v14, v5

    .line 184
    goto :goto_c0

    .line 185
    :cond_b8
    if-nez v8, :cond_bc

    .line 186
    .line 187
    move v14, v1

    .line 188
    goto :goto_c0

    .line 189
    :cond_bc
    invoke-interface {v14, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    :goto_c0
    if-gez v14, :cond_c5

    .line 194
    .line 195
    add-int/lit8 v11, v13, 0x1

    .line 196
    .line 197
    goto :goto_a5

    .line 198
    :cond_c5
    if-lez v14, :cond_cd

    .line 199
    .line 200
    add-int/lit8 v10, v13, -0x1

    .line 201
    .line 202
    goto :goto_a5

    .line 203
    :cond_ca
    add-int/lit8 v11, v11, 0x1

    .line 204
    .line 205
    neg-int v13, v11

    .line 206
    :cond_cd
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v15, v13, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    add-int/lit8 v3, v3, 0x1

    .line 214
    .line 215
    move v4, v9

    .line 216
    goto :goto_8e

    .line 217
    :cond_d8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 218
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v2, "toIndex ("

    .line 222
    .line 223
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v2, ") is greater than size ("

    .line 230
    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v0

    .line 248
    :cond_f7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 249
    .line 250
    const-string v1, "fromIndex (0) is greater than toIndex ("

    .line 251
    .line 252
    invoke-static {v10, v1, v13}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v0

    .line 260
    :cond_103
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    check-cast v1, Le8/j;

    .line 265
    .line 266
    invoke-virtual {v1}, Le8/j;->a()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-lez v1, :cond_1f5

    .line 271
    .line 272
    move v1, v0

    .line 273
    :goto_110
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-ge v1, v3, :cond_181

    .line 278
    .line 279
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    check-cast v3, Le8/j;

    .line 284
    .line 285
    add-int/lit8 v4, v1, 0x1

    .line 286
    .line 287
    move v5, v4

    .line 288
    :goto_11f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    if-ge v5, v8, :cond_17f

    .line 293
    .line 294
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    check-cast v8, Le8/j;

    .line 299
    .line 300
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    const-string v9, "prefix"

    .line 304
    .line 305
    invoke-static {v9, v3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3}, Le8/j;->a()I

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    invoke-virtual {v8, v3, v9}, Le8/j;->f(Le8/j;I)Z

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    if-eqz v9, :cond_17f

    .line 317
    .line 318
    invoke-virtual {v8}, Le8/j;->a()I

    .line 319
    .line 320
    .line 321
    move-result v9

    .line 322
    invoke-virtual {v3}, Le8/j;->a()I

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    if-eq v9, v10, :cond_167

    .line 327
    .line 328
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    check-cast v8, Ljava/lang/Number;

    .line 333
    .line 334
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v9

    .line 342
    check-cast v9, Ljava/lang/Number;

    .line 343
    .line 344
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 345
    .line 346
    .line 347
    move-result v9

    .line 348
    if-le v8, v9, :cond_164

    .line 349
    .line 350
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    goto :goto_11f

    .line 357
    :cond_164
    add-int/lit8 v5, v5, 0x1

    .line 358
    .line 359
    goto :goto_11f

    .line 360
    :cond_167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    const-string v1, "duplicate option: "

    .line 363
    .line 364
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v1

    .line 384
    :cond_17f
    move v1, v4

    .line 385
    goto :goto_110

    .line 386
    :cond_181
    new-instance v10, Le8/g;

    .line 387
    .line 388
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 389
    .line 390
    .line 391
    const/4 v13, 0x0

    .line 392
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 393
    .line 394
    .line 395
    move-result v14

    .line 396
    const-wide/16 v8, 0x0

    .line 397
    .line 398
    const/4 v11, 0x0

    .line 399
    invoke-static/range {v8 .. v15}, Lm1/j;->d(JLe8/g;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 400
    .line 401
    .line 402
    iget-wide v3, v10, Le8/g;->b:J

    .line 403
    .line 404
    int-to-long v1, v2

    .line 405
    div-long/2addr v3, v1

    .line 406
    long-to-int v1, v3

    .line 407
    new-array v1, v1, [I

    .line 408
    .line 409
    move v2, v0

    .line 410
    :goto_199
    invoke-virtual {v10}, Le8/g;->c()Z

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-nez v3, :cond_1a9

    .line 415
    .line 416
    add-int/lit8 v3, v2, 0x1

    .line 417
    .line 418
    invoke-virtual {v10}, Le8/g;->readInt()I

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    aput v4, v1, v2

    .line 423
    .line 424
    move v2, v3

    .line 425
    goto :goto_199

    .line 426
    :cond_1a9
    new-instance v2, Le8/o;

    .line 427
    .line 428
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    const-string v4, "copyOf(this, size)"

    .line 433
    .line 434
    invoke-static {v4, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    check-cast v3, [Le8/j;

    .line 438
    .line 439
    invoke-direct {v2, v3, v1}, Le8/o;-><init>([Le8/j;[I)V

    .line 440
    .line 441
    .line 442
    sput-object v2, Ls7/b;->d:Le8/o;

    .line 443
    .line 444
    const-string v1, "GMT"

    .line 445
    .line 446
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    sput-object v1, Ls7/b;->e:Ljava/util/TimeZone;

    .line 454
    .line 455
    new-instance v1, Lk7/f;

    .line 456
    .line 457
    const-string v2, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    .line 458
    .line 459
    invoke-direct {v1, v2}, Lk7/f;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    sput-object v1, Ls7/b;->f:Lk7/f;

    .line 463
    .line 464
    const-class v1, Lr7/r;

    .line 465
    .line 466
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    const-string v2, "okhttp3."

    .line 471
    .line 472
    invoke-static {v1, v2}, Lk7/g;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    const-string v2, "Client"

    .line 477
    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    if-eqz v2, :cond_1f2

    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    add-int/lit8 v2, v2, -0x6

    .line 489
    .line 490
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    const-string v0, "substring(...)"

    .line 495
    .line 496
    invoke-static {v0, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    :cond_1f2
    sput-object v1, Ls7/b;->g:Ljava/lang/String;

    .line 500
    .line 501
    return-void

    .line 502
    :cond_1f5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 503
    .line 504
    const-string v1, "the empty byte string is not a supported option"

    .line 505
    .line 506
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    throw v0
.end method

.method public static final a(Lr7/m;Lr7/m;)Z
    .registers 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "other"

    .line 7
    .line 8
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lr7/m;->d:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lr7/m;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_26

    .line 20
    .line 21
    iget v0, p0, Lr7/m;->e:I

    .line 22
    .line 23
    iget v1, p1, Lr7/m;->e:I

    .line 24
    .line 25
    if-ne v0, v1, :cond_26

    .line 26
    .line 27
    iget-object p0, p0, Lr7/m;->a:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p1, Lr7/m;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p0, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_26

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_26
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public static final b(JLjava/util/concurrent/TimeUnit;)I
    .registers 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    const-string v3, "timeout"

    .line 6
    .line 7
    if-ltz v2, :cond_46

    .line 8
    .line 9
    if-eqz p2, :cond_3e

    .line 10
    .line 11
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    const-wide/32 v4, 0x7fffffff

    .line 16
    .line 17
    .line 18
    cmp-long p2, p0, v4

    .line 19
    .line 20
    if-gtz p2, :cond_2e

    .line 21
    .line 22
    cmp-long p2, p0, v0

    .line 23
    .line 24
    if-nez p2, :cond_2c

    .line 25
    .line 26
    if-gtz v2, :cond_1c

    .line 27
    .line 28
    goto :goto_2c

    .line 29
    :cond_1c
    const-string p0, " too small."

    .line 30
    .line 31
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2c
    :goto_2c
    long-to-int p0, p0

    .line 46
    return p0

    .line 47
    :cond_2e
    const-string p0, " too large."

    .line 48
    .line 49
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p1, "unit == null"

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_46
    const-string p0, " < 0"

    .line 72
    .line 73
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public static final c(JJJ)V
    .registers 10

    .line 1
    or-long v0, p2, p4

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_12

    .line 8
    .line 9
    cmp-long v0, p2, p0

    .line 10
    .line 11
    if-gtz v0, :cond_12

    .line 12
    .line 13
    sub-long/2addr p0, p2

    .line 14
    cmp-long p0, p0, p4

    .line 15
    .line 16
    if-ltz p0, :cond_12

    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static final d(Ljava/io/Closeable;)V
    .registers 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_5
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_8

    .line 7
    .line 8
    .line 9
    :catch_8
    return-void

    .line 10
    :catch_9
    move-exception p0

    .line 11
    throw p0
.end method

.method public static final e(Ljava/net/Socket;)V
    .registers 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_5
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_8} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_8

    .line 7
    .line 8
    .line 9
    :catch_8
    return-void

    .line 10
    :catch_9
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "bio == null"

    .line 16
    .line 17
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_17

    .line 22
    .line 23
    return-void

    .line 24
    :cond_17
    throw p0

    .line 25
    :catch_18
    move-exception p0

    .line 26
    throw p0
.end method

.method public static final f(IILjava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 1
    :goto_0
    if-ge p0, p1, :cond_10

    .line 2
    .line 3
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p3, v0}, Lk7/g;->w(Ljava/lang/CharSequence;C)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    return p0

    .line 14
    :cond_d
    add-int/lit8 p0, p0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_10
    return p1
.end method

.method public static final g(Ljava/lang/String;CII)I
    .registers 5

    .line 1
    :goto_0
    if-ge p2, p3, :cond_c

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_9

    .line 8
    .line 9
    return p2

    .line 10
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_c
    return p3
.end method

.method public static final varargs h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    array-length v1, p1

    .line 14
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final i([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z
    .registers 10

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 9
    .line 10
    goto :goto_3b

    .line 11
    :cond_a
    if-eqz p1, :cond_3b

    .line 12
    .line 13
    array-length v0, p1

    .line 14
    if-nez v0, :cond_10

    .line 15
    .line 16
    goto :goto_3b

    .line 17
    :cond_10
    array-length v0, p0

    .line 18
    move v2, v1

    .line 19
    :goto_12
    if-ge v2, v0, :cond_3b

    .line 20
    .line 21
    aget-object v3, p0, v2

    .line 22
    .line 23
    move v4, v1

    .line 24
    :goto_17
    array-length v5, p1

    .line 25
    const/4 v6, 0x1

    .line 26
    if-ge v4, v5, :cond_1d

    .line 27
    .line 28
    move v5, v6

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v5, v1

    .line 31
    :goto_1e
    if-eqz v5, :cond_38

    .line 32
    .line 33
    add-int/lit8 v5, v4, 0x1

    .line 34
    .line 35
    :try_start_22
    aget-object v4, p1, v4
    :try_end_24
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_22 .. :try_end_24} :catch_2d

    .line 36
    .line 37
    invoke-interface {p2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_2b

    .line 42
    .line 43
    return v6

    .line 44
    :cond_2b
    move v4, v5

    .line 45
    goto :goto_17

    .line 46
    :catch_2d
    move-exception p0

    .line 47
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_38
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_12

    .line 60
    :cond_3b
    :goto_3b
    return v1
.end method

.method public static final j(Lr7/u;)J
    .registers 3

    .line 1
    iget-object p0, p0, Lr7/u;->f:Lr7/k;

    .line 2
    .line 3
    const-string v0, "Content-Length"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lr7/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    if-eqz p0, :cond_10

    .line 12
    .line 13
    :try_start_c
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_10} :catch_10

    .line 17
    :catch_10
    :cond_10
    return-wide v0
.end method

.method public static final varargs k([Ljava/lang/Object;)Ljava/util/List;
    .registers 2

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, [Ljava/lang/Object;

    .line 11
    .line 12
    array-length v0, p0

    .line 13
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ls6/h;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "unmodifiableList(listOf(*elements.clone()))"

    .line 26
    .line 27
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public static final l(Ljava/lang/String;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_20

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0x1f

    .line 13
    .line 14
    invoke-static {v2, v3}, Ld7/g;->g(II)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-lez v3, :cond_1f

    .line 19
    .line 20
    const/16 v3, 0x7f

    .line 21
    .line 22
    invoke-static {v2, v3}, Ld7/g;->g(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ltz v2, :cond_1c

    .line 27
    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_5

    .line 32
    :cond_1f
    :goto_1f
    return v1

    .line 33
    :cond_20
    const/4 p0, -0x1

    .line 34
    return p0
.end method

.method public static final m(ILjava/lang/String;I)I
    .registers 5

    .line 1
    :goto_0
    if-ge p0, p2, :cond_22

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    if-ne v0, v1, :cond_b

    .line 10
    .line 11
    goto :goto_1e

    .line 12
    :cond_b
    const/16 v1, 0xa

    .line 13
    .line 14
    if-ne v0, v1, :cond_10

    .line 15
    .line 16
    goto :goto_1e

    .line 17
    :cond_10
    const/16 v1, 0xc

    .line 18
    .line 19
    if-ne v0, v1, :cond_15

    .line 20
    .line 21
    goto :goto_1e

    .line 22
    :cond_15
    const/16 v1, 0xd

    .line 23
    .line 24
    if-ne v0, v1, :cond_1a

    .line 25
    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    const/16 v1, 0x20

    .line 28
    .line 29
    if-ne v0, v1, :cond_21

    .line 30
    .line 31
    :goto_1e
    add-int/lit8 p0, p0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_21
    return p0

    .line 35
    :cond_22
    return p2
.end method

.method public static final n(ILjava/lang/String;I)I
    .registers 5

    .line 1
    add-int/lit8 p2, p2, -0x1

    .line 2
    .line 3
    if-gt p0, p2, :cond_28

    .line 4
    .line 5
    :goto_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    if-ne v0, v1, :cond_d

    .line 12
    .line 13
    goto :goto_20

    .line 14
    :cond_d
    const/16 v1, 0xa

    .line 15
    .line 16
    if-ne v0, v1, :cond_12

    .line 17
    .line 18
    goto :goto_20

    .line 19
    :cond_12
    const/16 v1, 0xc

    .line 20
    .line 21
    if-ne v0, v1, :cond_17

    .line 22
    .line 23
    goto :goto_20

    .line 24
    :cond_17
    const/16 v1, 0xd

    .line 25
    .line 26
    if-ne v0, v1, :cond_1c

    .line 27
    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    const/16 v1, 0x20

    .line 30
    .line 31
    if-ne v0, v1, :cond_25

    .line 32
    .line 33
    :goto_20
    if-eq p2, p0, :cond_28

    .line 34
    .line 35
    add-int/lit8 p2, p2, -0x1

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_25
    add-int/lit8 p2, p2, 0x1

    .line 39
    .line 40
    return p2

    .line 41
    :cond_28
    return p0
.end method

.method public static final o([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;
    .registers 11

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_d
    if-ge v3, v1, :cond_27

    .line 15
    .line 16
    aget-object v4, p0, v3

    .line 17
    .line 18
    array-length v5, p1

    .line 19
    move v6, v2

    .line 20
    :goto_13
    if-ge v6, v5, :cond_24

    .line 21
    .line 22
    aget-object v7, p1, v6

    .line 23
    .line 24
    invoke-interface {p2, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-nez v7, :cond_21

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_24

    .line 34
    :cond_21
    add-int/lit8 v6, v6, 0x1

    .line 35
    .line 36
    goto :goto_13

    .line 37
    :cond_24
    :goto_24
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_d

    .line 40
    :cond_27
    new-array p0, v2, [Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, [Ljava/lang/String;

    .line 47
    .line 48
    return-object p0
.end method

.method public static final p(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Authorization"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_28

    .line 13
    .line 14
    const-string v0, "Cookie"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_28

    .line 21
    .line 22
    const-string v0, "Proxy-Authorization"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_28

    .line 29
    .line 30
    const-string v0, "Set-Cookie"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_26

    .line 37
    .line 38
    goto :goto_28

    .line 39
    :cond_26
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_28
    :goto_28
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public static final q(C)I
    .registers 3

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-gt v0, p0, :cond_a

    .line 4
    .line 5
    const/16 v1, 0x3a

    .line 6
    .line 7
    if-ge p0, v1, :cond_a

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    return p0

    .line 11
    :cond_a
    const/16 v0, 0x61

    .line 12
    .line 13
    if-gt v0, p0, :cond_15

    .line 14
    .line 15
    const/16 v0, 0x67

    .line 16
    .line 17
    if-ge p0, v0, :cond_15

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x57

    .line 20
    .line 21
    return p0

    .line 22
    :cond_15
    const/16 v0, 0x41

    .line 23
    .line 24
    if-gt v0, p0, :cond_20

    .line 25
    .line 26
    const/16 v0, 0x47

    .line 27
    .line 28
    if-ge p0, v0, :cond_20

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x37

    .line 31
    .line 32
    return p0

    .line 33
    :cond_20
    const/4 p0, -0x1

    .line 34
    return p0
.end method

.method public static final r(Le8/i;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "default"

    .line 7
    .line 8
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Ls7/b;->d:Le8/o;

    .line 12
    .line 13
    invoke-interface {p0, v0}, Le8/i;->k(Le8/o;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, -0x1

    .line 18
    if-eq p0, v0, :cond_65

    .line 19
    .line 20
    if-eqz p0, :cond_5d

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    if-eq p0, p1, :cond_55

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    if-eq p0, p1, :cond_4d

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    const-string v0, "forName(...)"

    .line 30
    .line 31
    if-eq p0, p1, :cond_3b

    .line 32
    .line 33
    const/4 p1, 0x4

    .line 34
    if-ne p0, p1, :cond_35

    .line 35
    .line 36
    sget-object p0, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    sget-object p0, Lk7/a;->b:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    if-nez p0, :cond_34

    .line 41
    .line 42
    const-string p0, "UTF-32LE"

    .line 43
    .line 44
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sput-object p0, Lk7/a;->b:Ljava/nio/charset/Charset;

    .line 52
    .line 53
    :cond_34
    return-object p0

    .line 54
    :cond_35
    new-instance p0, Ljava/lang/AssertionError;

    .line 55
    .line 56
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_3b
    sget-object p0, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    sget-object p0, Lk7/a;->c:Ljava/nio/charset/Charset;

    .line 63
    .line 64
    if-nez p0, :cond_4c

    .line 65
    .line 66
    const-string p0, "UTF-32BE"

    .line 67
    .line 68
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    sput-object p0, Lk7/a;->c:Ljava/nio/charset/Charset;

    .line 76
    .line 77
    :cond_4c
    return-object p0

    .line 78
    :cond_4d
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 79
    .line 80
    const-string p1, "UTF_16LE"

    .line 81
    .line 82
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_55
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 87
    .line 88
    const-string p1, "UTF_16BE"

    .line 89
    .line 90
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_5d
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    const-string p1, "UTF_8"

    .line 97
    .line 98
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_65
    return-object p1
.end method

.method public static final s(Le8/i;)I
    .registers 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Le8/i;->readByte()B

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    shl-int/lit8 v0, v0, 0x10

    .line 13
    .line 14
    invoke-interface {p0}, Le8/i;->readByte()B

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x8

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    invoke-interface {p0}, Le8/i;->readByte()B

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 28
    .line 29
    or-int/2addr p0, v0

    .line 30
    return p0
.end method

.method public static final t(Le8/w;I)Z
    .registers 14

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-string v1, "timeUnit"

    .line 4
    .line 5
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-interface {p0}, Le8/w;->b()Le8/y;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Le8/y;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const-wide v4, 0x7fffffffffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    if-eqz v3, :cond_24

    .line 26
    .line 27
    invoke-interface {p0}, Le8/w;->b()Le8/y;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Le8/y;->c()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    sub-long/2addr v6, v1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move-wide v6, v4

    .line 38
    :goto_25
    invoke-interface {p0}, Le8/w;->b()Le8/y;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    int-to-long v8, p1

    .line 43
    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v8

    .line 47
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    add-long/2addr v8, v1

    .line 52
    invoke-virtual {v3, v8, v9}, Le8/y;->d(J)Le8/y;

    .line 53
    .line 54
    .line 55
    :try_start_36
    new-instance p1, Le8/g;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_3b
    const-wide/16 v8, 0x2000

    .line 61
    .line 62
    invoke-interface {p0, v8, v9, p1}, Le8/w;->h(JLe8/g;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v8

    .line 66
    const-wide/16 v10, -0x1

    .line 67
    .line 68
    cmp-long v0, v8, v10

    .line 69
    .line 70
    if-eqz v0, :cond_4d

    .line 71
    .line 72
    iget-wide v8, p1, Le8/g;->b:J

    .line 73
    .line 74
    invoke-virtual {p1, v8, v9}, Le8/g;->skip(J)V
    :try_end_4c
    .catch Ljava/io/InterruptedIOException; {:try_start_36 .. :try_end_4c} :catch_79
    .catchall {:try_start_36 .. :try_end_4c} :catchall_63

    .line 75
    .line 76
    .line 77
    goto :goto_3b

    .line 78
    :cond_4d
    cmp-long p1, v6, v4

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    if-nez p1, :cond_5a

    .line 82
    .line 83
    invoke-interface {p0}, Le8/w;->b()Le8/y;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Le8/y;->a()Le8/y;

    .line 88
    .line 89
    .line 90
    return v0

    .line 91
    :cond_5a
    invoke-interface {p0}, Le8/w;->b()Le8/y;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    add-long/2addr v1, v6

    .line 96
    invoke-virtual {p0, v1, v2}, Le8/y;->d(J)Le8/y;

    .line 97
    .line 98
    .line 99
    return v0

    .line 100
    :catchall_63
    move-exception p1

    .line 101
    cmp-long v0, v6, v4

    .line 102
    .line 103
    if-nez v0, :cond_70

    .line 104
    .line 105
    invoke-interface {p0}, Le8/w;->b()Le8/y;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Le8/y;->a()Le8/y;

    .line 110
    .line 111
    .line 112
    goto :goto_78

    .line 113
    :cond_70
    invoke-interface {p0}, Le8/w;->b()Le8/y;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    add-long/2addr v1, v6

    .line 118
    invoke-virtual {p0, v1, v2}, Le8/y;->d(J)Le8/y;

    .line 119
    .line 120
    .line 121
    :goto_78
    throw p1

    .line 122
    :catch_79
    cmp-long p1, v6, v4

    .line 123
    .line 124
    if-nez p1, :cond_85

    .line 125
    .line 126
    invoke-interface {p0}, Le8/w;->b()Le8/y;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Le8/y;->a()Le8/y;

    .line 131
    .line 132
    .line 133
    goto :goto_8d

    .line 134
    :cond_85
    invoke-interface {p0}, Le8/w;->b()Le8/y;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    add-long/2addr v1, v6

    .line 139
    invoke-virtual {p0, v1, v2}, Le8/y;->d(J)Le8/y;

    .line 140
    .line 141
    .line 142
    :goto_8d
    const/4 p0, 0x0

    .line 143
    return p0
.end method

.method public static final u(Ljava/util/List;)Lr7/k;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_32

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ly7/b;

    .line 23
    .line 24
    iget-object v2, v1, Ly7/b;->a:Le8/j;

    .line 25
    .line 26
    iget-object v1, v1, Ly7/b;->b:Le8/j;

    .line 27
    .line 28
    invoke-virtual {v2}, Le8/j;->h()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1}, Le8/j;->h()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lk7/g;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_b

    .line 51
    :cond_32
    new-instance p0, Lr7/k;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    new-array v1, v1, [Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, [Ljava/lang/String;

    .line 61
    .line 62
    invoke-direct {p0, v0}, Lr7/k;-><init>([Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object p0
.end method

.method public static final v(Lr7/m;Z)Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lr7/m;->e:I

    .line 7
    .line 8
    iget-object v1, p0, Lr7/m;->d:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, ":"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_24

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "["

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x5d

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_24
    if-nez p1, :cond_48

    .line 38
    .line 39
    iget-object p0, p0, Lr7/m;->a:Ljava/lang/String;

    .line 40
    .line 41
    const-string p1, "scheme"

    .line 42
    .line 43
    invoke-static {p1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const-string p1, "http"

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_38

    .line 53
    .line 54
    const/16 p0, 0x50

    .line 55
    .line 56
    goto :goto_44

    .line 57
    :cond_38
    const-string p1, "https"

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_43

    .line 64
    .line 65
    const/16 p0, 0x1bb

    .line 66
    .line 67
    goto :goto_44

    .line 68
    :cond_43
    const/4 p0, -0x1

    .line 69
    :goto_44
    if-eq v0, p0, :cond_47

    .line 70
    .line 71
    goto :goto_48

    .line 72
    :cond_47
    return-object v1

    .line 73
    :cond_48
    :goto_48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 p1, 0x3a

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method public static final w(Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-static {p0}, Ls6/g;->x(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "unmodifiableList(toMutableList())"

    .line 17
    .line 18
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public static final x(ILjava/lang/String;)I
    .registers 4

    .line 1
    if-eqz p1, :cond_1a

    .line 2
    .line 3
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_1a

    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v0, p0, v0

    .line 11
    .line 12
    if-lez v0, :cond_11

    .line 13
    .line 14
    const p0, 0x7fffffff

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :cond_11
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    cmp-long v0, p0, v0

    .line 21
    .line 22
    if-gez v0, :cond_19

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_19
    long-to-int p0, p0

    .line 27
    :catch_1a
    :cond_1a
    return p0
.end method

.method public static final y(ILjava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Ls7/b;->m(ILjava/lang/String;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0, p1, p2}, Ls7/b;->n(ILjava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 14
    .line 15
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method
