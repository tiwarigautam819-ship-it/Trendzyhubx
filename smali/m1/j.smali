###### Class m1.j (m1.j)
.class public abstract Lm1/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lj0/p0;


# static fields
.field public static volatile a:Lr7/r;


# direct methods
.method public static d(JLe8/g;ILjava/util/ArrayList;IILjava/util/ArrayList;)V
    .registers 28

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move/from16 v2, p5

    .line 8
    .line 9
    move/from16 v10, p6

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    const-string v3, "Failed requirement."

    .line 14
    .line 15
    if-ge v2, v10, :cond_1af

    .line 16
    .line 17
    move v4, v2

    .line 18
    :goto_11
    if-ge v4, v10, :cond_28

    .line 19
    .line 20
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Le8/j;

    .line 25
    .line 26
    invoke-virtual {v6}, Le8/j;->a()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-lt v6, v1, :cond_22

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_11

    .line 35
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_28
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Le8/j;

    .line 46
    .line 47
    add-int/lit8 v4, v10, -0x1

    .line 48
    .line 49
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Le8/j;

    .line 54
    .line 55
    invoke-virtual {v3}, Le8/j;->a()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-ne v1, v6, :cond_55

    .line 60
    .line 61
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Le8/j;

    .line 78
    .line 79
    move-object/from16 v19, v6

    .line 80
    .line 81
    move v6, v2

    .line 82
    move v2, v3

    .line 83
    move-object/from16 v3, v19

    .line 84
    .line 85
    goto :goto_57

    .line 86
    :cond_55
    move v6, v2

    .line 87
    const/4 v2, -0x1

    .line 88
    :goto_57
    invoke-virtual {v3, v1}, Le8/j;->d(I)B

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    invoke-virtual {v4, v1}, Le8/j;->d(I)B

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    const/4 v12, 0x4

    .line 97
    const/4 v13, 0x2

    .line 98
    if-eq v7, v9, :cond_127

    .line 99
    .line 100
    add-int/lit8 v3, v6, 0x1

    .line 101
    .line 102
    const/4 v4, 0x1

    .line 103
    :goto_66
    if-ge v3, v10, :cond_85

    .line 104
    .line 105
    add-int/lit8 v7, v3, -0x1

    .line 106
    .line 107
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    check-cast v7, Le8/j;

    .line 112
    .line 113
    invoke-virtual {v7, v1}, Le8/j;->d(I)B

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    check-cast v9, Le8/j;

    .line 122
    .line 123
    invoke-virtual {v9, v1}, Le8/j;->d(I)B

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-eq v7, v9, :cond_82

    .line 128
    .line 129
    add-int/lit8 v4, v4, 0x1

    .line 130
    .line 131
    :cond_82
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_66

    .line 134
    :cond_85
    iget-wide v14, v0, Le8/g;->b:J

    .line 135
    .line 136
    const/16 v16, -0x1

    .line 137
    .line 138
    int-to-long v11, v12

    .line 139
    div-long/2addr v14, v11

    .line 140
    add-long v14, v14, p0

    .line 141
    .line 142
    move-wide/from16 v17, v11

    .line 143
    .line 144
    int-to-long v11, v13

    .line 145
    add-long/2addr v14, v11

    .line 146
    mul-int/lit8 v3, v4, 0x2

    .line 147
    .line 148
    int-to-long v11, v3

    .line 149
    add-long/2addr v14, v11

    .line 150
    invoke-virtual {v0, v4}, Le8/g;->B(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Le8/g;->B(I)V

    .line 154
    .line 155
    .line 156
    move v2, v6

    .line 157
    :goto_9c
    if-ge v2, v10, :cond_c0

    .line 158
    .line 159
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    check-cast v3, Le8/j;

    .line 164
    .line 165
    invoke-virtual {v3, v1}, Le8/j;->d(I)B

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eq v2, v6, :cond_b8

    .line 170
    .line 171
    add-int/lit8 v4, v2, -0x1

    .line 172
    .line 173
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Le8/j;

    .line 178
    .line 179
    invoke-virtual {v4, v1}, Le8/j;->d(I)B

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eq v3, v4, :cond_bd

    .line 184
    .line 185
    :cond_b8
    and-int/lit16 v3, v3, 0xff

    .line 186
    .line 187
    invoke-virtual {v0, v3}, Le8/g;->B(I)V

    .line 188
    .line 189
    .line 190
    :cond_bd
    add-int/lit8 v2, v2, 0x1

    .line 191
    .line 192
    goto :goto_9c

    .line 193
    :cond_c0
    new-instance v4, Le8/g;

    .line 194
    .line 195
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 196
    .line 197
    .line 198
    move v7, v6

    .line 199
    :goto_c6
    if-ge v7, v10, :cond_123

    .line 200
    .line 201
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    check-cast v2, Le8/j;

    .line 206
    .line 207
    invoke-virtual {v2, v1}, Le8/j;->d(I)B

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    add-int/lit8 v3, v7, 0x1

    .line 212
    .line 213
    move v6, v3

    .line 214
    :goto_d5
    if-ge v6, v10, :cond_e7

    .line 215
    .line 216
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    check-cast v9, Le8/j;

    .line 221
    .line 222
    invoke-virtual {v9, v1}, Le8/j;->d(I)B

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    if-eq v2, v9, :cond_e4

    .line 227
    .line 228
    goto :goto_e8

    .line 229
    :cond_e4
    add-int/lit8 v6, v6, 0x1

    .line 230
    .line 231
    goto :goto_d5

    .line 232
    :cond_e7
    move v6, v10

    .line 233
    :goto_e8
    if-ne v3, v6, :cond_109

    .line 234
    .line 235
    add-int/lit8 v2, v1, 0x1

    .line 236
    .line 237
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v3, Le8/j;

    .line 242
    .line 243
    invoke-virtual {v3}, Le8/j;->a()I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-ne v2, v3, :cond_109

    .line 248
    .line 249
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Ljava/lang/Number;

    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    invoke-virtual {v0, v2}, Le8/g;->B(I)V

    .line 260
    .line 261
    .line 262
    move-object v9, v8

    .line 263
    move-wide v2, v14

    .line 264
    move v8, v6

    .line 265
    goto :goto_11f

    .line 266
    :cond_109
    iget-wide v2, v4, Le8/g;->b:J

    .line 267
    .line 268
    div-long v2, v2, v17

    .line 269
    .line 270
    add-long/2addr v2, v14

    .line 271
    long-to-int v2, v2

    .line 272
    mul-int/lit8 v2, v2, -0x1

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Le8/g;->B(I)V

    .line 275
    .line 276
    .line 277
    add-int/lit8 v5, v1, 0x1

    .line 278
    .line 279
    move-object v9, v8

    .line 280
    move-wide v2, v14

    .line 281
    move v8, v6

    .line 282
    move-object/from16 v6, p4

    .line 283
    .line 284
    invoke-static/range {v2 .. v9}, Lm1/j;->d(JLe8/g;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 285
    .line 286
    .line 287
    move-object v5, v6

    .line 288
    :goto_11f
    move-wide v14, v2

    .line 289
    move v7, v8

    .line 290
    move-object v8, v9

    .line 291
    goto :goto_c6

    .line 292
    :cond_123
    invoke-virtual {v0, v4}, Le8/g;->y(Le8/w;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_127
    move-object v9, v8

    .line 297
    const/16 v16, -0x1

    .line 298
    .line 299
    invoke-virtual {v3}, Le8/j;->a()I

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    invoke-virtual {v4}, Le8/j;->a()I

    .line 304
    .line 305
    .line 306
    move-result v8

    .line 307
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 308
    .line 309
    .line 310
    move-result v7

    .line 311
    const/4 v8, 0x0

    .line 312
    move v11, v1

    .line 313
    :goto_138
    if-ge v11, v7, :cond_149

    .line 314
    .line 315
    invoke-virtual {v3, v11}, Le8/j;->d(I)B

    .line 316
    .line 317
    .line 318
    move-result v14

    .line 319
    invoke-virtual {v4, v11}, Le8/j;->d(I)B

    .line 320
    .line 321
    .line 322
    move-result v15

    .line 323
    if-ne v14, v15, :cond_149

    .line 324
    .line 325
    add-int/lit8 v8, v8, 0x1

    .line 326
    .line 327
    add-int/lit8 v11, v11, 0x1

    .line 328
    .line 329
    goto :goto_138

    .line 330
    :cond_149
    iget-wide v14, v0, Le8/g;->b:J

    .line 331
    .line 332
    int-to-long v11, v12

    .line 333
    div-long/2addr v14, v11

    .line 334
    add-long v14, v14, p0

    .line 335
    .line 336
    move-wide/from16 v17, v11

    .line 337
    .line 338
    int-to-long v11, v13

    .line 339
    add-long/2addr v14, v11

    .line 340
    int-to-long v11, v8

    .line 341
    add-long/2addr v14, v11

    .line 342
    const-wide/16 v11, 0x1

    .line 343
    .line 344
    add-long/2addr v14, v11

    .line 345
    neg-int v4, v8

    .line 346
    invoke-virtual {v0, v4}, Le8/g;->B(I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v2}, Le8/g;->B(I)V

    .line 350
    .line 351
    .line 352
    add-int v4, v1, v8

    .line 353
    .line 354
    :goto_161
    if-ge v1, v4, :cond_16f

    .line 355
    .line 356
    invoke-virtual {v3, v1}, Le8/j;->d(I)B

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    and-int/lit16 v2, v2, 0xff

    .line 361
    .line 362
    invoke-virtual {v0, v2}, Le8/g;->B(I)V

    .line 363
    .line 364
    .line 365
    add-int/lit8 v1, v1, 0x1

    .line 366
    .line 367
    goto :goto_161

    .line 368
    :cond_16f
    add-int/lit8 v1, v6, 0x1

    .line 369
    .line 370
    if-ne v1, v10, :cond_195

    .line 371
    .line 372
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    check-cast v1, Le8/j;

    .line 377
    .line 378
    invoke-virtual {v1}, Le8/j;->a()I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-ne v4, v1, :cond_18d

    .line 383
    .line 384
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    check-cast v1, Ljava/lang/Number;

    .line 389
    .line 390
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    invoke-virtual {v0, v1}, Le8/g;->B(I)V

    .line 395
    .line 396
    .line 397
    return-void

    .line 398
    :cond_18d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 399
    .line 400
    const-string v1, "Check failed."

    .line 401
    .line 402
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v0

    .line 406
    :cond_195
    new-instance v3, Le8/g;

    .line 407
    .line 408
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 409
    .line 410
    .line 411
    iget-wide v1, v3, Le8/g;->b:J

    .line 412
    .line 413
    div-long v1, v1, v17

    .line 414
    .line 415
    add-long/2addr v1, v14

    .line 416
    long-to-int v1, v1

    .line 417
    mul-int/lit8 v1, v1, -0x1

    .line 418
    .line 419
    invoke-virtual {v0, v1}, Le8/g;->B(I)V

    .line 420
    .line 421
    .line 422
    move-object v8, v9

    .line 423
    move v7, v10

    .line 424
    move-wide v1, v14

    .line 425
    invoke-static/range {v1 .. v8}, Lm1/j;->d(JLe8/g;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v3}, Le8/g;->y(Le8/w;)V

    .line 429
    .line 430
    .line 431
    return-void

    .line 432
    :cond_1af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 433
    .line 434
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    throw v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Lv4/b;
    .registers 4

    .line 1
    new-instance v0, Lo5/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lo5/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lo5/a;

    .line 7
    .line 8
    invoke-static {p0}, Lv4/b;->a(Ljava/lang/Class;)Lv4/a;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lv4/a;->e:I

    .line 14
    .line 15
    new-instance p1, Lcom/google/firebase/messaging/j0;

    .line 16
    .line 17
    const/16 v1, 0xb

    .line 18
    .line 19
    invoke-direct {p1, v1, v0}, Lcom/google/firebase/messaging/j0;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lv4/a;->f:Lv4/d;

    .line 23
    .line 24
    invoke-virtual {p0}, Lv4/a;->b()Lv4/b;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static f(Ljava/lang/String;Lcom/getcapacitor/n;)Lv4/b;
    .registers 5

    .line 1
    const-class v0, Lo5/a;

    .line 2
    .line 3
    invoke-static {v0}, Lv4/b;->a(Ljava/lang/Class;)Lv4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Lv4/a;->e:I

    .line 9
    .line 10
    const-class v1, Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v1}, Lv4/h;->a(Ljava/lang/Class;)Lv4/h;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lv4/a;->a(Lv4/h;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lb2/d;

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    invoke-direct {v1, p0, p1, v2}, Lb2/d;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lv4/a;->f:Lv4/d;

    .line 27
    .line 28
    invoke-virtual {v0}, Lv4/a;->b()Lv4/b;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static final i(Ld7/d;)Ljava/lang/Class;
    .registers 2

    .line 1
    invoke-interface {p0}, Ld7/c;->a()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    .line 6
    .line 7
    invoke-static {v0, p0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public static final j(Li7/b;)Ljava/lang/Class;
    .registers 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Ld7/c;

    .line 7
    .line 8
    invoke-interface {p0}, Ld7/c;->a()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_13

    .line 17
    .line 18
    goto/16 :goto_88

    .line 19
    .line 20
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sparse-switch v1, :sswitch_data_8c

    .line 29
    .line 30
    .line 31
    goto/16 :goto_88

    .line 32
    .line 33
    :sswitch_20
    const-string v1, "short"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_29

    .line 40
    .line 41
    goto :goto_88

    .line 42
    :cond_29
    const-class p0, Ljava/lang/Short;

    .line 43
    .line 44
    return-object p0

    .line 45
    :sswitch_2c
    const-string v1, "float"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_35

    .line 52
    .line 53
    goto :goto_88

    .line 54
    :cond_35
    const-class p0, Ljava/lang/Float;

    .line 55
    .line 56
    return-object p0

    .line 57
    :sswitch_38
    const-string v1, "boolean"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_41

    .line 64
    .line 65
    goto :goto_88

    .line 66
    :cond_41
    const-class p0, Ljava/lang/Boolean;

    .line 67
    .line 68
    return-object p0

    .line 69
    :sswitch_44
    const-string v1, "void"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_4d

    .line 76
    .line 77
    goto :goto_88

    .line 78
    :cond_4d
    const-class p0, Ljava/lang/Void;

    .line 79
    .line 80
    return-object p0

    .line 81
    :sswitch_50
    const-string v1, "long"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_59

    .line 88
    .line 89
    goto :goto_88

    .line 90
    :cond_59
    const-class p0, Ljava/lang/Long;

    .line 91
    .line 92
    return-object p0

    .line 93
    :sswitch_5c
    const-string v1, "char"

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_65

    .line 100
    .line 101
    goto :goto_88

    .line 102
    :cond_65
    const-class p0, Ljava/lang/Character;

    .line 103
    .line 104
    return-object p0

    .line 105
    :sswitch_68
    const-string v1, "byte"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_71

    .line 112
    .line 113
    goto :goto_88

    .line 114
    :cond_71
    const-class p0, Ljava/lang/Byte;

    .line 115
    .line 116
    return-object p0

    .line 117
    :sswitch_74
    const-string v1, "int"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_7d

    .line 124
    .line 125
    goto :goto_88

    .line 126
    :cond_7d
    const-class p0, Ljava/lang/Integer;

    .line 127
    .line 128
    return-object p0

    .line 129
    :sswitch_80
    const-string v1, "double"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_89

    .line 136
    .line 137
    :goto_88
    return-object p0

    .line 138
    :cond_89
    const-class p0, Ljava/lang/Double;

    .line 139
    .line 140
    return-object p0

    .line 141
    :sswitch_data_8c
    .sparse-switch
        -0x4f08842f -> :sswitch_80
        0x197ef -> :sswitch_74
        0x2e6108 -> :sswitch_68
        0x2e9356 -> :sswitch_5c
        0x32c67c -> :sswitch_50
        0x375194 -> :sswitch_44
        0x3db6c28 -> :sswitch_38
        0x5d0225c -> :sswitch_2c
        0x685847c -> :sswitch_20
    .end sparse-switch
.end method

.method public static m(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "sha256/"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Le8/j;->d:Le8/j;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "publicKey.encoded"

    .line 19
    .line 20
    invoke-static {v1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    array-length v1, p0

    .line 24
    array-length v2, p0

    .line 25
    int-to-long v3, v2

    .line 26
    const/4 v2, 0x0

    .line 27
    int-to-long v5, v2

    .line 28
    int-to-long v7, v1

    .line 29
    invoke-static/range {v3 .. v8}, Li2/t;->c(JJJ)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Le8/j;

    .line 33
    .line 34
    array-length v4, p0

    .line 35
    invoke-static {v1, v4}, Ld4/a;->b(II)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v1, "copyOfRange(...)"

    .line 43
    .line 44
    invoke-static {v1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, p0}, Le8/j;-><init>([B)V

    .line 48
    .line 49
    .line 50
    const-string p0, "SHA-256"

    .line 51
    .line 52
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object v1, v3, Le8/j;->a:[B

    .line 57
    .line 58
    invoke-virtual {v3}, Le8/j;->a()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-virtual {p0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    new-instance v1, Le8/j;

    .line 70
    .line 71
    invoke-static {p0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, p0}, Le8/j;-><init>([B)V

    .line 75
    .line 76
    .line 77
    iget-object p0, v1, Le8/j;->a:[B

    .line 78
    .line 79
    sget-object v1, Le8/a;->a:[B

    .line 80
    .line 81
    const-string v3, "<this>"

    .line 82
    .line 83
    invoke-static {v3, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const-string v3, "map"

    .line 87
    .line 88
    invoke-static {v3, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    array-length v3, p0

    .line 92
    const/4 v4, 0x2

    .line 93
    add-int/2addr v3, v4

    .line 94
    div-int/lit8 v3, v3, 0x3

    .line 95
    .line 96
    mul-int/lit8 v3, v3, 0x4

    .line 97
    .line 98
    new-array v3, v3, [B

    .line 99
    .line 100
    array-length v5, p0

    .line 101
    array-length v6, p0

    .line 102
    rem-int/lit8 v6, v6, 0x3

    .line 103
    .line 104
    sub-int/2addr v5, v6

    .line 105
    move v6, v2

    .line 106
    :goto_69
    if-ge v2, v5, :cond_a6

    .line 107
    .line 108
    add-int/lit8 v7, v2, 0x1

    .line 109
    .line 110
    aget-byte v8, p0, v2

    .line 111
    .line 112
    add-int/lit8 v9, v2, 0x2

    .line 113
    .line 114
    aget-byte v7, p0, v7

    .line 115
    .line 116
    add-int/lit8 v2, v2, 0x3

    .line 117
    .line 118
    aget-byte v9, p0, v9

    .line 119
    .line 120
    add-int/lit8 v10, v6, 0x1

    .line 121
    .line 122
    and-int/lit16 v11, v8, 0xff

    .line 123
    .line 124
    shr-int/2addr v11, v4

    .line 125
    aget-byte v11, v1, v11

    .line 126
    .line 127
    aput-byte v11, v3, v6

    .line 128
    .line 129
    add-int/lit8 v11, v6, 0x2

    .line 130
    .line 131
    and-int/lit8 v8, v8, 0x3

    .line 132
    .line 133
    shl-int/lit8 v8, v8, 0x4

    .line 134
    .line 135
    and-int/lit16 v12, v7, 0xff

    .line 136
    .line 137
    shr-int/lit8 v12, v12, 0x4

    .line 138
    .line 139
    or-int/2addr v8, v12

    .line 140
    aget-byte v8, v1, v8

    .line 141
    .line 142
    aput-byte v8, v3, v10

    .line 143
    .line 144
    add-int/lit8 v8, v6, 0x3

    .line 145
    .line 146
    and-int/lit8 v7, v7, 0xf

    .line 147
    .line 148
    shl-int/2addr v7, v4

    .line 149
    and-int/lit16 v10, v9, 0xff

    .line 150
    .line 151
    shr-int/lit8 v10, v10, 0x6

    .line 152
    .line 153
    or-int/2addr v7, v10

    .line 154
    aget-byte v7, v1, v7

    .line 155
    .line 156
    aput-byte v7, v3, v11

    .line 157
    .line 158
    add-int/lit8 v6, v6, 0x4

    .line 159
    .line 160
    and-int/lit8 v7, v9, 0x3f

    .line 161
    .line 162
    aget-byte v7, v1, v7

    .line 163
    .line 164
    aput-byte v7, v3, v8

    .line 165
    .line 166
    goto :goto_69

    .line 167
    :cond_a6
    array-length v7, p0

    .line 168
    sub-int/2addr v7, v5

    .line 169
    const/4 v5, 0x1

    .line 170
    const/16 v8, 0x3d

    .line 171
    .line 172
    if-eq v7, v5, :cond_da

    .line 173
    .line 174
    if-eq v7, v4, :cond_b0

    .line 175
    .line 176
    goto :goto_f6

    .line 177
    :cond_b0
    add-int/lit8 v5, v2, 0x1

    .line 178
    .line 179
    aget-byte v2, p0, v2

    .line 180
    .line 181
    aget-byte p0, p0, v5

    .line 182
    .line 183
    add-int/lit8 v5, v6, 0x1

    .line 184
    .line 185
    and-int/lit16 v7, v2, 0xff

    .line 186
    .line 187
    shr-int/2addr v7, v4

    .line 188
    aget-byte v7, v1, v7

    .line 189
    .line 190
    aput-byte v7, v3, v6

    .line 191
    .line 192
    add-int/lit8 v7, v6, 0x2

    .line 193
    .line 194
    and-int/lit8 v2, v2, 0x3

    .line 195
    .line 196
    shl-int/lit8 v2, v2, 0x4

    .line 197
    .line 198
    and-int/lit16 v9, p0, 0xff

    .line 199
    .line 200
    shr-int/lit8 v9, v9, 0x4

    .line 201
    .line 202
    or-int/2addr v2, v9

    .line 203
    aget-byte v2, v1, v2

    .line 204
    .line 205
    aput-byte v2, v3, v5

    .line 206
    .line 207
    add-int/lit8 v6, v6, 0x3

    .line 208
    .line 209
    and-int/lit8 p0, p0, 0xf

    .line 210
    .line 211
    shl-int/2addr p0, v4

    .line 212
    aget-byte p0, v1, p0

    .line 213
    .line 214
    aput-byte p0, v3, v7

    .line 215
    .line 216
    aput-byte v8, v3, v6

    .line 217
    .line 218
    goto :goto_f6

    .line 219
    :cond_da
    aget-byte p0, p0, v2

    .line 220
    .line 221
    add-int/lit8 v2, v6, 0x1

    .line 222
    .line 223
    and-int/lit16 v5, p0, 0xff

    .line 224
    .line 225
    shr-int/lit8 v4, v5, 0x2

    .line 226
    .line 227
    aget-byte v4, v1, v4

    .line 228
    .line 229
    aput-byte v4, v3, v6

    .line 230
    .line 231
    add-int/lit8 v4, v6, 0x2

    .line 232
    .line 233
    and-int/lit8 p0, p0, 0x3

    .line 234
    .line 235
    shl-int/lit8 p0, p0, 0x4

    .line 236
    .line 237
    aget-byte p0, v1, p0

    .line 238
    .line 239
    aput-byte p0, v3, v2

    .line 240
    .line 241
    add-int/lit8 v6, v6, 0x3

    .line 242
    .line 243
    aput-byte v8, v3, v4

    .line 244
    .line 245
    aput-byte v8, v3, v6

    .line 246
    .line 247
    :goto_f6
    new-instance p0, Ljava/lang/String;

    .line 248
    .line 249
    sget-object v1, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 250
    .line 251
    invoke-direct {p0, v3, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    return-object p0
.end method

.method public static n(Ljava/lang/String;)V
    .registers 9

    .line 1
    const-string v0, "identifier"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    const/16 v4, 0x28

    .line 15
    .line 16
    if-eqz v1, :cond_55

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-gt v1, v4, :cond_55

    .line 23
    .line 24
    sget-object v1, Ly1/e;->f:Ljava/util/HashSet;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_1a
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_52

    .line 31
    monitor-exit v1

    .line 32
    if-nez v4, :cond_51

    .line 33
    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v4, "compile(...)"

    .line 39
    .line 40
    invoke-static {v4, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3d

    .line 52
    .line 53
    monitor-enter v1

    .line 54
    :try_start_35
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3a

    .line 55
    .line 56
    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 59
    :catchall_3a
    move-exception p0

    .line 60
    monitor-exit v1

    .line 61
    throw p0

    .line 62
    :cond_3d
    new-instance v0, Lx1/l;

    .line 63
    .line 64
    const-string v1, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    .line 65
    .line 66
    new-array v4, v3, [Ljava/lang/Object;

    .line 67
    .line 68
    aput-object p0, v4, v2

    .line 69
    .line 70
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {v0, p0}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_51
    return-void

    .line 83
    :catchall_52
    move-exception p0

    .line 84
    monitor-exit v1

    .line 85
    throw p0

    .line 86
    :cond_55
    new-instance v0, Lx1/l;

    .line 87
    .line 88
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 89
    .line 90
    const-string v5, "Identifier \'%s\' must be less than %d characters"

    .line 91
    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const/4 v6, 0x2

    .line 97
    new-array v7, v6, [Ljava/lang/Object;

    .line 98
    .line 99
    aput-object p0, v7, v2

    .line 100
    .line 101
    aput-object v4, v7, v3

    .line 102
    .line 103
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {v1, v5, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-direct {v0, p0}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0
.end method


# virtual methods
.method public b()V
    .registers 1

    .line 1
    return-void
.end method

.method public c()V
    .registers 1

    .line 1
    return-void
.end method

.method public abstract g(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
.end method

.method public abstract h(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
.end method

.method public abstract k(Ljava/lang/Class;)[Ljava/lang/String;
.end method

.method public abstract l(Ljava/lang/Class;)Z
.end method
