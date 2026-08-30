###### Class com.google.android.gms.internal.measurement.u6 (com.google.android.gms.internal.measurement.u6)
.class public final Lcom/google/android/gms/internal/measurement/u6;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/b7;


# static fields
.field public static final i:[I

.field public static final j:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/measurement/i5;

.field public final f:[I

.field public final g:I

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/gms/internal/measurement/u6;->i:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f7;->e()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/i5;[IIILcom/google/android/gms/internal/measurement/a6;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/u6;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/measurement/u6;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/measurement/u6;->d:I

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/u6;->f:[I

    .line 13
    .line 14
    iput p7, p0, Lcom/google/android/gms/internal/measurement/u6;->g:I

    .line 15
    .line 16
    iput p8, p0, Lcom/google/android/gms/internal/measurement/u6;->h:I

    .line 17
    .line 18
    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/u6;->e:Lcom/google/android/gms/internal/measurement/i5;

    .line 19
    .line 20
    return-void
.end method

.method public static D(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_4
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/z5;

    .line 6
    .line 7
    if-eqz v0, :cond_f

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/measurement/z5;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/z5;->m()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static k(Lcom/google/android/gms/internal/measurement/a7;Lcom/google/android/gms/internal/measurement/a6;)Lcom/google/android/gms/internal/measurement/u6;
    .registers 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/a7;

    .line 4
    .line 5
    if-eqz v1, :cond_3ff

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/a7;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const v6, 0xd800

    .line 19
    .line 20
    .line 21
    if-lt v4, v6, :cond_21

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    :goto_17
    add-int/lit8 v7, v4, 0x1

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-lt v4, v6, :cond_22

    .line 31
    .line 32
    move v4, v7

    .line 33
    goto :goto_17

    .line 34
    :cond_21
    const/4 v7, 0x1

    .line 35
    :cond_22
    add-int/lit8 v4, v7, 0x1

    .line 36
    .line 37
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-lt v7, v6, :cond_41

    .line 42
    .line 43
    and-int/lit16 v7, v7, 0x1fff

    .line 44
    .line 45
    const/16 v9, 0xd

    .line 46
    .line 47
    :goto_2e
    add-int/lit8 v10, v4, 0x1

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-lt v4, v6, :cond_3e

    .line 54
    .line 55
    and-int/lit16 v4, v4, 0x1fff

    .line 56
    .line 57
    shl-int/2addr v4, v9

    .line 58
    or-int/2addr v7, v4

    .line 59
    add-int/lit8 v9, v9, 0xd

    .line 60
    .line 61
    move v4, v10

    .line 62
    goto :goto_2e

    .line 63
    :cond_3e
    shl-int/2addr v4, v9

    .line 64
    or-int/2addr v7, v4

    .line 65
    move v4, v10

    .line 66
    :cond_41
    if-nez v7, :cond_51

    .line 67
    .line 68
    sget-object v7, Lcom/google/android/gms/internal/measurement/u6;->i:[I

    .line 69
    .line 70
    move v9, v3

    .line 71
    move v10, v9

    .line 72
    move v11, v10

    .line 73
    move v12, v11

    .line 74
    move v13, v12

    .line 75
    move/from16 v16, v13

    .line 76
    .line 77
    move-object v15, v7

    .line 78
    move/from16 v7, v16

    .line 79
    .line 80
    goto/16 :goto_164

    .line 81
    .line 82
    :cond_51
    add-int/lit8 v7, v4, 0x1

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-lt v4, v6, :cond_70

    .line 89
    .line 90
    and-int/lit16 v4, v4, 0x1fff

    .line 91
    .line 92
    const/16 v9, 0xd

    .line 93
    .line 94
    :goto_5d
    add-int/lit8 v10, v7, 0x1

    .line 95
    .line 96
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-lt v7, v6, :cond_6d

    .line 101
    .line 102
    and-int/lit16 v7, v7, 0x1fff

    .line 103
    .line 104
    shl-int/2addr v7, v9

    .line 105
    or-int/2addr v4, v7

    .line 106
    add-int/lit8 v9, v9, 0xd

    .line 107
    .line 108
    move v7, v10

    .line 109
    goto :goto_5d

    .line 110
    :cond_6d
    shl-int/2addr v7, v9

    .line 111
    or-int/2addr v4, v7

    .line 112
    move v7, v10

    .line 113
    :cond_70
    add-int/lit8 v9, v7, 0x1

    .line 114
    .line 115
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-lt v7, v6, :cond_8f

    .line 120
    .line 121
    and-int/lit16 v7, v7, 0x1fff

    .line 122
    .line 123
    const/16 v10, 0xd

    .line 124
    .line 125
    :goto_7c
    add-int/lit8 v11, v9, 0x1

    .line 126
    .line 127
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-lt v9, v6, :cond_8c

    .line 132
    .line 133
    and-int/lit16 v9, v9, 0x1fff

    .line 134
    .line 135
    shl-int/2addr v9, v10

    .line 136
    or-int/2addr v7, v9

    .line 137
    add-int/lit8 v10, v10, 0xd

    .line 138
    .line 139
    move v9, v11

    .line 140
    goto :goto_7c

    .line 141
    :cond_8c
    shl-int/2addr v9, v10

    .line 142
    or-int/2addr v7, v9

    .line 143
    move v9, v11

    .line 144
    :cond_8f
    add-int/lit8 v10, v9, 0x1

    .line 145
    .line 146
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-lt v9, v6, :cond_ae

    .line 151
    .line 152
    and-int/lit16 v9, v9, 0x1fff

    .line 153
    .line 154
    const/16 v11, 0xd

    .line 155
    .line 156
    :goto_9b
    add-int/lit8 v12, v10, 0x1

    .line 157
    .line 158
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-lt v10, v6, :cond_ab

    .line 163
    .line 164
    and-int/lit16 v10, v10, 0x1fff

    .line 165
    .line 166
    shl-int/2addr v10, v11

    .line 167
    or-int/2addr v9, v10

    .line 168
    add-int/lit8 v11, v11, 0xd

    .line 169
    .line 170
    move v10, v12

    .line 171
    goto :goto_9b

    .line 172
    :cond_ab
    shl-int/2addr v10, v11

    .line 173
    or-int/2addr v9, v10

    .line 174
    move v10, v12

    .line 175
    :cond_ae
    add-int/lit8 v11, v10, 0x1

    .line 176
    .line 177
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    if-lt v10, v6, :cond_cd

    .line 182
    .line 183
    and-int/lit16 v10, v10, 0x1fff

    .line 184
    .line 185
    const/16 v12, 0xd

    .line 186
    .line 187
    :goto_ba
    add-int/lit8 v13, v11, 0x1

    .line 188
    .line 189
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-lt v11, v6, :cond_ca

    .line 194
    .line 195
    and-int/lit16 v11, v11, 0x1fff

    .line 196
    .line 197
    shl-int/2addr v11, v12

    .line 198
    or-int/2addr v10, v11

    .line 199
    add-int/lit8 v12, v12, 0xd

    .line 200
    .line 201
    move v11, v13

    .line 202
    goto :goto_ba

    .line 203
    :cond_ca
    shl-int/2addr v11, v12

    .line 204
    or-int/2addr v10, v11

    .line 205
    move v11, v13

    .line 206
    :cond_cd
    add-int/lit8 v12, v11, 0x1

    .line 207
    .line 208
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    if-lt v11, v6, :cond_ec

    .line 213
    .line 214
    and-int/lit16 v11, v11, 0x1fff

    .line 215
    .line 216
    const/16 v13, 0xd

    .line 217
    .line 218
    :goto_d9
    add-int/lit8 v14, v12, 0x1

    .line 219
    .line 220
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    if-lt v12, v6, :cond_e9

    .line 225
    .line 226
    and-int/lit16 v12, v12, 0x1fff

    .line 227
    .line 228
    shl-int/2addr v12, v13

    .line 229
    or-int/2addr v11, v12

    .line 230
    add-int/lit8 v13, v13, 0xd

    .line 231
    .line 232
    move v12, v14

    .line 233
    goto :goto_d9

    .line 234
    :cond_e9
    shl-int/2addr v12, v13

    .line 235
    or-int/2addr v11, v12

    .line 236
    move v12, v14

    .line 237
    :cond_ec
    add-int/lit8 v13, v12, 0x1

    .line 238
    .line 239
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    if-lt v12, v6, :cond_10b

    .line 244
    .line 245
    and-int/lit16 v12, v12, 0x1fff

    .line 246
    .line 247
    const/16 v14, 0xd

    .line 248
    .line 249
    :goto_f8
    add-int/lit8 v15, v13, 0x1

    .line 250
    .line 251
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    if-lt v13, v6, :cond_108

    .line 256
    .line 257
    and-int/lit16 v13, v13, 0x1fff

    .line 258
    .line 259
    shl-int/2addr v13, v14

    .line 260
    or-int/2addr v12, v13

    .line 261
    add-int/lit8 v14, v14, 0xd

    .line 262
    .line 263
    move v13, v15

    .line 264
    goto :goto_f8

    .line 265
    :cond_108
    shl-int/2addr v13, v14

    .line 266
    or-int/2addr v12, v13

    .line 267
    move v13, v15

    .line 268
    :cond_10b
    add-int/lit8 v14, v13, 0x1

    .line 269
    .line 270
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    if-lt v13, v6, :cond_12c

    .line 275
    .line 276
    and-int/lit16 v13, v13, 0x1fff

    .line 277
    .line 278
    const/16 v15, 0xd

    .line 279
    .line 280
    :goto_117
    add-int/lit8 v16, v14, 0x1

    .line 281
    .line 282
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 283
    .line 284
    .line 285
    move-result v14

    .line 286
    if-lt v14, v6, :cond_128

    .line 287
    .line 288
    and-int/lit16 v14, v14, 0x1fff

    .line 289
    .line 290
    shl-int/2addr v14, v15

    .line 291
    or-int/2addr v13, v14

    .line 292
    add-int/lit8 v15, v15, 0xd

    .line 293
    .line 294
    move/from16 v14, v16

    .line 295
    .line 296
    goto :goto_117

    .line 297
    :cond_128
    shl-int/2addr v14, v15

    .line 298
    or-int/2addr v13, v14

    .line 299
    move/from16 v14, v16

    .line 300
    .line 301
    :cond_12c
    add-int/lit8 v15, v14, 0x1

    .line 302
    .line 303
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 304
    .line 305
    .line 306
    move-result v14

    .line 307
    if-lt v14, v6, :cond_14f

    .line 308
    .line 309
    and-int/lit16 v14, v14, 0x1fff

    .line 310
    .line 311
    const/16 v16, 0xd

    .line 312
    .line 313
    :goto_138
    add-int/lit8 v17, v15, 0x1

    .line 314
    .line 315
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 316
    .line 317
    .line 318
    move-result v15

    .line 319
    if-lt v15, v6, :cond_14a

    .line 320
    .line 321
    and-int/lit16 v15, v15, 0x1fff

    .line 322
    .line 323
    shl-int v15, v15, v16

    .line 324
    .line 325
    or-int/2addr v14, v15

    .line 326
    add-int/lit8 v16, v16, 0xd

    .line 327
    .line 328
    move/from16 v15, v17

    .line 329
    .line 330
    goto :goto_138

    .line 331
    :cond_14a
    shl-int v15, v15, v16

    .line 332
    .line 333
    or-int/2addr v14, v15

    .line 334
    move/from16 v15, v17

    .line 335
    .line 336
    :cond_14f
    add-int v16, v14, v12

    .line 337
    .line 338
    add-int v13, v16, v13

    .line 339
    .line 340
    new-array v13, v13, [I

    .line 341
    .line 342
    shl-int/lit8 v16, v4, 0x1

    .line 343
    .line 344
    add-int v16, v16, v7

    .line 345
    .line 346
    move v7, v12

    .line 347
    move v12, v9

    .line 348
    move v9, v7

    .line 349
    move v7, v4

    .line 350
    move v4, v15

    .line 351
    move-object v15, v13

    .line 352
    move v13, v10

    .line 353
    move/from16 v10, v16

    .line 354
    .line 355
    move/from16 v16, v14

    .line 356
    .line 357
    :goto_164
    sget-object v14, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 358
    .line 359
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/a7;->c:[Ljava/lang/Object;

    .line 360
    .line 361
    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/a7;->a:Lcom/google/android/gms/internal/measurement/i5;

    .line 362
    .line 363
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    const/16 v19, 0x1

    .line 368
    .line 369
    mul-int/lit8 v5, v11, 0x3

    .line 370
    .line 371
    new-array v5, v5, [I

    .line 372
    .line 373
    shl-int/lit8 v11, v11, 0x1

    .line 374
    .line 375
    new-array v11, v11, [Ljava/lang/Object;

    .line 376
    .line 377
    add-int v9, v16, v9

    .line 378
    .line 379
    move/from16 v23, v9

    .line 380
    .line 381
    move/from16 v22, v16

    .line 382
    .line 383
    const/16 v20, 0x0

    .line 384
    .line 385
    const/16 v21, 0x0

    .line 386
    .line 387
    :goto_182
    if-ge v4, v2, :cond_3ee

    .line 388
    .line 389
    add-int/lit8 v24, v4, 0x1

    .line 390
    .line 391
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    if-lt v4, v6, :cond_1b1

    .line 396
    .line 397
    and-int/lit16 v4, v4, 0x1fff

    .line 398
    .line 399
    move/from16 v6, v24

    .line 400
    .line 401
    const/16 v24, 0xd

    .line 402
    .line 403
    :goto_192
    add-int/lit8 v26, v6, 0x1

    .line 404
    .line 405
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 406
    .line 407
    .line 408
    move-result v6

    .line 409
    move/from16 v27, v2

    .line 410
    .line 411
    const v2, 0xd800

    .line 412
    .line 413
    .line 414
    if-lt v6, v2, :cond_1ab

    .line 415
    .line 416
    and-int/lit16 v2, v6, 0x1fff

    .line 417
    .line 418
    shl-int v2, v2, v24

    .line 419
    .line 420
    or-int/2addr v4, v2

    .line 421
    add-int/lit8 v24, v24, 0xd

    .line 422
    .line 423
    move/from16 v6, v26

    .line 424
    .line 425
    move/from16 v2, v27

    .line 426
    .line 427
    goto :goto_192

    .line 428
    :cond_1ab
    shl-int v2, v6, v24

    .line 429
    .line 430
    or-int/2addr v4, v2

    .line 431
    move/from16 v2, v26

    .line 432
    .line 433
    goto :goto_1b5

    .line 434
    :cond_1b1
    move/from16 v27, v2

    .line 435
    .line 436
    move/from16 v2, v24

    .line 437
    .line 438
    :goto_1b5
    add-int/lit8 v6, v2, 0x1

    .line 439
    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    move-object/from16 v24, v3

    .line 445
    .line 446
    const v3, 0xd800

    .line 447
    .line 448
    .line 449
    if-lt v2, v3, :cond_1e0

    .line 450
    .line 451
    and-int/lit16 v2, v2, 0x1fff

    .line 452
    .line 453
    const/16 v26, 0xd

    .line 454
    .line 455
    :goto_1c6
    add-int/lit8 v28, v6, 0x1

    .line 456
    .line 457
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    if-lt v6, v3, :cond_1db

    .line 462
    .line 463
    and-int/lit16 v3, v6, 0x1fff

    .line 464
    .line 465
    shl-int v3, v3, v26

    .line 466
    .line 467
    or-int/2addr v2, v3

    .line 468
    add-int/lit8 v26, v26, 0xd

    .line 469
    .line 470
    move/from16 v6, v28

    .line 471
    .line 472
    const v3, 0xd800

    .line 473
    .line 474
    .line 475
    goto :goto_1c6

    .line 476
    :cond_1db
    shl-int v3, v6, v26

    .line 477
    .line 478
    or-int/2addr v2, v3

    .line 479
    move/from16 v6, v28

    .line 480
    .line 481
    :cond_1e0
    and-int/lit16 v3, v2, 0xff

    .line 482
    .line 483
    move/from16 v26, v4

    .line 484
    .line 485
    and-int/lit16 v4, v2, 0x400

    .line 486
    .line 487
    if-eqz v4, :cond_1ee

    .line 488
    .line 489
    add-int/lit8 v4, v21, 0x1

    .line 490
    .line 491
    aput v20, v15, v21

    .line 492
    .line 493
    move/from16 v21, v4

    .line 494
    .line 495
    :cond_1ee
    const/16 v4, 0x33

    .line 496
    .line 497
    move-object/from16 v30, v5

    .line 498
    .line 499
    if-lt v3, v4, :cond_29d

    .line 500
    .line 501
    add-int/lit8 v4, v6, 0x1

    .line 502
    .line 503
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 504
    .line 505
    .line 506
    move-result v6

    .line 507
    const v5, 0xd800

    .line 508
    .line 509
    .line 510
    if-lt v6, v5, :cond_21d

    .line 511
    .line 512
    and-int/lit16 v6, v6, 0x1fff

    .line 513
    .line 514
    const/16 v32, 0xd

    .line 515
    .line 516
    :goto_203
    add-int/lit8 v33, v4, 0x1

    .line 517
    .line 518
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    if-lt v4, v5, :cond_218

    .line 523
    .line 524
    and-int/lit16 v4, v4, 0x1fff

    .line 525
    .line 526
    shl-int v4, v4, v32

    .line 527
    .line 528
    or-int/2addr v6, v4

    .line 529
    add-int/lit8 v32, v32, 0xd

    .line 530
    .line 531
    move/from16 v4, v33

    .line 532
    .line 533
    const v5, 0xd800

    .line 534
    .line 535
    .line 536
    goto :goto_203

    .line 537
    :cond_218
    shl-int v4, v4, v32

    .line 538
    .line 539
    or-int/2addr v6, v4

    .line 540
    move/from16 v4, v33

    .line 541
    .line 542
    :cond_21d
    add-int/lit8 v5, v3, -0x33

    .line 543
    .line 544
    move/from16 v32, v4

    .line 545
    .line 546
    const/16 v4, 0x9

    .line 547
    .line 548
    if-eq v5, v4, :cond_229

    .line 549
    .line 550
    const/16 v4, 0x11

    .line 551
    .line 552
    if-ne v5, v4, :cond_22c

    .line 553
    .line 554
    :cond_229
    move/from16 v5, v19

    .line 555
    .line 556
    goto :goto_250

    .line 557
    :cond_22c
    const/16 v4, 0xc

    .line 558
    .line 559
    if-ne v5, v4, :cond_24d

    .line 560
    .line 561
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a7;->a()I

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    move/from16 v5, v19

    .line 566
    .line 567
    invoke-static {v4, v5}, Landroidx/fragment/app/m1;->b(II)Z

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    if-nez v4, :cond_240

    .line 572
    .line 573
    and-int/lit16 v4, v2, 0x800

    .line 574
    .line 575
    if-eqz v4, :cond_25b

    .line 576
    .line 577
    :cond_240
    div-int/lit8 v4, v20, 0x3

    .line 578
    .line 579
    shl-int/2addr v4, v5

    .line 580
    add-int/2addr v4, v5

    .line 581
    add-int/lit8 v19, v10, 0x1

    .line 582
    .line 583
    aget-object v10, v24, v10

    .line 584
    .line 585
    aput-object v10, v11, v4

    .line 586
    .line 587
    :goto_24a
    move/from16 v10, v19

    .line 588
    .line 589
    goto :goto_25b

    .line 590
    :cond_24d
    move/from16 v5, v19

    .line 591
    .line 592
    goto :goto_25b

    .line 593
    :goto_250
    div-int/lit8 v4, v20, 0x3

    .line 594
    .line 595
    shl-int/2addr v4, v5

    .line 596
    add-int/2addr v4, v5

    .line 597
    add-int/lit8 v19, v10, 0x1

    .line 598
    .line 599
    aget-object v10, v24, v10

    .line 600
    .line 601
    aput-object v10, v11, v4

    .line 602
    .line 603
    goto :goto_24a

    .line 604
    :cond_25b
    :goto_25b
    shl-int/lit8 v4, v6, 0x1

    .line 605
    .line 606
    aget-object v5, v24, v4

    .line 607
    .line 608
    instance-of v6, v5, Ljava/lang/reflect/Field;

    .line 609
    .line 610
    if-eqz v6, :cond_266

    .line 611
    .line 612
    check-cast v5, Ljava/lang/reflect/Field;

    .line 613
    .line 614
    goto :goto_26e

    .line 615
    :cond_266
    check-cast v5, Ljava/lang/String;

    .line 616
    .line 617
    invoke-static {v8, v5}, Lcom/google/android/gms/internal/measurement/u6;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    aput-object v5, v24, v4

    .line 622
    .line 623
    :goto_26e
    invoke-virtual {v14, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 624
    .line 625
    .line 626
    move-result-wide v5

    .line 627
    long-to-int v5, v5

    .line 628
    add-int/lit8 v4, v4, 0x1

    .line 629
    .line 630
    aget-object v6, v24, v4

    .line 631
    .line 632
    move/from16 v28, v4

    .line 633
    .line 634
    instance-of v4, v6, Ljava/lang/reflect/Field;

    .line 635
    .line 636
    if-eqz v4, :cond_282

    .line 637
    .line 638
    check-cast v6, Ljava/lang/reflect/Field;

    .line 639
    .line 640
    :goto_27f
    move/from16 v28, v5

    .line 641
    .line 642
    goto :goto_28b

    .line 643
    :cond_282
    check-cast v6, Ljava/lang/String;

    .line 644
    .line 645
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/measurement/u6;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 646
    .line 647
    .line 648
    move-result-object v6

    .line 649
    aput-object v6, v24, v28

    .line 650
    .line 651
    goto :goto_27f

    .line 652
    :goto_28b
    invoke-virtual {v14, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 653
    .line 654
    .line 655
    move-result-wide v4

    .line 656
    long-to-int v4, v4

    .line 657
    move-object/from16 v31, v1

    .line 658
    .line 659
    move/from16 v5, v28

    .line 660
    .line 661
    move/from16 v29, v32

    .line 662
    .line 663
    const/4 v6, 0x0

    .line 664
    const/16 v19, 0x1

    .line 665
    .line 666
    move/from16 v28, v7

    .line 667
    .line 668
    goto/16 :goto_3ab

    .line 669
    .line 670
    :cond_29d
    add-int/lit8 v4, v10, 0x1

    .line 671
    .line 672
    aget-object v5, v24, v10

    .line 673
    .line 674
    check-cast v5, Ljava/lang/String;

    .line 675
    .line 676
    invoke-static {v8, v5}, Lcom/google/android/gms/internal/measurement/u6;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 677
    .line 678
    .line 679
    move-result-object v5

    .line 680
    move/from16 v32, v4

    .line 681
    .line 682
    const/16 v4, 0x9

    .line 683
    .line 684
    if-eq v3, v4, :cond_2b1

    .line 685
    .line 686
    const/16 v4, 0x11

    .line 687
    .line 688
    if-ne v3, v4, :cond_2b6

    .line 689
    .line 690
    :cond_2b1
    move/from16 v28, v7

    .line 691
    .line 692
    const/4 v7, 0x1

    .line 693
    goto/16 :goto_327

    .line 694
    .line 695
    :cond_2b6
    const/16 v4, 0x1b

    .line 696
    .line 697
    if-eq v3, v4, :cond_2be

    .line 698
    .line 699
    const/16 v4, 0x31

    .line 700
    .line 701
    if-ne v3, v4, :cond_2c2

    .line 702
    .line 703
    :cond_2be
    move/from16 v28, v7

    .line 704
    .line 705
    const/4 v7, 0x1

    .line 706
    goto :goto_31c

    .line 707
    :cond_2c2
    const/16 v4, 0xc

    .line 708
    .line 709
    if-eq v3, v4, :cond_303

    .line 710
    .line 711
    const/16 v4, 0x1e

    .line 712
    .line 713
    if-eq v3, v4, :cond_303

    .line 714
    .line 715
    const/16 v4, 0x2c

    .line 716
    .line 717
    if-ne v3, v4, :cond_2cf

    .line 718
    .line 719
    goto :goto_303

    .line 720
    :cond_2cf
    const/16 v4, 0x32

    .line 721
    .line 722
    if-ne v3, v4, :cond_300

    .line 723
    .line 724
    add-int/lit8 v4, v22, 0x1

    .line 725
    .line 726
    aput v20, v15, v22

    .line 727
    .line 728
    div-int/lit8 v22, v20, 0x3

    .line 729
    .line 730
    const/16 v19, 0x1

    .line 731
    .line 732
    shl-int/lit8 v22, v22, 0x1

    .line 733
    .line 734
    add-int/lit8 v28, v10, 0x2

    .line 735
    .line 736
    aget-object v29, v24, v32

    .line 737
    .line 738
    aput-object v29, v11, v22

    .line 739
    .line 740
    move/from16 v29, v4

    .line 741
    .line 742
    and-int/lit16 v4, v2, 0x800

    .line 743
    .line 744
    if-eqz v4, :cond_2f7

    .line 745
    .line 746
    add-int/lit8 v22, v22, 0x1

    .line 747
    .line 748
    add-int/lit8 v4, v10, 0x3

    .line 749
    .line 750
    aget-object v10, v24, v28

    .line 751
    .line 752
    aput-object v10, v11, v22

    .line 753
    .line 754
    move/from16 v28, v7

    .line 755
    .line 756
    move/from16 v22, v29

    .line 757
    .line 758
    move v7, v4

    .line 759
    goto :goto_333

    .line 760
    :cond_2f7
    move/from16 v22, v28

    .line 761
    .line 762
    move/from16 v28, v7

    .line 763
    .line 764
    move/from16 v7, v22

    .line 765
    .line 766
    move/from16 v22, v29

    .line 767
    .line 768
    goto :goto_333

    .line 769
    :cond_300
    move/from16 v28, v7

    .line 770
    .line 771
    goto :goto_331

    .line 772
    :cond_303
    :goto_303
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a7;->a()I

    .line 773
    .line 774
    .line 775
    move-result v4

    .line 776
    move/from16 v28, v7

    .line 777
    .line 778
    const/4 v7, 0x1

    .line 779
    if-eq v4, v7, :cond_310

    .line 780
    .line 781
    and-int/lit16 v4, v2, 0x800

    .line 782
    .line 783
    if-eqz v4, :cond_331

    .line 784
    .line 785
    :cond_310
    div-int/lit8 v4, v20, 0x3

    .line 786
    .line 787
    shl-int/2addr v4, v7

    .line 788
    add-int/2addr v4, v7

    .line 789
    add-int/lit8 v10, v10, 0x2

    .line 790
    .line 791
    aget-object v19, v24, v32

    .line 792
    .line 793
    aput-object v19, v11, v4

    .line 794
    .line 795
    :goto_31a
    move v7, v10

    .line 796
    goto :goto_333

    .line 797
    :goto_31c
    div-int/lit8 v4, v20, 0x3

    .line 798
    .line 799
    shl-int/2addr v4, v7

    .line 800
    add-int/2addr v4, v7

    .line 801
    add-int/lit8 v10, v10, 0x2

    .line 802
    .line 803
    aget-object v19, v24, v32

    .line 804
    .line 805
    aput-object v19, v11, v4

    .line 806
    .line 807
    goto :goto_31a

    .line 808
    :goto_327
    div-int/lit8 v4, v20, 0x3

    .line 809
    .line 810
    shl-int/2addr v4, v7

    .line 811
    add-int/2addr v4, v7

    .line 812
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 813
    .line 814
    .line 815
    move-result-object v7

    .line 816
    aput-object v7, v11, v4

    .line 817
    .line 818
    :cond_331
    :goto_331
    move/from16 v7, v32

    .line 819
    .line 820
    :goto_333
    invoke-virtual {v14, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 821
    .line 822
    .line 823
    move-result-wide v4

    .line 824
    long-to-int v5, v4

    .line 825
    and-int/lit16 v4, v2, 0x1000

    .line 826
    .line 827
    if-eqz v4, :cond_38d

    .line 828
    .line 829
    const/16 v4, 0x11

    .line 830
    .line 831
    if-gt v3, v4, :cond_38d

    .line 832
    .line 833
    add-int/lit8 v4, v6, 0x1

    .line 834
    .line 835
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 836
    .line 837
    .line 838
    move-result v6

    .line 839
    const v10, 0xd800

    .line 840
    .line 841
    .line 842
    if-lt v6, v10, :cond_366

    .line 843
    .line 844
    and-int/lit16 v6, v6, 0x1fff

    .line 845
    .line 846
    const/16 v25, 0xd

    .line 847
    .line 848
    :goto_34f
    add-int/lit8 v29, v4, 0x1

    .line 849
    .line 850
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 851
    .line 852
    .line 853
    move-result v4

    .line 854
    if-lt v4, v10, :cond_361

    .line 855
    .line 856
    and-int/lit16 v4, v4, 0x1fff

    .line 857
    .line 858
    shl-int v4, v4, v25

    .line 859
    .line 860
    or-int/2addr v6, v4

    .line 861
    add-int/lit8 v25, v25, 0xd

    .line 862
    .line 863
    move/from16 v4, v29

    .line 864
    .line 865
    goto :goto_34f

    .line 866
    :cond_361
    shl-int v4, v4, v25

    .line 867
    .line 868
    or-int/2addr v6, v4

    .line 869
    move/from16 v4, v29

    .line 870
    .line 871
    :cond_366
    const/16 v19, 0x1

    .line 872
    .line 873
    shl-int/lit8 v25, v28, 0x1

    .line 874
    .line 875
    div-int/lit8 v29, v6, 0x20

    .line 876
    .line 877
    add-int v29, v29, v25

    .line 878
    .line 879
    aget-object v10, v24, v29

    .line 880
    .line 881
    move-object/from16 v31, v1

    .line 882
    .line 883
    instance-of v1, v10, Ljava/lang/reflect/Field;

    .line 884
    .line 885
    if-eqz v1, :cond_37c

    .line 886
    .line 887
    check-cast v10, Ljava/lang/reflect/Field;

    .line 888
    .line 889
    :goto_378
    move/from16 v29, v4

    .line 890
    .line 891
    move v1, v5

    .line 892
    goto :goto_385

    .line 893
    :cond_37c
    check-cast v10, Ljava/lang/String;

    .line 894
    .line 895
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/measurement/u6;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 896
    .line 897
    .line 898
    move-result-object v10

    .line 899
    aput-object v10, v24, v29

    .line 900
    .line 901
    goto :goto_378

    .line 902
    :goto_385
    invoke-virtual {v14, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 903
    .line 904
    .line 905
    move-result-wide v4

    .line 906
    long-to-int v4, v4

    .line 907
    rem-int/lit8 v6, v6, 0x20

    .line 908
    .line 909
    goto :goto_398

    .line 910
    :cond_38d
    move-object/from16 v31, v1

    .line 911
    .line 912
    move v1, v5

    .line 913
    const/16 v19, 0x1

    .line 914
    .line 915
    const v4, 0xfffff

    .line 916
    .line 917
    .line 918
    move/from16 v29, v6

    .line 919
    .line 920
    const/4 v6, 0x0

    .line 921
    :goto_398
    const/16 v5, 0x12

    .line 922
    .line 923
    if-lt v3, v5, :cond_3a9

    .line 924
    .line 925
    const/16 v5, 0x31

    .line 926
    .line 927
    if-gt v3, v5, :cond_3a9

    .line 928
    .line 929
    add-int/lit8 v5, v23, 0x1

    .line 930
    .line 931
    aput v1, v15, v23

    .line 932
    .line 933
    move/from16 v23, v5

    .line 934
    .line 935
    move v10, v7

    .line 936
    move v5, v1

    .line 937
    goto :goto_3ab

    .line 938
    :cond_3a9
    move v5, v1

    .line 939
    move v10, v7

    .line 940
    :goto_3ab
    add-int/lit8 v1, v20, 0x1

    .line 941
    .line 942
    aput v26, v30, v20

    .line 943
    .line 944
    add-int/lit8 v7, v20, 0x2

    .line 945
    .line 946
    move/from16 v26, v1

    .line 947
    .line 948
    and-int/lit16 v1, v2, 0x200

    .line 949
    .line 950
    if-eqz v1, :cond_3ba

    .line 951
    .line 952
    const/high16 v1, 0x20000000

    .line 953
    .line 954
    goto :goto_3bb

    .line 955
    :cond_3ba
    const/4 v1, 0x0

    .line 956
    :goto_3bb
    move/from16 v32, v1

    .line 957
    .line 958
    and-int/lit16 v1, v2, 0x100

    .line 959
    .line 960
    if-eqz v1, :cond_3c4

    .line 961
    .line 962
    const/high16 v1, 0x10000000

    .line 963
    .line 964
    goto :goto_3c5

    .line 965
    :cond_3c4
    const/4 v1, 0x0

    .line 966
    :goto_3c5
    or-int v1, v32, v1

    .line 967
    .line 968
    and-int/lit16 v2, v2, 0x800

    .line 969
    .line 970
    if-eqz v2, :cond_3ce

    .line 971
    .line 972
    const/high16 v2, -0x80000000

    .line 973
    .line 974
    goto :goto_3cf

    .line 975
    :cond_3ce
    const/4 v2, 0x0

    .line 976
    :goto_3cf
    or-int/2addr v1, v2

    .line 977
    shl-int/lit8 v2, v3, 0x14

    .line 978
    .line 979
    or-int/2addr v1, v2

    .line 980
    or-int/2addr v1, v5

    .line 981
    aput v1, v30, v26

    .line 982
    .line 983
    add-int/lit8 v20, v20, 0x3

    .line 984
    .line 985
    shl-int/lit8 v1, v6, 0x14

    .line 986
    .line 987
    or-int/2addr v1, v4

    .line 988
    aput v1, v30, v7

    .line 989
    .line 990
    move-object/from16 v3, v24

    .line 991
    .line 992
    move/from16 v2, v27

    .line 993
    .line 994
    move/from16 v7, v28

    .line 995
    .line 996
    move/from16 v4, v29

    .line 997
    .line 998
    move-object/from16 v5, v30

    .line 999
    .line 1000
    move-object/from16 v1, v31

    .line 1001
    .line 1002
    const v6, 0xd800

    .line 1003
    .line 1004
    .line 1005
    goto/16 :goto_182

    .line 1006
    .line 1007
    :cond_3ee
    move-object/from16 v30, v5

    .line 1008
    .line 1009
    new-instance v1, Lcom/google/android/gms/internal/measurement/u6;

    .line 1010
    .line 1011
    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/a7;->a:Lcom/google/android/gms/internal/measurement/i5;

    .line 1012
    .line 1013
    move-object/from16 v18, p1

    .line 1014
    .line 1015
    move/from16 v17, v9

    .line 1016
    .line 1017
    move-object/from16 v10, v30

    .line 1018
    .line 1019
    move-object v9, v1

    .line 1020
    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/internal/measurement/u6;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/i5;[IIILcom/google/android/gms/internal/measurement/a6;)V

    .line 1021
    .line 1022
    .line 1023
    return-object v9

    .line 1024
    :cond_3ff
    if-nez v0, :cond_407

    .line 1025
    .line 1026
    new-instance v0, Ljava/lang/NoSuchMethodError;

    .line 1027
    .line 1028
    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    .line 1029
    .line 1030
    .line 1031
    throw v0

    .line 1032
    :cond_407
    new-instance v0, Ljava/lang/ClassCastException;

    .line 1033
    .line 1034
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 1035
    .line 1036
    .line 1037
    throw v0
.end method

.method public static n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p0

    .line 6
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1a

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_b

    .line 30
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "Field "

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " for "

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, " not found. Known fields are "

    .line 59
    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1
.end method

.method public static v(JLjava/lang/Object;)I
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static z(JLjava/lang/Object;)J
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method


# virtual methods
.method public final A(I)Lcom/google/android/gms/internal/measurement/d6;
    .registers 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    check-cast p1, Lcom/google/android/gms/internal/measurement/d6;

    .line 12
    .line 13
    return-object p1
.end method

.method public final B(I)Lcom/google/android/gms/internal/measurement/b7;
    .registers 5

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v1, v0, p1

    .line 8
    .line 9
    check-cast v1, Lcom/google/android/gms/internal/measurement/b7;

    .line 10
    .line 11
    if-eqz v1, :cond_d

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_d
    sget-object v1, Lcom/google/android/gms/internal/measurement/z6;->c:Lcom/google/android/gms/internal/measurement/z6;

    .line 15
    .line 16
    add-int/lit8 v2, p1, 0x1

    .line 17
    .line 18
    aget-object v2, v0, v2

    .line 19
    .line 20
    check-cast v2, Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/z6;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/b7;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    aput-object v1, v0, p1

    .line 27
    .line 28
    return-object v1
.end method

.method public final C(I)Ljava/lang/Object;
    .registers 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object p1, v0, p1

    .line 8
    .line 9
    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const v6, 0xfffff

    .line 6
    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    move v2, v6

    .line 10
    move v3, v7

    .line 11
    move v8, v3

    .line 12
    :goto_b
    iget v4, v0, Lcom/google/android/gms/internal/measurement/u6;->g:I

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-ge v8, v4, :cond_e8

    .line 16
    .line 17
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/u6;->f:[I

    .line 18
    .line 19
    aget v4, v4, v8

    .line 20
    .line 21
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 22
    .line 23
    aget v10, v9, v4

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 26
    .line 27
    .line 28
    move-result v11

    .line 29
    add-int/lit8 v12, v4, 0x2

    .line 30
    .line 31
    aget v9, v9, v12

    .line 32
    .line 33
    and-int v12, v9, v6

    .line 34
    .line 35
    ushr-int/lit8 v9, v9, 0x14

    .line 36
    .line 37
    shl-int/2addr v5, v9

    .line 38
    if-eq v12, v2, :cond_34

    .line 39
    .line 40
    if-eq v12, v6, :cond_30

    .line 41
    .line 42
    sget-object v2, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 43
    .line 44
    int-to-long v13, v12

    .line 45
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :cond_30
    move v2, v4

    .line 50
    move v4, v3

    .line 51
    move v3, v12

    .line 52
    goto :goto_38

    .line 53
    :cond_34
    move v15, v3

    .line 54
    move v3, v2

    .line 55
    move v2, v4

    .line 56
    move v4, v15

    .line 57
    :goto_38
    const/high16 v9, 0x10000000

    .line 58
    .line 59
    and-int/2addr v9, v11

    .line 60
    if-eqz v9, :cond_45

    .line 61
    .line 62
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_45

    .line 67
    .line 68
    goto/16 :goto_e1

    .line 69
    .line 70
    :cond_45
    const/high16 v9, 0xff00000

    .line 71
    .line 72
    and-int/2addr v9, v11

    .line 73
    ushr-int/lit8 v9, v9, 0x14

    .line 74
    .line 75
    const/16 v12, 0x9

    .line 76
    .line 77
    if-eq v9, v12, :cond_ca

    .line 78
    .line 79
    const/16 v12, 0x11

    .line 80
    .line 81
    if-eq v9, v12, :cond_ca

    .line 82
    .line 83
    const/16 v5, 0x1b

    .line 84
    .line 85
    if-eq v9, v5, :cond_a2

    .line 86
    .line 87
    const/16 v5, 0x3c

    .line 88
    .line 89
    if-eq v9, v5, :cond_8a

    .line 90
    .line 91
    const/16 v5, 0x44

    .line 92
    .line 93
    if-eq v9, v5, :cond_8a

    .line 94
    .line 95
    const/16 v5, 0x31

    .line 96
    .line 97
    if-eq v9, v5, :cond_a2

    .line 98
    .line 99
    const/16 v5, 0x32

    .line 100
    .line 101
    if-eq v9, v5, :cond_68

    .line 102
    .line 103
    goto/16 :goto_e2

    .line 104
    .line 105
    :cond_68
    and-int v5, v11, v6

    .line 106
    .line 107
    int-to-long v9, v5

    .line 108
    invoke-static {v9, v10, v1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Lcom/google/android/gms/internal/measurement/q6;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_78

    .line 119
    .line 120
    goto :goto_e2

    .line 121
    :cond_78
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/u6;->C(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-nez v1, :cond_84

    .line 126
    .line 127
    new-instance v1, Ljava/lang/NoSuchMethodError;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/NoSuchMethodError;-><init>()V

    .line 130
    .line 131
    .line 132
    throw v1

    .line 133
    :cond_84
    new-instance v1, Ljava/lang/ClassCastException;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 136
    .line 137
    .line 138
    throw v1

    .line 139
    :cond_8a
    invoke-virtual {v0, v1, v10, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_e2

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    and-int v5, v11, v6

    .line 150
    .line 151
    int-to-long v9, v5

    .line 152
    invoke-static {v9, v10, v1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/measurement/b7;->a(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_e2

    .line 161
    .line 162
    goto :goto_e1

    .line 163
    :cond_a2
    and-int v5, v11, v6

    .line 164
    .line 165
    int-to-long v9, v5

    .line 166
    invoke-static {v9, v10, v1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    if-nez v9, :cond_e2

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    move v9, v7

    .line 183
    :goto_b6
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-ge v9, v10, :cond_e2

    .line 188
    .line 189
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    invoke-interface {v2, v10}, Lcom/google/android/gms/internal/measurement/b7;->a(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-nez v10, :cond_c7

    .line 198
    .line 199
    goto :goto_e1

    .line 200
    :cond_c7
    add-int/lit8 v9, v9, 0x1

    .line 201
    .line 202
    goto :goto_b6

    .line 203
    :cond_ca
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_e2

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    and-int v5, v11, v6

    .line 214
    .line 215
    int-to-long v9, v5

    .line 216
    invoke-static {v9, v10, v1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/measurement/b7;->a(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_e2

    .line 225
    .line 226
    :goto_e1
    return v7

    .line 227
    :cond_e2
    :goto_e2
    add-int/lit8 v8, v8, 0x1

    .line 228
    .line 229
    move v2, v3

    .line 230
    move v3, v4

    .line 231
    goto/16 :goto_b

    .line 232
    .line 233
    :cond_e8
    return v5
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/z5;)I
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_5
    if-ge v2, v1, :cond_263

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v5, v0, v2

    .line 13
    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v6, v4

    .line 18
    int-to-long v6, v6

    .line 19
    const/high16 v8, 0xff00000

    .line 20
    .line 21
    and-int/2addr v4, v8

    .line 22
    ushr-int/lit8 v4, v4, 0x14

    .line 23
    .line 24
    const/16 v8, 0x4d5

    .line 25
    .line 26
    const/16 v9, 0x4cf

    .line 27
    .line 28
    const/16 v10, 0x25

    .line 29
    .line 30
    packed-switch v4, :pswitch_data_26e

    .line 31
    .line 32
    .line 33
    goto/16 :goto_25f

    .line 34
    .line 35
    :pswitch_22
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_25f

    .line 40
    .line 41
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    mul-int/lit8 v3, v3, 0x35

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    :goto_32
    add-int/2addr v4, v3

    .line 52
    move v3, v4

    .line 53
    goto/16 :goto_25f

    .line 54
    .line 55
    :pswitch_36
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_25f

    .line 60
    .line 61
    mul-int/lit8 v3, v3, 0x35

    .line 62
    .line 63
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->a(J)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    goto :goto_32

    .line 72
    :pswitch_47
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_25f

    .line 77
    .line 78
    mul-int/lit8 v3, v3, 0x35

    .line 79
    .line 80
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    goto :goto_32

    .line 85
    :pswitch_54
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_25f

    .line 90
    .line 91
    mul-int/lit8 v3, v3, 0x35

    .line 92
    .line 93
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->a(J)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    goto :goto_32

    .line 102
    :pswitch_65
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_25f

    .line 107
    .line 108
    mul-int/lit8 v3, v3, 0x35

    .line 109
    .line 110
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    goto :goto_32

    .line 115
    :pswitch_72
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_25f

    .line 120
    .line 121
    mul-int/lit8 v3, v3, 0x35

    .line 122
    .line 123
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    goto :goto_32

    .line 128
    :pswitch_7f
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_25f

    .line 133
    .line 134
    mul-int/lit8 v3, v3, 0x35

    .line 135
    .line 136
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    goto :goto_32

    .line 141
    :pswitch_8c
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_25f

    .line 146
    .line 147
    mul-int/lit8 v3, v3, 0x35

    .line 148
    .line 149
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    goto :goto_32

    .line 158
    :pswitch_9d
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_25f

    .line 163
    .line 164
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    mul-int/lit8 v3, v3, 0x35

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    goto :goto_32

    .line 175
    :pswitch_ae
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_25f

    .line 180
    .line 181
    mul-int/lit8 v3, v3, 0x35

    .line 182
    .line 183
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    goto/16 :goto_32

    .line 194
    .line 195
    :pswitch_c2
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_25f

    .line 200
    .line 201
    mul-int/lit8 v3, v3, 0x35

    .line 202
    .line 203
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    sget-object v5, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 214
    .line 215
    if-eqz v4, :cond_d9

    .line 216
    .line 217
    :goto_d8
    move v8, v9

    .line 218
    :cond_d9
    add-int/2addr v8, v3

    .line 219
    move v3, v8

    .line 220
    goto/16 :goto_25f

    .line 221
    .line 222
    :pswitch_dd
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_25f

    .line 227
    .line 228
    mul-int/lit8 v3, v3, 0x35

    .line 229
    .line 230
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    goto/16 :goto_32

    .line 235
    .line 236
    :pswitch_eb
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_25f

    .line 241
    .line 242
    mul-int/lit8 v3, v3, 0x35

    .line 243
    .line 244
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 245
    .line 246
    .line 247
    move-result-wide v4

    .line 248
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->a(J)I

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    goto/16 :goto_32

    .line 253
    .line 254
    :pswitch_fd
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_25f

    .line 259
    .line 260
    mul-int/lit8 v3, v3, 0x35

    .line 261
    .line 262
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    goto/16 :goto_32

    .line 267
    .line 268
    :pswitch_10b
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-eqz v4, :cond_25f

    .line 273
    .line 274
    mul-int/lit8 v3, v3, 0x35

    .line 275
    .line 276
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 277
    .line 278
    .line 279
    move-result-wide v4

    .line 280
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->a(J)I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    goto/16 :goto_32

    .line 285
    .line 286
    :pswitch_11d
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-eqz v4, :cond_25f

    .line 291
    .line 292
    mul-int/lit8 v3, v3, 0x35

    .line 293
    .line 294
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 295
    .line 296
    .line 297
    move-result-wide v4

    .line 298
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->a(J)I

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    goto/16 :goto_32

    .line 303
    .line 304
    :pswitch_12f
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-eqz v4, :cond_25f

    .line 309
    .line 310
    mul-int/lit8 v3, v3, 0x35

    .line 311
    .line 312
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    check-cast v4, Ljava/lang/Float;

    .line 317
    .line 318
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    goto/16 :goto_32

    .line 327
    .line 328
    :pswitch_147
    invoke-virtual {p0, p1, v5, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-eqz v4, :cond_25f

    .line 333
    .line 334
    mul-int/lit8 v3, v3, 0x35

    .line 335
    .line 336
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    check-cast v4, Ljava/lang/Double;

    .line 341
    .line 342
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 343
    .line 344
    .line 345
    move-result-wide v4

    .line 346
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 347
    .line 348
    .line 349
    move-result-wide v4

    .line 350
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->a(J)I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    goto/16 :goto_32

    .line 355
    .line 356
    :pswitch_163
    mul-int/lit8 v3, v3, 0x35

    .line 357
    .line 358
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    goto/16 :goto_32

    .line 367
    .line 368
    :pswitch_16f
    mul-int/lit8 v3, v3, 0x35

    .line 369
    .line 370
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    goto/16 :goto_32

    .line 379
    .line 380
    :pswitch_17b
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    if-eqz v4, :cond_185

    .line 385
    .line 386
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 387
    .line 388
    .line 389
    move-result v10

    .line 390
    :cond_185
    :goto_185
    mul-int/lit8 v3, v3, 0x35

    .line 391
    .line 392
    add-int/2addr v3, v10

    .line 393
    goto/16 :goto_25f

    .line 394
    .line 395
    :pswitch_18a
    mul-int/lit8 v3, v3, 0x35

    .line 396
    .line 397
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 398
    .line 399
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 400
    .line 401
    .line 402
    move-result-wide v4

    .line 403
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->a(J)I

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    goto/16 :goto_32

    .line 408
    .line 409
    :pswitch_198
    mul-int/lit8 v3, v3, 0x35

    .line 410
    .line 411
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 412
    .line 413
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    goto/16 :goto_32

    .line 418
    .line 419
    :pswitch_1a2
    mul-int/lit8 v3, v3, 0x35

    .line 420
    .line 421
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 422
    .line 423
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 424
    .line 425
    .line 426
    move-result-wide v4

    .line 427
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->a(J)I

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    goto/16 :goto_32

    .line 432
    .line 433
    :pswitch_1b0
    mul-int/lit8 v3, v3, 0x35

    .line 434
    .line 435
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 436
    .line 437
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    goto/16 :goto_32

    .line 442
    .line 443
    :pswitch_1ba
    mul-int/lit8 v3, v3, 0x35

    .line 444
    .line 445
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 446
    .line 447
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    goto/16 :goto_32

    .line 452
    .line 453
    :pswitch_1c4
    mul-int/lit8 v3, v3, 0x35

    .line 454
    .line 455
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 456
    .line 457
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    goto/16 :goto_32

    .line 462
    .line 463
    :pswitch_1ce
    mul-int/lit8 v3, v3, 0x35

    .line 464
    .line 465
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    goto/16 :goto_32

    .line 474
    .line 475
    :pswitch_1da
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    if-eqz v4, :cond_185

    .line 480
    .line 481
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 482
    .line 483
    .line 484
    move-result v10

    .line 485
    goto :goto_185

    .line 486
    :pswitch_1e5
    mul-int/lit8 v3, v3, 0x35

    .line 487
    .line 488
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    check-cast v4, Ljava/lang/String;

    .line 493
    .line 494
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    goto/16 :goto_32

    .line 499
    .line 500
    :pswitch_1f3
    mul-int/lit8 v3, v3, 0x35

    .line 501
    .line 502
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 503
    .line 504
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->i(JLjava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    sget-object v5, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 509
    .line 510
    if-eqz v4, :cond_d9

    .line 511
    .line 512
    goto/16 :goto_d8

    .line 513
    .line 514
    :pswitch_201
    mul-int/lit8 v3, v3, 0x35

    .line 515
    .line 516
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 517
    .line 518
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    goto/16 :goto_32

    .line 523
    .line 524
    :pswitch_20b
    mul-int/lit8 v3, v3, 0x35

    .line 525
    .line 526
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 527
    .line 528
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 529
    .line 530
    .line 531
    move-result-wide v4

    .line 532
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->a(J)I

    .line 533
    .line 534
    .line 535
    move-result v4

    .line 536
    goto/16 :goto_32

    .line 537
    .line 538
    :pswitch_219
    mul-int/lit8 v3, v3, 0x35

    .line 539
    .line 540
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 541
    .line 542
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 543
    .line 544
    .line 545
    move-result v4

    .line 546
    goto/16 :goto_32

    .line 547
    .line 548
    :pswitch_223
    mul-int/lit8 v3, v3, 0x35

    .line 549
    .line 550
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 551
    .line 552
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 553
    .line 554
    .line 555
    move-result-wide v4

    .line 556
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->a(J)I

    .line 557
    .line 558
    .line 559
    move-result v4

    .line 560
    goto/16 :goto_32

    .line 561
    .line 562
    :pswitch_231
    mul-int/lit8 v3, v3, 0x35

    .line 563
    .line 564
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 565
    .line 566
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 567
    .line 568
    .line 569
    move-result-wide v4

    .line 570
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->a(J)I

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    goto/16 :goto_32

    .line 575
    .line 576
    :pswitch_23f
    mul-int/lit8 v3, v3, 0x35

    .line 577
    .line 578
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 579
    .line 580
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->h(JLjava/lang/Object;)F

    .line 581
    .line 582
    .line 583
    move-result v4

    .line 584
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    goto/16 :goto_32

    .line 589
    .line 590
    :pswitch_24d
    mul-int/lit8 v3, v3, 0x35

    .line 591
    .line 592
    sget-object v4, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 593
    .line 594
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/measurement/e7;->a(JLjava/lang/Object;)D

    .line 595
    .line 596
    .line 597
    move-result-wide v4

    .line 598
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 599
    .line 600
    .line 601
    move-result-wide v4

    .line 602
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->a(J)I

    .line 603
    .line 604
    .line 605
    move-result v4

    .line 606
    goto/16 :goto_32

    .line 607
    .line 608
    :cond_25f
    :goto_25f
    add-int/lit8 v2, v2, 0x3

    .line 609
    .line 610
    goto/16 :goto_5

    .line 611
    .line 612
    :cond_263
    mul-int/lit8 v3, v3, 0x35

    .line 613
    .line 614
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 615
    .line 616
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c7;->hashCode()I

    .line 617
    .line 618
    .line 619
    move-result p1

    .line 620
    add-int/2addr p1, v3

    .line 621
    return p1

    .line 622
    nop

    .line 623
    :pswitch_data_26e
    .packed-switch 0x0
        :pswitch_24d
        :pswitch_23f
        :pswitch_231
        :pswitch_223
        :pswitch_219
        :pswitch_20b
        :pswitch_201
        :pswitch_1f3
        :pswitch_1e5
        :pswitch_1da
        :pswitch_1ce
        :pswitch_1c4
        :pswitch_1ba
        :pswitch_1b0
        :pswitch_1a2
        :pswitch_198
        :pswitch_18a
        :pswitch_17b
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_163
        :pswitch_147
        :pswitch_12f
        :pswitch_11d
        :pswitch_10b
        :pswitch_fd
        :pswitch_eb
        :pswitch_dd
        :pswitch_c2
        :pswitch_ae
        :pswitch_9d
        :pswitch_8c
        :pswitch_7f
        :pswitch_72
        :pswitch_65
        :pswitch_54
        :pswitch_47
        :pswitch_36
        :pswitch_22
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 11

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/u6;->D(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    goto/16 :goto_95

    .line 8
    .line 9
    :cond_8
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/z5;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1b

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/z5;->i(I)V

    .line 21
    .line 22
    .line 23
    iput v1, v0, Lcom/google/android/gms/internal/measurement/i5;->zza:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/z5;->l()V

    .line 26
    .line 27
    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 29
    .line 30
    array-length v2, v0

    .line 31
    move v3, v1

    .line 32
    :goto_1f
    if-ge v3, v2, :cond_8b

    .line 33
    .line 34
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const v5, 0xfffff

    .line 39
    .line 40
    .line 41
    and-int/2addr v5, v4

    .line 42
    int-to-long v5, v5

    .line 43
    const/high16 v7, 0xff00000

    .line 44
    .line 45
    and-int/2addr v4, v7

    .line 46
    ushr-int/lit8 v4, v4, 0x14

    .line 47
    .line 48
    const/16 v7, 0x9

    .line 49
    .line 50
    if-eq v4, v7, :cond_75

    .line 51
    .line 52
    const/16 v7, 0x3c

    .line 53
    .line 54
    if-eq v4, v7, :cond_5f

    .line 55
    .line 56
    const/16 v7, 0x44

    .line 57
    .line 58
    if-eq v4, v7, :cond_5f

    .line 59
    .line 60
    packed-switch v4, :pswitch_data_96

    .line 61
    .line 62
    .line 63
    goto :goto_88

    .line 64
    :pswitch_3f
    sget-object v4, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 65
    .line 66
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    if-eqz v7, :cond_88

    .line 71
    .line 72
    move-object v8, v7

    .line 73
    check-cast v8, Lcom/google/android/gms/internal/measurement/q6;

    .line 74
    .line 75
    iput-boolean v1, v8, Lcom/google/android/gms/internal/measurement/q6;->a:Z

    .line 76
    .line 77
    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_88

    .line 81
    :pswitch_50
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lcom/google/android/gms/internal/measurement/j6;

    .line 86
    .line 87
    check-cast v4, Lcom/google/android/gms/internal/measurement/j5;

    .line 88
    .line 89
    iget-boolean v5, v4, Lcom/google/android/gms/internal/measurement/j5;->a:Z

    .line 90
    .line 91
    if-eqz v5, :cond_88

    .line 92
    .line 93
    iput-boolean v1, v4, Lcom/google/android/gms/internal/measurement/j5;->a:Z

    .line 94
    .line 95
    goto :goto_88

    .line 96
    :cond_5f
    aget v4, v0, v3

    .line 97
    .line 98
    invoke-virtual {p0, p1, v4, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_88

    .line 103
    .line 104
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    sget-object v7, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 109
    .line 110
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/measurement/b7;->c(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_88

    .line 118
    :cond_75
    :pswitch_75
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_88

    .line 123
    .line 124
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    sget-object v7, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 129
    .line 130
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/measurement/b7;->c(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_88
    :goto_88
    add-int/lit8 v3, v3, 0x3

    .line 138
    .line 139
    goto :goto_1f

    .line 140
    :cond_8b
    check-cast p1, Lcom/google/android/gms/internal/measurement/z5;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 143
    .line 144
    iget-boolean v0, p1, Lcom/google/android/gms/internal/measurement/c7;->e:Z

    .line 145
    .line 146
    if-eqz v0, :cond_95

    .line 147
    .line 148
    iput-boolean v1, p1, Lcom/google/android/gms/internal/measurement/c7;->e:Z

    .line 149
    .line 150
    :cond_95
    :goto_95
    return-void

    .line 151
    :pswitch_data_96
    .packed-switch 0x11
        :pswitch_75
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_3f
    .end packed-switch
.end method

.method public final d(Lcom/google/android/gms/internal/measurement/z5;)I
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v6, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 6
    .line 7
    const v8, 0xfffff

    .line 8
    .line 9
    .line 10
    move v3, v8

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    :goto_d
    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 15
    .line 16
    array-length v10, v5

    .line 17
    if-ge v2, v10, :cond_6e6

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    const/high16 v11, 0xff00000

    .line 24
    .line 25
    and-int/2addr v11, v10

    .line 26
    ushr-int/lit8 v11, v11, 0x14

    .line 27
    .line 28
    aget v12, v5, v2

    .line 29
    .line 30
    add-int/lit8 v13, v2, 0x2

    .line 31
    .line 32
    aget v5, v5, v13

    .line 33
    .line 34
    and-int v13, v5, v8

    .line 35
    .line 36
    const/16 v14, 0x11

    .line 37
    .line 38
    const/4 v15, 0x1

    .line 39
    if-gt v11, v14, :cond_3a

    .line 40
    .line 41
    if-eq v13, v3, :cond_35

    .line 42
    .line 43
    if-ne v13, v8, :cond_2e

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    goto :goto_34

    .line 47
    :cond_2e
    int-to-long v3, v13

    .line 48
    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    move v4, v3

    .line 53
    :goto_34
    move v3, v13

    .line 54
    :cond_35
    ushr-int/lit8 v5, v5, 0x14

    .line 55
    .line 56
    shl-int v5, v15, v5

    .line 57
    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    const/4 v5, 0x0

    .line 60
    :goto_3b
    and-int/2addr v10, v8

    .line 61
    int-to-long v13, v10

    .line 62
    sget-object v10, Lcom/google/android/gms/internal/measurement/u5;->b:Lcom/google/android/gms/internal/measurement/u5;

    .line 63
    .line 64
    iget v10, v10, Lcom/google/android/gms/internal/measurement/u5;->a:I

    .line 65
    .line 66
    if-lt v11, v10, :cond_47

    .line 67
    .line 68
    sget-object v10, Lcom/google/android/gms/internal/measurement/u5;->c:Lcom/google/android/gms/internal/measurement/u5;

    .line 69
    .line 70
    iget v10, v10, Lcom/google/android/gms/internal/measurement/u5;->a:I

    .line 71
    .line 72
    :cond_47
    const/16 v10, 0x3f

    .line 73
    .line 74
    const/4 v7, 0x4

    .line 75
    const/16 v8, 0x8

    .line 76
    .line 77
    packed-switch v11, :pswitch_data_6ee

    .line 78
    .line 79
    .line 80
    goto/16 :goto_6dd

    .line 81
    .line 82
    :pswitch_51
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_6dd

    .line 87
    .line 88
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lcom/google/android/gms/internal/measurement/i5;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/measurement/q5;->j(ILcom/google/android/gms/internal/measurement/i5;Lcom/google/android/gms/internal/measurement/b7;)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    :goto_65
    add-int/2addr v9, v5

    .line 103
    goto/16 :goto_6dd

    .line 104
    .line 105
    :pswitch_68
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_6dd

    .line 110
    .line 111
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    shl-int/lit8 v5, v12, 0x3

    .line 116
    .line 117
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    shl-long v11, v7, v15

    .line 122
    .line 123
    shr-long/2addr v7, v10

    .line 124
    xor-long/2addr v7, v11

    .line 125
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    :goto_80
    add-int/2addr v7, v5

    .line 130
    :goto_81
    add-int/2addr v9, v7

    .line 131
    goto/16 :goto_6dd

    .line 132
    .line 133
    :pswitch_84
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_6dd

    .line 138
    .line 139
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    shl-int/lit8 v7, v12, 0x3

    .line 144
    .line 145
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    shl-int/lit8 v8, v5, 0x1

    .line 150
    .line 151
    shr-int/lit8 v5, v5, 0x1f

    .line 152
    .line 153
    xor-int/2addr v5, v8

    .line 154
    invoke-static {v5, v7, v9}, La1/a;->h(III)I

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    goto/16 :goto_6dd

    .line 159
    .line 160
    :pswitch_9f
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_6dd

    .line 165
    .line 166
    shl-int/lit8 v5, v12, 0x3

    .line 167
    .line 168
    invoke-static {v5, v8, v9}, La1/a;->h(III)I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    goto/16 :goto_6dd

    .line 173
    .line 174
    :pswitch_ad
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_6dd

    .line 179
    .line 180
    shl-int/lit8 v5, v12, 0x3

    .line 181
    .line 182
    invoke-static {v5, v7, v9}, La1/a;->h(III)I

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    goto/16 :goto_6dd

    .line 187
    .line 188
    :pswitch_bb
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_6dd

    .line 193
    .line 194
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    shl-int/lit8 v7, v12, 0x3

    .line 199
    .line 200
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    int-to-long v10, v5

    .line 205
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    :goto_d0
    add-int/2addr v5, v7

    .line 210
    goto :goto_65

    .line 211
    :pswitch_d2
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_6dd

    .line 216
    .line 217
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    shl-int/lit8 v7, v12, 0x3

    .line 222
    .line 223
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    invoke-static {v5, v7, v9}, La1/a;->h(III)I

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    goto/16 :goto_6dd

    .line 232
    .line 233
    :pswitch_e8
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_6dd

    .line 238
    .line 239
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    check-cast v5, Lcom/google/android/gms/internal/measurement/p5;

    .line 244
    .line 245
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/q5;->p(ILcom/google/android/gms/internal/measurement/p5;)I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    goto/16 :goto_65

    .line 250
    .line 251
    :pswitch_fa
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-eqz v5, :cond_6dd

    .line 256
    .line 257
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    check-cast v5, Lcom/google/android/gms/internal/measurement/i5;

    .line 266
    .line 267
    shl-int/lit8 v8, v12, 0x3

    .line 268
    .line 269
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/i5;->a(Lcom/google/android/gms/internal/measurement/b7;)I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    :goto_118
    add-int/2addr v7, v5

    .line 282
    add-int/2addr v7, v8

    .line 283
    goto/16 :goto_81

    .line 284
    .line 285
    :pswitch_11c
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_6dd

    .line 290
    .line 291
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    instance-of v7, v5, Lcom/google/android/gms/internal/measurement/p5;

    .line 296
    .line 297
    if-eqz v7, :cond_132

    .line 298
    .line 299
    check-cast v5, Lcom/google/android/gms/internal/measurement/p5;

    .line 300
    .line 301
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/measurement/q5;->p(ILcom/google/android/gms/internal/measurement/p5;)I

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    goto/16 :goto_65

    .line 306
    .line 307
    :cond_132
    check-cast v5, Ljava/lang/String;

    .line 308
    .line 309
    shl-int/lit8 v7, v12, 0x3

    .line 310
    .line 311
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->k(Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    goto :goto_d0

    .line 320
    :pswitch_13f
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    if-eqz v5, :cond_6dd

    .line 325
    .line 326
    shl-int/lit8 v5, v12, 0x3

    .line 327
    .line 328
    invoke-static {v5, v15, v9}, La1/a;->h(III)I

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    goto/16 :goto_6dd

    .line 333
    .line 334
    :pswitch_14d
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    if-eqz v5, :cond_6dd

    .line 339
    .line 340
    shl-int/lit8 v5, v12, 0x3

    .line 341
    .line 342
    invoke-static {v5, v7, v9}, La1/a;->h(III)I

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    goto/16 :goto_6dd

    .line 347
    .line 348
    :pswitch_15b
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-eqz v5, :cond_6dd

    .line 353
    .line 354
    shl-int/lit8 v5, v12, 0x3

    .line 355
    .line 356
    invoke-static {v5, v8, v9}, La1/a;->h(III)I

    .line 357
    .line 358
    .line 359
    move-result v9

    .line 360
    goto/16 :goto_6dd

    .line 361
    .line 362
    :pswitch_169
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    if-eqz v5, :cond_6dd

    .line 367
    .line 368
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    shl-int/lit8 v7, v12, 0x3

    .line 373
    .line 374
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    int-to-long v10, v5

    .line 379
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    goto/16 :goto_d0

    .line 384
    .line 385
    :pswitch_180
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-eqz v5, :cond_6dd

    .line 390
    .line 391
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 392
    .line 393
    .line 394
    move-result-wide v7

    .line 395
    shl-int/lit8 v5, v12, 0x3

    .line 396
    .line 397
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 402
    .line 403
    .line 404
    move-result v7

    .line 405
    goto/16 :goto_80

    .line 406
    .line 407
    :pswitch_196
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    if-eqz v5, :cond_6dd

    .line 412
    .line 413
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 414
    .line 415
    .line 416
    move-result-wide v7

    .line 417
    shl-int/lit8 v5, v12, 0x3

    .line 418
    .line 419
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 424
    .line 425
    .line 426
    move-result v7

    .line 427
    goto/16 :goto_80

    .line 428
    .line 429
    :pswitch_1ac
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    if-eqz v5, :cond_6dd

    .line 434
    .line 435
    shl-int/lit8 v5, v12, 0x3

    .line 436
    .line 437
    invoke-static {v5, v7, v9}, La1/a;->h(III)I

    .line 438
    .line 439
    .line 440
    move-result v9

    .line 441
    goto/16 :goto_6dd

    .line 442
    .line 443
    :pswitch_1ba
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    if-eqz v5, :cond_6dd

    .line 448
    .line 449
    shl-int/lit8 v5, v12, 0x3

    .line 450
    .line 451
    invoke-static {v5, v8, v9}, La1/a;->h(III)I

    .line 452
    .line 453
    .line 454
    move-result v9

    .line 455
    goto/16 :goto_6dd

    .line 456
    .line 457
    :pswitch_1c8
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/u6;->C(I)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    check-cast v5, Lcom/google/android/gms/internal/measurement/q6;

    .line 466
    .line 467
    if-nez v7, :cond_1fe

    .line 468
    .line 469
    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v7

    .line 473
    if-eqz v7, :cond_1dc

    .line 474
    .line 475
    goto/16 :goto_6dd

    .line 476
    .line 477
    :cond_1dc
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/q6;->entrySet()Ljava/util/Set;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 486
    .line 487
    .line 488
    move-result v7

    .line 489
    if-nez v7, :cond_1ec

    .line 490
    .line 491
    goto/16 :goto_6dd

    .line 492
    .line 493
    :cond_1ec
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    check-cast v1, Ljava/util/Map$Entry;

    .line 498
    .line 499
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    new-instance v1, Ljava/lang/NoSuchMethodError;

    .line 506
    .line 507
    invoke-direct {v1}, Ljava/lang/NoSuchMethodError;-><init>()V

    .line 508
    .line 509
    .line 510
    throw v1

    .line 511
    :cond_1fe
    new-instance v1, Ljava/lang/ClassCastException;

    .line 512
    .line 513
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 514
    .line 515
    .line 516
    throw v1

    .line 517
    :pswitch_204
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    check-cast v5, Ljava/util/List;

    .line 522
    .line 523
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 528
    .line 529
    .line 530
    move-result v8

    .line 531
    if-nez v8, :cond_216

    .line 532
    .line 533
    const/4 v11, 0x0

    .line 534
    goto :goto_228

    .line 535
    :cond_216
    const/4 v10, 0x0

    .line 536
    const/4 v11, 0x0

    .line 537
    :goto_218
    if-ge v10, v8, :cond_228

    .line 538
    .line 539
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v13

    .line 543
    check-cast v13, Lcom/google/android/gms/internal/measurement/i5;

    .line 544
    .line 545
    invoke-static {v12, v13, v7}, Lcom/google/android/gms/internal/measurement/q5;->j(ILcom/google/android/gms/internal/measurement/i5;Lcom/google/android/gms/internal/measurement/b7;)I

    .line 546
    .line 547
    .line 548
    move-result v13

    .line 549
    add-int/2addr v11, v13

    .line 550
    add-int/lit8 v10, v10, 0x1

    .line 551
    .line 552
    goto :goto_218

    .line 553
    :cond_228
    :goto_228
    add-int/2addr v9, v11

    .line 554
    goto/16 :goto_6dd

    .line 555
    .line 556
    :pswitch_22b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    check-cast v5, Ljava/util/List;

    .line 561
    .line 562
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->r(Ljava/util/List;)I

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    if-lez v5, :cond_6dd

    .line 567
    .line 568
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 569
    .line 570
    .line 571
    move-result v7

    .line 572
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 573
    .line 574
    .line 575
    move-result v8

    .line 576
    :goto_23f
    add-int/2addr v8, v7

    .line 577
    add-int/2addr v8, v5

    .line 578
    :goto_241
    add-int/2addr v9, v8

    .line 579
    goto/16 :goto_6dd

    .line 580
    .line 581
    :pswitch_244
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v5

    .line 585
    check-cast v5, Ljava/util/List;

    .line 586
    .line 587
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->p(Ljava/util/List;)I

    .line 588
    .line 589
    .line 590
    move-result v5

    .line 591
    if-lez v5, :cond_6dd

    .line 592
    .line 593
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 594
    .line 595
    .line 596
    move-result v7

    .line 597
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 598
    .line 599
    .line 600
    move-result v8

    .line 601
    goto :goto_23f

    .line 602
    :pswitch_259
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    check-cast v5, Ljava/util/List;

    .line 607
    .line 608
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 609
    .line 610
    .line 611
    move-result v5

    .line 612
    shl-int/lit8 v5, v5, 0x3

    .line 613
    .line 614
    if-lez v5, :cond_6dd

    .line 615
    .line 616
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 617
    .line 618
    .line 619
    move-result v7

    .line 620
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 621
    .line 622
    .line 623
    move-result v8

    .line 624
    goto :goto_23f

    .line 625
    :pswitch_270
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v5

    .line 629
    check-cast v5, Ljava/util/List;

    .line 630
    .line 631
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    shl-int/lit8 v5, v5, 0x2

    .line 636
    .line 637
    if-lez v5, :cond_6dd

    .line 638
    .line 639
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 640
    .line 641
    .line 642
    move-result v7

    .line 643
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 644
    .line 645
    .line 646
    move-result v8

    .line 647
    goto :goto_23f

    .line 648
    :pswitch_287
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v5

    .line 652
    check-cast v5, Ljava/util/List;

    .line 653
    .line 654
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->h(Ljava/util/List;)I

    .line 655
    .line 656
    .line 657
    move-result v5

    .line 658
    if-lez v5, :cond_6dd

    .line 659
    .line 660
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 661
    .line 662
    .line 663
    move-result v7

    .line 664
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 665
    .line 666
    .line 667
    move-result v8

    .line 668
    goto :goto_23f

    .line 669
    :pswitch_29c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v5

    .line 673
    check-cast v5, Ljava/util/List;

    .line 674
    .line 675
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->t(Ljava/util/List;)I

    .line 676
    .line 677
    .line 678
    move-result v5

    .line 679
    if-lez v5, :cond_6dd

    .line 680
    .line 681
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 682
    .line 683
    .line 684
    move-result v7

    .line 685
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 686
    .line 687
    .line 688
    move-result v8

    .line 689
    goto :goto_23f

    .line 690
    :pswitch_2b1
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v5

    .line 694
    check-cast v5, Ljava/util/List;

    .line 695
    .line 696
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 697
    .line 698
    .line 699
    move-result v5

    .line 700
    if-lez v5, :cond_6dd

    .line 701
    .line 702
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 703
    .line 704
    .line 705
    move-result v7

    .line 706
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 707
    .line 708
    .line 709
    move-result v8

    .line 710
    goto/16 :goto_23f

    .line 711
    .line 712
    :pswitch_2c7
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v5

    .line 716
    check-cast v5, Ljava/util/List;

    .line 717
    .line 718
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 719
    .line 720
    .line 721
    move-result v5

    .line 722
    shl-int/lit8 v5, v5, 0x2

    .line 723
    .line 724
    if-lez v5, :cond_6dd

    .line 725
    .line 726
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 727
    .line 728
    .line 729
    move-result v7

    .line 730
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 731
    .line 732
    .line 733
    move-result v8

    .line 734
    goto/16 :goto_23f

    .line 735
    .line 736
    :pswitch_2df
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v5

    .line 740
    check-cast v5, Ljava/util/List;

    .line 741
    .line 742
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 743
    .line 744
    .line 745
    move-result v5

    .line 746
    shl-int/lit8 v5, v5, 0x3

    .line 747
    .line 748
    if-lez v5, :cond_6dd

    .line 749
    .line 750
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 751
    .line 752
    .line 753
    move-result v7

    .line 754
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 755
    .line 756
    .line 757
    move-result v8

    .line 758
    goto/16 :goto_23f

    .line 759
    .line 760
    :pswitch_2f7
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v5

    .line 764
    check-cast v5, Ljava/util/List;

    .line 765
    .line 766
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->l(Ljava/util/List;)I

    .line 767
    .line 768
    .line 769
    move-result v5

    .line 770
    if-lez v5, :cond_6dd

    .line 771
    .line 772
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 773
    .line 774
    .line 775
    move-result v7

    .line 776
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 777
    .line 778
    .line 779
    move-result v8

    .line 780
    goto/16 :goto_23f

    .line 781
    .line 782
    :pswitch_30d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v5

    .line 786
    check-cast v5, Ljava/util/List;

    .line 787
    .line 788
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->v(Ljava/util/List;)I

    .line 789
    .line 790
    .line 791
    move-result v5

    .line 792
    if-lez v5, :cond_6dd

    .line 793
    .line 794
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 795
    .line 796
    .line 797
    move-result v7

    .line 798
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 799
    .line 800
    .line 801
    move-result v8

    .line 802
    goto/16 :goto_23f

    .line 803
    .line 804
    :pswitch_323
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v5

    .line 808
    check-cast v5, Ljava/util/List;

    .line 809
    .line 810
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->n(Ljava/util/List;)I

    .line 811
    .line 812
    .line 813
    move-result v5

    .line 814
    if-lez v5, :cond_6dd

    .line 815
    .line 816
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 817
    .line 818
    .line 819
    move-result v7

    .line 820
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 821
    .line 822
    .line 823
    move-result v8

    .line 824
    goto/16 :goto_23f

    .line 825
    .line 826
    :pswitch_339
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v5

    .line 830
    check-cast v5, Ljava/util/List;

    .line 831
    .line 832
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 833
    .line 834
    .line 835
    move-result v5

    .line 836
    shl-int/lit8 v5, v5, 0x2

    .line 837
    .line 838
    if-lez v5, :cond_6dd

    .line 839
    .line 840
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 841
    .line 842
    .line 843
    move-result v7

    .line 844
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 845
    .line 846
    .line 847
    move-result v8

    .line 848
    goto/16 :goto_23f

    .line 849
    .line 850
    :pswitch_351
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v5

    .line 854
    check-cast v5, Ljava/util/List;

    .line 855
    .line 856
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 857
    .line 858
    .line 859
    move-result v5

    .line 860
    shl-int/lit8 v5, v5, 0x3

    .line 861
    .line 862
    if-lez v5, :cond_6dd

    .line 863
    .line 864
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 865
    .line 866
    .line 867
    move-result v7

    .line 868
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 869
    .line 870
    .line 871
    move-result v8

    .line 872
    goto/16 :goto_23f

    .line 873
    .line 874
    :pswitch_369
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v5

    .line 878
    check-cast v5, Ljava/util/List;

    .line 879
    .line 880
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 881
    .line 882
    .line 883
    move-result v7

    .line 884
    if-nez v7, :cond_377

    .line 885
    .line 886
    :goto_375
    const/4 v8, 0x0

    .line 887
    goto :goto_381

    .line 888
    :cond_377
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->r(Ljava/util/List;)I

    .line 889
    .line 890
    .line 891
    move-result v5

    .line 892
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 893
    .line 894
    .line 895
    move-result v8

    .line 896
    :goto_37f
    mul-int/2addr v8, v7

    .line 897
    add-int/2addr v8, v5

    .line 898
    :cond_381
    :goto_381
    add-int/2addr v9, v8

    .line 899
    goto/16 :goto_6dd

    .line 900
    .line 901
    :pswitch_384
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v5

    .line 905
    check-cast v5, Ljava/util/List;

    .line 906
    .line 907
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 908
    .line 909
    .line 910
    move-result v7

    .line 911
    if-nez v7, :cond_391

    .line 912
    .line 913
    goto :goto_375

    .line 914
    :cond_391
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->p(Ljava/util/List;)I

    .line 915
    .line 916
    .line 917
    move-result v5

    .line 918
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 919
    .line 920
    .line 921
    move-result v8

    .line 922
    goto :goto_37f

    .line 923
    :pswitch_39a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v5

    .line 927
    check-cast v5, Ljava/util/List;

    .line 928
    .line 929
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 930
    .line 931
    .line 932
    move-result v5

    .line 933
    if-nez v5, :cond_3a9

    .line 934
    .line 935
    :goto_3a6
    const/4 v7, 0x0

    .line 936
    goto/16 :goto_81

    .line 937
    .line 938
    :cond_3a9
    shl-int/lit8 v7, v12, 0x3

    .line 939
    .line 940
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 941
    .line 942
    .line 943
    move-result v7

    .line 944
    :goto_3af
    add-int/2addr v7, v8

    .line 945
    mul-int/2addr v7, v5

    .line 946
    goto/16 :goto_81

    .line 947
    .line 948
    :pswitch_3b3
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v5

    .line 952
    check-cast v5, Ljava/util/List;

    .line 953
    .line 954
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 955
    .line 956
    .line 957
    move-result v5

    .line 958
    if-nez v5, :cond_3c2

    .line 959
    .line 960
    :goto_3bf
    const/4 v8, 0x0

    .line 961
    goto/16 :goto_241

    .line 962
    .line 963
    :cond_3c2
    shl-int/lit8 v8, v12, 0x3

    .line 964
    .line 965
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 966
    .line 967
    .line 968
    move-result v8

    .line 969
    :goto_3c8
    add-int/2addr v8, v7

    .line 970
    mul-int/2addr v8, v5

    .line 971
    goto/16 :goto_241

    .line 972
    .line 973
    :pswitch_3cc
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v5

    .line 977
    check-cast v5, Ljava/util/List;

    .line 978
    .line 979
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 980
    .line 981
    .line 982
    move-result v7

    .line 983
    if-nez v7, :cond_3d9

    .line 984
    .line 985
    goto :goto_375

    .line 986
    :cond_3d9
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->h(Ljava/util/List;)I

    .line 987
    .line 988
    .line 989
    move-result v5

    .line 990
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 991
    .line 992
    .line 993
    move-result v8

    .line 994
    goto :goto_37f

    .line 995
    :pswitch_3e2
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v5

    .line 999
    check-cast v5, Ljava/util/List;

    .line 1000
    .line 1001
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1002
    .line 1003
    .line 1004
    move-result v7

    .line 1005
    if-nez v7, :cond_3ef

    .line 1006
    .line 1007
    goto :goto_375

    .line 1008
    :cond_3ef
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->t(Ljava/util/List;)I

    .line 1009
    .line 1010
    .line 1011
    move-result v5

    .line 1012
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 1013
    .line 1014
    .line 1015
    move-result v8

    .line 1016
    goto :goto_37f

    .line 1017
    :pswitch_3f8
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v5

    .line 1021
    check-cast v5, Ljava/util/List;

    .line 1022
    .line 1023
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1024
    .line 1025
    .line 1026
    move-result v7

    .line 1027
    if-nez v7, :cond_406

    .line 1028
    .line 1029
    goto/16 :goto_375

    .line 1030
    .line 1031
    :cond_406
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 1032
    .line 1033
    .line 1034
    move-result v8

    .line 1035
    mul-int/2addr v8, v7

    .line 1036
    const/4 v7, 0x0

    .line 1037
    :goto_40c
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1038
    .line 1039
    .line 1040
    move-result v10

    .line 1041
    if-ge v7, v10, :cond_381

    .line 1042
    .line 1043
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v10

    .line 1047
    check-cast v10, Lcom/google/android/gms/internal/measurement/p5;

    .line 1048
    .line 1049
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 1050
    .line 1051
    .line 1052
    move-result v10

    .line 1053
    invoke-static {v10, v10, v8}, La1/a;->h(III)I

    .line 1054
    .line 1055
    .line 1056
    move-result v8

    .line 1057
    add-int/lit8 v7, v7, 0x1

    .line 1058
    .line 1059
    goto :goto_40c

    .line 1060
    :pswitch_423
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v5

    .line 1064
    check-cast v5, Ljava/util/List;

    .line 1065
    .line 1066
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v7

    .line 1070
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1071
    .line 1072
    .line 1073
    move-result v8

    .line 1074
    if-nez v8, :cond_435

    .line 1075
    .line 1076
    const/4 v10, 0x0

    .line 1077
    goto :goto_44e

    .line 1078
    :cond_435
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 1079
    .line 1080
    .line 1081
    move-result v10

    .line 1082
    mul-int/2addr v10, v8

    .line 1083
    const/4 v11, 0x0

    .line 1084
    :goto_43b
    if-ge v11, v8, :cond_44e

    .line 1085
    .line 1086
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v12

    .line 1090
    check-cast v12, Lcom/google/android/gms/internal/measurement/i5;

    .line 1091
    .line 1092
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/measurement/i5;->a(Lcom/google/android/gms/internal/measurement/b7;)I

    .line 1093
    .line 1094
    .line 1095
    move-result v12

    .line 1096
    invoke-static {v12, v12, v10}, La1/a;->h(III)I

    .line 1097
    .line 1098
    .line 1099
    move-result v10

    .line 1100
    add-int/lit8 v11, v11, 0x1

    .line 1101
    .line 1102
    goto :goto_43b

    .line 1103
    :cond_44e
    :goto_44e
    add-int/2addr v9, v10

    .line 1104
    goto/16 :goto_6dd

    .line 1105
    .line 1106
    :pswitch_451
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v5

    .line 1110
    check-cast v5, Ljava/util/List;

    .line 1111
    .line 1112
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1113
    .line 1114
    .line 1115
    move-result v7

    .line 1116
    if-nez v7, :cond_45f

    .line 1117
    .line 1118
    goto/16 :goto_375

    .line 1119
    .line 1120
    :cond_45f
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 1121
    .line 1122
    .line 1123
    move-result v8

    .line 1124
    mul-int/2addr v8, v7

    .line 1125
    instance-of v10, v5, Lcom/google/android/gms/internal/measurement/m6;

    .line 1126
    .line 1127
    if-eqz v10, :cond_48b

    .line 1128
    .line 1129
    check-cast v5, Lcom/google/android/gms/internal/measurement/m6;

    .line 1130
    .line 1131
    const/4 v10, 0x0

    .line 1132
    :goto_46b
    if-ge v10, v7, :cond_381

    .line 1133
    .line 1134
    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/m6;->zza()Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v11

    .line 1138
    instance-of v12, v11, Lcom/google/android/gms/internal/measurement/p5;

    .line 1139
    .line 1140
    if-eqz v12, :cond_480

    .line 1141
    .line 1142
    check-cast v11, Lcom/google/android/gms/internal/measurement/p5;

    .line 1143
    .line 1144
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 1145
    .line 1146
    .line 1147
    move-result v11

    .line 1148
    invoke-static {v11, v11, v8}, La1/a;->h(III)I

    .line 1149
    .line 1150
    .line 1151
    move-result v8

    .line 1152
    goto :goto_488

    .line 1153
    :cond_480
    check-cast v11, Ljava/lang/String;

    .line 1154
    .line 1155
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/q5;->k(Ljava/lang/String;)I

    .line 1156
    .line 1157
    .line 1158
    move-result v11

    .line 1159
    add-int/2addr v11, v8

    .line 1160
    move v8, v11

    .line 1161
    :goto_488
    add-int/lit8 v10, v10, 0x1

    .line 1162
    .line 1163
    goto :goto_46b

    .line 1164
    :cond_48b
    const/4 v10, 0x0

    .line 1165
    :goto_48c
    if-ge v10, v7, :cond_381

    .line 1166
    .line 1167
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v11

    .line 1171
    instance-of v12, v11, Lcom/google/android/gms/internal/measurement/p5;

    .line 1172
    .line 1173
    if-eqz v12, :cond_4a1

    .line 1174
    .line 1175
    check-cast v11, Lcom/google/android/gms/internal/measurement/p5;

    .line 1176
    .line 1177
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 1178
    .line 1179
    .line 1180
    move-result v11

    .line 1181
    invoke-static {v11, v11, v8}, La1/a;->h(III)I

    .line 1182
    .line 1183
    .line 1184
    move-result v8

    .line 1185
    goto :goto_4a9

    .line 1186
    :cond_4a1
    check-cast v11, Ljava/lang/String;

    .line 1187
    .line 1188
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/q5;->k(Ljava/lang/String;)I

    .line 1189
    .line 1190
    .line 1191
    move-result v11

    .line 1192
    add-int/2addr v11, v8

    .line 1193
    move v8, v11

    .line 1194
    :goto_4a9
    add-int/lit8 v10, v10, 0x1

    .line 1195
    .line 1196
    goto :goto_48c

    .line 1197
    :pswitch_4ac
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v5

    .line 1201
    check-cast v5, Ljava/util/List;

    .line 1202
    .line 1203
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1204
    .line 1205
    .line 1206
    move-result v5

    .line 1207
    if-nez v5, :cond_4ba

    .line 1208
    .line 1209
    const/4 v7, 0x0

    .line 1210
    goto :goto_4c2

    .line 1211
    :cond_4ba
    shl-int/lit8 v7, v12, 0x3

    .line 1212
    .line 1213
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1214
    .line 1215
    .line 1216
    move-result v7

    .line 1217
    add-int/2addr v7, v15

    .line 1218
    mul-int/2addr v7, v5

    .line 1219
    :goto_4c2
    add-int/2addr v9, v7

    .line 1220
    goto/16 :goto_6dd

    .line 1221
    .line 1222
    :pswitch_4c5
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v5

    .line 1226
    check-cast v5, Ljava/util/List;

    .line 1227
    .line 1228
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1229
    .line 1230
    .line 1231
    move-result v5

    .line 1232
    if-nez v5, :cond_4d3

    .line 1233
    .line 1234
    goto/16 :goto_3bf

    .line 1235
    .line 1236
    :cond_4d3
    shl-int/lit8 v8, v12, 0x3

    .line 1237
    .line 1238
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1239
    .line 1240
    .line 1241
    move-result v8

    .line 1242
    goto/16 :goto_3c8

    .line 1243
    .line 1244
    :pswitch_4db
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v5

    .line 1248
    check-cast v5, Ljava/util/List;

    .line 1249
    .line 1250
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1251
    .line 1252
    .line 1253
    move-result v5

    .line 1254
    if-nez v5, :cond_4e9

    .line 1255
    .line 1256
    goto/16 :goto_3a6

    .line 1257
    .line 1258
    :cond_4e9
    shl-int/lit8 v7, v12, 0x3

    .line 1259
    .line 1260
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1261
    .line 1262
    .line 1263
    move-result v7

    .line 1264
    goto/16 :goto_3af

    .line 1265
    .line 1266
    :pswitch_4f1
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v5

    .line 1270
    check-cast v5, Ljava/util/List;

    .line 1271
    .line 1272
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1273
    .line 1274
    .line 1275
    move-result v7

    .line 1276
    if-nez v7, :cond_4ff

    .line 1277
    .line 1278
    goto/16 :goto_375

    .line 1279
    .line 1280
    :cond_4ff
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->l(Ljava/util/List;)I

    .line 1281
    .line 1282
    .line 1283
    move-result v5

    .line 1284
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 1285
    .line 1286
    .line 1287
    move-result v8

    .line 1288
    goto/16 :goto_37f

    .line 1289
    .line 1290
    :pswitch_509
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v5

    .line 1294
    check-cast v5, Ljava/util/List;

    .line 1295
    .line 1296
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1297
    .line 1298
    .line 1299
    move-result v7

    .line 1300
    if-nez v7, :cond_517

    .line 1301
    .line 1302
    goto/16 :goto_375

    .line 1303
    .line 1304
    :cond_517
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->v(Ljava/util/List;)I

    .line 1305
    .line 1306
    .line 1307
    move-result v5

    .line 1308
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 1309
    .line 1310
    .line 1311
    move-result v8

    .line 1312
    goto/16 :goto_37f

    .line 1313
    .line 1314
    :pswitch_521
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v5

    .line 1318
    check-cast v5, Ljava/util/List;

    .line 1319
    .line 1320
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1321
    .line 1322
    .line 1323
    move-result v7

    .line 1324
    if-nez v7, :cond_52f

    .line 1325
    .line 1326
    goto/16 :goto_375

    .line 1327
    .line 1328
    :cond_52f
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/a5;->n(Ljava/util/List;)I

    .line 1329
    .line 1330
    .line 1331
    move-result v7

    .line 1332
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1333
    .line 1334
    .line 1335
    move-result v5

    .line 1336
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->v(I)I

    .line 1337
    .line 1338
    .line 1339
    move-result v8

    .line 1340
    mul-int/2addr v8, v5

    .line 1341
    add-int/2addr v8, v7

    .line 1342
    goto/16 :goto_381

    .line 1343
    .line 1344
    :pswitch_53f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v5

    .line 1348
    check-cast v5, Ljava/util/List;

    .line 1349
    .line 1350
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1351
    .line 1352
    .line 1353
    move-result v5

    .line 1354
    if-nez v5, :cond_54d

    .line 1355
    .line 1356
    goto/16 :goto_3bf

    .line 1357
    .line 1358
    :cond_54d
    shl-int/lit8 v8, v12, 0x3

    .line 1359
    .line 1360
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1361
    .line 1362
    .line 1363
    move-result v8

    .line 1364
    goto/16 :goto_3c8

    .line 1365
    .line 1366
    :pswitch_555
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v5

    .line 1370
    check-cast v5, Ljava/util/List;

    .line 1371
    .line 1372
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1373
    .line 1374
    .line 1375
    move-result v5

    .line 1376
    if-nez v5, :cond_563

    .line 1377
    .line 1378
    goto/16 :goto_3a6

    .line 1379
    .line 1380
    :cond_563
    shl-int/lit8 v7, v12, 0x3

    .line 1381
    .line 1382
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1383
    .line 1384
    .line 1385
    move-result v7

    .line 1386
    goto/16 :goto_3af

    .line 1387
    .line 1388
    :pswitch_56b
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1389
    .line 1390
    .line 1391
    move-result v5

    .line 1392
    if-eqz v5, :cond_6dd

    .line 1393
    .line 1394
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v5

    .line 1398
    check-cast v5, Lcom/google/android/gms/internal/measurement/i5;

    .line 1399
    .line 1400
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v7

    .line 1404
    invoke-static {v12, v5, v7}, Lcom/google/android/gms/internal/measurement/q5;->j(ILcom/google/android/gms/internal/measurement/i5;Lcom/google/android/gms/internal/measurement/b7;)I

    .line 1405
    .line 1406
    .line 1407
    move-result v5

    .line 1408
    goto/16 :goto_65

    .line 1409
    .line 1410
    :pswitch_581
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1411
    .line 1412
    .line 1413
    move-result v5

    .line 1414
    if-eqz v5, :cond_6dd

    .line 1415
    .line 1416
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1417
    .line 1418
    .line 1419
    move-result-wide v7

    .line 1420
    shl-int/lit8 v0, v12, 0x3

    .line 1421
    .line 1422
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1423
    .line 1424
    .line 1425
    move-result v0

    .line 1426
    shl-long v11, v7, v15

    .line 1427
    .line 1428
    shr-long/2addr v7, v10

    .line 1429
    xor-long/2addr v7, v11

    .line 1430
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 1431
    .line 1432
    .line 1433
    move-result v5

    .line 1434
    :goto_599
    add-int/2addr v5, v0

    .line 1435
    goto/16 :goto_65

    .line 1436
    .line 1437
    :pswitch_59c
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1438
    .line 1439
    .line 1440
    move-result v5

    .line 1441
    if-eqz v5, :cond_6dd

    .line 1442
    .line 1443
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1444
    .line 1445
    .line 1446
    move-result v0

    .line 1447
    shl-int/lit8 v5, v12, 0x3

    .line 1448
    .line 1449
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1450
    .line 1451
    .line 1452
    move-result v5

    .line 1453
    shl-int/lit8 v7, v0, 0x1

    .line 1454
    .line 1455
    shr-int/lit8 v0, v0, 0x1f

    .line 1456
    .line 1457
    xor-int/2addr v0, v7

    .line 1458
    invoke-static {v0, v5, v9}, La1/a;->h(III)I

    .line 1459
    .line 1460
    .line 1461
    move-result v9

    .line 1462
    goto/16 :goto_6dd

    .line 1463
    .line 1464
    :pswitch_5b7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1465
    .line 1466
    .line 1467
    move-result v5

    .line 1468
    if-eqz v5, :cond_5c3

    .line 1469
    .line 1470
    shl-int/lit8 v0, v12, 0x3

    .line 1471
    .line 1472
    invoke-static {v0, v8, v9}, La1/a;->h(III)I

    .line 1473
    .line 1474
    .line 1475
    move-result v9

    .line 1476
    :cond_5c3
    :goto_5c3
    move-object/from16 v1, p1

    .line 1477
    .line 1478
    goto/16 :goto_6dd

    .line 1479
    .line 1480
    :pswitch_5c7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1481
    .line 1482
    .line 1483
    move-result v5

    .line 1484
    if-eqz v5, :cond_5c3

    .line 1485
    .line 1486
    shl-int/lit8 v0, v12, 0x3

    .line 1487
    .line 1488
    invoke-static {v0, v7, v9}, La1/a;->h(III)I

    .line 1489
    .line 1490
    .line 1491
    move-result v9

    .line 1492
    goto :goto_5c3

    .line 1493
    :pswitch_5d4
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1494
    .line 1495
    .line 1496
    move-result v5

    .line 1497
    if-eqz v5, :cond_6dd

    .line 1498
    .line 1499
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1500
    .line 1501
    .line 1502
    move-result v0

    .line 1503
    shl-int/lit8 v5, v12, 0x3

    .line 1504
    .line 1505
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1506
    .line 1507
    .line 1508
    move-result v5

    .line 1509
    int-to-long v7, v0

    .line 1510
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 1511
    .line 1512
    .line 1513
    move-result v0

    .line 1514
    :goto_5e9
    add-int/2addr v0, v5

    .line 1515
    :goto_5ea
    add-int/2addr v9, v0

    .line 1516
    goto/16 :goto_6dd

    .line 1517
    .line 1518
    :pswitch_5ed
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1519
    .line 1520
    .line 1521
    move-result v5

    .line 1522
    if-eqz v5, :cond_6dd

    .line 1523
    .line 1524
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1525
    .line 1526
    .line 1527
    move-result v0

    .line 1528
    shl-int/lit8 v5, v12, 0x3

    .line 1529
    .line 1530
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1531
    .line 1532
    .line 1533
    move-result v5

    .line 1534
    invoke-static {v0, v5, v9}, La1/a;->h(III)I

    .line 1535
    .line 1536
    .line 1537
    move-result v9

    .line 1538
    goto/16 :goto_6dd

    .line 1539
    .line 1540
    :pswitch_603
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1541
    .line 1542
    .line 1543
    move-result v5

    .line 1544
    if-eqz v5, :cond_6dd

    .line 1545
    .line 1546
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v0

    .line 1550
    check-cast v0, Lcom/google/android/gms/internal/measurement/p5;

    .line 1551
    .line 1552
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/measurement/q5;->p(ILcom/google/android/gms/internal/measurement/p5;)I

    .line 1553
    .line 1554
    .line 1555
    move-result v0

    .line 1556
    goto :goto_5ea

    .line 1557
    :pswitch_614
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1558
    .line 1559
    .line 1560
    move-result v5

    .line 1561
    if-eqz v5, :cond_6dd

    .line 1562
    .line 1563
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v5

    .line 1567
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v7

    .line 1571
    check-cast v5, Lcom/google/android/gms/internal/measurement/i5;

    .line 1572
    .line 1573
    shl-int/lit8 v8, v12, 0x3

    .line 1574
    .line 1575
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1576
    .line 1577
    .line 1578
    move-result v8

    .line 1579
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/i5;->a(Lcom/google/android/gms/internal/measurement/b7;)I

    .line 1580
    .line 1581
    .line 1582
    move-result v5

    .line 1583
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1584
    .line 1585
    .line 1586
    move-result v7

    .line 1587
    goto/16 :goto_118

    .line 1588
    .line 1589
    :pswitch_634
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1590
    .line 1591
    .line 1592
    move-result v5

    .line 1593
    if-eqz v5, :cond_6dd

    .line 1594
    .line 1595
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v0

    .line 1599
    instance-of v5, v0, Lcom/google/android/gms/internal/measurement/p5;

    .line 1600
    .line 1601
    if-eqz v5, :cond_649

    .line 1602
    .line 1603
    check-cast v0, Lcom/google/android/gms/internal/measurement/p5;

    .line 1604
    .line 1605
    invoke-static {v12, v0}, Lcom/google/android/gms/internal/measurement/q5;->p(ILcom/google/android/gms/internal/measurement/p5;)I

    .line 1606
    .line 1607
    .line 1608
    move-result v0

    .line 1609
    goto :goto_5ea

    .line 1610
    :cond_649
    check-cast v0, Ljava/lang/String;

    .line 1611
    .line 1612
    shl-int/lit8 v5, v12, 0x3

    .line 1613
    .line 1614
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1615
    .line 1616
    .line 1617
    move-result v5

    .line 1618
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->k(Ljava/lang/String;)I

    .line 1619
    .line 1620
    .line 1621
    move-result v0

    .line 1622
    goto :goto_5e9

    .line 1623
    :pswitch_656
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1624
    .line 1625
    .line 1626
    move-result v5

    .line 1627
    if-eqz v5, :cond_5c3

    .line 1628
    .line 1629
    shl-int/lit8 v0, v12, 0x3

    .line 1630
    .line 1631
    invoke-static {v0, v15, v9}, La1/a;->h(III)I

    .line 1632
    .line 1633
    .line 1634
    move-result v9

    .line 1635
    goto/16 :goto_5c3

    .line 1636
    .line 1637
    :pswitch_664
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1638
    .line 1639
    .line 1640
    move-result v5

    .line 1641
    if-eqz v5, :cond_5c3

    .line 1642
    .line 1643
    shl-int/lit8 v0, v12, 0x3

    .line 1644
    .line 1645
    invoke-static {v0, v7, v9}, La1/a;->h(III)I

    .line 1646
    .line 1647
    .line 1648
    move-result v9

    .line 1649
    goto/16 :goto_5c3

    .line 1650
    .line 1651
    :pswitch_672
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1652
    .line 1653
    .line 1654
    move-result v5

    .line 1655
    if-eqz v5, :cond_5c3

    .line 1656
    .line 1657
    shl-int/lit8 v0, v12, 0x3

    .line 1658
    .line 1659
    invoke-static {v0, v8, v9}, La1/a;->h(III)I

    .line 1660
    .line 1661
    .line 1662
    move-result v9

    .line 1663
    goto/16 :goto_5c3

    .line 1664
    .line 1665
    :pswitch_680
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1666
    .line 1667
    .line 1668
    move-result v5

    .line 1669
    if-eqz v5, :cond_6dd

    .line 1670
    .line 1671
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1672
    .line 1673
    .line 1674
    move-result v0

    .line 1675
    shl-int/lit8 v5, v12, 0x3

    .line 1676
    .line 1677
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1678
    .line 1679
    .line 1680
    move-result v5

    .line 1681
    int-to-long v7, v0

    .line 1682
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 1683
    .line 1684
    .line 1685
    move-result v0

    .line 1686
    goto/16 :goto_5e9

    .line 1687
    .line 1688
    :pswitch_697
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1689
    .line 1690
    .line 1691
    move-result v5

    .line 1692
    if-eqz v5, :cond_6dd

    .line 1693
    .line 1694
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1695
    .line 1696
    .line 1697
    move-result-wide v7

    .line 1698
    shl-int/lit8 v0, v12, 0x3

    .line 1699
    .line 1700
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1701
    .line 1702
    .line 1703
    move-result v0

    .line 1704
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 1705
    .line 1706
    .line 1707
    move-result v5

    .line 1708
    goto/16 :goto_599

    .line 1709
    .line 1710
    :pswitch_6ad
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1711
    .line 1712
    .line 1713
    move-result v5

    .line 1714
    if-eqz v5, :cond_6dd

    .line 1715
    .line 1716
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1717
    .line 1718
    .line 1719
    move-result-wide v7

    .line 1720
    shl-int/lit8 v0, v12, 0x3

    .line 1721
    .line 1722
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1723
    .line 1724
    .line 1725
    move-result v0

    .line 1726
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 1727
    .line 1728
    .line 1729
    move-result v5

    .line 1730
    goto/16 :goto_599

    .line 1731
    .line 1732
    :pswitch_6c3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1733
    .line 1734
    .line 1735
    move-result v5

    .line 1736
    if-eqz v5, :cond_5c3

    .line 1737
    .line 1738
    shl-int/lit8 v0, v12, 0x3

    .line 1739
    .line 1740
    invoke-static {v0, v7, v9}, La1/a;->h(III)I

    .line 1741
    .line 1742
    .line 1743
    move-result v9

    .line 1744
    goto/16 :goto_5c3

    .line 1745
    .line 1746
    :pswitch_6d1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1747
    .line 1748
    .line 1749
    move-result v5

    .line 1750
    if-eqz v5, :cond_6dd

    .line 1751
    .line 1752
    shl-int/lit8 v0, v12, 0x3

    .line 1753
    .line 1754
    invoke-static {v0, v8, v9}, La1/a;->h(III)I

    .line 1755
    .line 1756
    .line 1757
    move-result v9

    .line 1758
    :cond_6dd
    :goto_6dd
    add-int/lit8 v2, v2, 0x3

    .line 1759
    .line 1760
    const v8, 0xfffff

    .line 1761
    .line 1762
    .line 1763
    move-object/from16 v0, p0

    .line 1764
    .line 1765
    goto/16 :goto_d

    .line 1766
    .line 1767
    :cond_6e6
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 1768
    .line 1769
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c7;->a()I

    .line 1770
    .line 1771
    .line 1772
    move-result v0

    .line 1773
    add-int/2addr v0, v9

    .line 1774
    return v0

    :pswitch_data_6ee
    .packed-switch 0x0
        :pswitch_6d1
        :pswitch_6c3
        :pswitch_6ad
        :pswitch_697
        :pswitch_680
        :pswitch_672
        :pswitch_664
        :pswitch_656
        :pswitch_634
        :pswitch_614
        :pswitch_603
        :pswitch_5ed
        :pswitch_5d4
        :pswitch_5c7
        :pswitch_5b7
        :pswitch_59c
        :pswitch_581
        :pswitch_56b
        :pswitch_555
        :pswitch_53f
        :pswitch_521
        :pswitch_509
        :pswitch_4f1
        :pswitch_4db
        :pswitch_4c5
        :pswitch_4ac
        :pswitch_451
        :pswitch_423
        :pswitch_3f8
        :pswitch_3e2
        :pswitch_3cc
        :pswitch_3b3
        :pswitch_39a
        :pswitch_384
        :pswitch_369
        :pswitch_351
        :pswitch_339
        :pswitch_323
        :pswitch_30d
        :pswitch_2f7
        :pswitch_2df
        :pswitch_2c7
        :pswitch_2b1
        :pswitch_29c
        :pswitch_287
        :pswitch_270
        :pswitch_259
        :pswitch_244
        :pswitch_22b
        :pswitch_204
        :pswitch_1c8
        :pswitch_1ba
        :pswitch_1ac
        :pswitch_196
        :pswitch_180
        :pswitch_169
        :pswitch_15b
        :pswitch_14d
        :pswitch_13f
        :pswitch_11c
        :pswitch_fa
        :pswitch_e8
        :pswitch_d2
        :pswitch_bb
        :pswitch_ad
        :pswitch_9f
        :pswitch_84
        :pswitch_68
        :pswitch_51
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 14

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/u6;->D(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1f3

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_1ee

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int v4, v2, v3

    .line 24
    .line 25
    int-to-long v7, v4

    .line 26
    aget v4, v1, v0

    .line 27
    .line 28
    const/high16 v5, 0xff00000

    .line 29
    .line 30
    and-int/2addr v2, v5

    .line 31
    ushr-int/lit8 v2, v2, 0x14

    .line 32
    .line 33
    packed-switch v2, :pswitch_data_204

    .line 34
    .line 35
    .line 36
    :cond_23
    :goto_23
    move-object v6, p1

    .line 37
    goto/16 :goto_1e9

    .line 38
    .line 39
    :pswitch_26
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->t(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_23

    .line 43
    :pswitch_2a
    invoke-virtual {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_23

    .line 48
    .line 49
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v7, v8, p1, v2}, Lcom/google/android/gms/internal/measurement/f7;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v0, 0x2

    .line 57
    .line 58
    aget v1, v1, v2

    .line 59
    .line 60
    and-int/2addr v1, v3

    .line 61
    int-to-long v1, v1

    .line 62
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 63
    .line 64
    .line 65
    goto :goto_23

    .line 66
    :pswitch_41
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->t(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_23

    .line 70
    :pswitch_45
    invoke-virtual {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_23

    .line 75
    .line 76
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v7, v8, p1, v2}, Lcom/google/android/gms/internal/measurement/f7;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v2, v0, 0x2

    .line 84
    .line 85
    aget v1, v1, v2

    .line 86
    .line 87
    and-int/2addr v1, v3

    .line 88
    int-to-long v1, v1

    .line 89
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 90
    .line 91
    .line 92
    goto :goto_23

    .line 93
    :pswitch_5c
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/w5;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q6;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v7, v8, p1, v1}, Lcom/google/android/gms/internal/measurement/f7;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_23

    .line 109
    :pswitch_6c
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/google/android/gms/internal/measurement/j6;

    .line 114
    .line 115
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lcom/google/android/gms/internal/measurement/j6;

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-lez v3, :cond_93

    .line 130
    .line 131
    if-lez v4, :cond_93

    .line 132
    .line 133
    move-object v5, v1

    .line 134
    check-cast v5, Lcom/google/android/gms/internal/measurement/j5;

    .line 135
    .line 136
    iget-boolean v5, v5, Lcom/google/android/gms/internal/measurement/j5;->a:Z

    .line 137
    .line 138
    if-nez v5, :cond_90

    .line 139
    .line 140
    add-int/2addr v4, v3

    .line 141
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/measurement/j6;->zza(I)Lcom/google/android/gms/internal/measurement/j6;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    :cond_90
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    .line 147
    .line 148
    :cond_93
    if-lez v3, :cond_96

    .line 149
    .line 150
    move-object v2, v1

    .line 151
    :cond_96
    invoke-static {v7, v8, p1, v2}, Lcom/google/android/gms/internal/measurement/f7;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto :goto_23

    .line 155
    :pswitch_9a
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/u6;->q(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 156
    .line 157
    .line 158
    goto :goto_23

    .line 159
    :pswitch_9e
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_23

    .line 164
    .line 165
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 166
    .line 167
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 168
    .line 169
    .line 170
    move-result-wide v9

    .line 171
    move-object v6, p1

    .line 172
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/e7;->f(Ljava/lang/Object;JJ)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_1e9

    .line 179
    .line 180
    :pswitch_b3
    move-object v6, p1

    .line 181
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_1e9

    .line 186
    .line 187
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 188
    .line 189
    invoke-virtual {p1, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    invoke-static {v6, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_1e9

    .line 200
    .line 201
    :pswitch_c8
    move-object v6, p1

    .line 202
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_1e9

    .line 207
    .line 208
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 209
    .line 210
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 211
    .line 212
    .line 213
    move-result-wide v9

    .line 214
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/e7;->f(Ljava/lang/Object;JJ)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_1e9

    .line 221
    .line 222
    :pswitch_dd
    move-object v6, p1

    .line 223
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_1e9

    .line 228
    .line 229
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 230
    .line 231
    invoke-virtual {p1, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    invoke-static {v6, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_1e9

    .line 242
    .line 243
    :pswitch_f2
    move-object v6, p1

    .line 244
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-eqz p1, :cond_1e9

    .line 249
    .line 250
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 251
    .line 252
    invoke-virtual {p1, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    invoke-static {v6, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_1e9

    .line 263
    .line 264
    :pswitch_107
    move-object v6, p1

    .line 265
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-eqz p1, :cond_1e9

    .line 270
    .line 271
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 272
    .line 273
    invoke-virtual {p1, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    invoke-static {v6, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_1e9

    .line 284
    .line 285
    :pswitch_11c
    move-object v6, p1

    .line 286
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-eqz p1, :cond_1e9

    .line 291
    .line 292
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-static {v7, v8, v6, p1}, Lcom/google/android/gms/internal/measurement/f7;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_1e9

    .line 303
    .line 304
    :pswitch_12f
    move-object v6, p1

    .line 305
    invoke-virtual {p0, v6, p2, v0}, Lcom/google/android/gms/internal/measurement/u6;->q(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_1e9

    .line 309
    .line 310
    :pswitch_135
    move-object v6, p1

    .line 311
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    if-eqz p1, :cond_1e9

    .line 316
    .line 317
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-static {v7, v8, v6, p1}, Lcom/google/android/gms/internal/measurement/f7;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_1e9

    .line 328
    .line 329
    :pswitch_148
    move-object v6, p1

    .line 330
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    if-eqz p1, :cond_1e9

    .line 335
    .line 336
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 337
    .line 338
    invoke-virtual {p1, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->i(JLjava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    invoke-virtual {p1, v6, v7, v8, v1}, Lcom/google/android/gms/internal/measurement/e7;->g(Ljava/lang/Object;JZ)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_1e9

    .line 349
    .line 350
    :pswitch_15d
    move-object v6, p1

    .line 351
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    if-eqz p1, :cond_1e9

    .line 356
    .line 357
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 358
    .line 359
    invoke-virtual {p1, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    invoke-static {v6, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_1e9

    .line 370
    .line 371
    :pswitch_172
    move-object v6, p1

    .line 372
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    if-eqz p1, :cond_1e9

    .line 377
    .line 378
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 379
    .line 380
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 381
    .line 382
    .line 383
    move-result-wide v9

    .line 384
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/e7;->f(Ljava/lang/Object;JJ)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    goto :goto_1e9

    .line 391
    :pswitch_186
    move-object v6, p1

    .line 392
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-eqz p1, :cond_1e9

    .line 397
    .line 398
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 399
    .line 400
    invoke-virtual {p1, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 401
    .line 402
    .line 403
    move-result p1

    .line 404
    invoke-static {v6, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    goto :goto_1e9

    .line 411
    :pswitch_19a
    move-object v6, p1

    .line 412
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    if-eqz p1, :cond_1e9

    .line 417
    .line 418
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 419
    .line 420
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 421
    .line 422
    .line 423
    move-result-wide v9

    .line 424
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/e7;->f(Ljava/lang/Object;JJ)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    goto :goto_1e9

    .line 431
    :pswitch_1ae
    move-object v6, p1

    .line 432
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    if-eqz p1, :cond_1e9

    .line 437
    .line 438
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 439
    .line 440
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 441
    .line 442
    .line 443
    move-result-wide v9

    .line 444
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/e7;->f(Ljava/lang/Object;JJ)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    goto :goto_1e9

    .line 451
    :pswitch_1c2
    move-object v6, p1

    .line 452
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    if-eqz p1, :cond_1e9

    .line 457
    .line 458
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 459
    .line 460
    invoke-virtual {p1, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->h(JLjava/lang/Object;)F

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    invoke-virtual {p1, v6, v7, v8, v1}, Lcom/google/android/gms/internal/measurement/e7;->d(Ljava/lang/Object;JF)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    goto :goto_1e9

    .line 471
    :pswitch_1d6
    move-object v6, p1

    .line 472
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result p1

    .line 476
    if-eqz p1, :cond_1e9

    .line 477
    .line 478
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 479
    .line 480
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->a(JLjava/lang/Object;)D

    .line 481
    .line 482
    .line 483
    move-result-wide v9

    .line 484
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/measurement/e7;->c(Ljava/lang/Object;JD)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    :cond_1e9
    :goto_1e9
    add-int/lit8 v0, v0, 0x3

    .line 491
    .line 492
    move-object p1, v6

    .line 493
    goto/16 :goto_a

    .line 494
    .line 495
    :cond_1ee
    move-object v6, p1

    .line 496
    invoke-static {v6, p2}, Lcom/google/android/gms/internal/measurement/a5;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    return-void

    .line 500
    :cond_1f3
    move-object v6, p1

    .line 501
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 502
    .line 503
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p2

    .line 507
    const-string v0, "Mutating immutable message: "

    .line 508
    .line 509
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object p2

    .line 513
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw p1

    .line 517
    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_1d6
        :pswitch_1c2
        :pswitch_1ae
        :pswitch_19a
        :pswitch_186
        :pswitch_172
        :pswitch_15d
        :pswitch_148
        :pswitch_135
        :pswitch_12f
        :pswitch_11c
        :pswitch_107
        :pswitch_f2
        :pswitch_dd
        :pswitch_c8
        :pswitch_b3
        :pswitch_9e
        :pswitch_9a
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_5c
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_41
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_26
    .end packed-switch
.end method

.method public final f(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;)Z
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_5
    const/4 v4, 0x1

    .line 7
    if-ge v3, v1, :cond_1ea

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const v6, 0xfffff

    .line 14
    .line 15
    .line 16
    and-int v7, v5, v6

    .line 17
    .line 18
    int-to-long v7, v7

    .line 19
    const/high16 v9, 0xff00000

    .line 20
    .line 21
    and-int/2addr v5, v9

    .line 22
    ushr-int/lit8 v5, v5, 0x14

    .line 23
    .line 24
    packed-switch v5, :pswitch_data_1f6

    .line 25
    .line 26
    .line 27
    goto/16 :goto_1e3

    .line 28
    .line 29
    :pswitch_1c
    add-int/lit8 v5, v3, 0x2

    .line 30
    .line 31
    aget v5, v0, v5

    .line 32
    .line 33
    and-int/2addr v5, v6

    .line 34
    int-to-long v5, v5

    .line 35
    sget-object v9, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 36
    .line 37
    invoke-virtual {v9, v5, v6, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    invoke-virtual {v9, v5, v6, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-ne v10, v5, :cond_3c

    .line 46
    .line 47
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/a5;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_1e3

    .line 60
    .line 61
    :cond_3c
    :goto_3c
    move v4, v2

    .line 62
    goto/16 :goto_1e3

    .line 63
    .line 64
    :pswitch_3f
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/a5;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    goto/16 :goto_1e3

    .line 77
    .line 78
    :pswitch_4d
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/a5;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    goto/16 :goto_1e3

    .line 91
    .line 92
    :pswitch_5b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_3c

    .line 97
    .line 98
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/a5;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_1e3

    .line 111
    .line 112
    goto :goto_3c

    .line 113
    :pswitch_70
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_3c

    .line 118
    .line 119
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 120
    .line 121
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v9

    .line 125
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v5

    .line 129
    cmp-long v5, v9, v5

    .line 130
    .line 131
    if-eqz v5, :cond_1e3

    .line 132
    .line 133
    goto :goto_3c

    .line 134
    :pswitch_85
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-eqz v5, :cond_3c

    .line 139
    .line 140
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 141
    .line 142
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eq v6, v5, :cond_1e3

    .line 151
    .line 152
    goto :goto_3c

    .line 153
    :pswitch_98
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_3c

    .line 158
    .line 159
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 160
    .line 161
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 162
    .line 163
    .line 164
    move-result-wide v9

    .line 165
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 166
    .line 167
    .line 168
    move-result-wide v5

    .line 169
    cmp-long v5, v9, v5

    .line 170
    .line 171
    if-eqz v5, :cond_1e3

    .line 172
    .line 173
    goto :goto_3c

    .line 174
    :pswitch_ad
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_3c

    .line 179
    .line 180
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 181
    .line 182
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eq v6, v5, :cond_1e3

    .line 191
    .line 192
    goto/16 :goto_3c

    .line 193
    .line 194
    :pswitch_c1
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_3c

    .line 199
    .line 200
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 201
    .line 202
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-eq v6, v5, :cond_1e3

    .line 211
    .line 212
    goto/16 :goto_3c

    .line 213
    .line 214
    :pswitch_d5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-eqz v5, :cond_3c

    .line 219
    .line 220
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 221
    .line 222
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eq v6, v5, :cond_1e3

    .line 231
    .line 232
    goto/16 :goto_3c

    .line 233
    .line 234
    :pswitch_e9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_3c

    .line 239
    .line 240
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/a5;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-nez v5, :cond_1e3

    .line 253
    .line 254
    goto/16 :goto_3c

    .line 255
    .line 256
    :pswitch_ff
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-eqz v5, :cond_3c

    .line 261
    .line 262
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/a5;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-nez v5, :cond_1e3

    .line 275
    .line 276
    goto/16 :goto_3c

    .line 277
    .line 278
    :pswitch_115
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_3c

    .line 283
    .line 284
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/a5;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-nez v5, :cond_1e3

    .line 297
    .line 298
    goto/16 :goto_3c

    .line 299
    .line 300
    :pswitch_12b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-eqz v5, :cond_3c

    .line 305
    .line 306
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 307
    .line 308
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->i(JLjava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->i(JLjava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eq v6, v5, :cond_1e3

    .line 317
    .line 318
    goto/16 :goto_3c

    .line 319
    .line 320
    :pswitch_13f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    if-eqz v5, :cond_3c

    .line 325
    .line 326
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 327
    .line 328
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-eq v6, v5, :cond_1e3

    .line 337
    .line 338
    goto/16 :goto_3c

    .line 339
    .line 340
    :pswitch_153
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    if-eqz v5, :cond_3c

    .line 345
    .line 346
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 347
    .line 348
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 349
    .line 350
    .line 351
    move-result-wide v9

    .line 352
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 353
    .line 354
    .line 355
    move-result-wide v5

    .line 356
    cmp-long v5, v9, v5

    .line 357
    .line 358
    if-eqz v5, :cond_1e3

    .line 359
    .line 360
    goto/16 :goto_3c

    .line 361
    .line 362
    :pswitch_169
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    if-eqz v5, :cond_3c

    .line 367
    .line 368
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 369
    .line 370
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-eq v6, v5, :cond_1e3

    .line 379
    .line 380
    goto/16 :goto_3c

    .line 381
    .line 382
    :pswitch_17d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    if-eqz v5, :cond_3c

    .line 387
    .line 388
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 389
    .line 390
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 391
    .line 392
    .line 393
    move-result-wide v9

    .line 394
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 395
    .line 396
    .line 397
    move-result-wide v5

    .line 398
    cmp-long v5, v9, v5

    .line 399
    .line 400
    if-eqz v5, :cond_1e3

    .line 401
    .line 402
    goto/16 :goto_3c

    .line 403
    .line 404
    :pswitch_193
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    if-eqz v5, :cond_3c

    .line 409
    .line 410
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 411
    .line 412
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 413
    .line 414
    .line 415
    move-result-wide v9

    .line 416
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 417
    .line 418
    .line 419
    move-result-wide v5

    .line 420
    cmp-long v5, v9, v5

    .line 421
    .line 422
    if-eqz v5, :cond_1e3

    .line 423
    .line 424
    goto/16 :goto_3c

    .line 425
    .line 426
    :pswitch_1a9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    if-eqz v5, :cond_3c

    .line 431
    .line 432
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 433
    .line 434
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->h(JLjava/lang/Object;)F

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->h(JLjava/lang/Object;)F

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    if-eq v6, v5, :cond_1e3

    .line 451
    .line 452
    goto/16 :goto_3c

    .line 453
    .line 454
    :pswitch_1c5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/u6;->x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z

    .line 455
    .line 456
    .line 457
    move-result v5

    .line 458
    if-eqz v5, :cond_3c

    .line 459
    .line 460
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 461
    .line 462
    invoke-virtual {v5, v7, v8, p1}, Lcom/google/android/gms/internal/measurement/e7;->a(JLjava/lang/Object;)D

    .line 463
    .line 464
    .line 465
    move-result-wide v9

    .line 466
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 467
    .line 468
    .line 469
    move-result-wide v9

    .line 470
    invoke-virtual {v5, v7, v8, p2}, Lcom/google/android/gms/internal/measurement/e7;->a(JLjava/lang/Object;)D

    .line 471
    .line 472
    .line 473
    move-result-wide v5

    .line 474
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 475
    .line 476
    .line 477
    move-result-wide v5

    .line 478
    cmp-long v5, v9, v5

    .line 479
    .line 480
    if-eqz v5, :cond_1e3

    .line 481
    .line 482
    goto/16 :goto_3c

    .line 483
    .line 484
    :cond_1e3
    :goto_1e3
    if-nez v4, :cond_1e6

    .line 485
    .line 486
    goto :goto_1f4

    .line 487
    :cond_1e6
    add-int/lit8 v3, v3, 0x3

    .line 488
    .line 489
    goto/16 :goto_5

    .line 490
    .line 491
    :cond_1ea
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 492
    .line 493
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 494
    .line 495
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/c7;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result p1

    .line 499
    if-nez p1, :cond_1f5

    .line 500
    .line 501
    :goto_1f4
    return v2

    .line 502
    :cond_1f5
    return v4

    .line 503
    :pswitch_data_1f6
    .packed-switch 0x0
        :pswitch_1c5
        :pswitch_1a9
        :pswitch_193
        :pswitch_17d
        :pswitch_169
        :pswitch_153
        :pswitch_13f
        :pswitch_12b
        :pswitch_115
        :pswitch_ff
        :pswitch_e9
        :pswitch_d5
        :pswitch_c1
        :pswitch_ad
        :pswitch_98
        :pswitch_85
        :pswitch_70
        :pswitch_5b
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_3f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/m5;)V
    .registers 13

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->j(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/m5;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final h(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/o6;)V
    .registers 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, v7, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v8, v0

    .line 13
    check-cast v8, Lcom/google/android/gms/internal/measurement/q5;

    .line 14
    .line 15
    iget-object v9, v1, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 16
    .line 17
    array-length v10, v9

    .line 18
    sget-object v11, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 19
    .line 20
    const v12, 0xfffff

    .line 21
    .line 22
    .line 23
    move v0, v12

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    :goto_19
    if-ge v3, v10, :cond_80c

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    aget v14, v9, v3

    .line 33
    .line 34
    const/high16 v6, 0xff00000

    .line 35
    .line 36
    and-int/2addr v6, v5

    .line 37
    ushr-int/lit8 v6, v6, 0x14

    .line 38
    .line 39
    const/16 v15, 0x11

    .line 40
    .line 41
    if-gt v6, v15, :cond_52

    .line 42
    .line 43
    add-int/lit8 v15, v3, 0x2

    .line 44
    .line 45
    aget v15, v9, v15

    .line 46
    .line 47
    const/16 v16, 0x1

    .line 48
    .line 49
    and-int v13, v15, v12

    .line 50
    .line 51
    if-eq v13, v0, :cond_44

    .line 52
    .line 53
    if-ne v13, v12, :cond_3a

    .line 54
    .line 55
    move/from16 v17, v5

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    goto :goto_42

    .line 59
    :cond_3a
    move/from16 v17, v5

    .line 60
    .line 61
    int-to-long v4, v13

    .line 62
    invoke-virtual {v11, v2, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    move v4, v0

    .line 67
    :goto_42
    move v0, v13

    .line 68
    goto :goto_46

    .line 69
    :cond_44
    move/from16 v17, v5

    .line 70
    .line 71
    :goto_46
    ushr-int/lit8 v5, v15, 0x14

    .line 72
    .line 73
    shl-int v5, v16, v5

    .line 74
    .line 75
    move/from16 v26, v4

    .line 76
    .line 77
    move v4, v0

    .line 78
    move v0, v6

    .line 79
    move v6, v5

    .line 80
    move/from16 v5, v26

    .line 81
    .line 82
    goto :goto_5a

    .line 83
    :cond_52
    move/from16 v17, v5

    .line 84
    .line 85
    const/16 v16, 0x1

    .line 86
    .line 87
    move v5, v4

    .line 88
    move v4, v0

    .line 89
    move v0, v6

    .line 90
    const/4 v6, 0x0

    .line 91
    :goto_5a
    and-int v13, v17, v12

    .line 92
    .line 93
    int-to-long v12, v13

    .line 94
    const/16 v17, 0x3f

    .line 95
    .line 96
    const/4 v15, 0x2

    .line 97
    packed-switch v0, :pswitch_data_816

    .line 98
    .line 99
    .line 100
    :cond_63
    :goto_63
    const/4 v15, 0x0

    .line 101
    goto/16 :goto_801

    .line 102
    .line 103
    :pswitch_66
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_63

    .line 108
    .line 109
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v7, v14, v0, v6}, Lcom/google/android/gms/internal/measurement/o6;->d(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;)V

    .line 118
    .line 119
    .line 120
    goto :goto_63

    .line 121
    :pswitch_78
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_63

    .line 126
    .line 127
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 128
    .line 129
    .line 130
    move-result-wide v12

    .line 131
    shl-long v18, v12, v16

    .line 132
    .line 133
    shr-long v12, v12, v17

    .line 134
    .line 135
    xor-long v12, v18, v12

    .line 136
    .line 137
    invoke-virtual {v8, v14, v12, v13}, Lcom/google/android/gms/internal/measurement/q5;->n(IJ)V

    .line 138
    .line 139
    .line 140
    goto :goto_63

    .line 141
    :pswitch_8c
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_63

    .line 146
    .line 147
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    shl-int/lit8 v6, v0, 0x1

    .line 152
    .line 153
    shr-int/lit8 v0, v0, 0x1f

    .line 154
    .line 155
    xor-int/2addr v0, v6

    .line 156
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->t(II)V

    .line 157
    .line 158
    .line 159
    goto :goto_63

    .line 160
    :pswitch_9f
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_63

    .line 165
    .line 166
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v12

    .line 170
    invoke-virtual {v8, v14, v12, v13}, Lcom/google/android/gms/internal/measurement/q5;->g(IJ)V

    .line 171
    .line 172
    .line 173
    goto :goto_63

    .line 174
    :pswitch_ad
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_63

    .line 179
    .line 180
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->f(II)V

    .line 185
    .line 186
    .line 187
    goto :goto_63

    .line 188
    :pswitch_bb
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_63

    .line 193
    .line 194
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->m(II)V

    .line 199
    .line 200
    .line 201
    goto :goto_63

    .line 202
    :pswitch_c9
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_63

    .line 207
    .line 208
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->t(II)V

    .line 213
    .line 214
    .line 215
    goto :goto_63

    .line 216
    :pswitch_d7
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_63

    .line 221
    .line 222
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lcom/google/android/gms/internal/measurement/p5;

    .line 227
    .line 228
    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 236
    .line 237
    .line 238
    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->f()I

    .line 241
    .line 242
    .line 243
    move-result v12

    .line 244
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    invoke-virtual {v8, v6, v12, v0}, Lcom/google/android/gms/internal/measurement/q5;->s([BII)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_63

    .line 252
    .line 253
    :pswitch_fc
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_63

    .line 258
    .line 259
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-virtual {v7, v14, v0, v6}, Lcom/google/android/gms/internal/measurement/o6;->e(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_63

    .line 271
    .line 272
    :pswitch_10f
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_63

    .line 277
    .line 278
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    instance-of v6, v0, Ljava/lang/String;

    .line 283
    .line 284
    if-eqz v6, :cond_19b

    .line 285
    .line 286
    move-object v6, v0

    .line 287
    check-cast v6, Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 290
    .line 291
    .line 292
    iget-object v0, v8, Lcom/google/android/gms/internal/measurement/q5;->c:[B

    .line 293
    .line 294
    iget v12, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 295
    .line 296
    :try_start_127
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 297
    .line 298
    .line 299
    move-result v13

    .line 300
    mul-int/lit8 v13, v13, 0x3

    .line 301
    .line 302
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 303
    .line 304
    .line 305
    move-result v13

    .line 306
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 311
    .line 312
    .line 313
    move-result v14

    .line 314
    if-ne v14, v13, :cond_159

    .line 315
    .line 316
    add-int v13, v12, v14

    .line 317
    .line 318
    iput v13, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 319
    .line 320
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/q5;->i()I

    .line 321
    .line 322
    .line 323
    move-result v15

    .line 324
    invoke-static {v6, v0, v13, v15}, Lcom/google/android/gms/internal/measurement/h7;->b(Ljava/lang/String;[BII)I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    iput v12, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 329
    .line 330
    sub-int v13, v0, v12

    .line 331
    .line 332
    sub-int/2addr v13, v14

    .line 333
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 334
    .line 335
    .line 336
    iput v0, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 337
    .line 338
    goto/16 :goto_63

    .line 339
    .line 340
    :catch_153
    move-exception v0

    .line 341
    goto :goto_16e

    .line 342
    :catch_155
    move-exception v0

    .line 343
    move-object/from16 v23, v0

    .line 344
    .line 345
    goto :goto_174

    .line 346
    :cond_159
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/h7;->a(Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    move-result v13

    .line 350
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 351
    .line 352
    .line 353
    iget v13, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 354
    .line 355
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/q5;->i()I

    .line 356
    .line 357
    .line 358
    move-result v14

    .line 359
    invoke-static {v6, v0, v13, v14}, Lcom/google/android/gms/internal/measurement/h7;->b(Ljava/lang/String;[BII)I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    iput v0, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I
    :try_end_16c
    .catch Lcom/google/android/gms/internal/measurement/i7; {:try_start_127 .. :try_end_16c} :catch_155
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_127 .. :try_end_16c} :catch_153

    .line 364
    .line 365
    goto/16 :goto_63

    .line 366
    .line 367
    :goto_16e
    new-instance v2, Lcom/google/android/gms/internal/measurement/r5;

    .line 368
    .line 369
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 370
    .line 371
    .line 372
    throw v2

    .line 373
    :goto_174
    iput v12, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 374
    .line 375
    sget-object v18, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 376
    .line 377
    sget-object v19, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 378
    .line 379
    const-string v21, "inefficientWriteStringNoTag"

    .line 380
    .line 381
    const-string v22, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 382
    .line 383
    const-string v20, "com.google.protobuf.CodedOutputStream"

    .line 384
    .line 385
    invoke-virtual/range {v18 .. v23}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    .line 387
    .line 388
    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 389
    .line 390
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    :try_start_189
    array-length v6, v0

    .line 395
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 396
    .line 397
    .line 398
    array-length v6, v0

    .line 399
    const/4 v12, 0x0

    .line 400
    invoke-virtual {v8, v0, v12, v6}, Lcom/google/android/gms/internal/measurement/q5;->s([BII)V
    :try_end_192
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_189 .. :try_end_192} :catch_194

    .line 401
    .line 402
    .line 403
    goto/16 :goto_63

    .line 404
    .line 405
    :catch_194
    move-exception v0

    .line 406
    new-instance v2, Lcom/google/android/gms/internal/measurement/r5;

    .line 407
    .line 408
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 409
    .line 410
    .line 411
    throw v2

    .line 412
    :cond_19b
    check-cast v0, Lcom/google/android/gms/internal/measurement/p5;

    .line 413
    .line 414
    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 422
    .line 423
    .line 424
    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 425
    .line 426
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->f()I

    .line 427
    .line 428
    .line 429
    move-result v12

    .line 430
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    invoke-virtual {v8, v6, v12, v0}, Lcom/google/android/gms/internal/measurement/q5;->s([BII)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_63

    .line 438
    .line 439
    :pswitch_1b6
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-eqz v0, :cond_63

    .line 444
    .line 445
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    check-cast v0, Ljava/lang/Boolean;

    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    const/4 v12, 0x0

    .line 456
    invoke-virtual {v8, v14, v12}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 457
    .line 458
    .line 459
    int-to-byte v0, v0

    .line 460
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/q5;->d(B)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_63

    .line 464
    .line 465
    :pswitch_1d0
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-eqz v0, :cond_63

    .line 470
    .line 471
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->f(II)V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_63

    .line 479
    .line 480
    :pswitch_1df
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    if-eqz v0, :cond_63

    .line 485
    .line 486
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 487
    .line 488
    .line 489
    move-result-wide v12

    .line 490
    invoke-virtual {v8, v14, v12, v13}, Lcom/google/android/gms/internal/measurement/q5;->g(IJ)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_63

    .line 494
    .line 495
    :pswitch_1ee
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    if-eqz v0, :cond_63

    .line 500
    .line 501
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/u6;->v(JLjava/lang/Object;)I

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->m(II)V

    .line 506
    .line 507
    .line 508
    goto/16 :goto_63

    .line 509
    .line 510
    :pswitch_1fd
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-eqz v0, :cond_63

    .line 515
    .line 516
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 517
    .line 518
    .line 519
    move-result-wide v12

    .line 520
    invoke-virtual {v8, v14, v12, v13}, Lcom/google/android/gms/internal/measurement/q5;->n(IJ)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_63

    .line 524
    .line 525
    :pswitch_20c
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-eqz v0, :cond_63

    .line 530
    .line 531
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/u6;->z(JLjava/lang/Object;)J

    .line 532
    .line 533
    .line 534
    move-result-wide v12

    .line 535
    invoke-virtual {v8, v14, v12, v13}, Lcom/google/android/gms/internal/measurement/q5;->n(IJ)V

    .line 536
    .line 537
    .line 538
    goto/16 :goto_63

    .line 539
    .line 540
    :pswitch_21b
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    if-eqz v0, :cond_63

    .line 545
    .line 546
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    check-cast v0, Ljava/lang/Float;

    .line 551
    .line 552
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->f(II)V

    .line 564
    .line 565
    .line 566
    goto/16 :goto_63

    .line 567
    .line 568
    :pswitch_237
    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    if-eqz v0, :cond_63

    .line 573
    .line 574
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    check-cast v0, Ljava/lang/Double;

    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 581
    .line 582
    .line 583
    move-result-wide v12

    .line 584
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    invoke-static {v12, v13}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 588
    .line 589
    .line 590
    move-result-wide v12

    .line 591
    invoke-virtual {v8, v14, v12, v13}, Lcom/google/android/gms/internal/measurement/q5;->g(IJ)V

    .line 592
    .line 593
    .line 594
    goto/16 :goto_63

    .line 595
    .line 596
    :pswitch_253
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    if-nez v0, :cond_25b

    .line 601
    .line 602
    goto/16 :goto_63

    .line 603
    .line 604
    :cond_25b
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/u6;->C(I)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    if-nez v0, :cond_267

    .line 609
    .line 610
    new-instance v0, Ljava/lang/NoSuchMethodError;

    .line 611
    .line 612
    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    .line 613
    .line 614
    .line 615
    throw v0

    .line 616
    :cond_267
    new-instance v0, Ljava/lang/ClassCastException;

    .line 617
    .line 618
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 619
    .line 620
    .line 621
    throw v0

    .line 622
    :pswitch_26d
    aget v0, v9, v3

    .line 623
    .line 624
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v6

    .line 628
    check-cast v6, Ljava/util/List;

    .line 629
    .line 630
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 631
    .line 632
    .line 633
    move-result-object v12

    .line 634
    if-eqz v6, :cond_63

    .line 635
    .line 636
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 637
    .line 638
    .line 639
    move-result v13

    .line 640
    if-nez v13, :cond_63

    .line 641
    .line 642
    const/4 v13, 0x0

    .line 643
    :goto_282
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 644
    .line 645
    .line 646
    move-result v14

    .line 647
    if-ge v13, v14, :cond_63

    .line 648
    .line 649
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v14

    .line 653
    invoke-virtual {v7, v0, v14, v12}, Lcom/google/android/gms/internal/measurement/o6;->d(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;)V

    .line 654
    .line 655
    .line 656
    add-int/lit8 v13, v13, 0x1

    .line 657
    .line 658
    goto :goto_282

    .line 659
    :pswitch_292
    aget v0, v9, v3

    .line 660
    .line 661
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v6

    .line 665
    check-cast v6, Ljava/util/List;

    .line 666
    .line 667
    move/from16 v14, v16

    .line 668
    .line 669
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->y(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 670
    .line 671
    .line 672
    goto/16 :goto_63

    .line 673
    .line 674
    :pswitch_2a1
    move/from16 v14, v16

    .line 675
    .line 676
    aget v0, v9, v3

    .line 677
    .line 678
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v6

    .line 682
    check-cast v6, Ljava/util/List;

    .line 683
    .line 684
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->x(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 685
    .line 686
    .line 687
    goto/16 :goto_63

    .line 688
    .line 689
    :pswitch_2b0
    move/from16 v14, v16

    .line 690
    .line 691
    aget v0, v9, v3

    .line 692
    .line 693
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v6

    .line 697
    check-cast v6, Ljava/util/List;

    .line 698
    .line 699
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->w(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 700
    .line 701
    .line 702
    goto/16 :goto_63

    .line 703
    .line 704
    :pswitch_2bf
    move/from16 v14, v16

    .line 705
    .line 706
    aget v0, v9, v3

    .line 707
    .line 708
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v6

    .line 712
    check-cast v6, Ljava/util/List;

    .line 713
    .line 714
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 715
    .line 716
    .line 717
    goto/16 :goto_63

    .line 718
    .line 719
    :pswitch_2ce
    move/from16 v14, v16

    .line 720
    .line 721
    aget v0, v9, v3

    .line 722
    .line 723
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v6

    .line 727
    check-cast v6, Ljava/util/List;

    .line 728
    .line 729
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 730
    .line 731
    .line 732
    goto/16 :goto_63

    .line 733
    .line 734
    :pswitch_2dd
    move/from16 v14, v16

    .line 735
    .line 736
    aget v0, v9, v3

    .line 737
    .line 738
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v6

    .line 742
    check-cast v6, Ljava/util/List;

    .line 743
    .line 744
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->z(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 745
    .line 746
    .line 747
    goto/16 :goto_63

    .line 748
    .line 749
    :pswitch_2ec
    move/from16 v14, v16

    .line 750
    .line 751
    aget v0, v9, v3

    .line 752
    .line 753
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v6

    .line 757
    check-cast v6, Ljava/util/List;

    .line 758
    .line 759
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 760
    .line 761
    .line 762
    goto/16 :goto_63

    .line 763
    .line 764
    :pswitch_2fb
    move/from16 v14, v16

    .line 765
    .line 766
    aget v0, v9, v3

    .line 767
    .line 768
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v6

    .line 772
    check-cast v6, Ljava/util/List;

    .line 773
    .line 774
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 775
    .line 776
    .line 777
    goto/16 :goto_63

    .line 778
    .line 779
    :pswitch_30a
    move/from16 v14, v16

    .line 780
    .line 781
    aget v0, v9, v3

    .line 782
    .line 783
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v6

    .line 787
    check-cast v6, Ljava/util/List;

    .line 788
    .line 789
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 790
    .line 791
    .line 792
    goto/16 :goto_63

    .line 793
    .line 794
    :pswitch_319
    move/from16 v14, v16

    .line 795
    .line 796
    aget v0, v9, v3

    .line 797
    .line 798
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v6

    .line 802
    check-cast v6, Ljava/util/List;

    .line 803
    .line 804
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 805
    .line 806
    .line 807
    goto/16 :goto_63

    .line 808
    .line 809
    :pswitch_328
    move/from16 v14, v16

    .line 810
    .line 811
    aget v0, v9, v3

    .line 812
    .line 813
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v6

    .line 817
    check-cast v6, Ljava/util/List;

    .line 818
    .line 819
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->A(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 820
    .line 821
    .line 822
    goto/16 :goto_63

    .line 823
    .line 824
    :pswitch_337
    move/from16 v14, v16

    .line 825
    .line 826
    aget v0, v9, v3

    .line 827
    .line 828
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v6

    .line 832
    check-cast v6, Ljava/util/List;

    .line 833
    .line 834
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 835
    .line 836
    .line 837
    goto/16 :goto_63

    .line 838
    .line 839
    :pswitch_346
    move/from16 v14, v16

    .line 840
    .line 841
    aget v0, v9, v3

    .line 842
    .line 843
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v6

    .line 847
    check-cast v6, Ljava/util/List;

    .line 848
    .line 849
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 850
    .line 851
    .line 852
    goto/16 :goto_63

    .line 853
    .line 854
    :pswitch_355
    move/from16 v14, v16

    .line 855
    .line 856
    aget v0, v9, v3

    .line 857
    .line 858
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v6

    .line 862
    check-cast v6, Ljava/util/List;

    .line 863
    .line 864
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 865
    .line 866
    .line 867
    goto/16 :goto_63

    .line 868
    .line 869
    :pswitch_364
    aget v0, v9, v3

    .line 870
    .line 871
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object v6

    .line 875
    check-cast v6, Ljava/util/List;

    .line 876
    .line 877
    const/4 v14, 0x0

    .line 878
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->y(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 879
    .line 880
    .line 881
    :goto_370
    move v15, v14

    .line 882
    goto/16 :goto_801

    .line 883
    .line 884
    :pswitch_373
    const/4 v14, 0x0

    .line 885
    aget v0, v9, v3

    .line 886
    .line 887
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v6

    .line 891
    check-cast v6, Ljava/util/List;

    .line 892
    .line 893
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->x(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 894
    .line 895
    .line 896
    goto :goto_370

    .line 897
    :pswitch_380
    const/4 v14, 0x0

    .line 898
    aget v0, v9, v3

    .line 899
    .line 900
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v6

    .line 904
    check-cast v6, Ljava/util/List;

    .line 905
    .line 906
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->w(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 907
    .line 908
    .line 909
    goto :goto_370

    .line 910
    :pswitch_38d
    const/4 v14, 0x0

    .line 911
    aget v0, v9, v3

    .line 912
    .line 913
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v6

    .line 917
    check-cast v6, Ljava/util/List;

    .line 918
    .line 919
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 920
    .line 921
    .line 922
    goto :goto_370

    .line 923
    :pswitch_39a
    const/4 v14, 0x0

    .line 924
    aget v0, v9, v3

    .line 925
    .line 926
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    move-result-object v6

    .line 930
    check-cast v6, Ljava/util/List;

    .line 931
    .line 932
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 933
    .line 934
    .line 935
    goto :goto_370

    .line 936
    :pswitch_3a7
    const/4 v14, 0x0

    .line 937
    aget v0, v9, v3

    .line 938
    .line 939
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v6

    .line 943
    check-cast v6, Ljava/util/List;

    .line 944
    .line 945
    invoke-static {v0, v6, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->z(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 946
    .line 947
    .line 948
    goto :goto_370

    .line 949
    :pswitch_3b4
    aget v0, v9, v3

    .line 950
    .line 951
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v6

    .line 955
    check-cast v6, Ljava/util/List;

    .line 956
    .line 957
    if-eqz v6, :cond_63

    .line 958
    .line 959
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 960
    .line 961
    .line 962
    move-result v12

    .line 963
    if-nez v12, :cond_63

    .line 964
    .line 965
    const/4 v12, 0x0

    .line 966
    :goto_3c5
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 967
    .line 968
    .line 969
    move-result v13

    .line 970
    if-ge v12, v13, :cond_63

    .line 971
    .line 972
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    move-result-object v13

    .line 976
    check-cast v13, Lcom/google/android/gms/internal/measurement/p5;

    .line 977
    .line 978
    invoke-virtual {v8, v0, v15}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 982
    .line 983
    .line 984
    move-result v14

    .line 985
    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 986
    .line 987
    .line 988
    iget-object v14, v13, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 989
    .line 990
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/p5;->f()I

    .line 991
    .line 992
    .line 993
    move-result v15

    .line 994
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 995
    .line 996
    .line 997
    move-result v13

    .line 998
    invoke-virtual {v8, v14, v15, v13}, Lcom/google/android/gms/internal/measurement/q5;->s([BII)V

    .line 999
    .line 1000
    .line 1001
    add-int/lit8 v12, v12, 0x1

    .line 1002
    .line 1003
    const/4 v15, 0x2

    .line 1004
    goto :goto_3c5

    .line 1005
    :pswitch_3ec
    aget v0, v9, v3

    .line 1006
    .line 1007
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v6

    .line 1011
    check-cast v6, Ljava/util/List;

    .line 1012
    .line 1013
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v12

    .line 1017
    if-eqz v6, :cond_63

    .line 1018
    .line 1019
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 1020
    .line 1021
    .line 1022
    move-result v13

    .line 1023
    if-nez v13, :cond_63

    .line 1024
    .line 1025
    const/4 v13, 0x0

    .line 1026
    :goto_401
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1027
    .line 1028
    .line 1029
    move-result v14

    .line 1030
    if-ge v13, v14, :cond_63

    .line 1031
    .line 1032
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v14

    .line 1036
    invoke-virtual {v7, v0, v14, v12}, Lcom/google/android/gms/internal/measurement/o6;->e(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;)V

    .line 1037
    .line 1038
    .line 1039
    add-int/lit8 v13, v13, 0x1

    .line 1040
    .line 1041
    goto :goto_401

    .line 1042
    :pswitch_411
    aget v6, v9, v3

    .line 1043
    .line 1044
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    move-object v12, v0

    .line 1049
    check-cast v12, Ljava/util/List;

    .line 1050
    .line 1051
    if-eqz v12, :cond_4ec

    .line 1052
    .line 1053
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 1054
    .line 1055
    .line 1056
    move-result v0

    .line 1057
    if-nez v0, :cond_4ec

    .line 1058
    .line 1059
    instance-of v0, v12, Lcom/google/android/gms/internal/measurement/m6;

    .line 1060
    .line 1061
    if-eqz v0, :cond_4f2

    .line 1062
    .line 1063
    move-object v13, v12

    .line 1064
    check-cast v13, Lcom/google/android/gms/internal/measurement/m6;

    .line 1065
    .line 1066
    const/4 v14, 0x0

    .line 1067
    :goto_42a
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 1068
    .line 1069
    .line 1070
    move-result v0

    .line 1071
    if-ge v14, v0, :cond_4ec

    .line 1072
    .line 1073
    invoke-interface {v13}, Lcom/google/android/gms/internal/measurement/m6;->zza()Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v0

    .line 1077
    instance-of v15, v0, Ljava/lang/String;

    .line 1078
    .line 1079
    if-eqz v15, :cond_4c4

    .line 1080
    .line 1081
    move-object v15, v0

    .line 1082
    check-cast v15, Ljava/lang/String;

    .line 1083
    .line 1084
    const/4 v1, 0x2

    .line 1085
    invoke-virtual {v8, v6, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 1086
    .line 1087
    .line 1088
    iget-object v0, v8, Lcom/google/android/gms/internal/measurement/q5;->c:[B

    .line 1089
    .line 1090
    iget v1, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1091
    .line 1092
    :try_start_443
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 1093
    .line 1094
    .line 1095
    move-result v17
    :try_end_447
    .catch Lcom/google/android/gms/internal/measurement/i7; {:try_start_443 .. :try_end_447} :catch_49a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_443 .. :try_end_447} :catch_476

    .line 1096
    mul-int/lit8 v17, v17, 0x3

    .line 1097
    .line 1098
    move/from16 v18, v3

    .line 1099
    .line 1100
    :try_start_44b
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1101
    .line 1102
    .line 1103
    move-result v3

    .line 1104
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 1105
    .line 1106
    .line 1107
    move-result v17
    :try_end_453
    .catch Lcom/google/android/gms/internal/measurement/i7; {:try_start_44b .. :try_end_453} :catch_490
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_44b .. :try_end_453} :catch_476

    .line 1108
    move/from16 v19, v4

    .line 1109
    .line 1110
    :try_start_455
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1111
    .line 1112
    .line 1113
    move-result v4

    .line 1114
    if-ne v4, v3, :cond_47c

    .line 1115
    .line 1116
    add-int v3, v1, v4

    .line 1117
    .line 1118
    iput v3, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1119
    .line 1120
    move/from16 v17, v4

    .line 1121
    .line 1122
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/q5;->i()I

    .line 1123
    .line 1124
    .line 1125
    move-result v4

    .line 1126
    invoke-static {v15, v0, v3, v4}, Lcom/google/android/gms/internal/measurement/h7;->b(Ljava/lang/String;[BII)I

    .line 1127
    .line 1128
    .line 1129
    move-result v0

    .line 1130
    iput v1, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1131
    .line 1132
    sub-int v3, v0, v1

    .line 1133
    .line 1134
    sub-int v3, v3, v17

    .line 1135
    .line 1136
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 1137
    .line 1138
    .line 1139
    iput v0, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1140
    .line 1141
    goto/16 :goto_4e2

    .line 1142
    .line 1143
    :catch_476
    move-exception v0

    .line 1144
    goto :goto_494

    .line 1145
    :catch_478
    move-exception v0

    .line 1146
    :goto_479
    move-object/from16 v25, v0

    .line 1147
    .line 1148
    goto :goto_49e

    .line 1149
    :cond_47c
    invoke-static {v15}, Lcom/google/android/gms/internal/measurement/h7;->a(Ljava/lang/String;)I

    .line 1150
    .line 1151
    .line 1152
    move-result v3

    .line 1153
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 1154
    .line 1155
    .line 1156
    iget v3, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1157
    .line 1158
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/q5;->i()I

    .line 1159
    .line 1160
    .line 1161
    move-result v4

    .line 1162
    invoke-static {v15, v0, v3, v4}, Lcom/google/android/gms/internal/measurement/h7;->b(Ljava/lang/String;[BII)I

    .line 1163
    .line 1164
    .line 1165
    move-result v0

    .line 1166
    iput v0, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I
    :try_end_48f
    .catch Lcom/google/android/gms/internal/measurement/i7; {:try_start_455 .. :try_end_48f} :catch_478
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_455 .. :try_end_48f} :catch_476

    .line 1167
    .line 1168
    goto :goto_4e2

    .line 1169
    :catch_490
    move-exception v0

    .line 1170
    :goto_491
    move/from16 v19, v4

    .line 1171
    .line 1172
    goto :goto_479

    .line 1173
    :goto_494
    new-instance v1, Lcom/google/android/gms/internal/measurement/r5;

    .line 1174
    .line 1175
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 1176
    .line 1177
    .line 1178
    throw v1

    .line 1179
    :catch_49a
    move-exception v0

    .line 1180
    move/from16 v18, v3

    .line 1181
    .line 1182
    goto :goto_491

    .line 1183
    :goto_49e
    iput v1, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1184
    .line 1185
    sget-object v20, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 1186
    .line 1187
    sget-object v21, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 1188
    .line 1189
    const-string v23, "inefficientWriteStringNoTag"

    .line 1190
    .line 1191
    const-string v24, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 1192
    .line 1193
    const-string v22, "com.google.protobuf.CodedOutputStream"

    .line 1194
    .line 1195
    invoke-virtual/range {v20 .. v25}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1196
    .line 1197
    .line 1198
    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 1199
    .line 1200
    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    :try_start_4b3
    array-length v1, v0

    .line 1205
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 1206
    .line 1207
    .line 1208
    array-length v1, v0

    .line 1209
    const/4 v3, 0x0

    .line 1210
    invoke-virtual {v8, v0, v3, v1}, Lcom/google/android/gms/internal/measurement/q5;->s([BII)V
    :try_end_4bc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4b3 .. :try_end_4bc} :catch_4bd

    .line 1211
    .line 1212
    .line 1213
    goto :goto_4e2

    .line 1214
    :catch_4bd
    move-exception v0

    .line 1215
    new-instance v1, Lcom/google/android/gms/internal/measurement/r5;

    .line 1216
    .line 1217
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 1218
    .line 1219
    .line 1220
    throw v1

    .line 1221
    :cond_4c4
    move/from16 v18, v3

    .line 1222
    .line 1223
    move/from16 v19, v4

    .line 1224
    .line 1225
    check-cast v0, Lcom/google/android/gms/internal/measurement/p5;

    .line 1226
    .line 1227
    const/4 v1, 0x2

    .line 1228
    invoke-virtual {v8, v6, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 1232
    .line 1233
    .line 1234
    move-result v1

    .line 1235
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 1236
    .line 1237
    .line 1238
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 1239
    .line 1240
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->f()I

    .line 1241
    .line 1242
    .line 1243
    move-result v3

    .line 1244
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 1245
    .line 1246
    .line 1247
    move-result v0

    .line 1248
    invoke-virtual {v8, v1, v3, v0}, Lcom/google/android/gms/internal/measurement/q5;->s([BII)V

    .line 1249
    .line 1250
    .line 1251
    :goto_4e2
    add-int/lit8 v14, v14, 0x1

    .line 1252
    .line 1253
    move-object/from16 v1, p0

    .line 1254
    .line 1255
    move/from16 v3, v18

    .line 1256
    .line 1257
    move/from16 v4, v19

    .line 1258
    .line 1259
    goto/16 :goto_42a

    .line 1260
    .line 1261
    :cond_4ec
    move/from16 v18, v3

    .line 1262
    .line 1263
    move/from16 v19, v4

    .line 1264
    .line 1265
    goto/16 :goto_580

    .line 1266
    .line 1267
    :cond_4f2
    move/from16 v18, v3

    .line 1268
    .line 1269
    move/from16 v19, v4

    .line 1270
    .line 1271
    const/4 v1, 0x0

    .line 1272
    :goto_4f7
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 1273
    .line 1274
    .line 1275
    move-result v0

    .line 1276
    if-ge v1, v0, :cond_580

    .line 1277
    .line 1278
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    move-object v3, v0

    .line 1283
    check-cast v3, Ljava/lang/String;

    .line 1284
    .line 1285
    const/4 v4, 0x2

    .line 1286
    invoke-virtual {v8, v6, v4}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 1287
    .line 1288
    .line 1289
    iget-object v0, v8, Lcom/google/android/gms/internal/measurement/q5;->c:[B

    .line 1290
    .line 1291
    iget v4, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1292
    .line 1293
    :try_start_50c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1294
    .line 1295
    .line 1296
    move-result v13

    .line 1297
    mul-int/lit8 v13, v13, 0x3

    .line 1298
    .line 1299
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1300
    .line 1301
    .line 1302
    move-result v13

    .line 1303
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1304
    .line 1305
    .line 1306
    move-result v14

    .line 1307
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1308
    .line 1309
    .line 1310
    move-result v14

    .line 1311
    if-ne v14, v13, :cond_53d

    .line 1312
    .line 1313
    add-int v13, v4, v14

    .line 1314
    .line 1315
    iput v13, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1316
    .line 1317
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/q5;->i()I

    .line 1318
    .line 1319
    .line 1320
    move-result v15

    .line 1321
    invoke-static {v3, v0, v13, v15}, Lcom/google/android/gms/internal/measurement/h7;->b(Ljava/lang/String;[BII)I

    .line 1322
    .line 1323
    .line 1324
    move-result v0

    .line 1325
    iput v4, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1326
    .line 1327
    sub-int v13, v0, v4

    .line 1328
    .line 1329
    sub-int/2addr v13, v14

    .line 1330
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 1331
    .line 1332
    .line 1333
    iput v0, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1334
    .line 1335
    goto :goto_575

    .line 1336
    :catch_537
    move-exception v0

    .line 1337
    goto :goto_551

    .line 1338
    :catch_539
    move-exception v0

    .line 1339
    move-object/from16 v25, v0

    .line 1340
    .line 1341
    goto :goto_557

    .line 1342
    :cond_53d
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/h7;->a(Ljava/lang/String;)I

    .line 1343
    .line 1344
    .line 1345
    move-result v13

    .line 1346
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 1347
    .line 1348
    .line 1349
    iget v13, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1350
    .line 1351
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/q5;->i()I

    .line 1352
    .line 1353
    .line 1354
    move-result v14

    .line 1355
    invoke-static {v3, v0, v13, v14}, Lcom/google/android/gms/internal/measurement/h7;->b(Ljava/lang/String;[BII)I

    .line 1356
    .line 1357
    .line 1358
    move-result v0

    .line 1359
    iput v0, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I
    :try_end_550
    .catch Lcom/google/android/gms/internal/measurement/i7; {:try_start_50c .. :try_end_550} :catch_539
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_50c .. :try_end_550} :catch_537

    .line 1360
    .line 1361
    goto :goto_575

    .line 1362
    :goto_551
    new-instance v1, Lcom/google/android/gms/internal/measurement/r5;

    .line 1363
    .line 1364
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 1365
    .line 1366
    .line 1367
    throw v1

    .line 1368
    :goto_557
    iput v4, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1369
    .line 1370
    sget-object v20, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 1371
    .line 1372
    sget-object v21, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 1373
    .line 1374
    const-string v23, "inefficientWriteStringNoTag"

    .line 1375
    .line 1376
    const-string v24, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 1377
    .line 1378
    const-string v22, "com.google.protobuf.CodedOutputStream"

    .line 1379
    .line 1380
    invoke-virtual/range {v20 .. v25}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1381
    .line 1382
    .line 1383
    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 1384
    .line 1385
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 1386
    .line 1387
    .line 1388
    move-result-object v0

    .line 1389
    :try_start_56c
    array-length v3, v0

    .line 1390
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 1391
    .line 1392
    .line 1393
    array-length v3, v0

    .line 1394
    const/4 v14, 0x0

    .line 1395
    invoke-virtual {v8, v0, v14, v3}, Lcom/google/android/gms/internal/measurement/q5;->s([BII)V
    :try_end_575
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_56c .. :try_end_575} :catch_579

    .line 1396
    .line 1397
    .line 1398
    :goto_575
    add-int/lit8 v1, v1, 0x1

    .line 1399
    .line 1400
    goto/16 :goto_4f7

    .line 1401
    .line 1402
    :catch_579
    move-exception v0

    .line 1403
    new-instance v1, Lcom/google/android/gms/internal/measurement/r5;

    .line 1404
    .line 1405
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 1406
    .line 1407
    .line 1408
    throw v1

    .line 1409
    :cond_580
    :goto_580
    move/from16 v3, v18

    .line 1410
    .line 1411
    move/from16 v4, v19

    .line 1412
    .line 1413
    goto/16 :goto_63

    .line 1414
    .line 1415
    :pswitch_586
    move/from16 v18, v3

    .line 1416
    .line 1417
    move/from16 v19, v4

    .line 1418
    .line 1419
    aget v0, v9, v18

    .line 1420
    .line 1421
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v1

    .line 1425
    check-cast v1, Ljava/util/List;

    .line 1426
    .line 1427
    const/4 v14, 0x0

    .line 1428
    invoke-static {v0, v1, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 1429
    .line 1430
    .line 1431
    goto/16 :goto_370

    .line 1432
    .line 1433
    :pswitch_598
    move/from16 v18, v3

    .line 1434
    .line 1435
    move/from16 v19, v4

    .line 1436
    .line 1437
    const/4 v14, 0x0

    .line 1438
    aget v0, v9, v18

    .line 1439
    .line 1440
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v1

    .line 1444
    check-cast v1, Ljava/util/List;

    .line 1445
    .line 1446
    invoke-static {v0, v1, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 1447
    .line 1448
    .line 1449
    goto/16 :goto_370

    .line 1450
    .line 1451
    :pswitch_5aa
    move/from16 v18, v3

    .line 1452
    .line 1453
    move/from16 v19, v4

    .line 1454
    .line 1455
    const/4 v14, 0x0

    .line 1456
    aget v0, v9, v18

    .line 1457
    .line 1458
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v1

    .line 1462
    check-cast v1, Ljava/util/List;

    .line 1463
    .line 1464
    invoke-static {v0, v1, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 1465
    .line 1466
    .line 1467
    goto/16 :goto_370

    .line 1468
    .line 1469
    :pswitch_5bc
    move/from16 v18, v3

    .line 1470
    .line 1471
    move/from16 v19, v4

    .line 1472
    .line 1473
    const/4 v14, 0x0

    .line 1474
    aget v0, v9, v18

    .line 1475
    .line 1476
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v1

    .line 1480
    check-cast v1, Ljava/util/List;

    .line 1481
    .line 1482
    invoke-static {v0, v1, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 1483
    .line 1484
    .line 1485
    goto/16 :goto_370

    .line 1486
    .line 1487
    :pswitch_5ce
    move/from16 v18, v3

    .line 1488
    .line 1489
    move/from16 v19, v4

    .line 1490
    .line 1491
    const/4 v14, 0x0

    .line 1492
    aget v0, v9, v18

    .line 1493
    .line 1494
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v1

    .line 1498
    check-cast v1, Ljava/util/List;

    .line 1499
    .line 1500
    invoke-static {v0, v1, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->A(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 1501
    .line 1502
    .line 1503
    goto/16 :goto_370

    .line 1504
    .line 1505
    :pswitch_5e0
    move/from16 v18, v3

    .line 1506
    .line 1507
    move/from16 v19, v4

    .line 1508
    .line 1509
    const/4 v14, 0x0

    .line 1510
    aget v0, v9, v18

    .line 1511
    .line 1512
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v1

    .line 1516
    check-cast v1, Ljava/util/List;

    .line 1517
    .line 1518
    invoke-static {v0, v1, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 1519
    .line 1520
    .line 1521
    goto/16 :goto_370

    .line 1522
    .line 1523
    :pswitch_5f2
    move/from16 v18, v3

    .line 1524
    .line 1525
    move/from16 v19, v4

    .line 1526
    .line 1527
    const/4 v14, 0x0

    .line 1528
    aget v0, v9, v18

    .line 1529
    .line 1530
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v1

    .line 1534
    check-cast v1, Ljava/util/List;

    .line 1535
    .line 1536
    invoke-static {v0, v1, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 1537
    .line 1538
    .line 1539
    goto/16 :goto_370

    .line 1540
    .line 1541
    :pswitch_604
    move/from16 v18, v3

    .line 1542
    .line 1543
    move/from16 v19, v4

    .line 1544
    .line 1545
    const/4 v14, 0x0

    .line 1546
    aget v0, v9, v18

    .line 1547
    .line 1548
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v1

    .line 1552
    check-cast v1, Ljava/util/List;

    .line 1553
    .line 1554
    invoke-static {v0, v1, v7, v14}, Lcom/google/android/gms/internal/measurement/a5;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V

    .line 1555
    .line 1556
    .line 1557
    goto/16 :goto_370

    .line 1558
    .line 1559
    :pswitch_616
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1560
    .line 1561
    .line 1562
    move-result v0

    .line 1563
    if-eqz v0, :cond_63

    .line 1564
    .line 1565
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v0

    .line 1569
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v6

    .line 1573
    invoke-virtual {v7, v14, v0, v6}, Lcom/google/android/gms/internal/measurement/o6;->d(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;)V

    .line 1574
    .line 1575
    .line 1576
    goto/16 :goto_63

    .line 1577
    .line 1578
    :pswitch_629
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1579
    .line 1580
    .line 1581
    move-result v0

    .line 1582
    if-eqz v0, :cond_63

    .line 1583
    .line 1584
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1585
    .line 1586
    .line 1587
    move-result-wide v0

    .line 1588
    const/16 v16, 0x1

    .line 1589
    .line 1590
    shl-long v12, v0, v16

    .line 1591
    .line 1592
    shr-long v0, v0, v17

    .line 1593
    .line 1594
    xor-long/2addr v0, v12

    .line 1595
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->n(IJ)V

    .line 1596
    .line 1597
    .line 1598
    goto/16 :goto_63

    .line 1599
    .line 1600
    :pswitch_63f
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1601
    .line 1602
    .line 1603
    move-result v0

    .line 1604
    if-eqz v0, :cond_63

    .line 1605
    .line 1606
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1607
    .line 1608
    .line 1609
    move-result v0

    .line 1610
    shl-int/lit8 v1, v0, 0x1

    .line 1611
    .line 1612
    shr-int/lit8 v0, v0, 0x1f

    .line 1613
    .line 1614
    xor-int/2addr v0, v1

    .line 1615
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->t(II)V

    .line 1616
    .line 1617
    .line 1618
    goto/16 :goto_63

    .line 1619
    .line 1620
    :pswitch_653
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1621
    .line 1622
    .line 1623
    move-result v0

    .line 1624
    if-eqz v0, :cond_63

    .line 1625
    .line 1626
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1627
    .line 1628
    .line 1629
    move-result-wide v0

    .line 1630
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->g(IJ)V

    .line 1631
    .line 1632
    .line 1633
    goto/16 :goto_63

    .line 1634
    .line 1635
    :pswitch_662
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1636
    .line 1637
    .line 1638
    move-result v0

    .line 1639
    if-eqz v0, :cond_63

    .line 1640
    .line 1641
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1642
    .line 1643
    .line 1644
    move-result v0

    .line 1645
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->f(II)V

    .line 1646
    .line 1647
    .line 1648
    goto/16 :goto_63

    .line 1649
    .line 1650
    :pswitch_671
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1651
    .line 1652
    .line 1653
    move-result v0

    .line 1654
    if-eqz v0, :cond_63

    .line 1655
    .line 1656
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1657
    .line 1658
    .line 1659
    move-result v0

    .line 1660
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->m(II)V

    .line 1661
    .line 1662
    .line 1663
    goto/16 :goto_63

    .line 1664
    .line 1665
    :pswitch_680
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1666
    .line 1667
    .line 1668
    move-result v0

    .line 1669
    if-eqz v0, :cond_63

    .line 1670
    .line 1671
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1672
    .line 1673
    .line 1674
    move-result v0

    .line 1675
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->t(II)V

    .line 1676
    .line 1677
    .line 1678
    goto/16 :goto_63

    .line 1679
    .line 1680
    :pswitch_68f
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1681
    .line 1682
    .line 1683
    move-result v0

    .line 1684
    if-eqz v0, :cond_63

    .line 1685
    .line 1686
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v0

    .line 1690
    check-cast v0, Lcom/google/android/gms/internal/measurement/p5;

    .line 1691
    .line 1692
    const/4 v1, 0x2

    .line 1693
    invoke-virtual {v8, v14, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 1694
    .line 1695
    .line 1696
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 1697
    .line 1698
    .line 1699
    move-result v1

    .line 1700
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 1701
    .line 1702
    .line 1703
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 1704
    .line 1705
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->f()I

    .line 1706
    .line 1707
    .line 1708
    move-result v6

    .line 1709
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 1710
    .line 1711
    .line 1712
    move-result v0

    .line 1713
    invoke-virtual {v8, v1, v6, v0}, Lcom/google/android/gms/internal/measurement/q5;->s([BII)V

    .line 1714
    .line 1715
    .line 1716
    goto/16 :goto_63

    .line 1717
    .line 1718
    :pswitch_6b5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1719
    .line 1720
    .line 1721
    move-result v0

    .line 1722
    if-eqz v0, :cond_63

    .line 1723
    .line 1724
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v0

    .line 1728
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v6

    .line 1732
    invoke-virtual {v7, v14, v0, v6}, Lcom/google/android/gms/internal/measurement/o6;->e(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;)V

    .line 1733
    .line 1734
    .line 1735
    goto/16 :goto_63

    .line 1736
    .line 1737
    :pswitch_6c8
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1738
    .line 1739
    .line 1740
    move-result v0

    .line 1741
    if-eqz v0, :cond_63

    .line 1742
    .line 1743
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v0

    .line 1747
    instance-of v1, v0, Ljava/lang/String;

    .line 1748
    .line 1749
    if-eqz v1, :cond_755

    .line 1750
    .line 1751
    move-object v1, v0

    .line 1752
    check-cast v1, Ljava/lang/String;

    .line 1753
    .line 1754
    const/4 v6, 0x2

    .line 1755
    invoke-virtual {v8, v14, v6}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 1756
    .line 1757
    .line 1758
    iget-object v0, v8, Lcom/google/android/gms/internal/measurement/q5;->c:[B

    .line 1759
    .line 1760
    iget v6, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1761
    .line 1762
    :try_start_6e1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1763
    .line 1764
    .line 1765
    move-result v12

    .line 1766
    mul-int/lit8 v12, v12, 0x3

    .line 1767
    .line 1768
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1769
    .line 1770
    .line 1771
    move-result v12

    .line 1772
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1773
    .line 1774
    .line 1775
    move-result v13

    .line 1776
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 1777
    .line 1778
    .line 1779
    move-result v13

    .line 1780
    if-ne v13, v12, :cond_713

    .line 1781
    .line 1782
    add-int v12, v6, v13

    .line 1783
    .line 1784
    iput v12, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1785
    .line 1786
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/q5;->i()I

    .line 1787
    .line 1788
    .line 1789
    move-result v14

    .line 1790
    invoke-static {v1, v0, v12, v14}, Lcom/google/android/gms/internal/measurement/h7;->b(Ljava/lang/String;[BII)I

    .line 1791
    .line 1792
    .line 1793
    move-result v0

    .line 1794
    iput v6, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1795
    .line 1796
    sub-int v12, v0, v6

    .line 1797
    .line 1798
    sub-int/2addr v12, v13

    .line 1799
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 1800
    .line 1801
    .line 1802
    iput v0, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1803
    .line 1804
    goto/16 :goto_63

    .line 1805
    .line 1806
    :catch_70d
    move-exception v0

    .line 1807
    goto :goto_728

    .line 1808
    :catch_70f
    move-exception v0

    .line 1809
    move-object/from16 v23, v0

    .line 1810
    .line 1811
    goto :goto_72e

    .line 1812
    :cond_713
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/h7;->a(Ljava/lang/String;)I

    .line 1813
    .line 1814
    .line 1815
    move-result v12

    .line 1816
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 1817
    .line 1818
    .line 1819
    iget v12, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1820
    .line 1821
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/q5;->i()I

    .line 1822
    .line 1823
    .line 1824
    move-result v13

    .line 1825
    invoke-static {v1, v0, v12, v13}, Lcom/google/android/gms/internal/measurement/h7;->b(Ljava/lang/String;[BII)I

    .line 1826
    .line 1827
    .line 1828
    move-result v0

    .line 1829
    iput v0, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I
    :try_end_726
    .catch Lcom/google/android/gms/internal/measurement/i7; {:try_start_6e1 .. :try_end_726} :catch_70f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6e1 .. :try_end_726} :catch_70d

    .line 1830
    .line 1831
    goto/16 :goto_63

    .line 1832
    .line 1833
    :goto_728
    new-instance v1, Lcom/google/android/gms/internal/measurement/r5;

    .line 1834
    .line 1835
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 1836
    .line 1837
    .line 1838
    throw v1

    .line 1839
    :goto_72e
    iput v6, v8, Lcom/google/android/gms/internal/measurement/q5;->e:I

    .line 1840
    .line 1841
    sget-object v18, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 1842
    .line 1843
    sget-object v19, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 1844
    .line 1845
    const-string v21, "inefficientWriteStringNoTag"

    .line 1846
    .line 1847
    const-string v22, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 1848
    .line 1849
    const-string v20, "com.google.protobuf.CodedOutputStream"

    .line 1850
    .line 1851
    invoke-virtual/range {v18 .. v23}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1852
    .line 1853
    .line 1854
    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 1855
    .line 1856
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 1857
    .line 1858
    .line 1859
    move-result-object v0

    .line 1860
    :try_start_743
    array-length v1, v0

    .line 1861
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 1862
    .line 1863
    .line 1864
    array-length v1, v0

    .line 1865
    const/4 v14, 0x0

    .line 1866
    invoke-virtual {v8, v0, v14, v1}, Lcom/google/android/gms/internal/measurement/q5;->s([BII)V
    :try_end_74c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_743 .. :try_end_74c} :catch_74e

    .line 1867
    .line 1868
    .line 1869
    goto/16 :goto_63

    .line 1870
    .line 1871
    :catch_74e
    move-exception v0

    .line 1872
    new-instance v1, Lcom/google/android/gms/internal/measurement/r5;

    .line 1873
    .line 1874
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 1875
    .line 1876
    .line 1877
    throw v1

    .line 1878
    :cond_755
    check-cast v0, Lcom/google/android/gms/internal/measurement/p5;

    .line 1879
    .line 1880
    const/4 v1, 0x2

    .line 1881
    invoke-virtual {v8, v14, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 1882
    .line 1883
    .line 1884
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 1885
    .line 1886
    .line 1887
    move-result v1

    .line 1888
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 1889
    .line 1890
    .line 1891
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/p5;->b:[B

    .line 1892
    .line 1893
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->f()I

    .line 1894
    .line 1895
    .line 1896
    move-result v6

    .line 1897
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p5;->e()I

    .line 1898
    .line 1899
    .line 1900
    move-result v0

    .line 1901
    invoke-virtual {v8, v1, v6, v0}, Lcom/google/android/gms/internal/measurement/q5;->s([BII)V

    .line 1902
    .line 1903
    .line 1904
    goto/16 :goto_63

    .line 1905
    .line 1906
    :pswitch_771
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1907
    .line 1908
    .line 1909
    move-result v0

    .line 1910
    if-eqz v0, :cond_63

    .line 1911
    .line 1912
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 1913
    .line 1914
    invoke-virtual {v0, v12, v13, v2}, Lcom/google/android/gms/internal/measurement/e7;->i(JLjava/lang/Object;)Z

    .line 1915
    .line 1916
    .line 1917
    move-result v0

    .line 1918
    const/4 v15, 0x0

    .line 1919
    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 1920
    .line 1921
    .line 1922
    int-to-byte v0, v0

    .line 1923
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/q5;->d(B)V

    .line 1924
    .line 1925
    .line 1926
    goto/16 :goto_801

    .line 1927
    .line 1928
    :pswitch_787
    const/4 v15, 0x0

    .line 1929
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1930
    .line 1931
    .line 1932
    move-result v0

    .line 1933
    if-eqz v0, :cond_801

    .line 1934
    .line 1935
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1936
    .line 1937
    .line 1938
    move-result v0

    .line 1939
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->f(II)V

    .line 1940
    .line 1941
    .line 1942
    goto :goto_801

    .line 1943
    :pswitch_796
    const/4 v15, 0x0

    .line 1944
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1945
    .line 1946
    .line 1947
    move-result v0

    .line 1948
    if-eqz v0, :cond_801

    .line 1949
    .line 1950
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1951
    .line 1952
    .line 1953
    move-result-wide v0

    .line 1954
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->g(IJ)V

    .line 1955
    .line 1956
    .line 1957
    goto :goto_801

    .line 1958
    :pswitch_7a5
    const/4 v15, 0x0

    .line 1959
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1960
    .line 1961
    .line 1962
    move-result v0

    .line 1963
    if-eqz v0, :cond_801

    .line 1964
    .line 1965
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1966
    .line 1967
    .line 1968
    move-result v0

    .line 1969
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->m(II)V

    .line 1970
    .line 1971
    .line 1972
    goto :goto_801

    .line 1973
    :pswitch_7b4
    const/4 v15, 0x0

    .line 1974
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1975
    .line 1976
    .line 1977
    move-result v0

    .line 1978
    if-eqz v0, :cond_801

    .line 1979
    .line 1980
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1981
    .line 1982
    .line 1983
    move-result-wide v0

    .line 1984
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->n(IJ)V

    .line 1985
    .line 1986
    .line 1987
    goto :goto_801

    .line 1988
    :pswitch_7c3
    const/4 v15, 0x0

    .line 1989
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 1990
    .line 1991
    .line 1992
    move-result v0

    .line 1993
    if-eqz v0, :cond_801

    .line 1994
    .line 1995
    invoke-virtual {v11, v2, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1996
    .line 1997
    .line 1998
    move-result-wide v0

    .line 1999
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->n(IJ)V

    .line 2000
    .line 2001
    .line 2002
    goto :goto_801

    .line 2003
    :pswitch_7d2
    const/4 v15, 0x0

    .line 2004
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 2005
    .line 2006
    .line 2007
    move-result v0

    .line 2008
    if-eqz v0, :cond_801

    .line 2009
    .line 2010
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 2011
    .line 2012
    invoke-virtual {v0, v12, v13, v2}, Lcom/google/android/gms/internal/measurement/e7;->h(JLjava/lang/Object;)F

    .line 2013
    .line 2014
    .line 2015
    move-result v0

    .line 2016
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2017
    .line 2018
    .line 2019
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2020
    .line 2021
    .line 2022
    move-result v0

    .line 2023
    invoke-virtual {v8, v14, v0}, Lcom/google/android/gms/internal/measurement/q5;->f(II)V

    .line 2024
    .line 2025
    .line 2026
    goto :goto_801

    .line 2027
    :pswitch_7ea
    const/4 v15, 0x0

    .line 2028
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/u6;->r(Ljava/lang/Object;IIII)Z

    .line 2029
    .line 2030
    .line 2031
    move-result v0

    .line 2032
    if-eqz v0, :cond_801

    .line 2033
    .line 2034
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 2035
    .line 2036
    invoke-virtual {v0, v12, v13, v2}, Lcom/google/android/gms/internal/measurement/e7;->a(JLjava/lang/Object;)D

    .line 2037
    .line 2038
    .line 2039
    move-result-wide v0

    .line 2040
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2041
    .line 2042
    .line 2043
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 2044
    .line 2045
    .line 2046
    move-result-wide v0

    .line 2047
    invoke-virtual {v8, v14, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->g(IJ)V

    .line 2048
    .line 2049
    .line 2050
    :cond_801
    :goto_801
    add-int/lit8 v3, v3, 0x3

    .line 2051
    .line 2052
    const v12, 0xfffff

    .line 2053
    .line 2054
    .line 2055
    move-object/from16 v1, p0

    .line 2056
    .line 2057
    move v0, v4

    .line 2058
    move v4, v5

    .line 2059
    goto/16 :goto_19

    .line 2060
    .line 2061
    :cond_80c
    move-object v0, v2

    .line 2062
    check-cast v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 2063
    .line 2064
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 2065
    .line 2066
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/measurement/c7;->d(Lcom/google/android/gms/internal/measurement/o6;)V

    .line 2067
    .line 2068
    .line 2069
    return-void

    .line 2070
    nop

    .line 2071
    :pswitch_data_816
    .packed-switch 0x0
        :pswitch_7ea
        :pswitch_7d2
        :pswitch_7c3
        :pswitch_7b4
        :pswitch_7a5
        :pswitch_796
        :pswitch_787
        :pswitch_771
        :pswitch_6c8
        :pswitch_6b5
        :pswitch_68f
        :pswitch_680
        :pswitch_671
        :pswitch_662
        :pswitch_653
        :pswitch_63f
        :pswitch_629
        :pswitch_616
        :pswitch_604
        :pswitch_5f2
        :pswitch_5e0
        :pswitch_5ce
        :pswitch_5bc
        :pswitch_5aa
        :pswitch_598
        :pswitch_586
        :pswitch_411
        :pswitch_3ec
        :pswitch_3b4
        :pswitch_3a7
        :pswitch_39a
        :pswitch_38d
        :pswitch_380
        :pswitch_373
        :pswitch_364
        :pswitch_355
        :pswitch_346
        :pswitch_337
        :pswitch_328
        :pswitch_319
        :pswitch_30a
        :pswitch_2fb
        :pswitch_2ec
        :pswitch_2dd
        :pswitch_2ce
        :pswitch_2bf
        :pswitch_2b0
        :pswitch_2a1
        :pswitch_292
        :pswitch_26d
        :pswitch_253
        :pswitch_237
        :pswitch_21b
        :pswitch_20c
        :pswitch_1fd
        :pswitch_1ee
        :pswitch_1df
        :pswitch_1d0
        :pswitch_1b6
        :pswitch_10f
        :pswitch_fc
        :pswitch_d7
        :pswitch_c9
        :pswitch_bb
        :pswitch_ad
        :pswitch_9f
        :pswitch_8c
        :pswitch_78
        :pswitch_66
    .end packed-switch
.end method

.method public final i(II)I
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    div-int/lit8 v1, v1, 0x3

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    :goto_7
    if-gt p2, v1, :cond_1c

    .line 9
    .line 10
    add-int v2, v1, p2

    .line 11
    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    mul-int/lit8 v3, v2, 0x3

    .line 15
    .line 16
    aget v4, v0, v3

    .line 17
    .line 18
    if-ne p1, v4, :cond_14

    .line 19
    .line 20
    return v3

    .line 21
    :cond_14
    if-ge p1, v4, :cond_19

    .line 22
    .line 23
    add-int/lit8 v1, v2, -0x1

    .line 24
    .line 25
    goto :goto_7

    .line 26
    :cond_19
    add-int/lit8 p2, v2, 0x1

    .line 27
    .line 28
    goto :goto_7

    .line 29
    :cond_1c
    const/4 p1, -0x1

    .line 30
    return p1
.end method

.method public final j(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/m5;)I
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/u6;->D(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f92

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    move/from16 v4, p3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1b
    const v16, 0xfffff

    .line 3
    :goto_1e
    iget-object v12, v0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    if-ge v4, v5, :cond_f2f

    add-int/lit8 v15, v4, 0x1

    .line 4
    aget-byte v4, v3, v4

    if-gez v4, :cond_2e

    .line 5
    invoke-static {v4, v3, v15, v6}, Lcom/google/android/gms/internal/measurement/w5;->c(I[BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v15

    .line 6
    iget v4, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    :cond_2e
    move/from16 v31, v15

    move v15, v4

    move/from16 v4, v31

    ushr-int/lit8 v13, v15, 0x3

    and-int/lit8 v11, v15, 0x7

    .line 7
    iget v3, v0, Lcom/google/android/gms/internal/measurement/u6;->d:I

    move/from16 p3, v4

    iget v4, v0, Lcom/google/android/gms/internal/measurement/u6;->c:I

    const/4 v5, 0x3

    if-le v13, v7, :cond_4c

    .line 8
    div-int/2addr v8, v5

    if-lt v13, v4, :cond_4a

    if-gt v13, v3, :cond_4a

    .line 9
    invoke-virtual {v0, v13, v8}, Lcom/google/android/gms/internal/measurement/u6;->i(II)I

    move-result v3

    goto :goto_58

    :cond_4a
    const/4 v3, -0x1

    goto :goto_58

    :cond_4c
    if-lt v13, v4, :cond_56

    if-gt v13, v3, :cond_56

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v13, v3}, Lcom/google/android/gms/internal/measurement/u6;->i(II)I

    move-result v4

    goto :goto_57

    :cond_56
    const/4 v4, -0x1

    :goto_57
    move v3, v4

    .line 11
    :goto_58
    sget-object v8, Lcom/google/android/gms/internal/measurement/c7;->f:Lcom/google/android/gms/internal/measurement/c7;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_75

    move/from16 v3, p3

    move/from16 v0, p5

    move-object/from16 v20, v1

    move/from16 v19, v4

    move-object v10, v6

    move/from16 v21, v9

    move-object/from16 v25, v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v2

    move-object v9, v8

    move v8, v15

    move-object/from16 v15, p2

    goto/16 :goto_edb

    :cond_75
    add-int/lit8 v7, v3, 0x1

    .line 12
    aget v7, v12, v7

    const/high16 v17, 0xff00000

    and-int v17, v7, v17

    ushr-int/lit8 v4, v17, 0x14

    and-int v5, v7, v16

    int-to-long v5, v5

    move-wide/from16 v20, v5

    const/16 v5, 0x11

    const-wide/16 v22, 0x0

    const/high16 v24, 0x20000000

    .line 13
    const-string v6, ""

    move-object/from16 v25, v12

    const/16 v26, 0x1

    if-gt v4, v5, :cond_53a

    add-int/lit8 v5, v3, 0x2

    .line 14
    aget v5, v25, v5

    ushr-int/lit8 v27, v5, 0x14

    shl-int v27, v26, v27

    and-int v5, v5, v16

    if-eq v5, v9, :cond_b7

    move/from16 v12, v16

    move/from16 v29, v13

    if-eq v9, v12, :cond_ab

    int-to-long v12, v9

    .line 15
    invoke-virtual {v1, v2, v12, v13, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v12, 0xfffff

    :cond_ab
    if-ne v5, v12, :cond_af

    const/4 v9, 0x0

    goto :goto_b4

    :cond_af
    int-to-long v12, v5

    .line 16
    invoke-virtual {v1, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    :goto_b4
    move v12, v5

    move v14, v9

    goto :goto_ba

    :cond_b7
    move/from16 v29, v13

    move v12, v9

    :goto_ba
    packed-switch v4, :pswitch_data_fa4

    move/from16 v9, p3

    move-object/from16 v7, p6

    move v13, v3

    move/from16 v20, v14

    move/from16 p3, v15

    const/16 v18, 0x0

    const/16 v19, -0x1

    :goto_ca
    move-object/from16 v15, p2

    :cond_cc
    move-object v14, v1

    :cond_cd
    move-object v1, v2

    goto/16 :goto_525

    :pswitch_d0
    const/4 v4, 0x3

    if-ne v11, v4, :cond_101

    .line 17
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/u6;->l(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    shl-int/lit8 v5, v29, 0x3

    or-int/lit8 v8, v5, 0x4

    move-object v5, v4

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    move-result-object v4

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p6

    move v13, v3

    move-object v3, v5

    const/16 v19, -0x1

    move-object/from16 v5, p2

    .line 19
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/measurement/w5;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;[BIIILcom/google/android/gms/internal/measurement/m5;)I

    move-result v4

    move-object v7, v9

    move-object v9, v5

    .line 20
    invoke-virtual {v0, v2, v13, v3}, Lcom/google/android/gms/internal/measurement/u6;->p(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v14, v14, v27

    :goto_f7
    move/from16 v5, p4

    move-object v6, v7

    :goto_fa
    move-object v3, v9

    :goto_fb
    move v9, v12

    move v8, v13

    move/from16 v7, v29

    goto/16 :goto_1b

    :cond_101
    move v13, v3

    const/16 v19, -0x1

    move/from16 v9, p3

    move-object/from16 v7, p6

    move/from16 v20, v14

    move/from16 p3, v15

    const/16 v18, 0x0

    goto :goto_ca

    :pswitch_10f
    move-object/from16 v9, p2

    move/from16 v4, p3

    move-object/from16 v7, p6

    move v13, v3

    const/16 v19, -0x1

    if-nez v11, :cond_138

    .line 21
    invoke-static {v9, v4, v7}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v8

    .line 22
    iget-wide v3, v7, Lcom/google/android/gms/internal/measurement/m5;->b:J

    .line 23
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/p4;->c(J)J

    move-result-wide v5

    move-wide/from16 v3, v20

    .line 24
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v31, v2

    move-object v2, v1

    move-object/from16 v1, v31

    or-int v14, v14, v27

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v5, p4

    move-object v6, v7

    move v4, v8

    goto :goto_fa

    :cond_138
    move-object/from16 v31, v2

    move-object v2, v1

    move-object/from16 v1, v31

    :cond_13d
    :goto_13d
    move/from16 v20, v14

    move/from16 p3, v15

    const/16 v18, 0x0

    move-object v14, v2

    move-object v15, v9

    :goto_145
    move v9, v4

    goto/16 :goto_525

    :pswitch_148
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p2

    move/from16 v4, p3

    move-object/from16 v7, p6

    move v13, v3

    move-wide/from16 v5, v20

    const/16 v19, -0x1

    if-nez v11, :cond_13d

    .line 25
    invoke-static {v9, v4, v7}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v4

    .line 26
    iget v3, v7, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/p4;->b(I)I

    move-result v3

    .line 28
    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v14, v14, v27

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_f7

    :pswitch_16b
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p2

    move/from16 v4, p3

    move v13, v3

    move-wide/from16 v5, v20

    const/16 v19, -0x1

    move-object/from16 v3, p6

    if-nez v11, :cond_1bb

    .line 29
    invoke-static {v9, v4, v3}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v4

    .line 30
    iget v11, v3, Lcom/google/android/gms/internal/measurement/m5;->a:I

    move/from16 p3, v4

    .line 31
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/u6;->A(I)Lcom/google/android/gms/internal/measurement/d6;

    move-result-object v4

    const/high16 v17, -0x80000000

    and-int v7, v7, v17

    if-eqz v7, :cond_1b5

    if-eqz v4, :cond_1b5

    .line 32
    invoke-interface {v4, v11}, Lcom/google/android/gms/internal/measurement/d6;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_196

    goto :goto_1b5

    .line 33
    :cond_196
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/measurement/z5;

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    if-ne v5, v8, :cond_1a3

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/measurement/c7;->e()Lcom/google/android/gms/internal/measurement/c7;

    move-result-object v5

    .line 35
    iput-object v5, v4, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    :cond_1a3
    int-to-long v6, v11

    .line 36
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v15, v4}, Lcom/google/android/gms/internal/measurement/c7;->c(ILjava/lang/Object;)V

    :goto_1ab
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move/from16 v4, p3

    :goto_1b0
    move/from16 v5, p4

    move-object v6, v3

    goto/16 :goto_fa

    .line 37
    :cond_1b5
    :goto_1b5
    invoke-virtual {v2, v1, v5, v6, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v14, v14, v27

    goto :goto_1ab

    :cond_1bb
    move-object v7, v3

    goto :goto_13d

    :pswitch_1bd
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p2

    move/from16 v4, p3

    move v13, v3

    move-wide/from16 v5, v20

    const/4 v7, 0x2

    const/16 v19, -0x1

    move-object/from16 v3, p6

    if-ne v11, v7, :cond_1bb

    .line 38
    invoke-static {v9, v4, v3}, Lcom/google/android/gms/internal/measurement/w5;->f([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v4

    .line 39
    iget-object v7, v3, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v14, v14, v27

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_1b0

    :pswitch_1dd
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p2

    move/from16 v4, p3

    move v13, v3

    const/4 v7, 0x2

    const/16 v19, -0x1

    move-object/from16 v3, p6

    if-ne v11, v7, :cond_20e

    move-object v5, v1

    .line 40
    invoke-virtual {v0, v13, v5}, Lcom/google/android/gms/internal/measurement/u6;->l(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v2

    .line 41
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    move-result-object v2

    move-object v7, v6

    move-object v6, v3

    move-object v3, v9

    move-object v9, v5

    move/from16 v5, p4

    .line 42
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/w5;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;[BIILcom/google/android/gms/internal/measurement/m5;)I

    move-result v4

    move-object v2, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    .line 43
    invoke-virtual {v0, v9, v13, v3}, Lcom/google/android/gms/internal/measurement/u6;->p(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v14, v14, v27

    move-object v3, v1

    move-object v1, v7

    :goto_20b
    move-object v2, v9

    goto/16 :goto_fb

    :cond_20e
    move-object v7, v9

    move-object v9, v1

    move-object v1, v7

    move-object v7, v2

    move-object v2, v3

    move/from16 v20, v14

    move/from16 p3, v15

    const/16 v18, 0x0

    move-object v15, v1

    move-object v14, v7

    move-object v1, v9

    move-object v7, v2

    goto/16 :goto_145

    :pswitch_21f
    move-object v4, v1

    move-object v9, v2

    move v13, v3

    const/4 v5, 0x2

    const/16 v19, -0x1

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-object/from16 v2, p6

    move/from16 p3, v15

    move-wide/from16 v31, v20

    move/from16 v20, v14

    move-wide/from16 v14, v31

    if-ne v11, v5, :cond_3d7

    and-int v5, v7, v24

    if-eqz v5, :cond_3a8

    .line 44
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v3

    .line 45
    iget v5, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ltz v5, :cond_3a3

    if-nez v5, :cond_248

    .line 46
    iput-object v6, v2, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    const/4 v11, 0x0

    goto/16 :goto_3c0

    .line 47
    :cond_248
    sget-object v6, Lcom/google/android/gms/internal/measurement/h7;->a:Lcom/google/android/gms/internal/measurement/a6;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int v6, v3, v5

    .line 48
    array-length v7, v1

    sub-int/2addr v7, v3

    sub-int/2addr v7, v5

    or-int/2addr v6, v7

    if-ltz v6, :cond_37e

    add-int v6, v3, v5

    .line 49
    new-array v5, v5, [C

    const/4 v7, 0x0

    :goto_25a
    if-ge v3, v6, :cond_269

    .line 50
    aget-byte v8, v1, v3

    if-ltz v8, :cond_269

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v11, v7, 0x1

    int-to-char v8, v8

    .line 51
    aput-char v8, v5, v7

    move v7, v11

    goto :goto_25a

    :cond_269
    :goto_269
    if-ge v3, v6, :cond_371

    add-int/lit8 v8, v3, 0x1

    .line 52
    aget-byte v11, v1, v3

    if-ltz v11, :cond_28b

    add-int/lit8 v3, v7, 0x1

    int-to-char v11, v11

    .line 53
    aput-char v11, v5, v7

    :goto_276
    if-ge v8, v6, :cond_285

    .line 54
    aget-byte v7, v1, v8

    if-ltz v7, :cond_285

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v3, 0x1

    int-to-char v7, v7

    .line 55
    aput-char v7, v5, v3

    move v3, v11

    goto :goto_276

    :cond_285
    move v7, v3

    move/from16 v24, v6

    move v3, v8

    goto/16 :goto_301

    :cond_28b
    move/from16 v17, v3

    const/16 v3, -0x20

    if-ge v11, v3, :cond_2be

    if-ge v8, v6, :cond_2b9

    add-int/lit8 v3, v17, 0x2

    .line 56
    aget-byte v8, v1, v8

    add-int/lit8 v17, v7, 0x1

    move/from16 v21, v3

    const/16 v3, -0x3e

    if-lt v11, v3, :cond_2b4

    .line 57
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/p4;->k(B)Z

    move-result v3

    if-nez v3, :cond_2b4

    and-int/lit8 v3, v11, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v3, v8

    int-to-char v3, v3

    .line 58
    aput-char v3, v5, v7

    move/from16 v7, v17

    move/from16 v3, v21

    goto :goto_269

    .line 59
    :cond_2b4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->a()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 60
    :cond_2b9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->a()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_2be
    const/16 v3, -0x10

    if-ge v11, v3, :cond_30f

    add-int/lit8 v3, v6, -0x1

    if-ge v8, v3, :cond_30a

    add-int/lit8 v3, v17, 0x2

    .line 61
    aget-byte v8, v1, v8

    add-int/lit8 v17, v17, 0x3

    aget-byte v3, v1, v3

    add-int/lit8 v22, v7, 0x1

    .line 62
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/p4;->k(B)Z

    move-result v23

    if-nez v23, :cond_305

    move/from16 v23, v3

    const/16 v3, -0x60

    move/from16 v24, v6

    const/16 v6, -0x20

    if-ne v11, v6, :cond_2e2

    if-lt v8, v3, :cond_305

    :cond_2e2
    const/16 v6, -0x13

    if-ne v11, v6, :cond_2e8

    if-ge v8, v3, :cond_305

    .line 63
    :cond_2e8
    invoke-static/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/p4;->k(B)Z

    move-result v3

    if-nez v3, :cond_305

    and-int/lit8 v3, v11, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v6, v8, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    and-int/lit8 v6, v23, 0x3f

    or-int/2addr v3, v6

    int-to-char v3, v3

    .line 64
    aput-char v3, v5, v7

    move/from16 v3, v17

    move/from16 v7, v22

    :goto_301
    move/from16 v6, v24

    goto/16 :goto_269

    .line 65
    :cond_305
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->a()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 66
    :cond_30a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->a()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_30f
    move/from16 v24, v6

    add-int/lit8 v6, v24, -0x2

    if-ge v8, v6, :cond_36c

    add-int/lit8 v3, v17, 0x2

    .line 67
    aget-byte v6, v1, v8

    add-int/lit8 v8, v17, 0x3

    aget-byte v3, v1, v3

    add-int/lit8 v17, v17, 0x4

    aget-byte v8, v1, v8

    add-int/lit8 v21, v7, 0x1

    .line 68
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/p4;->k(B)Z

    move-result v22

    if-nez v22, :cond_367

    shl-int/lit8 v22, v11, 0x1c

    add-int/lit8 v23, v6, 0x70

    add-int v23, v23, v22

    shr-int/lit8 v22, v23, 0x1e

    if-nez v22, :cond_367

    .line 69
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/p4;->k(B)Z

    move-result v22

    if-nez v22, :cond_367

    .line 70
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/p4;->k(B)Z

    move-result v22

    if-nez v22, :cond_367

    and-int/lit8 v11, v11, 0x7

    shl-int/lit8 v11, v11, 0x12

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v6, v11

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v6

    and-int/lit8 v6, v8, 0x3f

    or-int/2addr v3, v6

    ushr-int/lit8 v6, v3, 0xa

    const v8, 0xd7c0

    add-int/2addr v6, v8

    int-to-char v6, v6

    .line 71
    aput-char v6, v5, v7

    and-int/lit16 v3, v3, 0x3ff

    const v6, 0xdc00

    add-int/2addr v3, v6

    int-to-char v3, v3

    .line 72
    aput-char v3, v5, v21

    add-int/lit8 v7, v7, 0x2

    move/from16 v3, v17

    goto :goto_301

    .line 73
    :cond_367
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->a()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 74
    :cond_36c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->a()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_371
    move/from16 v24, v6

    .line 75
    new-instance v3, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v3, v5, v11, v7}, Ljava/lang/String;-><init>([CII)V

    .line 76
    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    move/from16 v3, v24

    goto :goto_3c0

    :cond_37e
    const/4 v11, 0x0

    .line 77
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v1, v1

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v11

    aput-object v3, v5, v26

    const/16 v28, 0x2

    aput-object v4, v5, v28

    const-string v1, "buffer length=%d, index=%d, size=%d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_3a3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->b()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_3a8
    const/4 v11, 0x0

    .line 80
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v3

    .line 81
    iget v5, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ltz v5, :cond_3d2

    if-nez v5, :cond_3b6

    .line 82
    iput-object v6, v2, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    goto :goto_3c0

    .line 83
    :cond_3b6
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v3, v5, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, v2, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    add-int/2addr v3, v5

    .line 84
    :goto_3c0
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    invoke-virtual {v4, v9, v14, v15, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_3c5
    or-int v14, v20, v27

    move v5, v3

    move-object v3, v1

    move-object v1, v4

    move v4, v5

    move/from16 v15, p3

    move/from16 v5, p4

    move-object v6, v2

    goto/16 :goto_20b

    .line 85
    :cond_3d2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->b()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_3d7
    move-object v15, v1

    move-object v7, v2

    move-object v14, v4

    move-object v1, v9

    const/16 v18, 0x0

    :goto_3dd
    move v9, v3

    goto/16 :goto_525

    :pswitch_3e0
    move-object v4, v1

    move-object v9, v2

    move v13, v3

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-object/from16 v2, p6

    move/from16 p3, v15

    move-wide/from16 v31, v20

    move/from16 v20, v14

    move-wide/from16 v14, v31

    if-nez v11, :cond_40c

    .line 86
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v3

    .line 87
    iget-wide v5, v2, Lcom/google/android/gms/internal/measurement/m5;->b:J

    cmp-long v5, v5, v22

    if-eqz v5, :cond_404

    move/from16 v5, v26

    goto :goto_406

    :cond_404
    move/from16 v5, v18

    .line 88
    :goto_406
    sget-object v6, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    invoke-virtual {v6, v9, v14, v15, v5}, Lcom/google/android/gms/internal/measurement/e7;->g(Ljava/lang/Object;JZ)V

    goto :goto_3c5

    :cond_40c
    move-object v15, v1

    move-object v7, v2

    move-object v14, v4

    move-object v1, v9

    goto :goto_3dd

    :pswitch_411
    move-object v4, v1

    move-object v9, v2

    move v13, v3

    const/4 v5, 0x5

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-object/from16 v2, p6

    move/from16 p3, v15

    move-wide/from16 v31, v20

    move/from16 v20, v14

    move-wide/from16 v14, v31

    if-ne v11, v5, :cond_40c

    .line 89
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/w5;->k([BI)I

    move-result v5

    invoke-virtual {v4, v9, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v3, v3, 0x4

    goto :goto_3c5

    :pswitch_433
    move-object v4, v1

    move-object v9, v2

    move v13, v3

    move/from16 v5, v26

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-object/from16 v2, p6

    move/from16 p3, v15

    move-wide/from16 v31, v20

    move/from16 v20, v14

    move-wide/from16 v14, v31

    if-ne v11, v5, :cond_46f

    .line 90
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/w5;->n([BI)J

    move-result-wide v5

    move-object v7, v2

    move-object v2, v9

    move v9, v3

    move-wide/from16 v31, v14

    move-object v15, v1

    move-object v1, v4

    move-wide/from16 v3, v31

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v4, v9, 0x8

    or-int v14, v20, v27

    :goto_460
    move/from16 v5, p4

    move-object v6, v7

    :goto_463
    move v9, v12

    move v8, v13

    move-object v3, v15

    move/from16 v7, v29

    const v16, 0xfffff

    move/from16 v15, p3

    goto/16 :goto_1e

    :cond_46f
    move-object v15, v1

    move-object v7, v2

    move-object v2, v9

    move v9, v3

    move-object v1, v2

    move-object v14, v4

    goto/16 :goto_525

    :pswitch_477
    move/from16 v9, p3

    move-object/from16 v7, p6

    move v13, v3

    move/from16 p3, v15

    move-wide/from16 v3, v20

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v15, p2

    move/from16 v20, v14

    if-nez v11, :cond_cc

    .line 91
    invoke-static {v15, v9, v7}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v5

    .line 92
    iget v6, v7, Lcom/google/android/gms/internal/measurement/m5;->a:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v14, v20, v27

    move v4, v5

    move-object v6, v7

    move v9, v12

    move v8, v13

    move-object v3, v15

    move/from16 v7, v29

    const v16, 0xfffff

    move/from16 v15, p3

    move/from16 v5, p4

    goto/16 :goto_1e

    :pswitch_4a5
    move/from16 v9, p3

    move-object/from16 v7, p6

    move v13, v3

    move/from16 p3, v15

    move-wide/from16 v3, v20

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v15, p2

    move/from16 v20, v14

    if-nez v11, :cond_cc

    .line 93
    invoke-static {v15, v9, v7}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v8

    .line 94
    iget-wide v5, v7, Lcom/google/android/gms/internal/measurement/m5;->b:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v14, v1

    or-int v1, v20, v27

    move-object v3, v14

    move v14, v1

    move-object v1, v3

    move/from16 v5, p4

    move-object v6, v7

    move v4, v8

    goto :goto_463

    :pswitch_4cc
    move/from16 v9, p3

    move-object/from16 v7, p6

    move v13, v3

    move/from16 p3, v15

    move-wide/from16 v3, v20

    const/4 v5, 0x5

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v15, p2

    move/from16 v20, v14

    move-object v14, v1

    if-ne v11, v5, :cond_cd

    .line 95
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/measurement/w5;->k([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 96
    sget-object v5, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    invoke-virtual {v5, v2, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/e7;->d(Ljava/lang/Object;JF)V

    add-int/lit8 v4, v9, 0x4

    or-int v1, v20, v27

    move-object v3, v14

    move v14, v1

    move-object v1, v3

    goto/16 :goto_460

    :pswitch_4f7
    move/from16 v9, p3

    move-object/from16 v7, p6

    move v13, v3

    move/from16 p3, v15

    move-wide/from16 v3, v20

    move/from16 v5, v26

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v15, p2

    move/from16 v20, v14

    move-object v14, v1

    if-ne v11, v5, :cond_cd

    .line 97
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/measurement/w5;->n([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 98
    sget-object v1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/e7;->c(Ljava/lang/Object;JD)V

    move-object v1, v2

    add-int/lit8 v4, v9, 0x8

    or-int v2, v20, v27

    move v3, v2

    move-object v2, v1

    move-object v1, v14

    move v14, v3

    goto/16 :goto_460

    :goto_525
    move/from16 v0, v20

    move-object/from16 v20, v14

    move v14, v0

    move/from16 v0, p5

    move-object v10, v7

    move v3, v9

    move/from16 v21, v12

    move/from16 v17, v13

    move/from16 v13, v29

    move-object v12, v1

    move-object v9, v8

    move/from16 v8, p3

    goto/16 :goto_edb

    :cond_53a
    move-object v12, v1

    move-object v1, v2

    move/from16 v29, v13

    const/16 v18, 0x0

    const/16 v19, -0x1

    move v13, v3

    move-wide/from16 v2, v20

    move/from16 v20, p3

    move/from16 p3, v15

    move-object/from16 v15, p2

    const/16 v5, 0x1b

    move/from16 v21, v9

    if-ne v4, v5, :cond_5ab

    const/4 v5, 0x2

    if-ne v11, v5, :cond_599

    .line 99
    invoke-virtual {v12, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/j6;

    .line 100
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/j5;

    .line 101
    iget-boolean v5, v5, Lcom/google/android/gms/internal/measurement/j5;->a:Z

    if-nez v5, :cond_573

    .line 102
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_56a

    const/16 v9, 0xa

    goto :goto_56c

    :cond_56a
    shl-int/lit8 v9, v5, 0x1

    .line 103
    :goto_56c
    invoke-interface {v4, v9}, Lcom/google/android/gms/internal/measurement/j6;->zza(I)Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v4

    .line 104
    invoke-virtual {v12, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_573
    move-object v6, v4

    .line 105
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    move-result-object v1

    move/from16 v2, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v3, v15

    move/from16 v4, v20

    move-object/from16 v15, p1

    .line 106
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/w5;->j(Lcom/google/android/gms/internal/measurement/b7;I[BIILcom/google/android/gms/internal/measurement/j6;Lcom/google/android/gms/internal/measurement/m5;)I

    move-result v4

    move v1, v2

    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v8, v13

    move-object v2, v15

    move/from16 v9, v21

    move/from16 v7, v29

    const v16, 0xfffff

    move v15, v1

    move-object v1, v12

    goto/16 :goto_1e

    :cond_599
    move-object v15, v1

    move/from16 v9, p3

    move/from16 v5, p4

    move-object/from16 v1, p6

    move/from16 v27, v14

    move/from16 v10, v20

    move-object/from16 v20, v12

    move-object v12, v15

    move-object/from16 v15, p2

    goto/16 :goto_c6b

    :cond_5ab
    move-object v15, v1

    move/from16 v1, p3

    const/16 v5, 0x31

    if-gt v4, v5, :cond_c17

    int-to-long v9, v7

    .line 107
    sget-object v5, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    invoke-virtual {v5, v15, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/j6;

    move/from16 v27, v1

    .line 108
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/measurement/j5;

    .line 109
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/j5;->a:Z

    if-nez v1, :cond_5d3

    .line 110
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/16 v26, 0x1

    shl-int/lit8 v1, v1, 0x1

    .line 111
    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/measurement/j6;->zza(I)Lcom/google/android/gms/internal/measurement/j6;

    move-result-object v7

    .line 112
    invoke-virtual {v5, v15, v2, v3, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_5d3
    move-object v5, v7

    packed-switch v4, :pswitch_data_fcc

    :cond_5d7
    move-object/from16 v15, p2

    move/from16 v5, p4

    move-object/from16 v1, p6

    move/from16 v10, v20

    move/from16 v9, v27

    :goto_5e1
    move-object/from16 v20, v12

    move/from16 v27, v14

    goto/16 :goto_be0

    :pswitch_5e7
    const/4 v4, 0x3

    if-ne v11, v4, :cond_5d7

    .line 113
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    move-result-object v2

    and-int/lit8 v1, v27, -0x8

    or-int/lit8 v6, v1, 0x4

    .line 114
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/b7;->zza()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v1

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move-object v10, v5

    move/from16 v4, v20

    move/from16 v9, v27

    move/from16 v5, p4

    .line 115
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/w5;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;[BIIILcom/google/android/gms/internal/measurement/m5;)I

    move-result v11

    .line 116
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/b7;->c(Ljava/lang/Object;)V

    .line 117
    iput-object v1, v7, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    .line 118
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_60d
    if-ge v11, v5, :cond_632

    move/from16 v20, v4

    .line 119
    invoke-static {v3, v11, v7}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v4

    .line 120
    iget v1, v7, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ne v9, v1, :cond_630

    .line 121
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/b7;->zza()Lcom/google/android/gms/internal/measurement/z5;

    move-result-object v1

    .line 122
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/w5;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;[BIIILcom/google/android/gms/internal/measurement/m5;)I

    move-result v11

    move-object v4, v1

    move v1, v6

    move-object v6, v7

    .line 123
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/b7;->c(Ljava/lang/Object;)V

    .line 124
    iput-object v4, v6, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    .line 125
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, v20

    move v6, v1

    goto :goto_60d

    :cond_630
    move/from16 v4, v20

    :cond_632
    move-object v6, v7

    move-object v15, v3

    move v10, v4

    move-object v1, v6

    move v4, v11

    move-object/from16 v20, v12

    move/from16 v27, v14

    goto/16 :goto_be1

    :pswitch_63d
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object v10, v5

    move/from16 v4, v20

    move/from16 v9, v27

    const/4 v7, 0x2

    move/from16 v5, p4

    if-ne v11, v7, :cond_676

    .line 126
    move-object v1, v10

    check-cast v1, Lcom/google/android/gms/internal/measurement/n6;

    .line 127
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 128
    iget v7, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    add-int/2addr v7, v2

    :goto_655
    if-ge v2, v7, :cond_665

    .line 129
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 130
    iget-wide v10, v6, Lcom/google/android/gms/internal/measurement/m5;->b:J

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/p4;->c(J)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/n6;->a(J)V

    goto :goto_655

    :cond_665
    if-ne v2, v7, :cond_671

    :cond_667
    :goto_667
    move-object v15, v3

    move v10, v4

    move-object v1, v6

    move-object/from16 v20, v12

    move/from16 v27, v14

    :goto_66e
    move v4, v2

    goto/16 :goto_be1

    .line 131
    :cond_671
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_676
    if-nez v11, :cond_6a0

    .line 132
    move-object v1, v10

    check-cast v1, Lcom/google/android/gms/internal/measurement/n6;

    .line 133
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 134
    iget-wide v10, v6, Lcom/google/android/gms/internal/measurement/m5;->b:J

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/p4;->c(J)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/n6;->a(J)V

    :goto_688
    if-ge v2, v5, :cond_667

    .line 135
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v7

    .line 136
    iget v10, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ne v9, v10, :cond_667

    .line 137
    invoke-static {v3, v7, v6}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 138
    iget-wide v10, v6, Lcom/google/android/gms/internal/measurement/m5;->b:J

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/p4;->c(J)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/n6;->a(J)V

    goto :goto_688

    :cond_6a0
    move-object v15, v3

    move v10, v4

    move-object v1, v6

    goto/16 :goto_5e1

    :pswitch_6a5
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object v10, v5

    move/from16 v4, v20

    move/from16 v9, v27

    const/4 v7, 0x2

    move/from16 v5, p4

    if-ne v11, v7, :cond_6d5

    .line 139
    move-object v1, v10

    check-cast v1, Lcom/google/android/gms/internal/measurement/c6;

    .line 140
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 141
    iget v7, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    add-int/2addr v7, v2

    :goto_6bd
    if-ge v2, v7, :cond_6cd

    .line 142
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 143
    iget v10, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/p4;->b(I)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/measurement/c6;->c(I)V

    goto :goto_6bd

    :cond_6cd
    if-ne v2, v7, :cond_6d0

    goto :goto_667

    .line 144
    :cond_6d0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_6d5
    if-nez v11, :cond_6a0

    .line 145
    move-object v1, v10

    check-cast v1, Lcom/google/android/gms/internal/measurement/c6;

    .line 146
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 147
    iget v7, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/p4;->b(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/measurement/c6;->c(I)V

    :goto_6e7
    if-ge v2, v5, :cond_667

    .line 148
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v7

    .line 149
    iget v10, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ne v9, v10, :cond_667

    .line 150
    invoke-static {v3, v7, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 151
    iget v7, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/p4;->b(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/measurement/c6;->c(I)V

    goto :goto_6e7

    :pswitch_6ff
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object v10, v5

    move/from16 v4, v20

    move/from16 v9, v27

    const/4 v1, 0x2

    move/from16 v5, p4

    if-ne v11, v1, :cond_730

    .line 152
    move-object v1, v10

    check-cast v1, Lcom/google/android/gms/internal/measurement/c6;

    .line 153
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 154
    iget v11, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    add-int/2addr v11, v2

    :goto_717
    if-ge v2, v11, :cond_725

    .line 155
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    const/16 v17, 0x0

    .line 156
    iget v7, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/measurement/c6;->c(I)V

    goto :goto_717

    :cond_725
    const/16 v17, 0x0

    if-ne v2, v11, :cond_72b

    move v1, v9

    goto :goto_741

    .line 157
    :cond_72b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_730
    const/16 v17, 0x0

    if-nez v11, :cond_804

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v1, v9

    move-object v5, v10

    .line 158
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/w5;->a(I[BIILcom/google/android/gms/internal/measurement/j6;Lcom/google/android/gms/internal/measurement/m5;)I

    move-result v7

    move v5, v4

    move v4, v3

    move-object v3, v2

    move v2, v7

    .line 159
    :goto_741
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/u6;->A(I)Lcom/google/android/gms/internal/measurement/d6;

    move-result-object v7

    if-nez v7, :cond_74f

    move/from16 p3, v2

    move-object/from16 v20, v12

    move/from16 v27, v14

    goto/16 :goto_7fc

    :cond_74f
    if-eqz v10, :cond_7b8

    .line 160
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    move/from16 p3, v2

    move/from16 v2, v18

    move v11, v2

    :goto_75a
    if-ge v11, v9, :cond_7aa

    .line 161
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v27, v14

    move-object/from16 v14, v20

    check-cast v14, Ljava/lang/Integer;

    move-object/from16 v20, v12

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 162
    invoke-interface {v7, v12}, Lcom/google/android/gms/internal/measurement/d6;->zza(I)Z

    move-result v22

    if-eqz v22, :cond_77c

    if-eq v11, v2, :cond_777

    .line 163
    invoke-interface {v10, v2, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_777
    add-int/lit8 v2, v2, 0x1

    move/from16 v22, v11

    goto :goto_7a1

    :cond_77c
    if-nez v17, :cond_792

    .line 164
    move-object v14, v15

    check-cast v14, Lcom/google/android/gms/internal/measurement/z5;

    move/from16 v22, v11

    iget-object v11, v14, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    if-ne v11, v8, :cond_78d

    .line 165
    invoke-static {}, Lcom/google/android/gms/internal/measurement/c7;->e()Lcom/google/android/gms/internal/measurement/c7;

    move-result-object v11

    .line 166
    iput-object v11, v14, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    :cond_78d
    move-object/from16 v17, v11

    :goto_78f
    move-object/from16 v11, v17

    goto :goto_795

    :cond_792
    move/from16 v22, v11

    goto :goto_78f

    :goto_795
    int-to-long v14, v12

    shl-int/lit8 v12, v29, 0x3

    .line 167
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Lcom/google/android/gms/internal/measurement/c7;->c(ILjava/lang/Object;)V

    move-object/from16 v17, v11

    :goto_7a1
    add-int/lit8 v11, v22, 0x1

    move-object/from16 v15, p1

    move-object/from16 v12, v20

    move/from16 v14, v27

    goto :goto_75a

    :cond_7aa
    move-object/from16 v20, v12

    move/from16 v27, v14

    if-eq v2, v9, :cond_7fc

    .line 168
    invoke-interface {v10, v2, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_7fc

    :cond_7b8
    move/from16 p3, v2

    move-object/from16 v20, v12

    move/from16 v27, v14

    .line 169
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7c2
    :goto_7c2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7fc

    .line 170
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 171
    invoke-interface {v7, v9}, Lcom/google/android/gms/internal/measurement/d6;->zza(I)Z

    move-result v10

    if-nez v10, :cond_7c2

    if-nez v17, :cond_7ea

    .line 172
    move-object/from16 v10, p1

    check-cast v10, Lcom/google/android/gms/internal/measurement/z5;

    iget-object v11, v10, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    if-ne v11, v8, :cond_7e8

    .line 173
    invoke-static {}, Lcom/google/android/gms/internal/measurement/c7;->e()Lcom/google/android/gms/internal/measurement/c7;

    move-result-object v11

    .line 174
    iput-object v11, v10, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    :cond_7e8
    move-object/from16 v17, v11

    :cond_7ea
    move-object/from16 v10, v17

    int-to-long v11, v9

    shl-int/lit8 v9, v29, 0x3

    .line 175
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lcom/google/android/gms/internal/measurement/c7;->c(ILjava/lang/Object;)V

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move-object/from16 v17, v10

    goto :goto_7c2

    :cond_7fc
    :goto_7fc
    move v9, v1

    move-object v15, v3

    move v10, v4

    move-object v1, v6

    move/from16 v4, p3

    goto/16 :goto_be1

    :cond_804
    move-object/from16 v20, v12

    move/from16 v27, v14

    :goto_808
    move-object v15, v3

    move v10, v4

    move-object v1, v6

    goto/16 :goto_be0

    :pswitch_80d
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object v10, v5

    move/from16 v4, v20

    move/from16 v1, v27

    const/4 v7, 0x2

    move/from16 v5, p4

    move-object/from16 v20, v12

    move/from16 v27, v14

    if-ne v11, v7, :cond_87b

    .line 177
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 178
    iget v7, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ltz v7, :cond_876

    .line 179
    array-length v9, v3

    sub-int/2addr v9, v2

    if-gt v7, v9, :cond_871

    if-nez v7, :cond_833

    .line 180
    sget-object v7, Lcom/google/android/gms/internal/measurement/p5;->c:Lcom/google/android/gms/internal/measurement/p5;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83b

    .line 181
    :cond_833
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/measurement/p5;->c([BII)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_83a
    add-int/2addr v2, v7

    :goto_83b
    if-ge v2, v5, :cond_86b

    .line 182
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v7

    .line 183
    iget v9, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ne v1, v9, :cond_86b

    .line 184
    invoke-static {v3, v7, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 185
    iget v7, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ltz v7, :cond_866

    .line 186
    array-length v9, v3

    sub-int/2addr v9, v2

    if-gt v7, v9, :cond_861

    if-nez v7, :cond_859

    .line 187
    sget-object v7, Lcom/google/android/gms/internal/measurement/p5;->c:Lcom/google/android/gms/internal/measurement/p5;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83b

    .line 188
    :cond_859
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/measurement/p5;->c([BII)Lcom/google/android/gms/internal/measurement/p5;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83a

    .line 189
    :cond_861
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 190
    :cond_866
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->b()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_86b
    move v9, v1

    move-object v15, v3

    move v10, v4

    move-object v1, v6

    goto/16 :goto_66e

    .line 191
    :cond_871
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 192
    :cond_876
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->b()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_87b
    move v9, v1

    goto :goto_808

    :pswitch_87d
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object v10, v5

    move/from16 v4, v20

    move/from16 v1, v27

    const/4 v7, 0x2

    move/from16 v5, p4

    move-object/from16 v20, v12

    move/from16 v27, v14

    if-ne v11, v7, :cond_87b

    move v2, v1

    .line 193
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    move-result-object v1

    move-object v7, v6

    move-object v6, v10

    .line 194
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/w5;->j(Lcom/google/android/gms/internal/measurement/b7;I[BIILcom/google/android/gms/internal/measurement/j6;Lcom/google/android/gms/internal/measurement/m5;)I

    move-result v1

    move v6, v1

    move v9, v2

    move-object v15, v3

    move v10, v4

    move v4, v6

    move-object v1, v7

    goto/16 :goto_be1

    :pswitch_8a2
    move-object/from16 v3, p2

    move-object/from16 v2, p6

    move/from16 v4, v20

    move/from16 v1, v27

    const/4 v7, 0x2

    move-object/from16 v20, v12

    move/from16 v27, v14

    move-object v12, v5

    move/from16 v5, p4

    if-ne v11, v7, :cond_969

    const-wide/32 v14, 0x20000000

    and-long/2addr v9, v14

    cmp-long v7, v9, v22

    if-nez v7, :cond_909

    .line 195
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v7

    .line 196
    iget v9, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ltz v9, :cond_904

    if-nez v9, :cond_8ca

    .line 197
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8d5

    .line 198
    :cond_8ca
    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v10, v3, v7, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 199
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8d4
    add-int/2addr v7, v9

    :goto_8d5
    if-ge v7, v5, :cond_8fd

    .line 200
    invoke-static {v3, v7, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v9

    .line 201
    iget v10, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ne v1, v10, :cond_8fd

    .line 202
    invoke-static {v3, v9, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v7

    .line 203
    iget v9, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ltz v9, :cond_8f8

    if-nez v9, :cond_8ed

    .line 204
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8d5

    .line 205
    :cond_8ed
    new-instance v10, Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v10, v3, v7, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 206
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8d4

    .line 207
    :cond_8f8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->b()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_8fd
    :goto_8fd
    move v9, v1

    move-object v1, v2

    move-object v15, v3

    move v10, v4

    move v4, v7

    goto/16 :goto_be1

    .line 208
    :cond_904
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->b()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 209
    :cond_909
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v7

    .line 210
    iget v9, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ltz v9, :cond_964

    if-nez v9, :cond_917

    .line 211
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_92a

    :cond_917
    add-int v10, v7, v9

    .line 212
    invoke-static {v3, v7, v10}, Lcom/google/android/gms/internal/measurement/h7;->d([BII)Z

    move-result v11

    if-eqz v11, :cond_95f

    .line 213
    new-instance v11, Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v11, v3, v7, v9, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 214
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_929
    move v7, v10

    :goto_92a
    if-ge v7, v5, :cond_8fd

    .line 215
    invoke-static {v3, v7, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v9

    .line 216
    iget v10, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ne v1, v10, :cond_8fd

    .line 217
    invoke-static {v3, v9, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v7

    .line 218
    iget v9, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ltz v9, :cond_95a

    if-nez v9, :cond_942

    .line 219
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_92a

    :cond_942
    add-int v10, v7, v9

    .line 220
    invoke-static {v3, v7, v10}, Lcom/google/android/gms/internal/measurement/h7;->d([BII)Z

    move-result v11

    if-eqz v11, :cond_955

    .line 221
    new-instance v11, Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v11, v3, v7, v9, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 222
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_929

    .line 223
    :cond_955
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->a()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 224
    :cond_95a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->b()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 225
    :cond_95f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->a()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 226
    :cond_964
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->b()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_969
    :goto_969
    move v9, v1

    move-object v1, v2

    move-object v15, v3

    move v10, v4

    goto/16 :goto_be0

    :pswitch_96f
    move-object/from16 v3, p2

    move-object/from16 v2, p6

    move/from16 v4, v20

    move/from16 v1, v27

    const/4 v7, 0x2

    const/16 v17, 0x0

    move-object/from16 v20, v12

    move/from16 v27, v14

    move-object v12, v5

    move/from16 v5, p4

    if-ne v11, v7, :cond_9a6

    if-nez v12, :cond_9a0

    .line 227
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v6

    .line 228
    iget v7, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    add-int/2addr v7, v6

    if-lt v6, v7, :cond_99c

    if-ne v6, v7, :cond_997

    move v9, v1

    move-object v1, v2

    move-object v15, v3

    move v10, v4

    move v4, v6

    goto/16 :goto_be1

    .line 229
    :cond_997
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 230
    :cond_99c
    invoke-static {v3, v6, v2}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    .line 231
    throw v17

    .line 232
    :cond_9a0
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_9a6
    if-eqz v11, :cond_9a9

    goto :goto_969

    :cond_9a9
    if-nez v12, :cond_9af

    .line 233
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    .line 234
    throw v17

    .line 235
    :cond_9af
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :pswitch_9b5
    move-object/from16 v3, p2

    move-object/from16 v2, p6

    move/from16 v4, v20

    move/from16 v1, v27

    const/4 v7, 0x2

    move-object/from16 v20, v12

    move/from16 v27, v14

    move-object v12, v5

    move/from16 v5, p4

    if-ne v11, v7, :cond_a24

    .line 236
    move-object v6, v12

    check-cast v6, Lcom/google/android/gms/internal/measurement/c6;

    .line 237
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v7

    .line 238
    iget v9, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    add-int v10, v7, v9

    .line 239
    array-length v11, v3

    if-gt v10, v11, :cond_a1f

    .line 240
    iget v11, v6, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 241
    div-int/lit8 v9, v9, 0x4

    add-int/2addr v9, v11

    .line 242
    iget-object v11, v6, Lcom/google/android/gms/internal/measurement/c6;->b:[I

    array-length v12, v11

    if-gt v9, v12, :cond_9e0

    goto :goto_a0a

    .line 243
    :cond_9e0
    array-length v12, v11

    if-nez v12, :cond_9ee

    const/16 v12, 0xa

    .line 244
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [I

    iput-object v9, v6, Lcom/google/android/gms/internal/measurement/c6;->b:[I

    goto :goto_a0a

    :cond_9ee
    const/16 v12, 0xa

    .line 245
    array-length v11, v11

    :goto_9f1
    if-ge v11, v9, :cond_a02

    mul-int/lit8 v11, v11, 0x3

    const/16 v28, 0x2

    .line 246
    div-int/lit8 v11, v11, 0x2

    const/16 v26, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_9f1

    .line 247
    :cond_a02
    iget-object v9, v6, Lcom/google/android/gms/internal/measurement/c6;->b:[I

    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    iput-object v9, v6, Lcom/google/android/gms/internal/measurement/c6;->b:[I

    :goto_a0a
    if-ge v7, v10, :cond_a16

    .line 248
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/measurement/w5;->k([BI)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/c6;->c(I)V

    add-int/lit8 v7, v7, 0x4

    goto :goto_a0a

    :cond_a16
    if-ne v7, v10, :cond_a1a

    goto/16 :goto_8fd

    .line 249
    :cond_a1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 250
    :cond_a1f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_a24
    const/4 v6, 0x5

    if-ne v11, v6, :cond_969

    .line 251
    move-object v6, v12

    check-cast v6, Lcom/google/android/gms/internal/measurement/c6;

    .line 252
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/w5;->k([BI)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/c6;->c(I)V

    add-int/lit8 v7, v4, 0x4

    :goto_a33
    if-ge v7, v5, :cond_8fd

    .line 253
    invoke-static {v3, v7, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v9

    .line 254
    iget v10, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ne v1, v10, :cond_8fd

    .line 255
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/w5;->k([BI)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/c6;->c(I)V

    add-int/lit8 v7, v9, 0x4

    goto :goto_a33

    :pswitch_a47
    move-object/from16 v3, p2

    move-object/from16 v2, p6

    move/from16 v4, v20

    move/from16 v1, v27

    const/4 v7, 0x2

    move-object/from16 v20, v12

    move/from16 v27, v14

    move-object v12, v5

    move/from16 v5, p4

    if-ne v11, v7, :cond_ab6

    .line 256
    move-object v6, v12

    check-cast v6, Lcom/google/android/gms/internal/measurement/n6;

    .line 257
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v7

    .line 258
    iget v9, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    add-int v10, v7, v9

    .line 259
    array-length v11, v3

    if-gt v10, v11, :cond_ab1

    .line 260
    iget v11, v6, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 261
    div-int/lit8 v9, v9, 0x8

    add-int/2addr v9, v11

    .line 262
    iget-object v11, v6, Lcom/google/android/gms/internal/measurement/n6;->b:[J

    array-length v12, v11

    if-gt v9, v12, :cond_a72

    goto :goto_a9c

    .line 263
    :cond_a72
    array-length v12, v11

    if-nez v12, :cond_a80

    const/16 v12, 0xa

    .line 264
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [J

    iput-object v9, v6, Lcom/google/android/gms/internal/measurement/n6;->b:[J

    goto :goto_a9c

    :cond_a80
    const/16 v12, 0xa

    .line 265
    array-length v11, v11

    :goto_a83
    if-ge v11, v9, :cond_a94

    mul-int/lit8 v11, v11, 0x3

    const/16 v28, 0x2

    .line 266
    div-int/lit8 v11, v11, 0x2

    const/16 v26, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_a83

    .line 267
    :cond_a94
    iget-object v9, v6, Lcom/google/android/gms/internal/measurement/n6;->b:[J

    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    iput-object v9, v6, Lcom/google/android/gms/internal/measurement/n6;->b:[J

    :goto_a9c
    if-ge v7, v10, :cond_aa8

    .line 268
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/measurement/w5;->n([BI)J

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/internal/measurement/n6;->a(J)V

    add-int/lit8 v7, v7, 0x8

    goto :goto_a9c

    :cond_aa8
    if-ne v7, v10, :cond_aac

    goto/16 :goto_8fd

    .line 269
    :cond_aac
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 270
    :cond_ab1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_ab6
    const/4 v6, 0x1

    if-ne v11, v6, :cond_969

    .line 271
    move-object v6, v12

    check-cast v6, Lcom/google/android/gms/internal/measurement/n6;

    .line 272
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/w5;->n([BI)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/internal/measurement/n6;->a(J)V

    add-int/lit8 v7, v4, 0x8

    :goto_ac5
    if-ge v7, v5, :cond_8fd

    .line 273
    invoke-static {v3, v7, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v9

    .line 274
    iget v10, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ne v1, v10, :cond_8fd

    .line 275
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/w5;->n([BI)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/measurement/n6;->a(J)V

    add-int/lit8 v7, v9, 0x8

    goto :goto_ac5

    :pswitch_ad9
    move-object/from16 v3, p2

    move-object/from16 v2, p6

    move/from16 v4, v20

    move/from16 v1, v27

    const/4 v7, 0x2

    move-object/from16 v20, v12

    move/from16 v27, v14

    move-object v12, v5

    move/from16 v5, p4

    if-ne v11, v7, :cond_b0a

    .line 276
    move-object v6, v12

    check-cast v6, Lcom/google/android/gms/internal/measurement/c6;

    .line 277
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v7

    .line 278
    iget v9, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    add-int/2addr v9, v7

    :goto_af5
    if-ge v7, v9, :cond_b01

    .line 279
    invoke-static {v3, v7, v2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v7

    .line 280
    iget v10, v2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/measurement/c6;->c(I)V

    goto :goto_af5

    :cond_b01
    if-ne v7, v9, :cond_b05

    goto/16 :goto_8fd

    .line 281
    :cond_b05
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_b0a
    if-nez v11, :cond_969

    move-object v6, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v12

    .line 282
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/w5;->a(I[BIILcom/google/android/gms/internal/measurement/j6;Lcom/google/android/gms/internal/measurement/m5;)I

    move-result v5

    move v9, v1

    move-object v15, v2

    move v10, v3

    move v2, v5

    move-object v1, v6

    move v5, v4

    goto/16 :goto_66e

    :pswitch_b1d
    move-object/from16 v15, p2

    move-object/from16 v1, p6

    move/from16 v10, v20

    move/from16 v9, v27

    const/4 v7, 0x2

    move-object/from16 v20, v12

    move/from16 v27, v14

    move-object v12, v5

    move/from16 v5, p4

    if-ne v11, v7, :cond_b4f

    .line 283
    move-object v2, v12

    check-cast v2, Lcom/google/android/gms/internal/measurement/n6;

    .line 284
    invoke-static {v15, v10, v1}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v3

    .line 285
    iget v4, v1, Lcom/google/android/gms/internal/measurement/m5;->a:I

    add-int/2addr v4, v3

    :goto_b39
    if-ge v3, v4, :cond_b45

    .line 286
    invoke-static {v15, v3, v1}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v3

    .line 287
    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/m5;->b:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/n6;->a(J)V

    goto :goto_b39

    :cond_b45
    if-ne v3, v4, :cond_b4a

    :cond_b47
    move v4, v3

    goto/16 :goto_be1

    .line 288
    :cond_b4a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    :cond_b4f
    if-nez v11, :cond_be0

    .line 289
    move-object v2, v12

    check-cast v2, Lcom/google/android/gms/internal/measurement/n6;

    .line 290
    invoke-static {v15, v10, v1}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v3

    .line 291
    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/m5;->b:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/n6;->a(J)V

    :goto_b5d
    if-ge v3, v5, :cond_b47

    .line 292
    invoke-static {v15, v3, v1}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v4

    .line 293
    iget v6, v1, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-ne v9, v6, :cond_b47

    .line 294
    invoke-static {v15, v4, v1}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v3

    .line 295
    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/m5;->b:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/n6;->a(J)V

    goto :goto_b5d

    :pswitch_b71
    move-object/from16 v15, p2

    move-object/from16 v1, p6

    move/from16 v10, v20

    move/from16 v9, v27

    const/4 v7, 0x2

    const/16 v17, 0x0

    move-object/from16 v20, v12

    move/from16 v27, v14

    move-object v12, v5

    move/from16 v5, p4

    if-ne v11, v7, :cond_b9d

    if-nez v12, :cond_b97

    .line 296
    invoke-static {v15, v10, v1}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 297
    iget v1, v1, Lcom/google/android/gms/internal/measurement/m5;->a:I

    add-int/2addr v2, v1

    .line 298
    array-length v1, v15

    if-le v2, v1, :cond_b96

    .line 299
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 300
    :cond_b96
    throw v17

    .line 301
    :cond_b97
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_b9d
    const/4 v6, 0x5

    if-eq v11, v6, :cond_ba1

    goto :goto_be0

    :cond_ba1
    if-nez v12, :cond_bab

    .line 302
    invoke-static {v15, v10}, Lcom/google/android/gms/internal/measurement/w5;->k([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 303
    throw v17

    .line 304
    :cond_bab
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :pswitch_bb1
    move-object/from16 v15, p2

    move-object/from16 v1, p6

    move/from16 v10, v20

    move/from16 v9, v27

    const/4 v7, 0x2

    const/16 v17, 0x0

    move-object/from16 v20, v12

    move/from16 v27, v14

    move-object v12, v5

    move/from16 v5, p4

    if-ne v11, v7, :cond_bdd

    if-nez v12, :cond_bd7

    .line 305
    invoke-static {v15, v10, v1}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    .line 306
    iget v1, v1, Lcom/google/android/gms/internal/measurement/m5;->a:I

    add-int/2addr v2, v1

    .line 307
    array-length v1, v15

    if-le v2, v1, :cond_bd6

    .line 308
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 309
    :cond_bd6
    throw v17

    .line 310
    :cond_bd7
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_bdd
    const/4 v6, 0x1

    if-eq v11, v6, :cond_c07

    :cond_be0
    :goto_be0
    move v4, v10

    :goto_be1
    if-ne v4, v10, :cond_bf4

    move v0, v9

    move-object v9, v8

    move v8, v0

    move-object/from16 v12, p1

    move/from16 v0, p5

    move-object v10, v1

    move v3, v4

    move/from16 v17, v13

    move/from16 v14, v27

    move/from16 v13, v29

    goto/16 :goto_edb

    :cond_bf4
    move-object/from16 v2, p1

    move-object v6, v1

    move v8, v13

    move-object v3, v15

    move-object/from16 v1, v20

    move/from16 v14, v27

    move/from16 v7, v29

    const v16, 0xfffff

    move v15, v9

    move/from16 v9, v21

    goto/16 :goto_1e

    :cond_c07
    if-nez v12, :cond_c11

    .line 311
    invoke-static {v15, v10}, Lcom/google/android/gms/internal/measurement/w5;->n([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 312
    throw v17

    .line 313
    :cond_c11
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_c17
    move-object/from16 v15, p2

    move/from16 v5, p4

    move v9, v1

    move/from16 v27, v14

    move/from16 v10, v20

    move-object/from16 v1, p6

    move-object/from16 v20, v12

    const/16 v12, 0x32

    if-ne v4, v12, :cond_c7a

    const/4 v12, 0x2

    if-ne v11, v12, :cond_c69

    .line 314
    sget-object v1, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 315
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/u6;->C(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v12, p1

    .line 316
    invoke-virtual {v1, v12, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 317
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/q6;

    .line 318
    iget-boolean v6, v6, Lcom/google/android/gms/internal/measurement/q6;->a:Z

    if-nez v6, :cond_c5b

    .line 319
    sget-object v6, Lcom/google/android/gms/internal/measurement/q6;->b:Lcom/google/android/gms/internal/measurement/q6;

    .line 320
    invoke-virtual {v6}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c4c

    .line 321
    new-instance v6, Lcom/google/android/gms/internal/measurement/q6;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/q6;-><init>()V

    goto :goto_c55

    :cond_c4c
    new-instance v7, Lcom/google/android/gms/internal/measurement/q6;

    .line 322
    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 v6, 0x1

    .line 323
    iput-boolean v6, v7, Lcom/google/android/gms/internal/measurement/q6;->a:Z

    move-object v6, v7

    .line 324
    :goto_c55
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/measurement/w5;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q6;

    .line 325
    invoke-virtual {v1, v12, v2, v3, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_c5b
    if-nez v4, :cond_c63

    .line 326
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v1

    .line 327
    :cond_c63
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_c69
    move-object/from16 v12, p1

    :goto_c6b
    move v0, v9

    move-object v9, v8

    move v8, v0

    move/from16 v0, p5

    move v3, v10

    move/from16 v17, v13

    move/from16 v14, v27

    move/from16 v13, v29

    move-object v10, v1

    goto/16 :goto_edb

    :cond_c7a
    move-object/from16 v12, p1

    .line 328
    sget-object v14, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    add-int/lit8 v30, v13, 0x2

    .line 329
    aget v30, v25, v30

    const v16, 0xfffff

    and-int v1, v30, v16

    move/from16 p3, v4

    int-to-long v4, v1

    packed-switch p3, :pswitch_data_1010

    :cond_c8d
    move v7, v9

    move-object v9, v8

    move v8, v7

    move v7, v10

    move/from16 v17, v13

    move/from16 v13, v29

    move-object/from16 v10, p6

    goto/16 :goto_ed3

    :pswitch_c99
    const/4 v4, 0x3

    if-ne v11, v4, :cond_c8d

    move/from16 v11, v29

    .line 330
    invoke-virtual {v0, v12, v11, v13}, Lcom/google/android/gms/internal/measurement/u6;->m(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    and-int/lit8 v2, v9, -0x8

    or-int/lit8 v6, v2, 0x4

    .line 331
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    move-result-object v2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v10

    move-object v3, v15

    .line 332
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/w5;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;[BIIILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    move-object v6, v7

    .line 333
    invoke-virtual {v0, v11, v13, v12, v1}, Lcom/google/android/gms/internal/measurement/u6;->o(IILjava/lang/Object;Ljava/lang/Object;)V

    move v4, v9

    move-object v9, v8

    move v8, v4

    move v4, v2

    move v7, v10

    move/from16 v17, v13

    move-object v10, v6

    move v13, v11

    goto/16 :goto_ed4

    :pswitch_cc3
    move-object/from16 v6, p6

    move/from16 v7, v29

    if-nez v11, :cond_ced

    .line 334
    invoke-static {v15, v10, v6}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v1

    move-object/from16 p3, v8

    move/from16 v17, v9

    .line 335
    iget-wide v8, v6, Lcom/google/android/gms/internal/measurement/m5;->b:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/p4;->c(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v14, v12, v2, v3, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 336
    invoke-virtual {v14, v12, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_ce1
    move-object/from16 v9, p3

    move v4, v1

    move/from16 v8, v17

    :goto_ce6
    move/from16 v17, v13

    move v13, v7

    move v7, v10

    move-object v10, v6

    goto/16 :goto_ed4

    :cond_ced
    move/from16 v17, v9

    move-object v9, v8

    :goto_cf0
    move/from16 v8, v17

    :cond_cf2
    move/from16 v17, v13

    move v13, v7

    move v7, v10

    move-object v10, v6

    goto/16 :goto_ed3

    :pswitch_cf9
    move-object/from16 v6, p6

    move-object/from16 p3, v8

    move/from16 v17, v9

    move/from16 v7, v29

    if-nez v11, :cond_d18

    .line 337
    invoke-static {v15, v10, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v1

    .line 338
    iget v8, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/p4;->b(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v12, v2, v3, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 339
    invoke-virtual {v14, v12, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_ce1

    :cond_d18
    move-object/from16 v9, p3

    goto :goto_cf0

    :pswitch_d1b
    move-object/from16 v6, p6

    move-object/from16 p3, v8

    move/from16 v17, v9

    move/from16 v7, v29

    if-nez v11, :cond_d18

    .line 340
    invoke-static {v15, v10, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v1

    .line 341
    iget v8, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 342
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/u6;->A(I)Lcom/google/android/gms/internal/measurement/d6;

    move-result-object v9

    if-eqz v9, :cond_d37

    .line 343
    invoke-interface {v9, v8}, Lcom/google/android/gms/internal/measurement/d6;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_d3c

    :cond_d37
    move-object/from16 v9, p3

    move/from16 v11, v17

    goto :goto_d56

    .line 344
    :cond_d3c
    move-object v2, v12

    check-cast v2, Lcom/google/android/gms/internal/measurement/z5;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    move-object/from16 v9, p3

    if-ne v3, v9, :cond_d4b

    .line 345
    invoke-static {}, Lcom/google/android/gms/internal/measurement/c7;->e()Lcom/google/android/gms/internal/measurement/c7;

    move-result-object v3

    .line 346
    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    :cond_d4b
    int-to-long v4, v8

    .line 347
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v11, v17

    invoke-virtual {v3, v11, v2}, Lcom/google/android/gms/internal/measurement/c7;->c(ILjava/lang/Object;)V

    goto :goto_d60

    .line 348
    :goto_d56
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v12, v2, v3, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 349
    invoke-virtual {v14, v12, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_d60
    move v4, v1

    move v8, v11

    goto :goto_ce6

    :pswitch_d63
    move v1, v9

    move-object v9, v8

    move v8, v1

    move-object/from16 v6, p6

    move/from16 v7, v29

    const/4 v1, 0x2

    if-ne v11, v1, :cond_cf2

    .line 350
    invoke-static {v15, v10, v6}, Lcom/google/android/gms/internal/measurement/w5;->f([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v1

    .line 351
    iget-object v11, v6, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    invoke-virtual {v14, v12, v2, v3, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 352
    invoke-virtual {v14, v12, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v4, v1

    goto/16 :goto_ce6

    :pswitch_d7c
    move v1, v9

    move-object v9, v8

    move v8, v1

    move-object/from16 v6, p6

    move/from16 v7, v29

    const/4 v1, 0x2

    if-ne v11, v1, :cond_da1

    .line 353
    invoke-virtual {v0, v12, v7, v13}, Lcom/google/android/gms/internal/measurement/u6;->m(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 354
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    move-result-object v2

    move/from16 v5, p4

    move v4, v10

    move-object v3, v15

    .line 355
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/w5;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;[BIILcom/google/android/gms/internal/measurement/m5;)I

    move-result v2

    move-object v10, v6

    .line 356
    invoke-virtual {v0, v7, v13, v12, v1}, Lcom/google/android/gms/internal/measurement/u6;->o(IILjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v17, v13

    move v13, v7

    move v7, v4

    move v4, v2

    goto/16 :goto_ed4

    :cond_da1
    move v4, v10

    move-object v10, v6

    move/from16 v17, v13

    move v13, v7

    move v7, v4

    goto/16 :goto_ed3

    :pswitch_da9
    move/from16 p3, v9

    move-object v9, v8

    move/from16 v8, p3

    move/from16 p3, v7

    move v7, v10

    move/from16 v17, v13

    move/from16 v13, v29

    const/4 v1, 0x2

    move-object/from16 v10, p6

    if-ne v11, v1, :cond_ed3

    .line 357
    invoke-static {v15, v7, v10}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v1

    .line 358
    iget v11, v10, Lcom/google/android/gms/internal/measurement/m5;->a:I

    if-nez v11, :cond_dc6

    .line 359
    invoke-virtual {v14, v12, v2, v3, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_de3

    :cond_dc6
    and-int v6, p3, v24

    if-eqz v6, :cond_dd8

    add-int v6, v1, v11

    .line 360
    invoke-static {v15, v1, v6}, Lcom/google/android/gms/internal/measurement/h7;->d([BII)Z

    move-result v6

    if-eqz v6, :cond_dd3

    goto :goto_dd8

    .line 361
    :cond_dd3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->a()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v1

    throw v1

    .line 362
    :cond_dd8
    :goto_dd8
    new-instance v6, Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v15, v1, v11, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 363
    invoke-virtual {v14, v12, v2, v3, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v1, v11

    .line 364
    :goto_de3
    invoke-virtual {v14, v12, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v4, v1

    goto/16 :goto_ed4

    :pswitch_de9
    move v7, v9

    move-object v9, v8

    move v8, v7

    move v7, v10

    move/from16 v17, v13

    move/from16 v13, v29

    move-object/from16 v10, p6

    if-nez v11, :cond_ed3

    .line 365
    invoke-static {v15, v7, v10}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v0

    move/from16 p3, v0

    .line 366
    iget-wide v0, v10, Lcom/google/android/gms/internal/measurement/m5;->b:J

    cmp-long v0, v0, v22

    if-eqz v0, :cond_e04

    const/16 v26, 0x1

    goto :goto_e06

    :cond_e04
    move/from16 v26, v18

    :goto_e06
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v14, v12, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 367
    invoke-virtual {v14, v12, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_e10
    move/from16 v4, p3

    goto/16 :goto_ed4

    :pswitch_e14
    move v6, v9

    move-object v9, v8

    move v8, v6

    move v7, v10

    move/from16 v17, v13

    move/from16 v13, v29

    const/4 v6, 0x5

    move-object/from16 v10, p6

    if-ne v11, v6, :cond_ed3

    .line 368
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/measurement/w5;->k([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v12, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v7, 0x4

    .line 369
    invoke-virtual {v14, v12, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_e31
    move v4, v0

    goto/16 :goto_ed4

    :pswitch_e34
    move v6, v9

    move-object v9, v8

    move v8, v6

    move v7, v10

    move/from16 v17, v13

    move/from16 v13, v29

    const/4 v6, 0x1

    move-object/from16 v10, p6

    if-ne v11, v6, :cond_ed3

    .line 370
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/measurement/w5;->n([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v12, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v7, 0x8

    .line 371
    invoke-virtual {v14, v12, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_e31

    :pswitch_e52
    move v7, v9

    move-object v9, v8

    move v8, v7

    move v7, v10

    move/from16 v17, v13

    move/from16 v13, v29

    move-object/from16 v10, p6

    if-nez v11, :cond_ed3

    .line 372
    invoke-static {v15, v7, v10}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v0

    .line 373
    iget v1, v10, Lcom/google/android/gms/internal/measurement/m5;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v12, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 374
    invoke-virtual {v14, v12, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_e31

    :pswitch_e6f
    move v7, v9

    move-object v9, v8

    move v8, v7

    move v7, v10

    move/from16 v17, v13

    move/from16 v13, v29

    move-object/from16 v10, p6

    if-nez v11, :cond_ed3

    .line 375
    invoke-static {v15, v7, v10}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    move-result v0

    move/from16 p3, v0

    .line 376
    iget-wide v0, v10, Lcom/google/android/gms/internal/measurement/m5;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v12, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 377
    invoke-virtual {v14, v12, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_e10

    :pswitch_e8e
    move v6, v9

    move-object v9, v8

    move v8, v6

    move v7, v10

    move/from16 v17, v13

    move/from16 v13, v29

    const/4 v6, 0x5

    move-object/from16 v10, p6

    if-ne v11, v6, :cond_ed3

    .line 378
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/measurement/w5;->k([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 379
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v14, v12, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v7, 0x4

    .line 380
    invoke-virtual {v14, v12, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_e31

    :pswitch_eb0
    move v6, v9

    move-object v9, v8

    move v8, v6

    move v7, v10

    move/from16 v17, v13

    move/from16 v13, v29

    const/4 v6, 0x1

    move-object/from16 v10, p6

    if-ne v11, v6, :cond_ed3

    .line 381
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/measurement/w5;->n([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 382
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v14, v12, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v7, 0x8

    .line 383
    invoke-virtual {v14, v12, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_e31

    :cond_ed3
    :goto_ed3
    move v4, v7

    :goto_ed4
    move/from16 v0, p5

    if-ne v4, v7, :cond_f19

    move v3, v4

    move/from16 v14, v27

    :goto_edb
    if-ne v8, v0, :cond_eec

    if-nez v0, :cond_ee0

    goto :goto_eec

    :cond_ee0
    move/from16 v5, p4

    move v4, v3

    move v15, v8

    move-object v2, v12

    move/from16 v9, v21

    :goto_ee7
    const v12, 0xfffff

    goto/16 :goto_f3a

    .line 384
    :cond_eec
    :goto_eec
    move-object v1, v12

    check-cast v1, Lcom/google/android/gms/internal/measurement/z5;

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    if-ne v2, v9, :cond_ef9

    .line 385
    invoke-static {}, Lcom/google/android/gms/internal/measurement/c7;->e()Lcom/google/android/gms/internal/measurement/c7;

    move-result-object v2

    .line 386
    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    :cond_ef9
    move/from16 v4, p4

    move-object v5, v2

    move v1, v8

    move-object v6, v10

    move-object v2, v15

    .line 387
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/w5;->b(I[BIILcom/google/android/gms/internal/measurement/c7;Lcom/google/android/gms/internal/measurement/m5;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v6, p6

    move v15, v1

    move v5, v4

    move-object v2, v12

    move v7, v13

    move/from16 v8, v17

    move-object/from16 v1, v20

    move/from16 v9, v21

    const v16, 0xfffff

    move v4, v3

    move-object/from16 v3, p2

    goto/16 :goto_1e

    :cond_f19
    move v1, v8

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move v15, v1

    move-object v2, v12

    move v7, v13

    move/from16 v8, v17

    move-object/from16 v1, v20

    move/from16 v9, v21

    move/from16 v14, v27

    goto/16 :goto_1b

    :cond_f2f
    move/from16 v0, p5

    move-object/from16 v20, v1

    move/from16 v21, v9

    move-object/from16 v25, v12

    move/from16 v27, v14

    goto :goto_ee7

    :goto_f3a
    if-eq v9, v12, :cond_f42

    int-to-long v6, v9

    move-object/from16 v1, v20

    .line 388
    invoke-virtual {v1, v2, v6, v7, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_f42
    move-object/from16 v1, p0

    .line 389
    iget v3, v1, Lcom/google/android/gms/internal/measurement/u6;->g:I

    :goto_f46
    iget v6, v1, Lcom/google/android/gms/internal/measurement/u6;->h:I

    if-ge v3, v6, :cond_f7e

    .line 390
    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/u6;->f:[I

    aget v6, v6, v3

    .line 391
    aget v7, v25, v6

    .line 392
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    move-result v7

    const v16, 0xfffff

    and-int v7, v7, v16

    int-to-long v7, v7

    .line 393
    invoke-static {v7, v8, v2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f61

    goto :goto_f67

    .line 394
    :cond_f61
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/measurement/u6;->A(I)Lcom/google/android/gms/internal/measurement/d6;

    move-result-object v8

    if-nez v8, :cond_f6a

    :goto_f67
    add-int/lit8 v3, v3, 0x1

    goto :goto_f46

    .line 395
    :cond_f6a
    check-cast v7, Lcom/google/android/gms/internal/measurement/q6;

    .line 396
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/measurement/u6;->C(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f78

    .line 397
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    .line 398
    :cond_f78
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_f7e
    if-nez v0, :cond_f88

    if-ne v4, v5, :cond_f83

    goto :goto_f8c

    .line 399
    :cond_f83
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->c()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v0

    throw v0

    :cond_f88
    if-gt v4, v5, :cond_f8d

    if-ne v15, v0, :cond_f8d

    :goto_f8c
    return v4

    .line 400
    :cond_f8d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->c()Lcom/google/android/gms/internal/measurement/i6;

    move-result-object v0

    throw v0

    :cond_f92
    move-object v1, v0

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mutating immutable message: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_fa4
    .packed-switch 0x0
        :pswitch_4f7
        :pswitch_4cc
        :pswitch_4a5
        :pswitch_4a5
        :pswitch_477
        :pswitch_433
        :pswitch_411
        :pswitch_3e0
        :pswitch_21f
        :pswitch_1dd
        :pswitch_1bd
        :pswitch_477
        :pswitch_16b
        :pswitch_411
        :pswitch_433
        :pswitch_148
        :pswitch_10f
        :pswitch_d0
    .end packed-switch

    :pswitch_data_fcc
    .packed-switch 0x12
        :pswitch_bb1
        :pswitch_b71
        :pswitch_b1d
        :pswitch_b1d
        :pswitch_ad9
        :pswitch_a47
        :pswitch_9b5
        :pswitch_96f
        :pswitch_8a2
        :pswitch_87d
        :pswitch_80d
        :pswitch_ad9
        :pswitch_6ff
        :pswitch_9b5
        :pswitch_a47
        :pswitch_6a5
        :pswitch_63d
        :pswitch_bb1
        :pswitch_b71
        :pswitch_b1d
        :pswitch_b1d
        :pswitch_ad9
        :pswitch_a47
        :pswitch_9b5
        :pswitch_96f
        :pswitch_ad9
        :pswitch_6ff
        :pswitch_9b5
        :pswitch_a47
        :pswitch_6a5
        :pswitch_63d
        :pswitch_5e7
    .end packed-switch

    :pswitch_data_1010
    .packed-switch 0x33
        :pswitch_eb0
        :pswitch_e8e
        :pswitch_e6f
        :pswitch_e6f
        :pswitch_e52
        :pswitch_e34
        :pswitch_e14
        :pswitch_de9
        :pswitch_da9
        :pswitch_d7c
        :pswitch_d63
        :pswitch_e52
        :pswitch_d1b
        :pswitch_e14
        :pswitch_e34
        :pswitch_cf9
        :pswitch_cc3
        :pswitch_c99
    .end packed-switch
.end method

.method public final l(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_18

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/b7;->zza()Lcom/google/android/gms/internal/measurement/z5;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_18
    sget-object p1, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/u6;->D(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_25

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_25
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/b7;->zza()Lcom/google/android/gms/internal/measurement/z5;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2e

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/b7;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2e
    return-object p2
.end method

.method public final m(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_f

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/b7;->zza()Lcom/google/android/gms/internal/measurement/z5;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    sget-object p2, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    const v1, 0xfffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p3, v1

    .line 26
    int-to-long v1, p3

    .line 27
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/u6;->D(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_25

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_25
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/b7;->zza()Lcom/google/android/gms/internal/measurement/z5;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2e

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/b7;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2e
    return-object p2
.end method

.method public final o(IILjava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v3, v1

    .line 12
    invoke-virtual {v0, p3, v3, v4, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 p2, p2, 0x2

    .line 16
    .line 17
    iget-object p4, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 18
    .line 19
    aget p2, p4, p2

    .line 20
    .line 21
    and-int/2addr p2, v2

    .line 22
    int-to-long v0, p2

    .line 23
    invoke-static {p3, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final p(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final q(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9

    .line 1
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    int-to-long v0, v0

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 18
    .line 19
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_53

    .line 24
    .line 25
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_3a

    .line 34
    .line 35
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/u6;->D(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_2c

    .line 40
    .line 41
    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_36

    .line 45
    :cond_2c
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/b7;->zza()Lcom/google/android/gms/internal/measurement/z5;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p2, v4, v3}, Lcom/google/android/gms/internal/measurement/b7;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_36
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/measurement/u6;->s(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3a
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/u6;->D(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_4f

    .line 68
    .line 69
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/b7;->zza()Lcom/google/android/gms/internal/measurement/z5;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/measurement/b7;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p3, v4

    .line 80
    :cond_4f
    invoke-interface {p2, p3, v3}, Lcom/google/android/gms/internal/measurement/b7;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_53
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 87
    .line 88
    aget p3, v0, p3

    .line 89
    .line 90
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "Source subfield "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p3, " is present but null: "

    .line 105
    .line 106
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method public final r(Ljava/lang/Object;IIII)Z
    .registers 7

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    if-ne p3, v0, :cond_a

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_a
    and-int p1, p4, p5

    .line 12
    .line 13
    if-eqz p1, :cond_10

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final s(ILjava/lang/Object;)V
    .registers 7

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, p1

    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-nez v2, :cond_13

    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    ushr-int/lit8 p1, p1, 0x14

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    shl-int p1, v2, p1

    .line 24
    .line 25
    sget-object v2, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 26
    .line 27
    invoke-virtual {v2, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    or-int/2addr p1, v2

    .line 32
    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final t(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 2
    .line 3
    aget v1, v0, p2

    .line 4
    .line 5
    invoke-virtual {p0, p3, v1, p2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    int-to-long v4, v2

    .line 21
    sget-object v2, Lcom/google/android/gms/internal/measurement/u6;->j:Lsun/misc/Unsafe;

    .line 22
    .line 23
    invoke-virtual {v2, p3, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    if-eqz v6, :cond_5d

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/u6;->B(I)Lcom/google/android/gms/internal/measurement/b7;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/measurement/u6;->y(Ljava/lang/Object;II)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-nez v7, :cond_44

    .line 38
    .line 39
    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/u6;->D(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-nez v7, :cond_30

    .line 44
    .line 45
    invoke-virtual {v2, p1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_3a

    .line 49
    :cond_30
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/b7;->zza()Lcom/google/android/gms/internal/measurement/z5;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-interface {p3, v7, v6}, Lcom/google/android/gms/internal/measurement/b7;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1, v4, v5, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_3a
    add-int/lit8 p2, p2, 0x2

    .line 60
    .line 61
    aget p2, v0, p2

    .line 62
    .line 63
    and-int/2addr p2, v3

    .line 64
    int-to-long p2, p2

    .line 65
    invoke-static {p1, p2, p3, v1}, Lcom/google/android/gms/internal/measurement/f7;->c(Ljava/lang/Object;JI)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_44
    invoke-virtual {v2, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/u6;->D(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_59

    .line 78
    .line 79
    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/b7;->zza()Lcom/google/android/gms/internal/measurement/z5;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {p3, v0, p2}, Lcom/google/android/gms/internal/measurement/b7;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object p2, v0

    .line 90
    :cond_59
    invoke-interface {p3, p2, v6}, Lcom/google/android/gms/internal/measurement/b7;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_5d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    aget p2, v0, p2

    .line 97
    .line 98
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "Source subfield "

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p2, " is present but null: "

    .line 113
    .line 114
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1
.end method

.method public final u(I)I
    .registers 3

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method public final w(ILjava/lang/Object;)Z
    .registers 9

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-nez v4, :cond_105

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/u6;->u(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    and-int v0, p1, v1

    .line 26
    .line 27
    int-to-long v0, v0

    .line 28
    const/high16 v2, 0xff00000

    .line 29
    .line 30
    and-int/2addr p1, v2

    .line 31
    ushr-int/lit8 p1, p1, 0x14

    .line 32
    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p1, :pswitch_data_116

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :pswitch_2b
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_113

    .line 49
    .line 50
    goto/16 :goto_112

    .line 51
    .line 52
    :pswitch_33
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 55
    .line 56
    .line 57
    move-result-wide p1

    .line 58
    cmp-long p1, p1, v2

    .line 59
    .line 60
    if-eqz p1, :cond_113

    .line 61
    .line 62
    goto/16 :goto_112

    .line 63
    .line 64
    :pswitch_3f
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_113

    .line 71
    .line 72
    goto/16 :goto_112

    .line 73
    .line 74
    :pswitch_49
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 77
    .line 78
    .line 79
    move-result-wide p1

    .line 80
    cmp-long p1, p1, v2

    .line 81
    .line 82
    if-eqz p1, :cond_113

    .line 83
    .line 84
    goto/16 :goto_112

    .line 85
    .line 86
    :pswitch_55
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_113

    .line 93
    .line 94
    goto/16 :goto_112

    .line 95
    .line 96
    :pswitch_5f
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_113

    .line 103
    .line 104
    goto/16 :goto_112

    .line 105
    .line 106
    :pswitch_69
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 107
    .line 108
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_113

    .line 113
    .line 114
    goto/16 :goto_112

    .line 115
    .line 116
    :pswitch_73
    sget-object p1, Lcom/google/android/gms/internal/measurement/p5;->c:Lcom/google/android/gms/internal/measurement/p5;

    .line 117
    .line 118
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/p5;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_113

    .line 127
    .line 128
    goto/16 :goto_112

    .line 129
    .line 130
    :pswitch_81
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_113

    .line 135
    .line 136
    goto/16 :goto_112

    .line 137
    .line 138
    :pswitch_89
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/f7;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    instance-of p2, p1, Ljava/lang/String;

    .line 143
    .line 144
    if-eqz p2, :cond_9b

    .line 145
    .line 146
    check-cast p1, Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_113

    .line 153
    .line 154
    goto/16 :goto_112

    .line 155
    .line 156
    :cond_9b
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/p5;

    .line 157
    .line 158
    if-eqz p2, :cond_a9

    .line 159
    .line 160
    sget-object p2, Lcom/google/android/gms/internal/measurement/p5;->c:Lcom/google/android/gms/internal/measurement/p5;

    .line 161
    .line 162
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/p5;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_113

    .line 167
    .line 168
    goto/16 :goto_112

    .line 169
    .line 170
    :cond_a9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 173
    .line 174
    .line 175
    throw p1

    .line 176
    :pswitch_af
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 177
    .line 178
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->i(JLjava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    return p1

    .line 183
    :pswitch_b6
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 184
    .line 185
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_113

    .line 190
    .line 191
    goto :goto_112

    .line 192
    :pswitch_bf
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 193
    .line 194
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 195
    .line 196
    .line 197
    move-result-wide p1

    .line 198
    cmp-long p1, p1, v2

    .line 199
    .line 200
    if-eqz p1, :cond_113

    .line 201
    .line 202
    goto :goto_112

    .line 203
    :pswitch_ca
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 204
    .line 205
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_113

    .line 210
    .line 211
    goto :goto_112

    .line 212
    :pswitch_d3
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 213
    .line 214
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 215
    .line 216
    .line 217
    move-result-wide p1

    .line 218
    cmp-long p1, p1, v2

    .line 219
    .line 220
    if-eqz p1, :cond_113

    .line 221
    .line 222
    goto :goto_112

    .line 223
    :pswitch_de
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 224
    .line 225
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->k(JLjava/lang/Object;)J

    .line 226
    .line 227
    .line 228
    move-result-wide p1

    .line 229
    cmp-long p1, p1, v2

    .line 230
    .line 231
    if-eqz p1, :cond_113

    .line 232
    .line 233
    goto :goto_112

    .line 234
    :pswitch_e9
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 235
    .line 236
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->h(JLjava/lang/Object;)F

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-eqz p1, :cond_113

    .line 245
    .line 246
    goto :goto_112

    .line 247
    :pswitch_f6
    sget-object p1, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 248
    .line 249
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/e7;->a(JLjava/lang/Object;)D

    .line 250
    .line 251
    .line 252
    move-result-wide p1

    .line 253
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 254
    .line 255
    .line 256
    move-result-wide p1

    .line 257
    cmp-long p1, p1, v2

    .line 258
    .line 259
    if-eqz p1, :cond_113

    .line 260
    .line 261
    goto :goto_112

    .line 262
    :cond_105
    ushr-int/lit8 p1, v0, 0x14

    .line 263
    .line 264
    shl-int p1, v5, p1

    .line 265
    .line 266
    sget-object v0, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 267
    .line 268
    invoke-virtual {v0, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    and-int/2addr p1, p2

    .line 273
    if-eqz p1, :cond_113

    .line 274
    .line 275
    :goto_112
    return v5

    .line 276
    :cond_113
    const/4 p1, 0x0

    .line 277
    return p1

    .line 278
    nop

    .line 279
    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_f6
        :pswitch_e9
        :pswitch_de
        :pswitch_d3
        :pswitch_ca
        :pswitch_bf
        :pswitch_b6
        :pswitch_af
        :pswitch_89
        :pswitch_81
        :pswitch_73
        :pswitch_69
        :pswitch_5f
        :pswitch_55
        :pswitch_49
        :pswitch_3f
        :pswitch_33
        :pswitch_2b
    .end packed-switch
.end method

.method public final x(Lcom/google/android/gms/internal/measurement/z5;Lcom/google/android/gms/internal/measurement/z5;I)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/measurement/u6;->w(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-ne p1, p2, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final y(Ljava/lang/Object;II)Z
    .registers 6

    .line 1
    add-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->a:[I

    .line 4
    .line 5
    aget p3, v0, p3

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p3, v0

    .line 11
    int-to-long v0, p3

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/measurement/f7;->c:Lcom/google/android/gms/internal/measurement/e7;

    .line 13
    .line 14
    invoke-virtual {p3, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/e7;->j(JLjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ne p1, p2, :cond_15

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_15
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public final zza()Lcom/google/android/gms/internal/measurement/z5;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u6;->e:Lcom/google/android/gms/internal/measurement/i5;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/z5;->e(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 11
    .line 12
    return-object v0
.end method
