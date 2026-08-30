###### Class q2.r (q2.r)
.class public final synthetic Lq2/r;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lq2/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/r;->b:Landroid/content/Context;

    iput-object p2, p0, Lq2/r;->c:Ljava/lang/String;

    iput-object p3, p0, Lq2/r;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lq2/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/r;->c:Ljava/lang/String;

    iput-object p2, p0, Lq2/r;->b:Landroid/content/Context;

    iput-object p3, p0, Lq2/r;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    .line 1
    iget v0, p0, Lq2/r;->a:I

    .line 2
    .line 3
    const-string v1, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_206

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lq2/r;->b:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v3, p0, Lq2/r;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, Lq2/r;->d:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v5, Lq2/w;->a:Lq2/w;

    .line 16
    .line 17
    const-string v6, "com.facebook.internal.preferences.APP_SETTINGS"

    .line 18
    .line 19
    invoke-virtual {v0, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-static {v7}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    const-string v9, "Required value was null."

    .line 33
    .line 34
    if-nez v8, :cond_3b

    .line 35
    .line 36
    if-eqz v7, :cond_35

    .line 37
    .line 38
    :try_start_25
    new-instance v8, Lorg/json/JSONObject;

    .line 39
    .line 40
    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2a} :catch_2b

    .line 41
    .line 42
    .line 43
    goto :goto_2e

    .line 44
    :catch_2b
    sget-object v7, Lx1/r;->a:Lx1/r;

    .line 45
    .line 46
    move-object v8, v6

    .line 47
    :goto_2e
    if-eqz v8, :cond_3b

    .line 48
    .line 49
    invoke-static {v4, v8}, Lq2/w;->e(Ljava/lang/String;Lorg/json/JSONObject;)Lq2/t;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    goto :goto_3b

    .line 54
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_3b
    :goto_3b
    invoke-static {}, Lq2/w;->a()Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-static {v4, v7}, Lq2/w;->e(Ljava/lang/String;Lorg/json/JSONObject;)Lq2/t;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    if-eqz v6, :cond_67

    .line 84
    .line 85
    iget-object v0, v6, Lq2/t;->i:Ljava/lang/String;

    .line 86
    .line 87
    sget-boolean v6, Lq2/w;->f:Z

    .line 88
    .line 89
    if-nez v6, :cond_67

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-lez v6, :cond_67

    .line 96
    .line 97
    sput-boolean v3, Lq2/w;->f:Z

    .line 98
    .line 99
    const-string v6, "w"

    .line 100
    .line 101
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_67
    invoke-static {}, Lq2/s;->a()Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    new-array v7, v3, [Ljava/lang/Object;

    .line 113
    .line 114
    aput-object v4, v7, v2

    .line 115
    .line 116
    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    const-string v8, "com.facebook.internal.APP_GATEKEEPERS.%s"

    .line 121
    .line 122
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-virtual {v6, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    .line 144
    .line 145
    invoke-static {v4, v0}, Lq2/s;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    sget-object v0, Lk2/k;->a:Ly1/n;

    .line 149
    .line 150
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {}, Lx1/j0;->c()Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-eqz v6, :cond_1b2

    .line 163
    .line 164
    instance-of v6, v0, Landroid/app/Application;

    .line 165
    .line 166
    if-eqz v6, :cond_1ab

    .line 167
    .line 168
    move-object v6, v0

    .line 169
    check-cast v6, Landroid/app/Application;

    .line 170
    .line 171
    sget-object v0, Ly1/k;->c:Ljava/lang/String;

    .line 172
    .line 173
    sget-object v0, Lx1/r;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_1a3

    .line 180
    .line 181
    sget-boolean v0, Ly1/c;->c:Z

    .line 182
    .line 183
    if-eqz v0, :cond_b9

    .line 184
    .line 185
    goto :goto_d2

    .line 186
    :cond_b9
    invoke-static {}, Ly1/k;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-nez v0, :cond_c2

    .line 191
    .line 192
    invoke-static {}, Lx1/w;->q()V

    .line 193
    .line 194
    .line 195
    :cond_c2
    invoke-static {}, Ly1/k;->b()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_19d

    .line 200
    .line 201
    new-instance v7, Li2/c;

    .line 202
    .line 203
    const/16 v8, 0xb

    .line 204
    .line 205
    invoke-direct {v7, v8}, Li2/c;-><init>(I)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 209
    .line 210
    .line 211
    :goto_d2
    sget-object v0, Ly1/t;->a:Ly1/t;

    .line 212
    .line 213
    const-class v7, Ly1/t;

    .line 214
    .line 215
    invoke-static {v7}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_dd

    .line 220
    .line 221
    goto :goto_f0

    .line 222
    :cond_dd
    :try_start_dd
    sget-object v0, Ly1/t;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_e6

    .line 229
    .line 230
    goto :goto_f0

    .line 231
    :cond_e6
    sget-object v0, Ly1/t;->a:Ly1/t;

    .line 232
    .line 233
    invoke-virtual {v0}, Ly1/t;->b()V
    :try_end_eb
    .catchall {:try_start_dd .. :try_end_eb} :catchall_ec

    .line 234
    .line 235
    .line 236
    goto :goto_f0

    .line 237
    :catchall_ec
    move-exception v0

    .line 238
    invoke-static {v0, v7}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :goto_f0
    const-class v7, Lx1/r;

    .line 242
    .line 243
    invoke-static {v7}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_f9

    .line 248
    .line 249
    goto :goto_14b

    .line 250
    :cond_f9
    :try_start_f9
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-nez v0, :cond_100

    .line 255
    .line 256
    goto :goto_14b

    .line 257
    :cond_100
    const-string v8, "app_events_killswitch"

    .line 258
    .line 259
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    invoke-static {v8, v9, v2}, Lq2/s;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    if-nez v8, :cond_11b

    .line 268
    .line 269
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    new-instance v9, Lm2/a;

    .line 274
    .line 275
    invoke-direct {v9, v0, v3, v1}, Lm2/a;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 279
    .line 280
    .line 281
    goto :goto_11b

    .line 282
    :catchall_119
    move-exception v0

    .line 283
    goto :goto_148

    .line 284
    :cond_11b
    :goto_11b
    sget-object v0, Lq2/o;->C:Lq2/o;

    .line 285
    .line 286
    invoke-static {v0}, Lq2/q;->b(Lq2/o;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_14b

    .line 291
    .line 292
    invoke-static {}, Lm2/b;->a()Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_14b

    .line 297
    .line 298
    const-class v8, Lm2/b;

    .line 299
    .line 300
    invoke-static {v8}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v0
    :try_end_12f
    .catchall {:try_start_f9 .. :try_end_12f} :catchall_119

    .line 304
    if-eqz v0, :cond_132

    .line 305
    .line 306
    goto :goto_14b

    .line 307
    :cond_132
    :try_start_132
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    new-instance v10, Lm2/a;

    .line 316
    .line 317
    invoke-direct {v10, v0, v2, v1}, Lm2/a;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_142
    .catchall {:try_start_132 .. :try_end_142} :catchall_143

    .line 321
    .line 322
    .line 323
    goto :goto_14b

    .line 324
    :catchall_143
    move-exception v0

    .line 325
    :try_start_144
    invoke-static {v0, v8}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_147
    .catchall {:try_start_144 .. :try_end_147} :catchall_119

    .line 326
    .line 327
    .line 328
    goto :goto_14b

    .line 329
    :goto_148
    invoke-static {v0, v7}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :cond_14b
    :goto_14b
    invoke-static {v6, v1}, Lk2/d;->c(Landroid/app/Application;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    sget-object v0, Lq2/o;->T:Lq2/o;

    .line 336
    .line 337
    invoke-static {v0}, Lq2/q;->b(Lq2/o;)Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_177

    .line 342
    .line 343
    sget-object v6, Lg2/b;->a:Lg2/b;

    .line 344
    .line 345
    const-string v0, "fb_mobile_app_install"

    .line 346
    .line 347
    invoke-static {v6}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-eqz v7, :cond_161

    .line 352
    .line 353
    goto :goto_177

    .line 354
    :cond_161
    :try_start_161
    sget-boolean v7, Lg2/b;->d:Z

    .line 355
    .line 356
    if-nez v7, :cond_16b

    .line 357
    .line 358
    invoke-static {}, Lg2/b;->a()V

    .line 359
    .line 360
    .line 361
    goto :goto_16b

    .line 362
    :catchall_169
    move-exception v0

    .line 363
    goto :goto_174

    .line 364
    :cond_16b
    :goto_16b
    sget-boolean v7, Lg2/b;->c:Z

    .line 365
    .line 366
    if-nez v7, :cond_170

    .line 367
    .line 368
    goto :goto_177

    .line 369
    :cond_170
    invoke-virtual {v6, v1, v0}, Lg2/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_173
    .catchall {:try_start_161 .. :try_end_173} :catchall_169

    .line 370
    .line 371
    .line 372
    goto :goto_177

    .line 373
    :goto_174
    invoke-static {v0, v6}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :cond_177
    :goto_177
    sget-object v0, Lq2/o;->S:Lq2/o;

    .line 377
    .line 378
    invoke-static {v0}, Lq2/q;->b(Lq2/o;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_1b2

    .line 383
    .line 384
    new-instance v6, Ly1/e;

    .line 385
    .line 386
    sget v0, Lk2/d;->k:I

    .line 387
    .line 388
    if-nez v0, :cond_187

    .line 389
    .line 390
    move v12, v3

    .line 391
    goto :goto_188

    .line 392
    :cond_187
    move v12, v2

    .line 393
    :goto_188
    invoke-static {}, Lk2/d;->b()Ljava/util/UUID;

    .line 394
    .line 395
    .line 396
    move-result-object v13

    .line 397
    const/4 v14, 0x0

    .line 398
    const-string v7, "unknown"

    .line 399
    .line 400
    const-string v8, "MOBILE_INSTALL_EVENT"

    .line 401
    .line 402
    const/4 v9, 0x0

    .line 403
    const/4 v10, 0x0

    .line 404
    const/4 v11, 0x0

    .line 405
    invoke-direct/range {v6 .. v14}, Ly1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;Ly1/o;)V

    .line 406
    .line 407
    .line 408
    sget-object v0, Lf2/d;->a:Lf2/d;

    .line 409
    .line 410
    invoke-virtual {v0, v1, v6}, Lf2/d;->d(Ljava/lang/String;Ly1/e;)V

    .line 411
    .line 412
    .line 413
    goto :goto_1b2

    .line 414
    :cond_19d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 415
    .line 416
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    throw v0

    .line 420
    :cond_1a3
    new-instance v0, Lx1/l;

    .line 421
    .line 422
    const-string v1, "The Facebook sdk must be initialized before calling activateApp"

    .line 423
    .line 424
    invoke-direct {v0, v1}, Lx1/l;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw v0

    .line 428
    :cond_1ab
    const-string v0, "k2.k"

    .line 429
    .line 430
    const-string v1, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    .line 431
    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    :cond_1b2
    :goto_1b2
    sget-object v0, Lq2/w;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 436
    .line 437
    sget-object v1, Lq2/w;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 438
    .line 439
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    if-eqz v1, :cond_1bf

    .line 444
    .line 445
    sget-object v1, Lq2/v;->c:Lq2/v;

    .line 446
    .line 447
    goto :goto_1c1

    .line 448
    :cond_1bf
    sget-object v1, Lq2/v;->d:Lq2/v;

    .line 449
    .line 450
    :goto_1c1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v5}, Lq2/w;->j()V

    .line 454
    .line 455
    .line 456
    return-void

    .line 457
    :pswitch_1c8
    iget-object v0, p0, Lq2/r;->c:Ljava/lang/String;

    .line 458
    .line 459
    iget-object v3, p0, Lq2/r;->b:Landroid/content/Context;

    .line 460
    .line 461
    iget-object v4, p0, Lq2/r;->d:Ljava/lang/String;

    .line 462
    .line 463
    const-string v5, "$applicationId"

    .line 464
    .line 465
    invoke-static {v5, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    invoke-static {}, Lq2/s;->a()Lorg/json/JSONObject;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    .line 473
    .line 474
    .line 475
    move-result v6

    .line 476
    if-eqz v6, :cond_1fd

    .line 477
    .line 478
    invoke-static {v0, v5}, Lq2/s;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 498
    .line 499
    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 501
    .line 502
    .line 503
    move-result-wide v0

    .line 504
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    sput-object v0, Lq2/s;->d:Ljava/lang/Long;

    .line 509
    .line 510
    :cond_1fd
    invoke-static {}, Lq2/s;->e()V

    .line 511
    .line 512
    .line 513
    sget-object v0, Lq2/s;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 514
    .line 515
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 516
    .line 517
    .line 518
    return-void

    .line 519
    :pswitch_data_206
    .packed-switch 0x0
        :pswitch_1c8
    .end packed-switch
.end method

###### Class m2.a (m2.a)
.class public final synthetic Lm2/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 4

    .line 1
    iput p2, p0, Lm2/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm2/a;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lm2/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    .line 1
    sget-object v0, Lm2/e;->a:Lm2/e;

    .line 2
    .line 3
    iget v1, p0, Lm2/a;->a:I

    .line 4
    .line 5
    const-string v2, "com.facebook.sdk.attributionTracking"

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    iget-object v5, p0, Lm2/a;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, p0, Lm2/a;->b:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    packed-switch v1, :pswitch_data_da

    .line 16
    .line 17
    .line 18
    const-string v0, "ping"

    .line 19
    .line 20
    sget-object v1, Lx1/r;->a:Lx1/r;

    .line 21
    .line 22
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    if-eqz v9, :cond_1d

    .line 27
    .line 28
    goto/16 :goto_97

    .line 29
    .line 30
    :cond_1d
    :try_start_1d
    invoke-static {v6}, Lq2/g;->b(Landroid/content/Context;)Lq2/c;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    invoke-virtual {v6, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v10
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_97
    .catchall {:try_start_1d .. :try_end_2d} :catchall_49

    .line 46
    :try_start_2d
    sget-object v12, Lk2/f;->a:Lk2/f;

    .line 47
    .line 48
    invoke-static {v6}, Lt4/b;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    invoke-static {v6}, Lx1/r;->f(Landroid/content/Context;)Z

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    invoke-static {v12, v9, v13, v14, v6}, Lk2/g;->a(Lk2/f;Lq2/c;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object v6
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_3b} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3b} :catch_97
    .catchall {:try_start_2d .. :try_end_3b} :catchall_49

    .line 60
    :try_start_3b
    sget-object v9, Ly1/k;->c:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {}, Lx1/w;->o()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    if-eqz v9, :cond_4b

    .line 67
    .line 68
    const-string v12, "install_referrer"

    .line 69
    .line 70
    invoke-virtual {v6, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    goto :goto_4b

    .line 74
    :catchall_49
    move-exception v0

    .line 75
    goto :goto_94

    .line 76
    :cond_4b
    :goto_4b
    const-string v9, "%s/activities"

    .line 77
    .line 78
    new-array v12, v7, [Ljava/lang/Object;

    .line 79
    .line 80
    aput-object v5, v12, v8

    .line 81
    .line 82
    invoke-static {v12, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    sget-object v7, Lx1/r;->r:Lcom/getcapacitor/n;

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v7, Lx1/z;->j:Ljava/lang/String;

    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    invoke-static {v7, v5, v6, v7}, Lx1/w;->v(Lx1/a;Ljava/lang/String;Lorg/json/JSONObject;Lx1/v;)Lx1/z;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    cmp-long v3, v10, v3

    .line 103
    .line 104
    if-nez v3, :cond_97

    .line 105
    .line 106
    invoke-virtual {v5}, Lx1/z;->c()Lx1/c0;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iget-object v3, v3, Lx1/c0;->c:Lx1/o;

    .line 111
    .line 112
    if-nez v3, :cond_97

    .line 113
    .line 114
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 119
    .line 120
    .line 121
    move-result-wide v3

    .line 122
    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 123
    .line 124
    .line 125
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 129
    .line 130
    sget-object v0, Lx1/e0;->d:Lx1/e0;

    .line 131
    .line 132
    const-string v2, "x1.r"

    .line 133
    .line 134
    const-string v3, "MOBILE_APP_INSTALL has been logged"

    .line 135
    .line 136
    invoke-static {v0, v2, v3}, Lo3/a;->i(Lx1/e0;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_97

    .line 140
    :catch_8b
    move-exception v0

    .line 141
    new-instance v2, Lx1/l;

    .line 142
    .line 143
    const-string v3, "An error occurred while publishing install."

    .line 144
    .line 145
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    throw v2
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_94} :catch_97
    .catchall {:try_start_3b .. :try_end_94} :catchall_49

    .line 149
    :goto_94
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :catch_97
    :cond_97
    :goto_97
    return-void

    .line 153
    :pswitch_98
    const-string v1, "pingForOnDevice"

    .line 154
    .line 155
    const-class v9, Lm2/b;

    .line 156
    .line 157
    invoke-static {v9}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-eqz v10, :cond_a3

    .line 162
    .line 163
    goto :goto_d9

    .line 164
    :cond_a3
    :try_start_a3
    invoke-virtual {v6, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 173
    .line 174
    .line 175
    move-result-wide v10

    .line 176
    cmp-long v3, v10, v3

    .line 177
    .line 178
    if-nez v3, :cond_d9

    .line 179
    .line 180
    const-class v3, Lm2/e;

    .line 181
    .line 182
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v4
    :try_end_b9
    .catchall {:try_start_a3 .. :try_end_b9} :catchall_d5

    .line 186
    if-eqz v4, :cond_bc

    .line 187
    .line 188
    goto :goto_c6

    .line 189
    :cond_bc
    :try_start_bc
    sget-object v4, Ls6/o;->a:Ls6/o;

    .line 190
    .line 191
    invoke-virtual {v0, v7, v5, v4}, Lm2/e;->b(ILjava/lang/String;Ljava/util/List;)I
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_c2

    .line 192
    .line 193
    .line 194
    goto :goto_c6

    .line 195
    :catchall_c2
    move-exception v0

    .line 196
    :try_start_c3
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :goto_c6
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 204
    .line 205
    .line 206
    move-result-wide v2

    .line 207
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 208
    .line 209
    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_d4
    .catchall {:try_start_c3 .. :try_end_d4} :catchall_d5

    .line 211
    .line 212
    .line 213
    goto :goto_d9

    .line 214
    :catchall_d5
    move-exception v0

    .line 215
    invoke-static {v0, v9}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_d9
    :goto_d9
    return-void

    .line 219
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_98
    .end packed-switch
.end method
