###### Class i2.p (i2.p)
.class public final Li2/p;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Li2/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Li2/p;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li2/p;->a:Li2/p;

    .line 7
    .line 8
    return-void
.end method

.method public static c(Landroid/content/Context;)Li2/l;
    .registers 23

    .line 1
    sget-object v1, Li2/r;->g:Li2/p;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_3
    const-class v2, Li2/r;

    .line 5
    .line 6
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1e

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v0, :cond_e

    .line 12
    .line 13
    :goto_c
    move-object v0, v3

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    :try_start_e
    sget-object v0, Li2/r;->h:Li2/r;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_11

    .line 16
    .line 17
    goto :goto_16

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    :try_start_12
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_c

    .line 23
    :goto_16
    if-nez v0, :cond_1c

    .line 24
    .line 25
    invoke-static {}, Li2/p;->d()Li2/r;

    .line 26
    .line 27
    .line 28
    move-result-object v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1e

    .line 29
    :cond_1c
    move-object v15, v0

    .line 30
    goto :goto_21

    .line 31
    :catchall_1e
    move-exception v0

    .line 32
    goto/16 :goto_1b4

    .line 33
    .line 34
    :goto_21
    monitor-exit v1

    .line 35
    if-nez v15, :cond_25

    .line 36
    .line 37
    return-object v3

    .line 38
    :cond_25
    const-string v0, "com.android.billingclient.api.BillingClient"

    .line 39
    .line 40
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string v0, "com.android.billingclient.api.Purchase"

    .line 45
    .line 46
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "com.android.billingclient.api.Purchase$PurchasesResult"

    .line 51
    .line 52
    invoke-static {v1}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "com.android.billingclient.api.SkuDetails"

    .line 57
    .line 58
    invoke-static {v2}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const-string v2, "com.android.billingclient.api.PurchaseHistoryRecord"

    .line 63
    .line 64
    invoke-static {v2}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    const-string v2, "com.android.billingclient.api.SkuDetailsResponseListener"

    .line 69
    .line 70
    invoke-static {v2}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    const-string v2, "com.android.billingclient.api.PurchaseHistoryResponseListener"

    .line 75
    .line 76
    invoke-static {v2}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    if-eqz v6, :cond_5d

    .line 81
    .line 82
    if-eqz v1, :cond_5d

    .line 83
    .line 84
    if-eqz v0, :cond_5d

    .line 85
    .line 86
    if-eqz v7, :cond_5d

    .line 87
    .line 88
    if-eqz v9, :cond_5d

    .line 89
    .line 90
    if-eqz v8, :cond_5d

    .line 91
    .line 92
    if-nez v10, :cond_61

    .line 93
    .line 94
    :cond_5d
    move-object/from16 v16, v3

    .line 95
    .line 96
    goto/16 :goto_1aa

    .line 97
    .line 98
    :cond_61
    const-string v2, "queryPurchases"

    .line 99
    .line 100
    const/4 v4, 0x1

    .line 101
    new-array v5, v4, [Ljava/lang/Class;

    .line 102
    .line 103
    const-class v11, Ljava/lang/String;

    .line 104
    .line 105
    const/4 v12, 0x0

    .line 106
    aput-object v11, v5, v12

    .line 107
    .line 108
    invoke-static {v6, v2, v5}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const-string v5, "getPurchasesList"

    .line 113
    .line 114
    new-array v11, v12, [Ljava/lang/Class;

    .line 115
    .line 116
    invoke-static {v1, v5, v11}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v5, "getOriginalJson"

    .line 121
    .line 122
    new-array v11, v12, [Ljava/lang/Class;

    .line 123
    .line 124
    invoke-static {v0, v5, v11}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    const-string v0, "getOriginalJson"

    .line 129
    .line 130
    new-array v11, v12, [Ljava/lang/Class;

    .line 131
    .line 132
    invoke-static {v7, v0, v11}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    const-string v0, "getOriginalJson"

    .line 137
    .line 138
    new-array v13, v12, [Ljava/lang/Class;

    .line 139
    .line 140
    invoke-static {v8, v0, v13}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    const-string v14, "querySkuDetailsAsync"

    .line 145
    .line 146
    invoke-static {v15}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_99

    .line 151
    .line 152
    :goto_97
    move-object v0, v3

    .line 153
    goto :goto_a1

    .line 154
    :cond_99
    :try_start_99
    iget-object v0, v15, Li2/r;->a:Ljava/lang/Class;
    :try_end_9b
    .catchall {:try_start_99 .. :try_end_9b} :catchall_9c

    .line 155
    .line 156
    goto :goto_a1

    .line 157
    :catchall_9c
    move-exception v0

    .line 158
    invoke-static {v0, v15}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_97

    .line 162
    :goto_a1
    const/4 v3, 0x2

    .line 163
    move/from16 v17, v12

    .line 164
    .line 165
    new-array v12, v3, [Ljava/lang/Class;

    .line 166
    .line 167
    aput-object v0, v12, v17

    .line 168
    .line 169
    aput-object v9, v12, v4

    .line 170
    .line 171
    invoke-static {v6, v14, v12}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v12, "queryPurchaseHistoryAsync"

    .line 176
    .line 177
    new-array v3, v3, [Ljava/lang/Class;

    .line 178
    .line 179
    const-class v14, Ljava/lang/String;

    .line 180
    .line 181
    aput-object v14, v3, v17

    .line 182
    .line 183
    aput-object v10, v3, v4

    .line 184
    .line 185
    invoke-static {v6, v12, v3}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    if-eqz v2, :cond_19e

    .line 190
    .line 191
    if-eqz v1, :cond_19e

    .line 192
    .line 193
    if-eqz v5, :cond_19e

    .line 194
    .line 195
    if-eqz v11, :cond_19e

    .line 196
    .line 197
    if-eqz v13, :cond_19e

    .line 198
    .line 199
    if-eqz v0, :cond_19e

    .line 200
    .line 201
    if-nez v14, :cond_cc

    .line 202
    .line 203
    goto/16 :goto_19e

    .line 204
    .line 205
    :cond_cc
    const-string v1, "com.android.billingclient.api.BillingClient$Builder"

    .line 206
    .line 207
    invoke-static {v1}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-string v2, "com.android.billingclient.api.PurchasesUpdatedListener"

    .line 212
    .line 213
    invoke-static {v2}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    if-eqz v1, :cond_dc

    .line 218
    .line 219
    if-nez v2, :cond_df

    .line 220
    .line 221
    :cond_dc
    move-object/from16 v17, v0

    .line 222
    .line 223
    goto :goto_127

    .line 224
    :cond_df
    const-string v3, "newBuilder"

    .line 225
    .line 226
    new-array v5, v4, [Ljava/lang/Class;

    .line 227
    .line 228
    const-class v12, Landroid/content/Context;

    .line 229
    .line 230
    aput-object v12, v5, v17

    .line 231
    .line 232
    invoke-static {v6, v3, v5}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    const-string v5, "enablePendingPurchases"

    .line 237
    .line 238
    move/from16 v12, v17

    .line 239
    .line 240
    new-array v4, v12, [Ljava/lang/Class;

    .line 241
    .line 242
    invoke-static {v1, v5, v4}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    const-string v5, "setListener"

    .line 247
    .line 248
    move-object/from16 v17, v0

    .line 249
    .line 250
    move/from16 v18, v12

    .line 251
    .line 252
    const/4 v12, 0x1

    .line 253
    new-array v0, v12, [Ljava/lang/Class;

    .line 254
    .line 255
    aput-object v2, v0, v18

    .line 256
    .line 257
    invoke-static {v1, v5, v0}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    const-string v5, "build"

    .line 262
    .line 263
    move/from16 v12, v18

    .line 264
    .line 265
    move-object/from16 v18, v2

    .line 266
    .line 267
    new-array v2, v12, [Ljava/lang/Class;

    .line 268
    .line 269
    invoke-static {v1, v5, v2}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    if-eqz v3, :cond_127

    .line 274
    .line 275
    if-eqz v4, :cond_127

    .line 276
    .line 277
    if-eqz v0, :cond_127

    .line 278
    .line 279
    if-nez v2, :cond_119

    .line 280
    .line 281
    goto :goto_127

    .line 282
    :cond_119
    move/from16 v19, v12

    .line 283
    .line 284
    const/4 v5, 0x1

    .line 285
    new-array v12, v5, [Ljava/lang/Object;

    .line 286
    .line 287
    aput-object p0, v12, v19

    .line 288
    .line 289
    const/4 v5, 0x0

    .line 290
    invoke-static {v6, v3, v5, v12}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    if-nez v3, :cond_12d

    .line 295
    .line 296
    :cond_127
    :goto_127
    move-object/from16 v20, v6

    .line 297
    .line 298
    move-object/from16 v21, v7

    .line 299
    .line 300
    :goto_12b
    const/4 v5, 0x0

    .line 301
    goto :goto_161

    .line 302
    :cond_12d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    move-object/from16 v20, v6

    .line 307
    .line 308
    const/4 v12, 0x1

    .line 309
    new-array v6, v12, [Ljava/lang/Class;

    .line 310
    .line 311
    aput-object v18, v6, v19

    .line 312
    .line 313
    new-instance v12, Li2/j;

    .line 314
    .line 315
    move-object/from16 v21, v7

    .line 316
    .line 317
    move/from16 v7, v19

    .line 318
    .line 319
    invoke-direct {v12, v7}, Li2/j;-><init>(I)V

    .line 320
    .line 321
    .line 322
    invoke-static {v5, v6, v12}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    const/4 v12, 0x1

    .line 327
    new-array v6, v12, [Ljava/lang/Object;

    .line 328
    .line 329
    aput-object v5, v6, v7

    .line 330
    .line 331
    invoke-static {v1, v0, v3, v6}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    if-nez v0, :cond_151

    .line 336
    .line 337
    :goto_150
    goto :goto_12b

    .line 338
    :cond_151
    new-array v3, v7, [Ljava/lang/Object;

    .line 339
    .line 340
    invoke-static {v1, v4, v0, v3}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    if-nez v0, :cond_15a

    .line 345
    .line 346
    goto :goto_150

    .line 347
    :cond_15a
    new-array v3, v7, [Ljava/lang/Object;

    .line 348
    .line 349
    invoke-static {v1, v2, v0, v3}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    move-object v5, v0

    .line 354
    :goto_161
    if-nez v5, :cond_16f

    .line 355
    .line 356
    invoke-static {}, Li2/l;->b()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    const-string v1, "Failed to build a Google Play billing library wrapper for in-app purchase auto-logging"

    .line 361
    .line 362
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    const/16 v16, 0x0

    .line 366
    .line 367
    return-object v16

    .line 368
    :cond_16f
    new-instance v4, Li2/l;

    .line 369
    .line 370
    move-object v12, v13

    .line 371
    move-object/from16 v13, v17

    .line 372
    .line 373
    move-object/from16 v6, v20

    .line 374
    .line 375
    move-object/from16 v7, v21

    .line 376
    .line 377
    invoke-direct/range {v4 .. v15}, Li2/l;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Li2/r;)V

    .line 378
    .line 379
    .line 380
    const-class v1, Li2/l;

    .line 381
    .line 382
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-eqz v0, :cond_184

    .line 387
    .line 388
    goto :goto_18b

    .line 389
    :cond_184
    :try_start_184
    sput-object v4, Li2/l;->m:Li2/l;
    :try_end_186
    .catchall {:try_start_184 .. :try_end_186} :catchall_187

    .line 390
    .line 391
    goto :goto_18b

    .line 392
    :catchall_187
    move-exception v0

    .line 393
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :goto_18b
    const-class v1, Li2/l;

    .line 397
    .line 398
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-eqz v0, :cond_195

    .line 403
    .line 404
    :goto_193
    const/4 v3, 0x0

    .line 405
    goto :goto_19d

    .line 406
    :cond_195
    :try_start_195
    sget-object v3, Li2/l;->m:Li2/l;
    :try_end_197
    .catchall {:try_start_195 .. :try_end_197} :catchall_198

    .line 407
    .line 408
    goto :goto_19d

    .line 409
    :catchall_198
    move-exception v0

    .line 410
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    goto :goto_193

    .line 414
    :goto_19d
    return-object v3

    .line 415
    :cond_19e
    :goto_19e
    invoke-static {}, Li2/l;->b()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    const-string v1, "Failed to create Google Play billing library wrapper for in-app purchase auto-logging"

    .line 420
    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    const/16 v16, 0x0

    .line 425
    .line 426
    return-object v16

    .line 427
    :goto_1aa
    invoke-static {}, Li2/l;->b()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    const-string v1, "Failed to create Google Play billing library wrapper for in-app purchase auto-logging"

    .line 432
    .line 433
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    return-object v16

    .line 437
    :goto_1b4
    :try_start_1b4
    monitor-exit v1
    :try_end_1b5
    .catchall {:try_start_1b4 .. :try_end_1b5} :catchall_1e

    .line 438
    throw v0
.end method

.method public static d()Li2/r;
    .registers 9

    .line 1
    const-string v0, "com.android.billingclient.api.SkuDetailsParams"

    .line 2
    .line 3
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v0, "com.android.billingclient.api.SkuDetailsParams$Builder"

    .line 8
    .line 9
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v8, 0x0

    .line 14
    if-eqz v2, :cond_68

    .line 15
    .line 16
    if-nez v3, :cond_12

    .line 17
    .line 18
    goto :goto_68

    .line 19
    :cond_12
    const-string v0, "newBuilder"

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    new-array v4, v1, [Ljava/lang/Class;

    .line 23
    .line 24
    invoke-static {v2, v0, v4}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/4 v0, 0x1

    .line 29
    new-array v5, v0, [Ljava/lang/Class;

    .line 30
    .line 31
    const-class v6, Ljava/lang/String;

    .line 32
    .line 33
    aput-object v6, v5, v1

    .line 34
    .line 35
    const-string v6, "setType"

    .line 36
    .line 37
    invoke-static {v3, v6, v5}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    new-array v0, v0, [Ljava/lang/Class;

    .line 42
    .line 43
    const-class v6, Ljava/util/List;

    .line 44
    .line 45
    aput-object v6, v0, v1

    .line 46
    .line 47
    const-string v6, "setSkusList"

    .line 48
    .line 49
    invoke-static {v3, v6, v0}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-string v0, "build"

    .line 54
    .line 55
    new-array v1, v1, [Ljava/lang/Class;

    .line 56
    .line 57
    invoke-static {v3, v0, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    if-eqz v4, :cond_68

    .line 62
    .line 63
    if-eqz v5, :cond_68

    .line 64
    .line 65
    if-eqz v6, :cond_68

    .line 66
    .line 67
    if-nez v7, :cond_45

    .line 68
    .line 69
    goto :goto_68

    .line 70
    :cond_45
    new-instance v1, Li2/r;

    .line 71
    .line 72
    invoke-direct/range {v1 .. v7}, Li2/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 73
    .line 74
    .line 75
    const-class v2, Li2/r;

    .line 76
    .line 77
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_53

    .line 82
    .line 83
    goto :goto_5a

    .line 84
    :cond_53
    :try_start_53
    sput-object v1, Li2/r;->h:Li2/r;
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_56

    .line 85
    .line 86
    goto :goto_5a

    .line 87
    :catchall_56
    move-exception v0

    .line 88
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :goto_5a
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_61

    .line 96
    .line 97
    goto :goto_68

    .line 98
    :cond_61
    :try_start_61
    sget-object v8, Li2/r;->h:Li2/r;
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_64

    .line 99
    .line 100
    goto :goto_68

    .line 101
    :catchall_64
    move-exception v0

    .line 102
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_68
    :goto_68
    return-object v8
.end method

.method public static final e()V
    .registers 5

    .line 1
    const-class v0, Li2/p;

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
    return-void

    .line 10
    :cond_9
    :try_start_9
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "com.facebook.internal.SKU_DETAILS"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v4, "com.facebook.internal.PURCHASE"

    .line 26
    .line 27
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    .line 41
    .line 42
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "com.facebook.internal.iap.PRODUCT_DETAILS"

    .line 58
    .line 59
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_4a

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_4a
    move-exception v1

    .line 76
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public static final f(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;ZLjava/lang/String;IZ)V
    .registers 8

    .line 1
    const-class v0, Li2/p;

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
    goto :goto_51

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "purchaseDetailsMap"

    .line 11
    .line 12
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "skuDetailsMap"

    .line 16
    .line 17
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "billingClientVersion"

    .line 21
    .line 22
    invoke-static {p4, v1}, La1/a;->n(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Li2/p;->a:Li2/p;

    .line 26
    .line 27
    invoke-virtual {v1, p0, p2}, Li2/p;->a(Ljava/util/Map;Z)Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0, p1, p3}, Li2/p;->b(Ljava/util/HashMap;Ljava/util/Map;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_52

    .line 39
    if-eqz p1, :cond_29

    .line 40
    .line 41
    goto :goto_51

    .line 42
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_51

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/util/Map$Entry;

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p3, p1, p2, p4, p5}, Lk2/k;->e(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    :try_end_4c
    .catchall {:try_start_29 .. :try_end_4c} :catchall_4d

    .line 75
    .line 76
    .line 77
    goto :goto_31

    .line 78
    :catchall_4d
    move-exception p0

    .line 79
    :try_start_4e
    invoke-static {p0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    .line 80
    .line 81
    .line 82
    :cond_51
    :goto_51
    return-void

    .line 83
    :catchall_52
    move-exception p0

    .line 84
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public static g()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 3

    .line 1
    const-class v0, Li2/l;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

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
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v0, Li2/l;->o:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_d
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public static i()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 3

    .line 1
    const-class v0, Li2/l;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

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
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v0, Li2/l;->q:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_d
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public static j()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 3

    .line 1
    const-class v0, Li2/l;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

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
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v0, Li2/l;->p:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    .line 12
    .line 13
    return-object v0

    .line 14
    :catchall_d
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public static final k()V
    .registers 13

    .line 1
    const-string v0, "PURCHASE_DETAILS_SET"

    .line 2
    .line 3
    const-string v1, "TIME_OF_LAST_LOGGED_SUBSCRIPTION"

    .line 4
    .line 5
    const-string v2, "TIME_OF_LAST_LOGGED_PURCHASE"

    .line 6
    .line 7
    const-class v3, Li2/p;

    .line 8
    .line 9
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-eqz v4, :cond_10

    .line 14
    .line 15
    goto/16 :goto_c3

    .line 16
    .line 17
    :cond_10
    :try_start_10
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "com.facebook.internal.iap.IAP_CACHE_GPBLV2V7"

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-wide/16 v7, 0x0

    .line 29
    .line 30
    invoke-interface {v4, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v9

    .line 34
    invoke-interface {v4, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v7

    .line 42
    const-wide v9, 0x19451288e80L

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 52
    .line 53
    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    const-string v10, "com.facebook.internal.iap.PRODUCT_DETAILS"

    .line 61
    .line 62
    invoke-virtual {v9, v10, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-interface {v6, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_aa

    .line 71
    .line 72
    new-instance v9, Ljava/util/HashSet;

    .line 73
    .line 74
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-interface {v6, v0, v9}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_5a

    .line 82
    .line 83
    new-instance v0, Ljava/util/HashSet;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 86
    .line 87
    .line 88
    goto :goto_5c

    .line 89
    :catchall_58
    move-exception v0

    .line 90
    goto :goto_c4

    .line 91
    :cond_5a
    check-cast v0, Ljava/util/Collection;

    .line 92
    .line 93
    :goto_5c
    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->addAll(Ljava/util/Collection;)Z

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :catch_63
    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_aa

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Ljava/lang/String;
    :try_end_6f
    .catchall {:try_start_10 .. :try_end_6f} :catchall_58

    .line 111
    .line 112
    :try_start_6f
    const-string v6, ";"

    .line 113
    .line 114
    filled-new-array {v6}, [Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    const/4 v9, 0x2

    .line 119
    invoke-static {v5, v6, v9, v9}, Lk7/g;->J(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const/4 v6, 0x1

    .line 124
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 131
    .line 132
    .line 133
    move-result-wide v5

    .line 134
    const-wide/16 v9, 0x3e8

    .line 135
    .line 136
    mul-long/2addr v5, v9

    .line 137
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    add-int/lit8 v9, v9, -0xd

    .line 146
    .line 147
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    int-to-double v9, v9

    .line 152
    const-wide v11, 0x408f400000000000L    # 1000.0

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    invoke-static {v11, v12}, Ljava/lang/Math;->log10(D)D

    .line 158
    .line 159
    .line 160
    move-result-wide v11

    .line 161
    cmpl-double v9, v9, v11

    .line 162
    .line 163
    if-ltz v9, :cond_a5

    .line 164
    .line 165
    goto :goto_63

    .line 166
    :cond_a5
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 167
    .line 168
    .line 169
    move-result-wide v7
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_a9} :catch_63
    .catchall {:try_start_6f .. :try_end_a9} :catchall_58

    .line 170
    goto :goto_63

    .line 171
    :cond_aa
    :try_start_aa
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 180
    .line 181
    .line 182
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-interface {v0, v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Li2/p;->e()V
    :try_end_c3
    .catchall {:try_start_aa .. :try_end_c3} :catchall_58

    .line 194
    .line 195
    .line 196
    :goto_c3
    return-void

    .line 197
    :goto_c4
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public static final l()V
    .registers 4

    .line 1
    const-class v0, Li2/p;

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
    goto :goto_25

    .line 10
    :cond_9
    :try_start_9
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "com.facebook.internal.iap.IAP_CACHE_GPBLV2V7"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_23

    .line 21
    :try_start_14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "APP_HAS_BEEN_LAUNCHED_KEY"

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_25
    .catchall {:try_start_14 .. :try_end_22} :catchall_23

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_23
    move-exception v1

    .line 37
    goto :goto_26

    .line 38
    :catch_25
    :goto_25
    return-void

    .line 39
    :goto_26
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static final m()V
    .registers 6

    .line 1
    const-class v0, Li2/p;

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
    invoke-static {}, Li2/p;->l()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_36

    .line 11
    .line 12
    .line 13
    :try_start_c
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "com.facebook.internal.iap.IAP_CACHE_GPBLV2V7"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v5, "TIME_OF_LAST_LOGGED_SUBSCRIPTION"

    .line 33
    .line 34
    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v4, "TIME_OF_LAST_LOGGED_PURCHASE"

    .line 46
    .line 47
    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_35} :catch_38
    .catchall {:try_start_c .. :try_end_35} :catchall_36

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_36
    move-exception v1

    .line 56
    goto :goto_39

    .line 57
    :catch_38
    :goto_38
    return-void

    .line 58
    :goto_39
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Z)Ljava/util/HashMap;
    .registers 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "purchaseTime"

    .line 4
    .line 5
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_c

    .line 11
    .line 12
    return-object v3

    .line 13
    :cond_c
    :try_start_c
    const-string v2, "purchaseDetailsMap"

    .line 14
    .line 15
    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v4, "com.facebook.internal.iap.IAP_CACHE_GPBLV2V7"

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 26
    .line 27
    .line 28
    move-result-object v2
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_2c

    .line 29
    const-string v4, "TIME_OF_LAST_LOGGED_PURCHASE"

    .line 30
    .line 31
    const-wide v5, 0x19451288e80L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-string v7, "TIME_OF_LAST_LOGGED_SUBSCRIPTION"

    .line 37
    .line 38
    if-eqz p2, :cond_2e

    .line 39
    .line 40
    :try_start_27
    invoke-interface {v2, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    goto :goto_32

    .line 45
    :catchall_2c
    move-exception v0

    .line 46
    goto :goto_99

    .line 47
    :cond_2e
    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    :goto_32
    invoke-static {v0}, Ls6/r;->x(Ljava/util/Map;)Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const-wide/16 v9, 0x0

    .line 64
    .line 65
    :catch_40
    :cond_40
    :goto_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    if-eqz v11, :cond_76

    .line 70
    .line 71
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    check-cast v11, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    check-cast v12, Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    check-cast v11, Lorg/json/JSONObject;
    :try_end_58
    .catchall {:try_start_27 .. :try_end_58} :catchall_2c

    .line 88
    .line 89
    :try_start_58
    const-string v13, "purchaseToken"

    .line 90
    .line 91
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    if-eqz v13, :cond_40

    .line 96
    .line 97
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-eqz v13, :cond_40

    .line 102
    .line 103
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v13

    .line 107
    cmp-long v11, v13, v5

    .line 108
    .line 109
    if-gtz v11, :cond_71

    .line 110
    .line 111
    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_71
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v9
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_75} :catch_40
    .catchall {:try_start_58 .. :try_end_75} :catchall_2c

    .line 118
    goto :goto_40

    .line 119
    :cond_76
    cmp-long v1, v9, v5

    .line 120
    .line 121
    if-ltz v1, :cond_93

    .line 122
    .line 123
    if-eqz p2, :cond_88

    .line 124
    .line 125
    :try_start_7c
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v1, v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    .line 135
    .line 136
    goto :goto_93

    .line 137
    :cond_88
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-interface {v1, v4, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    .line 147
    .line 148
    :cond_93
    :goto_93
    new-instance v1, Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_98
    .catchall {:try_start_7c .. :try_end_98} :catchall_2c

    .line 151
    .line 152
    .line 153
    return-object v1

    .line 154
    :goto_99
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return-object v3
.end method

.method public b(Ljava/util/HashMap;Ljava/util/Map;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .registers 10

    .line 1
    const-string v0, "packageName"

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
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "purchaseDetailsMap"

    .line 12
    .line 13
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "skuDetailsMap"

    .line 17
    .line 18
    invoke-static {v1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :catch_21
    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_5c

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lorg/json/JSONObject;

    .line 57
    .line 58
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lorg/json/JSONObject;
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_5a

    .line 63
    .line 64
    :try_start_3f
    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    if-eqz v4, :cond_21

    .line 68
    .line 69
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v5, "purchaseDetail.toString()"

    .line 74
    .line 75
    invoke-static {v5, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const-string v5, "skuDetail.toString()"

    .line 83
    .line 84
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_59} :catch_21
    .catchall {:try_start_3f .. :try_end_59} :catchall_5a

    .line 88
    .line 89
    .line 90
    goto :goto_21

    .line 91
    :catchall_5a
    move-exception p1

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    return-object v1

    .line 94
    :goto_5d
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-object v2
.end method

.method public declared-synchronized h(Landroid/content/Context;)Li2/l;
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-class v0, Li2/l;

    .line 3
    .line 4
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_19

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_b

    .line 10
    .line 11
    goto :goto_12

    .line 12
    :cond_b
    :try_start_b
    sget-object v2, Li2/l;->m:Li2/l;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_e

    .line 13
    .line 14
    goto :goto_12

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    :try_start_f
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :goto_12
    if-nez v2, :cond_1b

    .line 20
    .line 21
    invoke-static {p1}, Li2/p;->c(Landroid/content/Context;)Li2/l;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_19

    .line 25
    goto :goto_1b

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    :goto_1b
    monitor-exit p0

    .line 29
    return-object v2

    .line 30
    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_19

    .line 31
    throw p1
.end method
