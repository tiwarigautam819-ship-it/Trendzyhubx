###### Class m6.g (m6.g)
.class public abstract Lm6/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile a:Z = false

.field public static volatile b:Ljava/lang/String;

.field public static volatile c:Ljava/lang/String;

.field public static volatile d:Ljava/util/concurrent/CountDownLatch;

.field public static volatile e:Z

.field public static volatile f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lm6/g;->d:Ljava/util/concurrent/CountDownLatch;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lm6/g;->e:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lm6/g;->f:Landroid/content/Context;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lm6/e;)V
    .registers 15

    .line 1
    const-string v0, "\u521d\u59cb\u5316\u5f02\u5e38: "

    .line 2
    .line 3
    const-string v1, "Adjust \u521d\u59cb\u5316\u6210\u529f\uff0cappToken="

    .line 4
    .line 5
    sget-boolean v2, Lm6/g;->a:Z

    .line 6
    .line 7
    if-eqz v2, :cond_10

    .line 8
    .line 9
    if-eqz p2, :cond_26e

    .line 10
    .line 11
    sget-object p0, Lm6/g;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p2, p0}, Lm6/e;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    const-class v2, Lm6/g;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_13
    sget-boolean v3, Lm6/g;->a:Z

    .line 21
    .line 22
    if-eqz v3, :cond_24

    .line 23
    .line 24
    if-eqz p2, :cond_22

    .line 25
    .line 26
    sget-object p0, Lm6/g;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p2, p0}, Lm6/e;->f(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_22

    .line 32
    :catchall_1f
    move-exception p0

    .line 33
    goto/16 :goto_26f

    .line 34
    .line 35
    :cond_22
    :goto_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_1f

    .line 36
    return-void

    .line 37
    :cond_24
    const/4 v3, 0x0

    .line 38
    :try_start_25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sput-object p0, Lm6/g;->f:Landroid/content/Context;

    .line 43
    .line 44
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 48
    .line 49
    .line 50
    sput-object v4, Lm6/g;->d:Ljava/util/concurrent/CountDownLatch;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    sput-boolean v4, Lm6/g;->e:Z

    .line 54
    .line 55
    invoke-static {p1}, Lm6/g;->b(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_44

    .line 60
    .line 61
    invoke-static {p1}, Lm6/g;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_45

    .line 66
    :catchall_41
    move-exception p0

    .line 67
    goto/16 :goto_253

    .line 68
    .line 69
    :cond_44
    move-object p1, v3

    .line 70
    :goto_45
    invoke-static {p1}, Lm6/g;->b(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v6
    :try_end_49
    .catchall {:try_start_25 .. :try_end_49} :catchall_41

    .line 74
    if-eqz v6, :cond_6d

    .line 75
    .line 76
    :try_start_4b
    invoke-static {p0}, Lh8/b;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lm6/g;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_54

    .line 84
    goto :goto_6d

    .line 85
    :catchall_54
    move-exception p1

    .line 86
    :try_start_55
    const-string v6, "AdjustManager"

    .line 87
    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v8, "readEventTokenFromAssets \u5f02\u5e38: "

    .line 91
    .line 92
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-object p1, v3

    .line 110
    :cond_6d
    :goto_6d
    invoke-static {p1}, Lm6/g;->b(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_82

    .line 115
    .line 116
    const-string p0, "AdjustManager"

    .line 117
    .line 118
    const-string p1, "\u65e0\u6cd5\u83b7\u53d6 eventToken\uff0c\u521d\u59cb\u5316\u5931\u8d25"

    .line 119
    .line 120
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    if-eqz p2, :cond_7f

    .line 124
    .line 125
    invoke-interface {p2, v3}, Lm6/e;->f(Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_55 .. :try_end_7f} :catchall_41

    .line 126
    .line 127
    .line 128
    :cond_7f
    :try_start_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_1f

    .line 129
    goto/16 :goto_26e

    .line 130
    .line 131
    :cond_82
    :try_start_82
    sput-object p1, Lm6/g;->c:Ljava/lang/String;

    .line 132
    .line 133
    const-string v6, "sandbox"
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_41

    .line 134
    .line 135
    :try_start_86
    new-instance v7, Lutils/ReplacePropertiesUtil;

    .line 136
    .line 137
    invoke-direct {v7, p0}, Lutils/ReplacePropertiesUtil;-><init>(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7}, Lutils/ReplacePropertiesUtil;->isDebugger()Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_92

    .line 145
    .line 146
    goto :goto_ad

    .line 147
    :cond_92
    const-string v6, "production"
    :try_end_94
    .catchall {:try_start_86 .. :try_end_94} :catchall_95

    .line 148
    .line 149
    goto :goto_ad

    .line 150
    :catchall_95
    move-exception v7

    .line 151
    :try_start_96
    const-string v8, "AdjustManager"

    .line 152
    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v10, "readAdjustEnvironment \u5f02\u5e38: "

    .line 156
    .line 157
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    :goto_ad
    invoke-static {p0, p1, v6}, Lm6/d;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    if-nez p1, :cond_c4

    .line 179
    .line 180
    sput-boolean v5, Lm6/g;->a:Z

    .line 181
    .line 182
    const-string p0, "AdjustManager"

    .line 183
    .line 184
    const-string p1, "Adjust SDK \u672a\u96c6\u6210\uff1a\u8fdb\u5165 no-op \u6a21\u5f0f"

    .line 185
    .line 186
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    if-eqz p2, :cond_c1

    .line 190
    .line 191
    invoke-interface {p2, v3}, Lm6/e;->f(Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_96 .. :try_end_c1} :catchall_41

    .line 192
    .line 193
    .line 194
    :cond_c1
    :try_start_c1
    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_1f

    .line 195
    goto/16 :goto_26e

    .line 196
    .line 197
    :cond_c4
    :try_start_c4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 202
    .line 203
    const/4 v7, 0x2

    .line 204
    and-int/2addr p0, v7

    .line 205
    if-eqz p0, :cond_d0

    .line 206
    .line 207
    move p0, v5

    .line 208
    goto :goto_d1

    .line 209
    :cond_d0
    move p0, v4

    .line 210
    :goto_d1
    const-string v8, "VERBOSE"

    .line 211
    .line 212
    sget-object v9, Lm6/d;->d:Ljava/lang/Class;
    :try_end_d5
    .catchall {:try_start_c4 .. :try_end_d5} :catchall_41

    .line 213
    .line 214
    if-nez v9, :cond_d8

    .line 215
    .line 216
    goto :goto_109

    .line 217
    :cond_d8
    if-eqz p0, :cond_dc

    .line 218
    .line 219
    move-object v10, v8

    .line 220
    goto :goto_de

    .line 221
    :cond_dc
    :try_start_dc
    const-string v10, "SUPPRESS"

    .line 222
    .line 223
    :goto_de
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p0
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_dc .. :try_end_e6} :catch_e7
    .catchall {:try_start_dc .. :try_end_e6} :catchall_109

    .line 231
    goto :goto_f4

    .line 232
    :catch_e7
    if-eqz p0, :cond_ea

    .line 233
    .line 234
    goto :goto_ec

    .line 235
    :cond_ea
    :try_start_ea
    const-string v8, "INFO"

    .line 236
    .line 237
    :goto_ec
    invoke-virtual {v9, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    :goto_f4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    const-string v10, "setLogLevel"

    .line 250
    .line 251
    new-array v11, v5, [Ljava/lang/Class;

    .line 252
    .line 253
    aput-object v9, v11, v4

    .line 254
    .line 255
    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    new-array v9, v5, [Ljava/lang/Object;

    .line 260
    .line 261
    aput-object p0, v9, v4

    .line 262
    .line 263
    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_109
    .catchall {:try_start_ea .. :try_end_109} :catchall_109

    .line 264
    .line 265
    .line 266
    :catchall_109
    :goto_109
    :try_start_109
    sget-object p0, Lm6/d;->e:Ljava/lang/Class;
    :try_end_10b
    .catchall {:try_start_109 .. :try_end_10b} :catchall_41

    .line 267
    .line 268
    if-nez p0, :cond_10e

    .line 269
    .line 270
    goto :goto_135

    .line 271
    :cond_10e
    :try_start_10e
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 272
    .line 273
    .line 274
    move-result-object v8

    .line 275
    new-array v9, v5, [Ljava/lang/Class;

    .line 276
    .line 277
    aput-object p0, v9, v4

    .line 278
    .line 279
    new-instance v10, Lm6/b;

    .line 280
    .line 281
    const/4 v11, 0x3

    .line 282
    invoke-direct {v10, v11}, Lm6/b;-><init>(I)V

    .line 283
    .line 284
    .line 285
    invoke-static {v8, v9, v10}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    const-string v10, "setOnEventTrackingSucceededListener"

    .line 294
    .line 295
    new-array v11, v5, [Ljava/lang/Class;

    .line 296
    .line 297
    aput-object p0, v11, v4

    .line 298
    .line 299
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    new-array v9, v5, [Ljava/lang/Object;

    .line 304
    .line 305
    aput-object v8, v9, v4

    .line 306
    .line 307
    invoke-virtual {p0, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_135
    .catchall {:try_start_10e .. :try_end_135} :catchall_135

    .line 308
    .line 309
    .line 310
    :catchall_135
    :goto_135
    :try_start_135
    sget-object p0, Lm6/d;->f:Ljava/lang/Class;
    :try_end_137
    .catchall {:try_start_135 .. :try_end_137} :catchall_41

    .line 311
    .line 312
    if-nez p0, :cond_13a

    .line 313
    .line 314
    goto :goto_160

    .line 315
    :cond_13a
    :try_start_13a
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 316
    .line 317
    .line 318
    move-result-object v8

    .line 319
    new-array v9, v5, [Ljava/lang/Class;

    .line 320
    .line 321
    aput-object p0, v9, v4

    .line 322
    .line 323
    new-instance v10, Lm6/b;

    .line 324
    .line 325
    invoke-direct {v10, v7}, Lm6/b;-><init>(I)V

    .line 326
    .line 327
    .line 328
    invoke-static {v8, v9, v10}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    move-result-object v8

    .line 336
    const-string v9, "setOnEventTrackingFailedListener"

    .line 337
    .line 338
    new-array v10, v5, [Ljava/lang/Class;

    .line 339
    .line 340
    aput-object p0, v10, v4

    .line 341
    .line 342
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    new-array v8, v5, [Ljava/lang/Object;

    .line 347
    .line 348
    aput-object v7, v8, v4

    .line 349
    .line 350
    invoke-virtual {p0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_160
    .catchall {:try_start_13a .. :try_end_160} :catchall_160

    .line 351
    .line 352
    .line 353
    :catchall_160
    :goto_160
    :try_start_160
    new-instance p0, Lm6/a;

    .line 354
    .line 355
    invoke-direct {p0, p2, v4}, Lm6/a;-><init>(Lm6/e;I)V

    .line 356
    .line 357
    .line 358
    sget-object v7, Lm6/d;->g:Ljava/lang/Class;
    :try_end_167
    .catchall {:try_start_160 .. :try_end_167} :catchall_41

    .line 359
    .line 360
    if-nez v7, :cond_16a

    .line 361
    .line 362
    goto :goto_190

    .line 363
    :cond_16a
    :try_start_16a
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    new-array v9, v5, [Ljava/lang/Class;

    .line 368
    .line 369
    aput-object v7, v9, v4

    .line 370
    .line 371
    new-instance v10, Lm6/c;

    .line 372
    .line 373
    invoke-direct {v10, p0, v4}, Lm6/c;-><init>(Lm6/f;I)V

    .line 374
    .line 375
    .line 376
    invoke-static {v8, v9, v10}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object p0

    .line 380
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    move-result-object v8

    .line 384
    const-string v9, "setOnSessionTrackingSucceededListener"

    .line 385
    .line 386
    new-array v10, v5, [Ljava/lang/Class;

    .line 387
    .line 388
    aput-object v7, v10, v4

    .line 389
    .line 390
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    new-array v8, v5, [Ljava/lang/Object;

    .line 395
    .line 396
    aput-object p0, v8, v4

    .line 397
    .line 398
    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_190
    .catchall {:try_start_16a .. :try_end_190} :catchall_190

    .line 399
    .line 400
    .line 401
    :catchall_190
    :goto_190
    :try_start_190
    sget-object p0, Lm6/d;->h:Ljava/lang/Class;
    :try_end_192
    .catchall {:try_start_190 .. :try_end_192} :catchall_41

    .line 402
    .line 403
    if-nez p0, :cond_195

    .line 404
    .line 405
    goto :goto_1bb

    .line 406
    :cond_195
    :try_start_195
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    new-array v8, v5, [Ljava/lang/Class;

    .line 411
    .line 412
    aput-object p0, v8, v4

    .line 413
    .line 414
    new-instance v9, Lm6/b;

    .line 415
    .line 416
    invoke-direct {v9, v4}, Lm6/b;-><init>(I)V

    .line 417
    .line 418
    .line 419
    invoke-static {v7, v8, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    const-string v9, "setOnSessionTrackingFailedListener"

    .line 428
    .line 429
    new-array v10, v5, [Ljava/lang/Class;

    .line 430
    .line 431
    aput-object p0, v10, v4

    .line 432
    .line 433
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    new-array v8, v5, [Ljava/lang/Object;

    .line 438
    .line 439
    aput-object v7, v8, v4

    .line 440
    .line 441
    invoke-virtual {p0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1bb
    .catchall {:try_start_195 .. :try_end_1bb} :catchall_1bb

    .line 442
    .line 443
    .line 444
    :catchall_1bb
    :goto_1bb
    :try_start_1bb
    sget-object p0, Lm6/d;->i:Ljava/lang/Class;
    :try_end_1bd
    .catchall {:try_start_1bb .. :try_end_1bd} :catchall_41

    .line 445
    .line 446
    if-nez p0, :cond_1c0

    .line 447
    .line 448
    goto :goto_1e6

    .line 449
    :cond_1c0
    :try_start_1c0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 450
    .line 451
    .line 452
    move-result-object v7

    .line 453
    new-array v8, v5, [Ljava/lang/Class;

    .line 454
    .line 455
    aput-object p0, v8, v4

    .line 456
    .line 457
    new-instance v9, Lm6/b;

    .line 458
    .line 459
    invoke-direct {v9, v5}, Lm6/b;-><init>(I)V

    .line 460
    .line 461
    .line 462
    invoke-static {v7, v8, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v7

    .line 466
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    const-string v9, "setOnAttributionChangedListener"

    .line 471
    .line 472
    new-array v10, v5, [Ljava/lang/Class;

    .line 473
    .line 474
    aput-object p0, v10, v4

    .line 475
    .line 476
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    new-array v8, v5, [Ljava/lang/Object;

    .line 481
    .line 482
    aput-object v7, v8, v4

    .line 483
    .line 484
    invoke-virtual {p0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e6
    .catchall {:try_start_1c0 .. :try_end_1e6} :catchall_1e6

    .line 485
    .line 486
    .line 487
    :catchall_1e6
    :goto_1e6
    :try_start_1e6
    sget-object p0, Lm6/d;->k:Ljava/lang/Class;
    :try_end_1e8
    .catchall {:try_start_1e6 .. :try_end_1e8} :catchall_41

    .line 488
    .line 489
    if-nez p0, :cond_1eb

    .line 490
    .line 491
    goto :goto_212

    .line 492
    :cond_1eb
    :try_start_1eb
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 493
    .line 494
    .line 495
    move-result-object v7

    .line 496
    new-array v8, v5, [Ljava/lang/Class;

    .line 497
    .line 498
    aput-object p0, v8, v4

    .line 499
    .line 500
    new-instance v9, Lm6/b;

    .line 501
    .line 502
    const/4 v10, 0x4

    .line 503
    invoke-direct {v9, v10}, Lm6/b;-><init>(I)V

    .line 504
    .line 505
    .line 506
    invoke-static {v7, v8, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v7

    .line 510
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    const-string v9, "setOnDeferredDeeplinkResponseListener"

    .line 515
    .line 516
    new-array v10, v5, [Ljava/lang/Class;

    .line 517
    .line 518
    aput-object p0, v10, v4

    .line 519
    .line 520
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 521
    .line 522
    .line 523
    move-result-object p0

    .line 524
    new-array v8, v5, [Ljava/lang/Object;

    .line 525
    .line 526
    aput-object v7, v8, v4

    .line 527
    .line 528
    invoke-virtual {p0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_212
    .catchall {:try_start_1eb .. :try_end_212} :catchall_212

    .line 529
    .line 530
    .line 531
    :catchall_212
    :goto_212
    :try_start_212
    invoke-static {}, Lm6/d;->b()Z

    .line 532
    .line 533
    .line 534
    move-result p0
    :try_end_216
    .catchall {:try_start_212 .. :try_end_216} :catchall_41

    .line 535
    if-eqz p0, :cond_22d

    .line 536
    .line 537
    :try_start_218
    sget-object p0, Lm6/d;->a:Ljava/lang/Class;

    .line 538
    .line 539
    const-string v7, "onCreate"

    .line 540
    .line 541
    new-array v8, v5, [Ljava/lang/Class;

    .line 542
    .line 543
    sget-object v9, Lm6/d;->b:Ljava/lang/Class;

    .line 544
    .line 545
    aput-object v9, v8, v4

    .line 546
    .line 547
    invoke-virtual {p0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 548
    .line 549
    .line 550
    move-result-object p0

    .line 551
    new-array v7, v5, [Ljava/lang/Object;

    .line 552
    .line 553
    aput-object p1, v7, v4

    .line 554
    .line 555
    invoke-virtual {p0, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22d
    .catchall {:try_start_218 .. :try_end_22d} :catchall_22d

    .line 556
    .line 557
    .line 558
    :catchall_22d
    :cond_22d
    :try_start_22d
    sput-boolean v5, Lm6/g;->a:Z

    .line 559
    .line 560
    new-instance p0, Lm6/a;

    .line 561
    .line 562
    invoke-direct {p0, p2, v5}, Lm6/a;-><init>(Lm6/e;I)V

    .line 563
    .line 564
    .line 565
    invoke-static {p0}, Lm6/d;->d(Lm6/f;)V

    .line 566
    .line 567
    .line 568
    const-string p0, "AdjustManager"

    .line 569
    .line 570
    new-instance p1, Ljava/lang/StringBuilder;

    .line 571
    .line 572
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    sget-object v1, Lm6/g;->c:Ljava/lang/String;

    .line 576
    .line 577
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    const-string v1, ", env="

    .line 581
    .line 582
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_252
    .catchall {:try_start_22d .. :try_end_252} :catchall_41

    .line 593
    .line 594
    .line 595
    goto :goto_26d

    .line 596
    :goto_253
    :try_start_253
    const-string p1, "AdjustManager"

    .line 597
    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .line 616
    .line 617
    if-eqz p2, :cond_26d

    .line 618
    .line 619
    invoke-interface {p2, v3}, Lm6/e;->f(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    :cond_26d
    :goto_26d
    monitor-exit v2

    .line 623
    :cond_26e
    :goto_26e
    return-void

    .line 624
    :goto_26f
    monitor-exit v2
    :try_end_270
    .catchall {:try_start_253 .. :try_end_270} :catchall_1f

    .line 625
    throw p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 1

    .line 1
    if-eqz p0, :cond_f

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_d

    .line 12
    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_f
    :goto_f
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-lez p0, :cond_30

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "eventToken"

    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_18

    .line 24
    return-object p0

    .line 25
    :catchall_18
    move-exception p0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "parseEventToken \u5f02\u5e38: "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v1, "AdjustManager"

    .line 45
    .line 46
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_30
    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;)V
    .registers 14

    .line 1
    invoke-static {p0}, Lm6/g;->b(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AdjustManager"

    .line 6
    .line 7
    if-eqz v0, :cond_e

    .line 8
    .line 9
    const-string p0, "EventToken \u4e3a\u7a7a\uff0c\u65e0\u6cd5\u4e0a\u62a5\u4e8b\u4ef6"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    invoke-static {}, Lm6/d;->b()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    const-class v5, Ljava/lang/String;

    .line 23
    .line 24
    if-nez v0, :cond_1b

    .line 25
    .line 26
    :catchall_19
    move-object v0, v4

    .line 27
    goto :goto_2d

    .line 28
    :cond_1b
    :try_start_1b
    sget-object v0, Lm6/d;->c:Ljava/lang/Class;

    .line 29
    .line 30
    new-array v6, v3, [Ljava/lang/Class;

    .line 31
    .line 32
    aput-object v5, v6, v2

    .line 33
    .line 34
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-array v6, v3, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object p0, v6, v2

    .line 41
    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_19

    .line 46
    :goto_2d
    if-nez v0, :cond_41

    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, "trackEvent(no-op) token="

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_41
    if-eqz p1, :cond_95

    .line 67
    .line 68
    :try_start_43
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :catchall_4b
    :cond_4b
    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_95

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Ljava/util/Map$Entry;

    .line 87
    .line 88
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    if-eqz v7, :cond_4b

    .line 93
    .line 94
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    if-eqz v7, :cond_4b

    .line 99
    .line 100
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    check-cast v7, Ljava/lang/String;

    .line 105
    .line 106
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v7}, Lm6/g;->b(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v8
    :try_end_73
    .catchall {:try_start_43 .. :try_end_73} :catchall_93

    .line 116
    if-nez v8, :cond_4b

    .line 117
    .line 118
    if-nez v6, :cond_78

    .line 119
    .line 120
    goto :goto_4b

    .line 121
    :cond_78
    :try_start_78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    const-string v9, "addCallbackParameter"

    .line 126
    .line 127
    const/4 v10, 0x2

    .line 128
    new-array v11, v10, [Ljava/lang/Class;

    .line 129
    .line 130
    aput-object v5, v11, v2

    .line 131
    .line 132
    aput-object v5, v11, v3

    .line 133
    .line 134
    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    new-array v9, v10, [Ljava/lang/Object;

    .line 139
    .line 140
    aput-object v7, v9, v2

    .line 141
    .line 142
    aput-object v6, v9, v3

    .line 143
    .line 144
    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catchall {:try_start_78 .. :try_end_92} :catchall_4b

    .line 145
    .line 146
    .line 147
    goto :goto_4b

    .line 148
    :catchall_93
    move-exception p0

    .line 149
    goto :goto_c5

    .line 150
    :cond_95
    :try_start_95
    invoke-static {}, Lm6/d;->b()Z

    .line 151
    .line 152
    .line 153
    move-result p1
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_93

    .line 154
    if-eqz p1, :cond_b0

    .line 155
    .line 156
    :try_start_9b
    sget-object p1, Lm6/d;->a:Ljava/lang/Class;

    .line 157
    .line 158
    const-string v5, "trackEvent"

    .line 159
    .line 160
    new-array v6, v3, [Ljava/lang/Class;

    .line 161
    .line 162
    sget-object v7, Lm6/d;->c:Ljava/lang/Class;

    .line 163
    .line 164
    aput-object v7, v6, v2

    .line 165
    .line 166
    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    new-array v3, v3, [Ljava/lang/Object;

    .line 171
    .line 172
    aput-object v0, v3, v2

    .line 173
    .line 174
    invoke-virtual {p1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catchall {:try_start_9b .. :try_end_b0} :catchall_b0

    .line 175
    .line 176
    .line 177
    :catchall_b0
    :cond_b0
    :try_start_b0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v0, "\u4e8b\u4ef6\u5df2\u4e0a\u62a5: "

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_b0 .. :try_end_c4} :catchall_93

    .line 195
    .line 196
    .line 197
    goto :goto_da

    .line 198
    :goto_c5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v0, "\u4e0a\u62a5\u4e8b\u4ef6\u5f02\u5e38: "

    .line 201
    .line 202
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .line 218
    .line 219
    :goto_da
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    .line 1
    sget-boolean v0, Lm6/g;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_f

    .line 4
    .line 5
    new-instance v0, Lb2/d;

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    invoke-direct {v0, p1, p2, v1}, Lb2/d;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-static {p0, p1, v0}, Lm6/g;->a(Landroid/content/Context;Ljava/lang/String;Lm6/e;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    invoke-static {p1}, Lm6/g;->b(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_17

    .line 21
    .line 22
    sget-object p1, Lm6/g;->c:Ljava/lang/String;

    .line 23
    .line 24
    :cond_17
    invoke-static {p1, p2}, Lm6/g;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

###### Class m6.b (m6.b)
.class public final synthetic Lm6/b;
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
    iput p1, p0, Lm6/b;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget p1, p0, Lm6/b;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_64

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_20

    .line 7
    .line 8
    array-length p1, p3

    .line 9
    if-lez p1, :cond_20

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p2, "Deferred deeplink: "

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    aget-object p2, p3, p2

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "AdjustManager"

    .line 29
    .line 30
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_20
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_23
    invoke-static {p3}, Lm6/d;->a([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "Event tracking success: "

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "AdjustManager"

    .line 47
    .line 48
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_32
    const/4 p1, 0x0

    .line 52
    return-object p1

    .line 53
    :pswitch_34
    invoke-static {p3}, Lm6/d;->a([Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "Event tracking failed: "

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "AdjustManager"

    .line 64
    .line 65
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_32

    .line 69
    :pswitch_44
    invoke-static {p3}, Lm6/d;->a([Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, "Attribution changed: "

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string p2, "AdjustManager"

    .line 80
    .line 81
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_32

    .line 85
    :pswitch_54
    invoke-static {p3}, Lm6/d;->a([Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string p2, "Session tracking failed: "

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string p2, "AdjustManager"

    .line 96
    .line 97
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_32

    .line 101
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_54
        :pswitch_44
        :pswitch_34
        :pswitch_23
    .end packed-switch
.end method
