###### Class com.google.android.gms.internal.measurement.t6 (com.google.android.gms.internal.measurement.t6)
.class public abstract Lcom/google/android/gms/internal/measurement/t6;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x50

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    sput-object v0, Lcom/google/android/gms/internal/measurement/t6;->a:[C

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/measurement/z5;Ljava/lang/StringBuilder;I)V
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v5, Ljava/util/TreeMap;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    array-length v7, v6

    .line 31
    const/4 v8, 0x0

    .line 32
    move v9, v8

    .line 33
    :goto_20
    const-string v10, "get"

    .line 34
    .line 35
    const-string v11, "has"

    .line 36
    .line 37
    const-string v12, "set"

    .line 38
    .line 39
    const/4 v13, 0x3

    .line 40
    if-ge v9, v7, :cond_88

    .line 41
    .line 42
    aget-object v14, v6, v9

    .line 43
    .line 44
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 49
    .line 50
    .line 51
    move-result v15

    .line 52
    if-nez v15, :cond_85

    .line 53
    .line 54
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v15

    .line 58
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    if-lt v15, v13, :cond_85

    .line 63
    .line 64
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    if-eqz v12, :cond_51

    .line 73
    .line 74
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_85

    .line 82
    :cond_51
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    if-eqz v12, :cond_85

    .line 91
    .line 92
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    array-length v12, v12

    .line 97
    if-nez v12, :cond_85

    .line 98
    .line 99
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_74

    .line 108
    .line 109
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v4, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_85

    .line 117
    :cond_74
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-eqz v10, :cond_85

    .line 126
    .line 127
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-virtual {v5, v10, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    :cond_85
    :goto_85
    add-int/lit8 v9, v9, 0x1

    .line 135
    .line 136
    goto :goto_20

    .line 137
    :cond_88
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    :goto_90
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_213

    .line 150
    .line 151
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Ljava/util/Map$Entry;

    .line 156
    .line 157
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    check-cast v9, Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    const-string v14, "List"

    .line 168
    .line 169
    invoke-virtual {v9, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    if-eqz v15, :cond_e8

    .line 174
    .line 175
    const-string v15, "OrBuilderList"

    .line 176
    .line 177
    invoke-virtual {v9, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v15

    .line 181
    if-nez v15, :cond_e8

    .line 182
    .line 183
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    if-nez v14, :cond_e8

    .line 188
    .line 189
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    check-cast v14, Ljava/lang/reflect/Method;

    .line 194
    .line 195
    if-eqz v14, :cond_e8

    .line 196
    .line 197
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    move/from16 v16, v13

    .line 202
    .line 203
    const-class v13, Ljava/util/List;

    .line 204
    .line 205
    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    if-eqz v13, :cond_ea

    .line 210
    .line 211
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    add-int/lit8 v7, v7, -0x4

    .line 216
    .line 217
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    new-array v9, v8, [Ljava/lang/Object;

    .line 222
    .line 223
    invoke-static {v14, v0, v9}, Lcom/google/android/gms/internal/measurement/z5;->f(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/measurement/z5;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-static {v1, v2, v7, v9}, Lcom/google/android/gms/internal/measurement/t6;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :cond_e5
    :goto_e5
    move/from16 v13, v16

    .line 231
    .line 232
    goto :goto_90

    .line 233
    :cond_e8
    move/from16 v16, v13

    .line 234
    .line 235
    :cond_ea
    const-string v13, "Map"

    .line 236
    .line 237
    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v14

    .line 241
    if-eqz v14, :cond_132

    .line 242
    .line 243
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    if-nez v13, :cond_132

    .line 248
    .line 249
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    check-cast v13, Ljava/lang/reflect/Method;

    .line 254
    .line 255
    if-eqz v13, :cond_132

    .line 256
    .line 257
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    const-class v15, Ljava/util/Map;

    .line 262
    .line 263
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v14

    .line 267
    if-eqz v14, :cond_132

    .line 268
    .line 269
    const-class v14, Ljava/lang/Deprecated;

    .line 270
    .line 271
    invoke-virtual {v13, v14}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 272
    .line 273
    .line 274
    move-result v14

    .line 275
    if-nez v14, :cond_132

    .line 276
    .line 277
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 278
    .line 279
    .line 280
    move-result v14

    .line 281
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 282
    .line 283
    .line 284
    move-result v14

    .line 285
    if-eqz v14, :cond_132

    .line 286
    .line 287
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    add-int/lit8 v7, v7, -0x3

    .line 292
    .line 293
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v7

    .line 297
    new-array v9, v8, [Ljava/lang/Object;

    .line 298
    .line 299
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/z5;->f(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/measurement/z5;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    invoke-static {v1, v2, v7, v9}, Lcom/google/android/gms/internal/measurement/t6;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto :goto_e5

    .line 307
    :cond_132
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v13

    .line 315
    if-eqz v13, :cond_e5

    .line 316
    .line 317
    const-string v13, "Bytes"

    .line 318
    .line 319
    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v13

    .line 323
    if-eqz v13, :cond_160

    .line 324
    .line 325
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 326
    .line 327
    .line 328
    move-result v13

    .line 329
    add-int/lit8 v13, v13, -0x5

    .line 330
    .line 331
    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v13

    .line 335
    new-instance v14, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v13

    .line 347
    invoke-virtual {v5, v13}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v13

    .line 351
    if-nez v13, :cond_e5

    .line 352
    .line 353
    :cond_160
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    check-cast v7, Ljava/lang/reflect/Method;

    .line 358
    .line 359
    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v13

    .line 363
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v13

    .line 367
    check-cast v13, Ljava/lang/reflect/Method;

    .line 368
    .line 369
    if-eqz v7, :cond_e5

    .line 370
    .line 371
    new-array v14, v8, [Ljava/lang/Object;

    .line 372
    .line 373
    invoke-static {v7, v0, v14}, Lcom/google/android/gms/internal/measurement/z5;->f(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/measurement/z5;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    if-nez v13, :cond_200

    .line 378
    .line 379
    instance-of v13, v7, Ljava/lang/Boolean;

    .line 380
    .line 381
    const/4 v14, 0x1

    .line 382
    if-eqz v13, :cond_18e

    .line 383
    .line 384
    move-object v13, v7

    .line 385
    check-cast v13, Ljava/lang/Boolean;

    .line 386
    .line 387
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 388
    .line 389
    .line 390
    move-result v13

    .line 391
    if-nez v13, :cond_18b

    .line 392
    .line 393
    :goto_188
    move v13, v14

    .line 394
    goto/16 :goto_1fb

    .line 395
    .line 396
    :cond_18b
    move v13, v8

    .line 397
    goto/16 :goto_1fb

    .line 398
    .line 399
    :cond_18e
    instance-of v13, v7, Ljava/lang/Integer;

    .line 400
    .line 401
    if-eqz v13, :cond_19c

    .line 402
    .line 403
    move-object v13, v7

    .line 404
    check-cast v13, Ljava/lang/Integer;

    .line 405
    .line 406
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 407
    .line 408
    .line 409
    move-result v13

    .line 410
    if-nez v13, :cond_18b

    .line 411
    .line 412
    goto :goto_188

    .line 413
    :cond_19c
    instance-of v13, v7, Ljava/lang/Float;

    .line 414
    .line 415
    if-eqz v13, :cond_1ae

    .line 416
    .line 417
    move-object v13, v7

    .line 418
    check-cast v13, Ljava/lang/Float;

    .line 419
    .line 420
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    .line 421
    .line 422
    .line 423
    move-result v13

    .line 424
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 425
    .line 426
    .line 427
    move-result v13

    .line 428
    if-nez v13, :cond_18b

    .line 429
    .line 430
    goto :goto_188

    .line 431
    :cond_1ae
    instance-of v13, v7, Ljava/lang/Double;

    .line 432
    .line 433
    if-eqz v13, :cond_1c4

    .line 434
    .line 435
    move-object v13, v7

    .line 436
    check-cast v13, Ljava/lang/Double;

    .line 437
    .line 438
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    .line 439
    .line 440
    .line 441
    move-result-wide v17

    .line 442
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 443
    .line 444
    .line 445
    move-result-wide v17

    .line 446
    const-wide/16 v19, 0x0

    .line 447
    .line 448
    cmp-long v13, v17, v19

    .line 449
    .line 450
    if-nez v13, :cond_18b

    .line 451
    .line 452
    goto :goto_188

    .line 453
    :cond_1c4
    instance-of v13, v7, Ljava/lang/String;

    .line 454
    .line 455
    if-eqz v13, :cond_1cf

    .line 456
    .line 457
    const-string v13, ""

    .line 458
    .line 459
    invoke-virtual {v7, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v13

    .line 463
    goto :goto_1fb

    .line 464
    :cond_1cf
    instance-of v13, v7, Lcom/google/android/gms/internal/measurement/p5;

    .line 465
    .line 466
    if-eqz v13, :cond_1da

    .line 467
    .line 468
    sget-object v13, Lcom/google/android/gms/internal/measurement/p5;->c:Lcom/google/android/gms/internal/measurement/p5;

    .line 469
    .line 470
    invoke-virtual {v7, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v13

    .line 474
    goto :goto_1fb

    .line 475
    :cond_1da
    instance-of v13, v7, Lcom/google/android/gms/internal/measurement/i5;

    .line 476
    .line 477
    if-eqz v13, :cond_1ed

    .line 478
    .line 479
    move-object v13, v7

    .line 480
    check-cast v13, Lcom/google/android/gms/internal/measurement/i5;

    .line 481
    .line 482
    check-cast v13, Lcom/google/android/gms/internal/measurement/z5;

    .line 483
    .line 484
    const/4 v15, 0x6

    .line 485
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/measurement/z5;->e(I)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v13

    .line 489
    check-cast v13, Lcom/google/android/gms/internal/measurement/z5;

    .line 490
    .line 491
    if-ne v7, v13, :cond_18b

    .line 492
    .line 493
    goto :goto_188

    .line 494
    :cond_1ed
    instance-of v13, v7, Ljava/lang/Enum;

    .line 495
    .line 496
    if-eqz v13, :cond_18b

    .line 497
    .line 498
    move-object v13, v7

    .line 499
    check-cast v13, Ljava/lang/Enum;

    .line 500
    .line 501
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 502
    .line 503
    .line 504
    move-result v13

    .line 505
    if-nez v13, :cond_18b

    .line 506
    .line 507
    goto :goto_188

    .line 508
    :goto_1fb
    if-nez v13, :cond_1fe

    .line 509
    .line 510
    goto :goto_20c

    .line 511
    :cond_1fe
    move v14, v8

    .line 512
    goto :goto_20c

    .line 513
    :cond_200
    new-array v14, v8, [Ljava/lang/Object;

    .line 514
    .line 515
    invoke-static {v13, v0, v14}, Lcom/google/android/gms/internal/measurement/z5;->f(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/measurement/z5;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v13

    .line 519
    check-cast v13, Ljava/lang/Boolean;

    .line 520
    .line 521
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 522
    .line 523
    .line 524
    move-result v14

    .line 525
    :goto_20c
    if-eqz v14, :cond_e5

    .line 526
    .line 527
    invoke-static {v1, v2, v9, v7}, Lcom/google/android/gms/internal/measurement/t6;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    goto/16 :goto_e5

    .line 531
    .line 532
    :cond_213
    move/from16 v16, v13

    .line 533
    .line 534
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 535
    .line 536
    if-eqz v0, :cond_231

    .line 537
    .line 538
    :goto_219
    iget v3, v0, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 539
    .line 540
    if-ge v8, v3, :cond_231

    .line 541
    .line 542
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/c7;->b:[I

    .line 543
    .line 544
    aget v3, v3, v8

    .line 545
    .line 546
    ushr-int/lit8 v3, v3, 0x3

    .line 547
    .line 548
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/c7;->c:[Ljava/lang/Object;

    .line 553
    .line 554
    aget-object v4, v4, v8

    .line 555
    .line 556
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/t6;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    add-int/lit8 v8, v8, 0x1

    .line 560
    .line 561
    goto :goto_219

    .line 562
    :cond_231
    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;I)V
    .registers 5

    .line 1
    :goto_0
    if-lez p1, :cond_10

    .line 2
    .line 3
    const/16 v0, 0x50

    .line 4
    .line 5
    if-le p1, v0, :cond_7

    .line 6
    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move v0, p1

    .line 9
    :goto_8
    const/4 v1, 0x0

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/measurement/t6;->a:[C

    .line 11
    .line 12
    invoke-virtual {p0, v2, v1, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    sub-int/2addr p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_10
    return-void
.end method

.method public static c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 1
    instance-of v0, p3, Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_18

    .line 4
    .line 5
    check-cast p3, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    :goto_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_36

    .line 16
    .line 17
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/t6;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_a

    .line 25
    :cond_18
    instance-of v0, p3, Ljava/util/Map;

    .line 26
    .line 27
    if-eqz v0, :cond_37

    .line 28
    .line 29
    check-cast p3, Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    :goto_26
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_36

    .line 44
    .line 45
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/t6;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_26

    .line 55
    :cond_36
    return-void

    .line 56
    :cond_37
    const/16 v0, 0xa

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/t6;->b(Ljava/lang/StringBuilder;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_46

    .line 69
    .line 70
    goto :goto_7b

    .line 71
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    :goto_58
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-ge v1, v2, :cond_77

    .line 94
    .line 95
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_6d

    .line 104
    .line 105
    const-string v3, "_"

    .line 106
    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :cond_6d
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 118
    .line 119
    goto :goto_58

    .line 120
    :cond_77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    :goto_7b
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    instance-of p2, p3, Ljava/lang/String;

    .line 128
    .line 129
    const/16 v0, 0x22

    .line 130
    .line 131
    const-string v1, ": \""

    .line 132
    .line 133
    if-eqz p2, :cond_a3

    .line 134
    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    check-cast p3, Ljava/lang/String;

    .line 139
    .line 140
    sget-object p1, Lcom/google/android/gms/internal/measurement/p5;->c:Lcom/google/android/gms/internal/measurement/p5;

    .line 141
    .line 142
    new-instance p1, Lcom/google/android/gms/internal/measurement/p5;

    .line 143
    .line 144
    sget-object p2, Lcom/google/android/gms/internal/measurement/b6;->a:Ljava/nio/charset/Charset;

    .line 145
    .line 146
    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/p5;-><init>([B)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/q0;->c(Lcom/google/android/gms/internal/measurement/p5;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_a3
    instance-of p2, p3, Lcom/google/android/gms/internal/measurement/p5;

    .line 165
    .line 166
    if-eqz p2, :cond_b7

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    check-cast p3, Lcom/google/android/gms/internal/measurement/p5;

    .line 172
    .line 173
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/q0;->c(Lcom/google/android/gms/internal/measurement/p5;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_b7
    instance-of p2, p3, Lcom/google/android/gms/internal/measurement/z5;

    .line 185
    .line 186
    const-string v0, "}"

    .line 187
    .line 188
    const-string v1, "\n"

    .line 189
    .line 190
    const-string v2, " {"

    .line 191
    .line 192
    if-eqz p2, :cond_d5

    .line 193
    .line 194
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    check-cast p3, Lcom/google/android/gms/internal/measurement/z5;

    .line 198
    .line 199
    add-int/lit8 p2, p1, 0x2

    .line 200
    .line 201
    invoke-static {p3, p0, p2}, Lcom/google/android/gms/internal/measurement/t6;->a(Lcom/google/android/gms/internal/measurement/z5;Ljava/lang/StringBuilder;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/t6;->b(Ljava/lang/StringBuilder;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_d5
    instance-of p2, p3, Ljava/util/Map$Entry;

    .line 215
    .line 216
    if-eqz p2, :cond_fc

    .line 217
    .line 218
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    check-cast p3, Ljava/util/Map$Entry;

    .line 222
    .line 223
    add-int/lit8 p2, p1, 0x2

    .line 224
    .line 225
    const-string v2, "key"

    .line 226
    .line 227
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-static {p0, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/t6;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    const-string v2, "value"

    .line 235
    .line 236
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p3

    .line 240
    invoke-static {p0, p2, v2, p3}, Lcom/google/android/gms/internal/measurement/t6;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/t6;->b(Ljava/lang/StringBuilder;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_fc
    const-string p1, ": "

    .line 254
    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    return-void
.end method
