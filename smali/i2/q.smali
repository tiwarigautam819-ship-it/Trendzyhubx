###### Class i2.q (i2.q)
.class public final Li2/q;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Li2/q;

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public static d:Ljava/lang/String;

.field public static final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Li2/q;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li2/q;->a:Li2/q;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Li2/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Li2/q;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Li2/q;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    return-void
.end method

.method public static final declared-synchronized c(Ljava/util/List;JZLjava/util/List;)Landroid/os/Bundle;
    .registers 33

    .line 1
    move-object/from16 v1, p4

    .line 2
    .line 3
    const-class v2, Li2/q;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_5
    const-class v0, Li2/q;

    .line 7
    .line 8
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_27d

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_10

    .line 14
    .line 15
    monitor-exit v2

    .line 16
    return-object v3

    .line 17
    :cond_10
    :try_start_10
    move-object v0, v1

    .line 18
    check-cast v0, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_76

    .line 24
    if-eqz v0, :cond_1b

    .line 25
    .line 26
    monitor-exit v2

    .line 27
    return-object v3

    .line 28
    :cond_1b
    :try_start_1b
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ne v0, v4, :cond_272

    .line 37
    .line 38
    new-instance v4, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    move-object v8, v3

    .line 48
    const/4 v7, 0x0

    .line 49
    :goto_30
    if-ge v7, v5, :cond_1ea

    .line 50
    .line 51
    move-object/from16 v9, p0

    .line 52
    .line 53
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Li2/a;

    .line 58
    .line 59
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    check-cast v10, Lr6/d;

    .line 64
    .line 65
    iget-object v11, v10, Lr6/d;->a:Ljava/lang/Object;

    .line 66
    .line 67
    move-object v13, v11

    .line 68
    check-cast v13, Landroid/os/Bundle;

    .line 69
    .line 70
    iget-object v10, v10, Lr6/d;->b:Ljava/lang/Object;

    .line 71
    .line 72
    move-object v14, v10

    .line 73
    check-cast v14, Ly1/o;

    .line 74
    .line 75
    new-instance v10, Li2/a;

    .line 76
    .line 77
    iget-object v11, v0, Li2/a;->a:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v12, Ljava/math/BigDecimal;

    .line 80
    .line 81
    move/from16 v19, v7

    .line 82
    .line 83
    iget-wide v6, v0, Li2/a;->b:D

    .line 84
    .line 85
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-direct {v12, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 93
    .line 94
    const/4 v7, 0x2

    .line 95
    invoke-virtual {v12, v7, v6}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    iget-object v0, v0, Li2/a;->c:Ljava/util/Currency;

    .line 104
    .line 105
    invoke-direct {v10, v11, v6, v7, v0}, Li2/a;-><init>(Ljava/lang/String;DLjava/util/Currency;)V

    .line 106
    .line 107
    .line 108
    if-eqz p3, :cond_7b

    .line 109
    .line 110
    sget-object v0, Li2/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    .line 112
    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/util/List;

    .line 117
    .line 118
    goto :goto_83

    .line 119
    :catchall_76
    move-exception v0

    .line 120
    move-object/from16 v25, v3

    .line 121
    .line 122
    goto/16 :goto_276

    .line 123
    .line 124
    :cond_7b
    sget-object v0, Li2/q;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    .line 126
    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Ljava/util/List;

    .line 131
    .line 132
    :goto_83
    move-object v6, v0

    .line 133
    check-cast v6, Ljava/util/Collection;

    .line 134
    .line 135
    const-wide/16 v20, 0x0

    .line 136
    .line 137
    if-eqz v6, :cond_90

    .line 138
    .line 139
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_94

    .line 144
    .line 145
    :cond_90
    move-object/from16 v25, v3

    .line 146
    .line 147
    goto/16 :goto_145

    .line 148
    .line 149
    :cond_94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    move-object v0, v3

    .line 154
    move-object v7, v0

    .line 155
    move-object v11, v7

    .line 156
    const/16 v22, 0x0

    .line 157
    .line 158
    :goto_9d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    if-eqz v12, :cond_142

    .line 163
    .line 164
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    check-cast v12, Lr6/d;

    .line 169
    .line 170
    iget-object v15, v12, Lr6/d;->a:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v15, Ljava/lang/Number;

    .line 173
    .line 174
    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    .line 175
    .line 176
    .line 177
    move-result-wide v23

    .line 178
    iget-object v12, v12, Lr6/d;->b:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v12, Lr6/d;

    .line 181
    .line 182
    iget-object v15, v12, Lr6/d;->a:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v15, Landroid/os/Bundle;

    .line 185
    .line 186
    iget-object v12, v12, Lr6/d;->b:Ljava/lang/Object;

    .line 187
    .line 188
    move-object/from16 v16, v12

    .line 189
    .line 190
    check-cast v16, Ly1/o;

    .line 191
    .line 192
    sub-long v17, p1, v23

    .line 193
    .line 194
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    .line 195
    .line 196
    .line 197
    move-result-wide v17

    .line 198
    sget-object v12, Li2/n;->a:Ljava/util/List;

    .line 199
    .line 200
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    invoke-static {v12}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 205
    .line 206
    .line 207
    move-result-object v12
    :try_end_cf
    .catchall {:try_start_1b .. :try_end_cf} :catchall_76

    .line 208
    if-eqz v12, :cond_d6

    .line 209
    .line 210
    move-object/from16 v25, v3

    .line 211
    .line 212
    :try_start_d3
    iget-object v3, v12, Lq2/t;->x:Ljava/lang/Long;

    .line 213
    .line 214
    goto :goto_d8

    .line 215
    :cond_d6
    move-object/from16 v25, v3

    .line 216
    .line 217
    :goto_d8
    if-eqz v3, :cond_ef

    .line 218
    .line 219
    iget-object v3, v12, Lq2/t;->x:Ljava/lang/Long;

    .line 220
    .line 221
    if-nez v3, :cond_df

    .line 222
    .line 223
    goto :goto_e8

    .line 224
    :cond_df
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 225
    .line 226
    .line 227
    move-result-wide v26

    .line 228
    cmp-long v3, v26, v20

    .line 229
    .line 230
    if-nez v3, :cond_e8

    .line 231
    .line 232
    goto :goto_ef

    .line 233
    :cond_e8
    :goto_e8
    iget-object v3, v12, Lq2/t;->x:Ljava/lang/Long;

    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 236
    .line 237
    .line 238
    move-result-wide v26

    .line 239
    goto :goto_f1

    .line 240
    :cond_ef
    :goto_ef
    sget-wide v26, Li2/n;->c:J

    .line 241
    .line 242
    :goto_f1
    cmp-long v3, v17, v26

    .line 243
    .line 244
    if-lez v3, :cond_f6

    .line 245
    .line 246
    goto :goto_101

    .line 247
    :cond_f6
    if-eqz v11, :cond_107

    .line 248
    .line 249
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 250
    .line 251
    .line 252
    move-result-wide v17

    .line 253
    cmp-long v3, v23, v17

    .line 254
    .line 255
    if-gez v3, :cond_101

    .line 256
    .line 257
    goto :goto_107

    .line 258
    :cond_101
    :goto_101
    move-object/from16 v3, v25

    .line 259
    .line 260
    goto :goto_9d

    .line 261
    :catchall_104
    move-exception v0

    .line 262
    goto/16 :goto_276

    .line 263
    .line 264
    :cond_107
    :goto_107
    sget-object v12, Li2/q;->a:Li2/q;

    .line 265
    .line 266
    xor-int/lit8 v17, p3, 0x1

    .line 267
    .line 268
    const-class v3, Li2/q;

    .line 269
    .line 270
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v0
    :try_end_111
    .catchall {:try_start_d3 .. :try_end_111} :catchall_104

    .line 274
    if-eqz v0, :cond_116

    .line 275
    .line 276
    :goto_113
    move-object/from16 v0, v25

    .line 277
    .line 278
    goto :goto_122

    .line 279
    :cond_116
    const/16 v18, 0x0

    .line 280
    .line 281
    :try_start_118
    invoke-virtual/range {v12 .. v18}, Li2/q;->b(Landroid/os/Bundle;Ly1/o;Landroid/os/Bundle;Ly1/o;ZZ)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0
    :try_end_11c
    .catchall {:try_start_118 .. :try_end_11c} :catchall_11d

    .line 285
    goto :goto_122

    .line 286
    :catchall_11d
    move-exception v0

    .line 287
    :try_start_11e
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    goto :goto_113

    .line 291
    :goto_122
    sget-object v12, Li2/q;->a:Li2/q;

    .line 292
    .line 293
    const/16 v18, 0x1

    .line 294
    .line 295
    invoke-virtual/range {v12 .. v18}, Li2/q;->b(Landroid/os/Bundle;Ly1/o;Landroid/os/Bundle;Ly1/o;ZZ)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    if-eqz v3, :cond_12d

    .line 300
    .line 301
    move-object v7, v3

    .line 302
    :cond_12d
    if-eqz v0, :cond_101

    .line 303
    .line 304
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 305
    .line 306
    .line 307
    move-result-object v11

    .line 308
    new-instance v3, Lr6/d;

    .line 309
    .line 310
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    invoke-direct {v3, v10, v12}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    const/16 v22, 0x1

    .line 321
    .line 322
    goto :goto_101

    .line 323
    :cond_142
    move-object/from16 v25, v3

    .line 324
    .line 325
    goto :goto_14b

    .line 326
    :goto_145
    move-object/from16 v0, v25

    .line 327
    .line 328
    move-object v7, v0

    .line 329
    move-object v11, v7

    .line 330
    const/16 v22, 0x0

    .line 331
    .line 332
    :goto_14b
    if-eqz v7, :cond_160

    .line 333
    .line 334
    if-nez v8, :cond_154

    .line 335
    .line 336
    new-instance v8, Landroid/os/Bundle;

    .line 337
    .line 338
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 339
    .line 340
    .line 341
    :cond_154
    const-string v3, "fb_iap_test_dedup_result"

    .line 342
    .line 343
    const-string v6, "1"

    .line 344
    .line 345
    invoke-virtual {v8, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string v3, "fb_iap_test_dedup_key_used"

    .line 349
    .line 350
    invoke-virtual {v8, v3, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_160
    if-eqz v22, :cond_189

    .line 354
    .line 355
    if-nez v8, :cond_169

    .line 356
    .line 357
    new-instance v8, Landroid/os/Bundle;

    .line 358
    .line 359
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 360
    .line 361
    .line 362
    :cond_169
    if-eqz v11, :cond_174

    .line 363
    .line 364
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 365
    .line 366
    .line 367
    move-result-wide v6

    .line 368
    const/16 v3, 0x3e8

    .line 369
    .line 370
    int-to-long v11, v3

    .line 371
    div-long v20, v6, v11

    .line 372
    .line 373
    :cond_174
    const-string v3, "fb_iap_non_deduped_event_time"

    .line 374
    .line 375
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    invoke-virtual {v8, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    const-string v3, "fb_iap_actual_dedup_result"

    .line 383
    .line 384
    const-string v6, "1"

    .line 385
    .line 386
    invoke-virtual {v8, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    const-string v3, "fb_iap_actual_dedup_key_used"

    .line 390
    .line 391
    invoke-virtual {v8, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    :cond_189
    if-eqz p3, :cond_1b7

    .line 395
    .line 396
    if-nez v22, :cond_1b7

    .line 397
    .line 398
    sget-object v0, Li2/q;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 399
    .line 400
    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    if-nez v3, :cond_19d

    .line 405
    .line 406
    new-instance v3, Ljava/util/ArrayList;

    .line 407
    .line 408
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, v10, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    :cond_19d
    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    check-cast v0, Ljava/util/List;

    .line 419
    .line 420
    if-eqz v0, :cond_1e4

    .line 421
    .line 422
    new-instance v3, Lr6/d;

    .line 423
    .line 424
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    new-instance v7, Lr6/d;

    .line 429
    .line 430
    invoke-direct {v7, v13, v14}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    invoke-direct {v3, v6, v7}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    goto :goto_1e4

    .line 440
    :cond_1b7
    if-nez p3, :cond_1e4

    .line 441
    .line 442
    if-nez v22, :cond_1e4

    .line 443
    .line 444
    sget-object v0, Li2/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 445
    .line 446
    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    if-nez v3, :cond_1cb

    .line 451
    .line 452
    new-instance v3, Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v10, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    :cond_1cb
    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    check-cast v0, Ljava/util/List;

    .line 465
    .line 466
    if-eqz v0, :cond_1e4

    .line 467
    .line 468
    new-instance v3, Lr6/d;

    .line 469
    .line 470
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    new-instance v7, Lr6/d;

    .line 475
    .line 476
    invoke-direct {v7, v13, v14}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    invoke-direct {v3, v6, v7}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    :cond_1e4
    :goto_1e4
    add-int/lit8 v7, v19, 0x1

    .line 486
    .line 487
    move-object/from16 v3, v25

    .line 488
    .line 489
    goto/16 :goto_30

    .line 490
    .line 491
    :cond_1ea
    move-object/from16 v25, v3

    .line 492
    .line 493
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    const/4 v1, 0x0

    .line 498
    :goto_1f1
    if-ge v1, v0, :cond_270

    .line 499
    .line 500
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    add-int/lit8 v1, v1, 0x1

    .line 505
    .line 506
    check-cast v3, Lr6/d;

    .line 507
    .line 508
    if-eqz p3, :cond_208

    .line 509
    .line 510
    sget-object v5, Li2/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 511
    .line 512
    iget-object v6, v3, Lr6/d;->a:Ljava/lang/Object;

    .line 513
    .line 514
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    check-cast v5, Ljava/util/List;

    .line 519
    .line 520
    goto :goto_212

    .line 521
    :cond_208
    sget-object v5, Li2/q;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 522
    .line 523
    iget-object v6, v3, Lr6/d;->a:Ljava/lang/Object;

    .line 524
    .line 525
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    check-cast v5, Ljava/util/List;

    .line 530
    .line 531
    :goto_212
    if-nez v5, :cond_215

    .line 532
    .line 533
    goto :goto_1f1

    .line 534
    :cond_215
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 535
    .line 536
    .line 537
    move-result-object v6

    .line 538
    const/4 v7, 0x0

    .line 539
    :goto_21a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 540
    .line 541
    .line 542
    move-result v9

    .line 543
    if-eqz v9, :cond_242

    .line 544
    .line 545
    add-int/lit8 v9, v7, 0x1

    .line 546
    .line 547
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v10

    .line 551
    check-cast v10, Lr6/d;

    .line 552
    .line 553
    iget-object v10, v10, Lr6/d;->a:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast v10, Ljava/lang/Number;

    .line 556
    .line 557
    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    .line 558
    .line 559
    .line 560
    move-result-wide v10

    .line 561
    iget-object v12, v3, Lr6/d;->b:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v12, Ljava/lang/Number;

    .line 564
    .line 565
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    .line 566
    .line 567
    .line 568
    move-result-wide v12

    .line 569
    cmp-long v10, v10, v12

    .line 570
    .line 571
    if-nez v10, :cond_240

    .line 572
    .line 573
    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    goto :goto_242

    .line 577
    :cond_240
    move v7, v9

    .line 578
    goto :goto_21a

    .line 579
    :cond_242
    :goto_242
    if-eqz p3, :cond_25a

    .line 580
    .line 581
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 582
    .line 583
    .line 584
    move-result v6

    .line 585
    if-eqz v6, :cond_252

    .line 586
    .line 587
    sget-object v5, Li2/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 588
    .line 589
    iget-object v3, v3, Lr6/d;->a:Ljava/lang/Object;

    .line 590
    .line 591
    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    goto :goto_1f1

    .line 595
    :cond_252
    sget-object v6, Li2/q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 596
    .line 597
    iget-object v3, v3, Lr6/d;->a:Ljava/lang/Object;

    .line 598
    .line 599
    invoke-virtual {v6, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    goto :goto_1f1

    .line 603
    :cond_25a
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 604
    .line 605
    .line 606
    move-result v6

    .line 607
    if-eqz v6, :cond_268

    .line 608
    .line 609
    sget-object v5, Li2/q;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 610
    .line 611
    iget-object v3, v3, Lr6/d;->a:Ljava/lang/Object;

    .line 612
    .line 613
    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    goto :goto_1f1

    .line 617
    :cond_268
    sget-object v6, Li2/q;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 618
    .line 619
    iget-object v3, v3, Lr6/d;->a:Ljava/lang/Object;

    .line 620
    .line 621
    invoke-virtual {v6, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26f
    .catchall {:try_start_11e .. :try_end_26f} :catchall_104

    .line 622
    .line 623
    .line 624
    goto :goto_1f1

    .line 625
    :cond_270
    monitor-exit v2

    .line 626
    return-object v8

    .line 627
    :cond_272
    move-object/from16 v25, v3

    .line 628
    .line 629
    monitor-exit v2

    .line 630
    return-object v25

    .line 631
    :goto_276
    :try_start_276
    const-class v1, Li2/q;

    .line 632
    .line 633
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_27b
    .catchall {:try_start_276 .. :try_end_27b} :catchall_27d

    .line 634
    .line 635
    .line 636
    monitor-exit v2

    .line 637
    return-object v25

    .line 638
    :catchall_27d
    move-exception v0

    .line 639
    :try_start_27e
    monitor-exit v2
    :try_end_27f
    .catchall {:try_start_27e .. :try_end_27f} :catchall_27d

    .line 640
    throw v0
.end method

.method public static final d()V
    .registers 5

    .line 1
    const-class v0, Li2/q;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_38

    .line 10
    :cond_9
    :try_start_9
    sget-object v1, Li2/q;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_12

    .line 17
    .line 18
    goto :goto_38

    .line 19
    :cond_12
    sget-object v1, Li2/q;->a:Li2/q;

    .line 20
    .line 21
    invoke-virtual {v1}, Li2/q;->a()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Landroidx/fragment/app/m1;->e(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x2

    .line 31
    if-eq v2, v3, :cond_4d

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    if-eq v2, v4, :cond_39

    .line 35
    .line 36
    if-eq v2, v3, :cond_26

    .line 37
    .line 38
    goto :goto_38

    .line 39
    :cond_26
    sget-object v2, Lq2/o;->G:Lq2/o;

    .line 40
    .line 41
    invoke-static {v2}, Lq2/q;->b(Lq2/o;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_38

    .line 46
    .line 47
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2, v1}, Li2/g;->b(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_36
    move-exception v1

    .line 56
    goto :goto_51

    .line 57
    :cond_38
    :goto_38
    return-void

    .line 58
    :cond_39
    sget-object v2, Lq2/o;->F:Lq2/o;

    .line 59
    .line 60
    invoke-static {v2}, Lq2/q;->b(Lq2/o;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_49

    .line 65
    .line 66
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2, v1}, Li2/g;->b(Landroid/content/Context;I)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_49
    invoke-static {v3}, Li2/e;->b(I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4d
    invoke-static {v4}, Li2/e;->b(I)V
    :try_end_50
    .catchall {:try_start_9 .. :try_end_50} :catchall_36

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_51
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 10

    .line 1
    const-string v0, "GPBL."

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    const/4 v1, 0x4

    .line 12
    :try_start_b
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/16 v5, 0x80

    .line 25
    .line 26
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "context.packageManager.g\u2026TA_DATA\n                )"

    .line 31
    .line 32
    invoke-static {v4, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 36
    .line 37
    const-string v4, "com.google.android.play.billingclient.version"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x1

    .line 44
    if-nez v3, :cond_2e

    .line 45
    .line 46
    return v4

    .line 47
    :cond_2e
    const-string v5, "."

    .line 48
    .line 49
    filled-new-array {v5}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const/4 v6, 0x2

    .line 54
    const/4 v7, 0x3

    .line 55
    invoke-static {v3, v5, v7, v6}, Lk7/g;->J(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-nez v8, :cond_41

    .line 64
    .line 65
    goto :goto_73

    .line 66
    :cond_41
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-class v3, Li2/q;

    .line 71
    .line 72
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v8
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4b} :catch_73
    .catchall {:try_start_b .. :try_end_4b} :catchall_6e

    .line 76
    if-eqz v8, :cond_4e

    .line 77
    .line 78
    goto :goto_55

    .line 79
    :cond_4e
    :try_start_4e
    sput-object v0, Li2/q;->d:Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_51

    .line 80
    .line 81
    goto :goto_55

    .line 82
    :catchall_51
    move-exception v0

    .line 83
    :try_start_52
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_55
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v0}, Lk7/n;->p(Ljava/lang/String;)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_73

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_65} :catch_73
    .catchall {:try_start_52 .. :try_end_65} :catchall_6e

    .line 102
    if-ne v0, v4, :cond_69

    .line 103
    .line 104
    move v1, v6

    .line 105
    goto :goto_6d

    .line 106
    :cond_69
    const/4 v2, 0x5

    .line 107
    if-ge v0, v2, :cond_6d

    .line 108
    .line 109
    move v1, v7

    .line 110
    :cond_6d
    :goto_6d
    return v1

    .line 111
    :catchall_6e
    move-exception v0

    .line 112
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return v2

    .line 116
    :catch_73
    :cond_73
    :goto_73
    return v1
.end method

.method public final b(Landroid/os/Bundle;Ly1/o;Landroid/os/Bundle;Ly1/o;ZZ)Ljava/lang/String;
    .registers 14

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    goto/16 :goto_7e

    .line 9
    .line 10
    :cond_9
    if-eqz p6, :cond_13

    .line 11
    .line 12
    :try_start_b
    invoke-static {p5}, Li2/n;->c(Z)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p6

    .line 16
    goto :goto_17

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    goto/16 :goto_7f

    .line 19
    .line 20
    :cond_13
    invoke-static {p5}, Li2/n;->b(Z)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p6

    .line 24
    :goto_17
    if-nez p6, :cond_1a

    .line 25
    .line 26
    goto :goto_7e

    .line 27
    :cond_1a
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p6

    .line 31
    :cond_1e
    :goto_1e
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_7e

    .line 36
    .line 37
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lr6/d;

    .line 42
    .line 43
    sget-object v2, Ly1/o;->b:Ljava/util/Map;

    .line 44
    .line 45
    iget-object v2, v0, Lr6/d;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v2, p1, p2}, Ly1/g;->o(Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    instance-of v3, v2, Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v3, :cond_3b

    .line 56
    .line 57
    check-cast v2, Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move-object v2, v1

    .line 61
    :goto_3c
    if-eqz v2, :cond_1e

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_45

    .line 68
    .line 69
    goto :goto_1e

    .line 70
    :cond_45
    iget-object v3, v0, Lr6/d;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :cond_4d
    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_1e

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Ljava/lang/String;

    .line 89
    .line 90
    sget-object v5, Ly1/o;->b:Ljava/util/Map;

    .line 91
    .line 92
    invoke-static {v4, p3, p4}, Ly1/g;->o(Ljava/lang/String;Landroid/os/Bundle;Ly1/o;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    instance-of v6, v5, Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v6, :cond_66

    .line 99
    .line 100
    check-cast v5, Ljava/lang/String;

    .line 101
    .line 102
    goto :goto_67

    .line 103
    :cond_66
    move-object v5, v1

    .line 104
    :goto_67
    if-eqz v5, :cond_4d

    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_70

    .line 111
    .line 112
    goto :goto_4d

    .line 113
    :cond_70
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_4d

    .line 118
    .line 119
    if-eqz p5, :cond_7d

    .line 120
    .line 121
    iget-object p1, v0, Lr6/d;->a:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, Ljava/lang/String;
    :try_end_7c
    .catchall {:try_start_b .. :try_end_7c} :catchall_10

    .line 124
    .line 125
    return-object p1

    .line 126
    :cond_7d
    return-object v4

    .line 127
    :cond_7e
    :goto_7e
    return-object v1

    .line 128
    :goto_7f
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-object v1
.end method
