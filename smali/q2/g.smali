###### Class q2.g (q2.g)
.class public abstract Lq2/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "com.chrome.beta"

    .line 2
    .line 3
    const-string v1, "com.chrome.dev"

    .line 4
    .line 5
    const-string v2, "com.android.chrome"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lq2/g;->a:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static a(I)Lq2/o;
    .registers 6

    .line 1
    invoke-static {}, Lq2/o;->values()[Lq2/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_12

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lq2/o;->a:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_f

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_6

    .line 19
    :cond_12
    sget-object p0, Lq2/o;->b:Lq2/o;

    .line 20
    .line 21
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lq2/c;
    .registers 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "limit_tracking"

    .line 4
    .line 5
    const-string v2, "androidid"

    .line 6
    .line 7
    const-string v3, "aid"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    :try_start_b
    invoke-static {v1}, Lq2/g;->g(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    if-nez v7, :cond_13

    .line 17
    .line 18
    :cond_11
    :goto_11
    move-object v10, v6

    .line 19
    goto :goto_71

    .line 20
    :cond_13
    const-string v7, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 21
    .line 22
    const-string v8, "getAdvertisingIdInfo"

    .line 23
    .line 24
    new-array v9, v4, [Ljava/lang/Class;

    .line 25
    .line 26
    const-class v10, Landroid/content/Context;

    .line 27
    .line 28
    aput-object v10, v9, v5

    .line 29
    .line 30
    invoke-static {v7, v8, v9}, Lq2/g0;->u(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    if-nez v7, :cond_24

    .line 35
    .line 36
    goto :goto_11

    .line 37
    :cond_24
    new-array v8, v4, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v1, v8, v5

    .line 40
    .line 41
    invoke-static {v6, v7, v8}, Lq2/g0;->w(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    if-nez v7, :cond_2f

    .line 46
    .line 47
    goto :goto_11

    .line 48
    :cond_2f
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    const-string v9, "getId"

    .line 53
    .line 54
    new-array v10, v5, [Ljava/lang/Class;

    .line 55
    .line 56
    invoke-static {v8, v9, v10}, Lq2/g0;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    const-string v10, "isLimitAdTrackingEnabled"

    .line 65
    .line 66
    new-array v11, v5, [Ljava/lang/Class;

    .line 67
    .line 68
    invoke-static {v9, v10, v11}, Lq2/g0;->t(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    if-eqz v8, :cond_11

    .line 73
    .line 74
    if-nez v9, :cond_4c

    .line 75
    .line 76
    goto :goto_11

    .line 77
    :cond_4c
    new-instance v10, Lq2/c;

    .line 78
    .line 79
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    new-array v11, v5, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {v7, v8, v11}, Lq2/g0;->w(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    check-cast v8, Ljava/lang/String;

    .line 89
    .line 90
    iput-object v8, v10, Lq2/c;->a:Ljava/lang/String;

    .line 91
    .line 92
    new-array v8, v5, [Ljava/lang/Object;

    .line 93
    .line 94
    invoke-static {v7, v9, v8}, Lq2/g0;->w(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Ljava/lang/Boolean;

    .line 99
    .line 100
    if-eqz v7, :cond_6a

    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move v7, v5

    .line 108
    :goto_6b
    iput-boolean v7, v10, Lq2/c;->e:Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6d} :catch_6e

    .line 109
    .line 110
    goto :goto_71

    .line 111
    :catch_6e
    sget-object v7, Lx1/r;->a:Lx1/r;

    .line 112
    .line 113
    goto :goto_11

    .line 114
    :goto_71
    if-nez v10, :cond_c4

    .line 115
    .line 116
    invoke-static {v1}, Lq2/g;->g(Landroid/content/Context;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-nez v7, :cond_7b

    .line 121
    .line 122
    :catch_79
    :cond_79
    :goto_79
    move-object v10, v6

    .line 123
    goto :goto_bd

    .line 124
    :cond_7b
    new-instance v7, Lq2/b;

    .line 125
    .line 126
    invoke-direct {v7}, Lq2/b;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v8, Landroid/content/Intent;

    .line 130
    .line 131
    const-string v9, "com.google.android.gms.ads.identifier.service.START"

    .line 132
    .line 133
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v9, "com.google.android.gms"

    .line 137
    .line 138
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    :try_start_8c
    invoke-virtual {v1, v8, v7, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 142
    .line 143
    .line 144
    move-result v4
    :try_end_90
    .catch Ljava/lang/SecurityException; {:try_start_8c .. :try_end_90} :catch_79

    .line 145
    if-eqz v4, :cond_79

    .line 146
    .line 147
    :try_start_92
    new-instance v4, Lq2/a;

    .line 148
    .line 149
    invoke-virtual {v7}, Lq2/b;->a()Landroid/os/IBinder;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-direct {v4, v8}, Lq2/a;-><init>(Landroid/os/IBinder;)V

    .line 154
    .line 155
    .line 156
    new-instance v8, Lq2/c;

    .line 157
    .line 158
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Lq2/a;->b()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    iput-object v9, v8, Lq2/c;->a:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v4}, Lq2/a;->c()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    iput-boolean v4, v8, Lq2/c;->e:Z
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_ac} :catch_b3
    .catchall {:try_start_92 .. :try_end_ac} :catchall_b1

    .line 172
    .line 173
    invoke-virtual {v1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 174
    .line 175
    .line 176
    move-object v10, v8

    .line 177
    goto :goto_bd

    .line 178
    :catchall_b1
    move-exception v0

    .line 179
    goto :goto_b9

    .line 180
    :catch_b3
    :try_start_b3
    sget-object v4, Lx1/r;->a:Lx1/r;
    :try_end_b5
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_b1

    .line 181
    .line 182
    invoke-virtual {v1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    .line 184
    .line 185
    goto :goto_79

    .line 186
    :goto_b9
    invoke-virtual {v1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 187
    .line 188
    .line 189
    throw v0

    .line 190
    :goto_bd
    if-nez v10, :cond_c4

    .line 191
    .line 192
    new-instance v10, Lq2/c;

    .line 193
    .line 194
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 195
    .line 196
    .line 197
    :cond_c4
    :try_start_c4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-static {v4, v7}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_1b2

    .line 210
    .line 211
    sget-object v4, Lq2/c;->f:Lq2/c;

    .line 212
    .line 213
    if-eqz v4, :cond_ec

    .line 214
    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 216
    .line 217
    .line 218
    move-result-wide v7

    .line 219
    iget-wide v11, v4, Lq2/c;->b:J

    .line 220
    .line 221
    sub-long/2addr v7, v11

    .line 222
    const-wide/32 v11, 0x36ee80

    .line 223
    .line 224
    .line 225
    cmp-long v7, v7, v11

    .line 226
    .line 227
    if-gez v7, :cond_ec

    .line 228
    .line 229
    return-object v4

    .line 230
    :catchall_e5
    move-exception v0

    .line 231
    goto/16 :goto_1c5

    .line 232
    .line 233
    :catch_e8
    move-exception v0

    .line 234
    move-object v1, v6

    .line 235
    goto/16 :goto_1ba

    .line 236
    .line 237
    :cond_ec
    filled-new-array {v3, v2, v0}, [Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    const-string v7, "com.facebook.katana.provider.AttributionIdProvider"

    .line 246
    .line 247
    invoke-virtual {v4, v7, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    const-string v8, "com.facebook.wakizashi.provider.AttributionIdProvider"

    .line 256
    .line 257
    invoke-virtual {v7, v8, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    if-eqz v4, :cond_11b

    .line 262
    .line 263
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 264
    .line 265
    const-string v7, "contentProviderInfo.packageName"

    .line 266
    .line 267
    invoke-static {v7, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v1, v4}, Lq2/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_11b

    .line 275
    .line 276
    const-string v4, "content://com.facebook.katana.provider.AttributionIdProvider"

    .line 277
    .line 278
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    :goto_119
    move-object v12, v4

    .line 283
    goto :goto_132

    .line 284
    :cond_11b
    if-eqz v5, :cond_131

    .line 285
    .line 286
    iget-object v4, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 287
    .line 288
    const-string v5, "wakizashiProviderInfo.packageName"

    .line 289
    .line 290
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    invoke-static {v1, v4}, Lq2/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_131

    .line 298
    .line 299
    const-string v4, "content://com.facebook.wakizashi.provider.AttributionIdProvider"

    .line 300
    .line 301
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    goto :goto_119

    .line 306
    :cond_131
    move-object v12, v6

    .line 307
    :goto_132
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    if-eqz v4, :cond_141

    .line 312
    .line 313
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    goto :goto_142

    .line 322
    :cond_141
    move-object v4, v6

    .line 323
    :goto_142
    if-eqz v4, :cond_146

    .line 324
    .line 325
    iput-object v4, v10, Lq2/c;->d:Ljava/lang/String;

    .line 326
    .line 327
    :cond_146
    if-nez v12, :cond_151

    .line 328
    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 330
    .line 331
    .line 332
    move-result-wide v0

    .line 333
    iput-wide v0, v10, Lq2/c;->b:J

    .line 334
    .line 335
    sput-object v10, Lq2/c;->f:Lq2/c;

    .line 336
    .line 337
    goto :goto_1b1

    .line 338
    :cond_151
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 339
    .line 340
    .line 341
    move-result-object v11

    .line 342
    const/4 v15, 0x0

    .line 343
    const/16 v16, 0x0

    .line 344
    .line 345
    const/4 v14, 0x0

    .line 346
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 347
    .line 348
    .line 349
    move-result-object v1
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_15d} :catch_e8
    .catchall {:try_start_c4 .. :try_end_15d} :catchall_e5

    .line 350
    if-eqz v1, :cond_1a4

    .line 351
    .line 352
    :try_start_15f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-nez v4, :cond_166

    .line 357
    .line 358
    goto :goto_1a4

    .line 359
    :cond_166
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    iput-object v3, v10, Lq2/c;->c:Ljava/lang/String;

    .line 376
    .line 377
    if-lez v2, :cond_198

    .line 378
    .line 379
    if-lez v0, :cond_198

    .line 380
    .line 381
    invoke-virtual {v10}, Lq2/c;->a()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    if-nez v3, :cond_198

    .line 386
    .line 387
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    iput-object v2, v10, Lq2/c;->a:Ljava/lang/String;

    .line 392
    .line 393
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    iput-boolean v0, v10, Lq2/c;->e:Z
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_192} :catch_196
    .catchall {:try_start_15f .. :try_end_192} :catchall_193

    .line 402
    .line 403
    goto :goto_198

    .line 404
    :catchall_193
    move-exception v0

    .line 405
    move-object v6, v1

    .line 406
    goto :goto_1c5

    .line 407
    :catch_196
    move-exception v0

    .line 408
    goto :goto_1ba

    .line 409
    :cond_198
    :goto_198
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 410
    .line 411
    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 413
    .line 414
    .line 415
    move-result-wide v0

    .line 416
    iput-wide v0, v10, Lq2/c;->b:J

    .line 417
    .line 418
    sput-object v10, Lq2/c;->f:Lq2/c;

    .line 419
    .line 420
    return-object v10

    .line 421
    :cond_1a4
    :goto_1a4
    :try_start_1a4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 422
    .line 423
    .line 424
    move-result-wide v2

    .line 425
    iput-wide v2, v10, Lq2/c;->b:J

    .line 426
    .line 427
    sput-object v10, Lq2/c;->f:Lq2/c;
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1ac} :catch_196
    .catchall {:try_start_1a4 .. :try_end_1ac} :catchall_193

    .line 428
    .line 429
    if-eqz v1, :cond_1b1

    .line 430
    .line 431
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 432
    .line 433
    .line 434
    :cond_1b1
    :goto_1b1
    return-object v10

    .line 435
    :cond_1b2
    :try_start_1b2
    new-instance v0, Lx1/l;

    .line 436
    .line 437
    const-string v1, "getAttributionIdentifiers cannot be called on the main thread."

    .line 438
    .line 439
    invoke-direct {v0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw v0
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1ba} :catch_e8
    .catchall {:try_start_1b2 .. :try_end_1ba} :catchall_e5

    .line 443
    :goto_1ba
    :try_start_1ba
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    sget-object v0, Lx1/r;->a:Lx1/r;
    :try_end_1bf
    .catchall {:try_start_1ba .. :try_end_1bf} :catchall_193

    .line 447
    .line 448
    if-eqz v1, :cond_1c4

    .line 449
    .line 450
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 451
    .line 452
    .line 453
    :cond_1c4
    return-object v6

    .line 454
    :goto_1c5
    if-eqz v6, :cond_1ca

    .line 455
    .line 456
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 457
    .line 458
    .line 459
    :cond_1ca
    throw v0
.end method

.method public static final c()Ljava/lang/String;
    .registers 6

    .line 1
    const-class v0, Lq2/g;

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
    goto :goto_53

    .line 11
    :cond_a
    :try_start_a
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v3, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v4, "android.support.customtabs.action.CustomTabsService"

    .line 18
    .line 19
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v3, "context.packageManager.q\u2026ervices(serviceIntent, 0)"

    .line 32
    .line 33
    invoke-static {v3, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object v3, Lq2/g;->a:[Ljava/lang/String;

    .line 37
    .line 38
    new-instance v4, Ljava/util/HashSet;

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    invoke-static {v5}, Ls6/r;->s(I)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4}, Ls6/f;->q([Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_53

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 66
    .line 67
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 68
    .line 69
    if-eqz v3, :cond_36

    .line 70
    .line 71
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_36

    .line 78
    .line 79
    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_a .. :try_end_50} :catchall_51

    .line 80
    .line 81
    return-object v0

    .line 82
    :catchall_51
    move-exception v1

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    :goto_53
    return-object v2

    .line 85
    :goto_54
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-object v2
.end method

.method public static final d()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "fbconnect://cct."

    .line 2
    .line 3
    const-class v1, Lq2/g;

    .line 4
    .line 5
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

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
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_21

    .line 33
    return-object v0

    .line 34
    :catchall_21
    move-exception v0

    .line 35
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-object v3
.end method

.method public static final e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-class v0, Lq2/g;

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
    const-string v1, "developerDefinedRedirectURI"

    .line 12
    .line 13
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, p0}, Lq2/g;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1a

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1a
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {}, Lq2/g;->d()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {p0, v1}, Lq2/g;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_2f

    .line 40
    .line 41
    invoke-static {}, Lq2/g;->d()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :catchall_2d
    move-exception p0

    .line 47
    goto :goto_32

    .line 48
    :cond_2f
    const-string p0, ""
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2d

    .line 49
    .line 50
    return-object p0

    .line 51
    :goto_32
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-object v2
.end method

.method public static final f(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 1
    const-string v0, "redirectURI"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2d

    .line 11
    .line 12
    new-instance v1, Landroid/content/Intent;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "android.intent.action.VIEW"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v2, "android.intent.category.DEFAULT"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string v2, "android.intent.category.BROWSABLE"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const/16 p1, 0x40

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    const/4 p1, 0x0

    .line 47
    :goto_2e
    const/4 v0, 0x0

    .line 48
    if-eqz p1, :cond_5d

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    move v1, v0

    .line 55
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_5c

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 66
    .line 67
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 68
    .line 69
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 70
    .line 71
    const-string v3, "com.facebook.CustomTabActivity"

    .line 72
    .line 73
    invoke-static {v2, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_5d

    .line 78
    .line 79
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v1, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_5d

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    goto :goto_36

    .line 93
    :cond_5c
    return v1

    .line 94
    :cond_5d
    return v0
.end method

.method public static g(Landroid/content/Context;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const-class v2, Landroid/content/Context;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    const-string v2, "com.google.android.gms.common.GooglePlayServicesUtil"

    .line 10
    .line 11
    const-string v4, "isGooglePlayServicesAvailable"

    .line 12
    .line 13
    invoke-static {v2, v4, v1}, Lq2/g0;->u(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_13

    .line 18
    .line 19
    goto :goto_2b

    .line 20
    :cond_13
    new-array v2, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    aput-object p0, v2, v3

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    invoke-static {p0, v1, v2}, Lq2/g0;->w(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    instance-of v1, p0, Ljava/lang/Integer;

    .line 30
    .line 31
    if-eqz v1, :cond_2b

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2b

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2b
    :goto_2b
    return v3
.end method

.method public static final h(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "arg"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-lez p0, :cond_c

    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    const-string p0, "Argument \'"

    .line 14
    .line 15
    const-string v0, "\' cannot be empty"

    .line 16
    .line 17
    invoke-static {p0, p1, v0}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public static final i(Lx1/b0;)V
    .registers 3

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1e

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_16

    .line 21
    .line 22
    goto :goto_9

    .line 23
    :cond_16
    new-instance p0, Ljava/lang/NullPointerException;

    .line 24
    .line 25
    const-string v0, "Container \'requests\' cannot contain null values"

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1e
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_25

    .line 36
    .line 37
    return-void

    .line 38
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v0, "Container \'requests\' cannot be empty"

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public static final j(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p0, :cond_9

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-lez p0, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    const-string p0, "Argument \'"

    .line 11
    .line 12
    const-string v0, "\' cannot be null or empty"

    .line 13
    .line 14
    invoke-static {p0, p1, v0}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public static final k()V
    .registers 2

    .line 1
    sget-object v0, Lx1/r;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Lx1/s;

    .line 11
    .line 12
    const-string v1, "The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method
