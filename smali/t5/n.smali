###### Class t5.n (t5.n)
.class public final Lt5/n;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lq5/y;


# instance fields
.field public final a:Lp4/p;

.field public final b:Lq5/h;

.field public final c:Ls5/g;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lp4/p;Lq5/h;Ls5/g;Lt5/c;Ljava/util/List;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt5/n;->a:Lp4/p;

    .line 5
    .line 6
    iput-object p2, p0, Lt5/n;->b:Lq5/h;

    .line 7
    .line 8
    iput-object p3, p0, Lt5/n;->c:Ls5/g;

    .line 9
    .line 10
    iput-object p5, p0, Lt5/n;->d:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lq5/l;Lw5/a;)Lq5/x;
    .registers 6

    .line 1
    iget-object v0, p2, Lw5/a;->a:Ljava/lang/Class;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_c
    iget-object v1, p0, Lt5/n;->d:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {v1}, Ls5/d;->e(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lu5/c;->a:Lm1/j;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lm1/j;->l(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_24

    .line 25
    .line 26
    new-instance v1, Lt5/m;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {p0, p1, p2, v0, v2}, Lt5/n;->b(Lq5/l;Lw5/a;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v1, v0, p1}, Lt5/m;-><init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;)V

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_24
    iget-object v1, p0, Lt5/n;->a:Lp4/p;

    .line 38
    .line 39
    invoke-virtual {v1, p2}, Lp4/p;->c(Lw5/a;)Ls5/n;

    .line 40
    .line 41
    .line 42
    new-instance v1, Lt5/l;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p0, p1, p2, v0, v2}, Lt5/n;->b(Lq5/l;Lw5/a;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v1, p1}, Lt5/k;-><init>(Ljava/util/LinkedHashMap;)V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method public final b(Lq5/l;Lw5/a;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;
    .registers 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_11

    .line 15
    .line 16
    goto/16 :goto_1ba

    .line 17
    .line 18
    :cond_11
    move-object/from16 v1, p2

    .line 19
    .line 20
    move-object/from16 v11, p3

    .line 21
    .line 22
    :goto_15
    iget-object v12, v1, Lw5/a;->b:Ljava/lang/reflect/Type;

    .line 23
    .line 24
    const-class v1, Ljava/lang/Object;

    .line 25
    .line 26
    if-eq v11, v1, :cond_1ba

    .line 27
    .line 28
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 29
    .line 30
    .line 31
    move-result-object v13

    .line 32
    move-object/from16 v14, p3

    .line 33
    .line 34
    if-eq v11, v14, :cond_2b

    .line 35
    .line 36
    array-length v1, v13

    .line 37
    if-lez v1, :cond_2b

    .line 38
    .line 39
    iget-object v1, v0, Lt5/n;->d:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {v1}, Ls5/d;->e(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    array-length v15, v13

    .line 45
    const/4 v1, 0x0

    .line 46
    move v2, v1

    .line 47
    :goto_2e
    if-ge v2, v15, :cond_1a0

    .line 48
    .line 49
    aget-object v3, v13, v2

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    invoke-virtual {v0, v3, v4}, Lt5/n;->c(Ljava/lang/reflect/Field;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-virtual {v0, v3, v1}, Lt5/n;->c(Ljava/lang/reflect/Field;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-nez v5, :cond_45

    .line 61
    .line 62
    if-nez v6, :cond_45

    .line 63
    .line 64
    move/from16 v23, v1

    .line 65
    .line 66
    move/from16 v18, v2

    .line 67
    .line 68
    goto/16 :goto_15a

    .line 69
    .line 70
    :cond_45
    const-class v6, Lr5/b;

    .line 71
    .line 72
    const/16 v16, 0x0

    .line 73
    .line 74
    if-eqz p4, :cond_55

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_58

    .line 85
    .line 86
    :cond_55
    move-object/from16 v7, v16

    .line 87
    .line 88
    goto :goto_80

    .line 89
    :cond_58
    sget-object v7, Lu5/c;->a:Lm1/j;

    .line 90
    .line 91
    invoke-virtual {v7, v11, v3}, Lm1/j;->g(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-static {v7}, Lu5/c;->e(Ljava/lang/reflect/AccessibleObject;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    if-eqz v9, :cond_80

    .line 103
    .line 104
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    if-eqz v9, :cond_6e

    .line 109
    .line 110
    goto :goto_80

    .line 111
    :cond_6e
    invoke-static {v7, v1}, Lu5/c;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    new-instance v2, Landroidx/fragment/app/a0;

    .line 116
    .line 117
    const-string v3, "@SerializedName on "

    .line 118
    .line 119
    const-string v4, " is not supported"

    .line 120
    .line 121
    invoke-static {v3, v1, v4}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v2

    .line 129
    :cond_80
    :goto_80
    if-nez v7, :cond_85

    .line 130
    .line 131
    invoke-static {v3}, Lu5/c;->e(Ljava/lang/reflect/AccessibleObject;)V

    .line 132
    .line 133
    .line 134
    :cond_85
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    new-instance v1, Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-static {v12, v11, v9, v1}, Ls5/d;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Lr5/b;

    .line 152
    .line 153
    if-nez v6, :cond_aa

    .line 154
    .line 155
    iget-object v6, v0, Lt5/n;->b:Lq5/h;

    .line 156
    .line 157
    invoke-virtual {v6, v3}, Lq5/h;->b(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    move/from16 v18, v2

    .line 166
    .line 167
    move/from16 v17, v4

    .line 168
    .line 169
    :goto_a8
    move-object v2, v6

    .line 170
    goto :goto_cf

    .line 171
    :cond_aa
    invoke-interface {v6}, Lr5/b;->value()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-interface {v6}, Lr5/b;->alternate()[Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    move/from16 v17, v4

    .line 180
    .line 181
    array-length v4, v6

    .line 182
    if-nez v4, :cond_be

    .line 183
    .line 184
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    move/from16 v18, v2

    .line 189
    .line 190
    goto :goto_a8

    .line 191
    :cond_be
    new-instance v4, Ljava/util/ArrayList;

    .line 192
    .line 193
    move/from16 v18, v2

    .line 194
    .line 195
    array-length v2, v6

    .line 196
    add-int/lit8 v2, v2, 0x1

    .line 197
    .line 198
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-object v2, v4

    .line 208
    :goto_cf
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    move-object/from16 v9, v16

    .line 213
    .line 214
    const/4 v6, 0x0

    .line 215
    :goto_d6
    if-ge v6, v4, :cond_155

    .line 216
    .line 217
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v19

    .line 221
    check-cast v19, Ljava/lang/String;

    .line 222
    .line 223
    if-eqz v6, :cond_e1

    .line 224
    .line 225
    const/4 v5, 0x0

    .line 226
    :cond_e1
    move-object/from16 v20, v9

    .line 227
    .line 228
    new-instance v9, Lw5/a;

    .line 229
    .line 230
    invoke-direct {v9, v1}, Lw5/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 231
    .line 232
    .line 233
    move-object/from16 v21, v1

    .line 234
    .line 235
    iget-object v1, v9, Lw5/a;->a:Ljava/lang/Class;

    .line 236
    .line 237
    if-eqz v1, :cond_f2

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    :cond_f2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 248
    .line 249
    .line 250
    move-result v22

    .line 251
    if-eqz v22, :cond_100

    .line 252
    .line 253
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    :cond_100
    const-class v1, Lr5/a;

    .line 258
    .line 259
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Lr5/a;

    .line 264
    .line 265
    move-object/from16 v22, v2

    .line 266
    .line 267
    if-eqz v1, :cond_113

    .line 268
    .line 269
    iget-object v2, v0, Lt5/n;->a:Lp4/p;

    .line 270
    .line 271
    invoke-static {v2, v8, v9, v1}, Lt5/c;->b(Lp4/p;Lq5/l;Lw5/a;Lr5/a;)Lq5/x;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    goto :goto_115

    .line 276
    :cond_113
    move-object/from16 v1, v16

    .line 277
    .line 278
    :goto_115
    move v2, v6

    .line 279
    if-eqz v1, :cond_11b

    .line 280
    .line 281
    move/from16 v6, v17

    .line 282
    .line 283
    goto :goto_11c

    .line 284
    :cond_11b
    const/4 v6, 0x0

    .line 285
    :goto_11c
    if-nez v1, :cond_122

    .line 286
    .line 287
    invoke-virtual {v8, v9}, Lq5/l;->b(Lw5/a;)Lq5/x;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    :cond_122
    new-instance v23, Lt5/j;

    .line 292
    .line 293
    move-object/from16 v0, v19

    .line 294
    .line 295
    move/from16 v19, v2

    .line 296
    .line 297
    move-object v2, v0

    .line 298
    move-object/from16 v0, v20

    .line 299
    .line 300
    move/from16 v20, v17

    .line 301
    .line 302
    move/from16 v17, v4

    .line 303
    .line 304
    move v4, v5

    .line 305
    move-object v5, v7

    .line 306
    move-object v7, v1

    .line 307
    move-object/from16 v1, v23

    .line 308
    .line 309
    const/16 v23, 0x0

    .line 310
    .line 311
    invoke-direct/range {v1 .. v9}, Lt5/j;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/reflect/Method;ZLq5/x;Lq5/l;Lw5/a;)V

    .line 312
    .line 313
    .line 314
    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    move-object v9, v1

    .line 319
    check-cast v9, Lt5/j;

    .line 320
    .line 321
    if-nez v0, :cond_143

    .line 322
    .line 323
    goto :goto_144

    .line 324
    :cond_143
    move-object v9, v0

    .line 325
    :goto_144
    add-int/lit8 v6, v19, 0x1

    .line 326
    .line 327
    move-object/from16 v0, p0

    .line 328
    .line 329
    move-object/from16 v8, p1

    .line 330
    .line 331
    move-object v7, v5

    .line 332
    move-object/from16 v1, v21

    .line 333
    .line 334
    move-object/from16 v2, v22

    .line 335
    .line 336
    move v5, v4

    .line 337
    move/from16 v4, v17

    .line 338
    .line 339
    move/from16 v17, v20

    .line 340
    .line 341
    goto :goto_d6

    .line 342
    :cond_155
    move-object v0, v9

    .line 343
    const/16 v23, 0x0

    .line 344
    .line 345
    if-nez v0, :cond_164

    .line 346
    .line 347
    :goto_15a
    add-int/lit8 v2, v18, 0x1

    .line 348
    .line 349
    move-object/from16 v0, p0

    .line 350
    .line 351
    move-object/from16 v8, p1

    .line 352
    .line 353
    move/from16 v1, v23

    .line 354
    .line 355
    goto/16 :goto_2e

    .line 356
    .line 357
    :cond_164
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 358
    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    const-string v4, "Class "

    .line 362
    .line 363
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v4, " declares multiple JSON fields named \'"

    .line 374
    .line 375
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    iget-object v4, v0, Lt5/j;->a:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v4, "\'; conflict is caused by fields "

    .line 384
    .line 385
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    iget-object v0, v0, Lt5/j;->b:Ljava/lang/reflect/Field;

    .line 389
    .line 390
    invoke-static {v0}, Lu5/c;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string v0, " and "

    .line 398
    .line 399
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-static {v3}, Lu5/c;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw v1

    .line 417
    :cond_1a0
    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    new-instance v1, Ljava/util/HashMap;

    .line 422
    .line 423
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-static {v12, v11, v0, v1}, Ls5/d;->i(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    new-instance v1, Lw5/a;

    .line 431
    .line 432
    invoke-direct {v1, v0}, Lw5/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 433
    .line 434
    .line 435
    iget-object v11, v1, Lw5/a;->a:Ljava/lang/Class;

    .line 436
    .line 437
    move-object/from16 v0, p0

    .line 438
    .line 439
    move-object/from16 v8, p1

    .line 440
    .line 441
    goto/16 :goto_15

    .line 442
    .line 443
    :cond_1ba
    :goto_1ba
    return-object v10
.end method

.method public final c(Ljava/lang/reflect/Field;Z)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lt5/n;->c:Ls5/g;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ls5/g;->c(Ljava/lang/Class;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_55

    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ls5/g;->b(Z)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x88

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    and-int/2addr v0, v2

    .line 26
    if-eqz v0, :cond_1c

    .line 27
    .line 28
    goto :goto_55

    .line 29
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_23

    .line 34
    .line 35
    goto :goto_55

    .line 36
    :cond_23
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Ls5/g;->c(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2e

    .line 45
    .line 46
    goto :goto_55

    .line 47
    :cond_2e
    if-eqz p2, :cond_33

    .line 48
    .line 49
    iget-object p1, v1, Ls5/g;->a:Ljava/util/List;

    .line 50
    .line 51
    goto :goto_35

    .line 52
    :cond_33
    iget-object p1, v1, Ls5/g;->b:Ljava/util/List;

    .line 53
    .line 54
    :goto_35
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_53

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_46

    .line 69
    .line 70
    goto :goto_53

    .line 71
    :cond_46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance p1, Ljava/lang/ClassCastException;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_53
    :goto_53
    const/4 p1, 0x1

    .line 85
    return p1

    .line 86
    :cond_55
    :goto_55
    const/4 p1, 0x0

    .line 87
    return p1
.end method
