###### Class i2.j (i2.j)
.class public final Li2/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Li2/j;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Li2/m;
    .registers 47

    .line 1
    const-string v0, "com.android.billingclient.api.BillingClient"

    .line 2
    .line 3
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    const-string v0, "com.android.billingclient.api.Purchase"

    .line 8
    .line 9
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const-string v0, "com.android.billingclient.api.ProductDetails"

    .line 14
    .line 15
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-string v0, "com.android.billingclient.api.PurchaseHistoryRecord"

    .line 20
    .line 21
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const-string v0, "com.android.billingclient.api.QueryProductDetailsParams$Product"

    .line 26
    .line 27
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const-string v0, "com.android.billingclient.api.BillingResult"

    .line 32
    .line 33
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const-string v0, "com.android.billingclient.api.QueryProductDetailsParams"

    .line 38
    .line 39
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    const-string v0, "com.android.billingclient.api.QueryPurchaseHistoryParams"

    .line 44
    .line 45
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    const-string v0, "com.android.billingclient.api.QueryPurchasesParams"

    .line 50
    .line 51
    invoke-static {v0}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "com.android.billingclient.api.QueryProductDetailsParams$Builder"

    .line 56
    .line 57
    invoke-static {v1}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    const-string v1, "com.android.billingclient.api.QueryPurchaseHistoryParams$Builder"

    .line 62
    .line 63
    invoke-static {v1}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    const-string v1, "com.android.billingclient.api.QueryPurchasesParams$Builder"

    .line 68
    .line 69
    invoke-static {v1}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "com.android.billingclient.api.QueryProductDetailsParams$Product$Builder"

    .line 74
    .line 75
    invoke-static {v2}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    const-string v2, "com.android.billingclient.api.BillingClient$Builder"

    .line 80
    .line 81
    invoke-static {v2}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v14, "com.android.billingclient.api.PurchasesUpdatedListener"

    .line 86
    .line 87
    invoke-static {v14}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    const-string v15, "com.android.billingclient.api.BillingClientStateListener"

    .line 92
    .line 93
    invoke-static {v15}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    const-string v16, "com.android.billingclient.api.ProductDetailsResponseListener"

    .line 98
    .line 99
    invoke-static/range {v16 .. v16}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    move-result-object v16

    .line 103
    const-string v17, "com.android.billingclient.api.PurchasesResponseListener"

    .line 104
    .line 105
    invoke-static/range {v17 .. v17}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object v17

    .line 109
    const-string v18, "com.android.billingclient.api.PurchaseHistoryResponseListener"

    .line 110
    .line 111
    invoke-static/range {v18 .. v18}, Li2/t;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move-result-object v18

    .line 115
    move-object/from16 v19, v14

    .line 116
    .line 117
    const-string v14, "Failed to create Google Play billing library wrapper for in-app purchase auto-logging"

    .line 118
    .line 119
    move-object/from16 v20, v14

    .line 120
    .line 121
    if-eqz v3, :cond_9e

    .line 122
    .line 123
    if-eqz v4, :cond_9e

    .line 124
    .line 125
    if-eqz v5, :cond_9e

    .line 126
    .line 127
    if-eqz v6, :cond_9e

    .line 128
    .line 129
    if-eqz v7, :cond_9e

    .line 130
    .line 131
    if-eqz v8, :cond_9e

    .line 132
    .line 133
    if-eqz v9, :cond_9e

    .line 134
    .line 135
    if-eqz v10, :cond_9e

    .line 136
    .line 137
    if-eqz v0, :cond_9e

    .line 138
    .line 139
    if-eqz v11, :cond_9e

    .line 140
    .line 141
    if-eqz v12, :cond_9e

    .line 142
    .line 143
    if-eqz v1, :cond_9e

    .line 144
    .line 145
    if-eqz v13, :cond_9e

    .line 146
    .line 147
    if-eqz v2, :cond_9e

    .line 148
    .line 149
    if-eqz v19, :cond_9e

    .line 150
    .line 151
    if-eqz v15, :cond_9e

    .line 152
    .line 153
    if-eqz v16, :cond_9e

    .line 154
    .line 155
    if-eqz v17, :cond_9e

    .line 156
    .line 157
    if-nez v18, :cond_a4

    .line 158
    .line 159
    :cond_9e
    move-object/from16 v1, v20

    .line 160
    .line 161
    const/16 v34, 0x0

    .line 162
    .line 163
    goto/16 :goto_2be

    .line 164
    .line 165
    :cond_a4
    const/4 v14, 0x2

    .line 166
    move-object/from16 v22, v15

    .line 167
    .line 168
    new-array v15, v14, [Ljava/lang/Class;

    .line 169
    .line 170
    const/4 v14, 0x0

    .line 171
    aput-object v0, v15, v14

    .line 172
    .line 173
    const/4 v14, 0x1

    .line 174
    aput-object v17, v15, v14

    .line 175
    .line 176
    const-string v14, "queryPurchasesAsync"

    .line 177
    .line 178
    invoke-static {v3, v14, v15}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    move-object/from16 v25, v14

    .line 183
    .line 184
    const/4 v15, 0x0

    .line 185
    new-array v14, v15, [Ljava/lang/Class;

    .line 186
    .line 187
    move-object/from16 v26, v2

    .line 188
    .line 189
    const-string v2, "newBuilder"

    .line 190
    .line 191
    invoke-static {v0, v2, v14}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-array v14, v15, [Ljava/lang/Class;

    .line 196
    .line 197
    move/from16 v24, v15

    .line 198
    .line 199
    const-string v15, "build"

    .line 200
    .line 201
    invoke-static {v1, v15, v14}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    move-object/from16 v27, v0

    .line 206
    .line 207
    move-object/from16 v28, v14

    .line 208
    .line 209
    const/4 v0, 0x1

    .line 210
    new-array v14, v0, [Ljava/lang/Class;

    .line 211
    .line 212
    const-class v17, Ljava/lang/String;

    .line 213
    .line 214
    aput-object v17, v14, v24

    .line 215
    .line 216
    move/from16 v29, v0

    .line 217
    .line 218
    const-string v0, "setProductType"

    .line 219
    .line 220
    invoke-static {v1, v0, v14}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    move-object/from16 v30, v1

    .line 225
    .line 226
    move/from16 v14, v24

    .line 227
    .line 228
    new-array v1, v14, [Ljava/lang/Class;

    .line 229
    .line 230
    const-string v14, "getOriginalJson"

    .line 231
    .line 232
    invoke-static {v4, v14, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    move-object/from16 v31, v1

    .line 237
    .line 238
    move-object/from16 v32, v4

    .line 239
    .line 240
    const/4 v1, 0x2

    .line 241
    new-array v4, v1, [Ljava/lang/Class;

    .line 242
    .line 243
    aput-object v10, v4, v24

    .line 244
    .line 245
    aput-object v18, v4, v29

    .line 246
    .line 247
    const-string v1, "queryPurchaseHistoryAsync"

    .line 248
    .line 249
    invoke-static {v3, v1, v4}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    move-object/from16 v33, v1

    .line 254
    .line 255
    move/from16 v4, v24

    .line 256
    .line 257
    new-array v1, v4, [Ljava/lang/Class;

    .line 258
    .line 259
    invoke-static {v10, v2, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    move-object/from16 v34, v1

    .line 264
    .line 265
    new-array v1, v4, [Ljava/lang/Class;

    .line 266
    .line 267
    invoke-static {v12, v15, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    move/from16 v4, v29

    .line 272
    .line 273
    move-object/from16 v29, v1

    .line 274
    .line 275
    new-array v1, v4, [Ljava/lang/Class;

    .line 276
    .line 277
    aput-object v17, v1, v24

    .line 278
    .line 279
    invoke-static {v12, v0, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    move-object/from16 v36, v1

    .line 284
    .line 285
    move/from16 v35, v4

    .line 286
    .line 287
    move/from16 v4, v24

    .line 288
    .line 289
    new-array v1, v4, [Ljava/lang/Class;

    .line 290
    .line 291
    invoke-static {v6, v14, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    const/4 v14, 0x2

    .line 296
    new-array v14, v14, [Ljava/lang/Class;

    .line 297
    .line 298
    aput-object v9, v14, v4

    .line 299
    .line 300
    aput-object v16, v14, v35

    .line 301
    .line 302
    move-object/from16 v23, v1

    .line 303
    .line 304
    const-string v1, "queryProductDetailsAsync"

    .line 305
    .line 306
    invoke-static {v3, v1, v14}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    new-array v14, v4, [Ljava/lang/Class;

    .line 311
    .line 312
    invoke-static {v9, v2, v14}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 313
    .line 314
    .line 315
    move-result-object v14

    .line 316
    move-object/from16 v37, v1

    .line 317
    .line 318
    new-array v1, v4, [Ljava/lang/Class;

    .line 319
    .line 320
    invoke-static {v11, v15, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    move/from16 v4, v35

    .line 325
    .line 326
    move-object/from16 v35, v1

    .line 327
    .line 328
    new-array v1, v4, [Ljava/lang/Class;

    .line 329
    .line 330
    const-class v38, Ljava/util/List;

    .line 331
    .line 332
    aput-object v38, v1, v24

    .line 333
    .line 334
    const-string v4, "setProductList"

    .line 335
    .line 336
    invoke-static {v11, v4, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    move-object/from16 v39, v1

    .line 341
    .line 342
    move/from16 v4, v24

    .line 343
    .line 344
    new-array v1, v4, [Ljava/lang/Class;

    .line 345
    .line 346
    invoke-static {v7, v2, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    move-object/from16 v40, v1

    .line 351
    .line 352
    new-array v1, v4, [Ljava/lang/Class;

    .line 353
    .line 354
    invoke-static {v13, v15, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    move-object/from16 v38, v1

    .line 359
    .line 360
    const/4 v4, 0x1

    .line 361
    new-array v1, v4, [Ljava/lang/Class;

    .line 362
    .line 363
    aput-object v17, v1, v24

    .line 364
    .line 365
    move-object/from16 v41, v6

    .line 366
    .line 367
    const-string v6, "setProductId"

    .line 368
    .line 369
    invoke-static {v13, v6, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    new-array v6, v4, [Ljava/lang/Class;

    .line 374
    .line 375
    aput-object v17, v6, v24

    .line 376
    .line 377
    invoke-static {v13, v0, v6}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    const-string v6, "toString"

    .line 382
    .line 383
    move-object/from16 v42, v0

    .line 384
    .line 385
    move/from16 v4, v24

    .line 386
    .line 387
    new-array v0, v4, [Ljava/lang/Class;

    .line 388
    .line 389
    invoke-static {v5, v6, v0}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    const/4 v6, 0x1

    .line 394
    new-array v4, v6, [Ljava/lang/Class;

    .line 395
    .line 396
    aput-object v22, v4, v24

    .line 397
    .line 398
    const-string v6, "startConnection"

    .line 399
    .line 400
    invoke-static {v3, v6, v4}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    const-string v6, "getResponseCode"

    .line 405
    .line 406
    move-object/from16 v43, v0

    .line 407
    .line 408
    move-object/from16 v44, v1

    .line 409
    .line 410
    move/from16 v0, v24

    .line 411
    .line 412
    new-array v1, v0, [Ljava/lang/Class;

    .line 413
    .line 414
    invoke-static {v8, v6, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    if-eqz v25, :cond_1cb

    .line 419
    .line 420
    if-eqz v27, :cond_1cb

    .line 421
    .line 422
    if-eqz v28, :cond_1cb

    .line 423
    .line 424
    if-eqz v30, :cond_1cb

    .line 425
    .line 426
    if-eqz v31, :cond_1cb

    .line 427
    .line 428
    if-eqz v33, :cond_1cb

    .line 429
    .line 430
    if-eqz v34, :cond_1cb

    .line 431
    .line 432
    if-eqz v29, :cond_1cb

    .line 433
    .line 434
    if-eqz v36, :cond_1cb

    .line 435
    .line 436
    if-eqz v23, :cond_1cb

    .line 437
    .line 438
    if-eqz v37, :cond_1cb

    .line 439
    .line 440
    if-eqz v14, :cond_1cb

    .line 441
    .line 442
    if-eqz v35, :cond_1cb

    .line 443
    .line 444
    if-eqz v39, :cond_1cb

    .line 445
    .line 446
    if-eqz v40, :cond_1cb

    .line 447
    .line 448
    if-eqz v38, :cond_1cb

    .line 449
    .line 450
    if-eqz v44, :cond_1cb

    .line 451
    .line 452
    if-eqz v42, :cond_1cb

    .line 453
    .line 454
    if-eqz v43, :cond_1cb

    .line 455
    .line 456
    if-eqz v4, :cond_1cb

    .line 457
    .line 458
    if-nez v0, :cond_1cf

    .line 459
    .line 460
    :cond_1cb
    const/16 v34, 0x0

    .line 461
    .line 462
    goto/16 :goto_2b4

    .line 463
    .line 464
    :cond_1cf
    const/4 v6, 0x1

    .line 465
    new-array v1, v6, [Ljava/lang/Class;

    .line 466
    .line 467
    const-class v17, Landroid/content/Context;

    .line 468
    .line 469
    const/4 v6, 0x0

    .line 470
    aput-object v17, v1, v6

    .line 471
    .line 472
    invoke-static {v3, v2, v1}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    move/from16 v24, v6

    .line 477
    .line 478
    const/4 v2, 0x1

    .line 479
    new-array v6, v2, [Ljava/lang/Class;

    .line 480
    .line 481
    aput-object v19, v6, v24

    .line 482
    .line 483
    const-string v2, "setListener"

    .line 484
    .line 485
    move-object/from16 v25, v0

    .line 486
    .line 487
    move-object/from16 v0, v26

    .line 488
    .line 489
    invoke-static {v0, v2, v6}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    const-string v6, "enablePendingPurchases"

    .line 494
    .line 495
    move-object/from16 v26, v4

    .line 496
    .line 497
    move/from16 v4, v24

    .line 498
    .line 499
    move-object/from16 v24, v5

    .line 500
    .line 501
    new-array v5, v4, [Ljava/lang/Class;

    .line 502
    .line 503
    invoke-static {v0, v6, v5}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    new-array v6, v4, [Ljava/lang/Class;

    .line 508
    .line 509
    invoke-static {v0, v15, v6}, Li2/t;->f(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    if-eqz v6, :cond_208

    .line 514
    .line 515
    if-eqz v2, :cond_208

    .line 516
    .line 517
    if-eqz v1, :cond_208

    .line 518
    .line 519
    if-nez v5, :cond_20f

    .line 520
    .line 521
    :cond_208
    move-object/from16 v27, v3

    .line 522
    .line 523
    move-object/from16 v19, v7

    .line 524
    .line 525
    move-object/from16 v7, p0

    .line 526
    .line 527
    goto :goto_238

    .line 528
    :cond_20f
    move/from16 v17, v4

    .line 529
    .line 530
    const/4 v15, 0x1

    .line 531
    new-array v4, v15, [Ljava/lang/Object;

    .line 532
    .line 533
    aput-object p1, v4, v17

    .line 534
    .line 535
    const/4 v15, 0x0

    .line 536
    invoke-static {v3, v1, v15, v4}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 541
    .line 542
    .line 543
    move-result-object v4

    .line 544
    move-object/from16 v27, v3

    .line 545
    .line 546
    const/4 v15, 0x1

    .line 547
    new-array v3, v15, [Ljava/lang/Class;

    .line 548
    .line 549
    aput-object v19, v3, v17

    .line 550
    .line 551
    move-object/from16 v19, v7

    .line 552
    .line 553
    move-object/from16 v7, p0

    .line 554
    .line 555
    invoke-static {v4, v3, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    new-array v4, v15, [Ljava/lang/Object;

    .line 560
    .line 561
    aput-object v3, v4, v17

    .line 562
    .line 563
    invoke-static {v0, v2, v1, v4}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    if-nez v1, :cond_23a

    .line 568
    .line 569
    :goto_238
    const/4 v2, 0x0

    .line 570
    goto :goto_249

    .line 571
    :cond_23a
    move/from16 v4, v17

    .line 572
    .line 573
    new-array v2, v4, [Ljava/lang/Object;

    .line 574
    .line 575
    invoke-static {v0, v5, v1, v2}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    new-array v2, v4, [Ljava/lang/Object;

    .line 580
    .line 581
    invoke-static {v0, v6, v1, v2}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v15

    .line 585
    move-object v2, v15

    .line 586
    :goto_249
    if-nez v2, :cond_257

    .line 587
    .line 588
    invoke-static {}, Li2/m;->b()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    const-string v1, "Failed to build a Google Play billing library wrapper for in-app purchase auto-logging"

    .line 593
    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    const/16 v21, 0x0

    .line 598
    .line 599
    return-object v21

    .line 600
    :cond_257
    const/16 v21, 0x0

    .line 601
    .line 602
    new-instance v1, Li2/m;

    .line 603
    .line 604
    move-object/from16 v15, v16

    .line 605
    .line 606
    move-object/from16 v16, v18

    .line 607
    .line 608
    move-object/from16 v7, v19

    .line 609
    .line 610
    move-object/from16 v5, v24

    .line 611
    .line 612
    move-object/from16 v3, v27

    .line 613
    .line 614
    move-object/from16 v20, v29

    .line 615
    .line 616
    move-object/from16 v17, v31

    .line 617
    .line 618
    move-object/from16 v4, v32

    .line 619
    .line 620
    move-object/from16 v18, v33

    .line 621
    .line 622
    move-object/from16 v19, v34

    .line 623
    .line 624
    move-object/from16 v28, v38

    .line 625
    .line 626
    move-object/from16 v27, v40

    .line 627
    .line 628
    move-object/from16 v6, v41

    .line 629
    .line 630
    move-object/from16 v30, v42

    .line 631
    .line 632
    move-object/from16 v31, v43

    .line 633
    .line 634
    move-object/from16 v29, v44

    .line 635
    .line 636
    move-object/from16 v24, v14

    .line 637
    .line 638
    move-object/from16 v34, v21

    .line 639
    .line 640
    move-object/from16 v14, v22

    .line 641
    .line 642
    move-object/from16 v22, v23

    .line 643
    .line 644
    move-object/from16 v33, v25

    .line 645
    .line 646
    move-object/from16 v32, v26

    .line 647
    .line 648
    move-object/from16 v25, v35

    .line 649
    .line 650
    move-object/from16 v21, v36

    .line 651
    .line 652
    move-object/from16 v23, v37

    .line 653
    .line 654
    move-object/from16 v26, v39

    .line 655
    .line 656
    invoke-direct/range {v1 .. v33}, Li2/m;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 657
    .line 658
    .line 659
    const-class v2, Li2/m;

    .line 660
    .line 661
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-eqz v0, :cond_29b

    .line 666
    .line 667
    goto :goto_2a2

    .line 668
    :cond_29b
    :try_start_29b
    sput-object v1, Li2/m;->I:Li2/m;
    :try_end_29d
    .catchall {:try_start_29b .. :try_end_29d} :catchall_29e

    .line 669
    .line 670
    goto :goto_2a2

    .line 671
    :catchall_29e
    move-exception v0

    .line 672
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 673
    .line 674
    .line 675
    :goto_2a2
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-eqz v0, :cond_2ab

    .line 680
    .line 681
    :goto_2a8
    move-object/from16 v14, v34

    .line 682
    .line 683
    goto :goto_2b3

    .line 684
    :cond_2ab
    :try_start_2ab
    sget-object v14, Li2/m;->I:Li2/m;
    :try_end_2ad
    .catchall {:try_start_2ab .. :try_end_2ad} :catchall_2ae

    .line 685
    .line 686
    goto :goto_2b3

    .line 687
    :catchall_2ae
    move-exception v0

    .line 688
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 689
    .line 690
    .line 691
    goto :goto_2a8

    .line 692
    :goto_2b3
    return-object v14

    .line 693
    :goto_2b4
    invoke-static {}, Li2/m;->b()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    move-object/from16 v1, v20

    .line 698
    .line 699
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .line 701
    .line 702
    return-object v34

    .line 703
    :goto_2be
    invoke-static {}, Li2/m;->b()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    .line 709
    .line 710
    return-object v34
.end method

.method public declared-synchronized b(Landroid/content/Context;)Li2/m;
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-class v0, Li2/m;

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
    sget-object v2, Li2/m;->I:Li2/m;
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
    invoke-virtual {p0, p1}, Li2/j;->a(Landroid/content/Context;)Li2/m;

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

.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget p3, p0, Li2/j;->a:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_2a

    .line 4
    .line 5
    .line 6
    const-string p3, "proxy"

    .line 7
    .line 8
    invoke-static {p3, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "m"

    .line 12
    .line 13
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :pswitch_11
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_18

    .line 23
    .line 24
    goto :goto_27

    .line 25
    :cond_18
    :try_start_18
    const-string p3, "proxy"

    .line 26
    .line 27
    invoke-static {p3, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string p1, "m"

    .line 31
    .line 32
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_23

    .line 33
    .line 34
    .line 35
    goto :goto_27

    .line 36
    :catchall_23
    move-exception p1

    .line 37
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :goto_27
    const/4 p1, 0x0

    .line 41
    return-object p1

    .line 42
    nop

    .line 43
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method
