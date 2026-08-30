###### Class i2.c (i2.c)
.class public final synthetic Li2/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Li2/c;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 1
    iget v0, p0, Li2/c;->a:I

    .line 2
    .line 3
    const-class v1, Li2/o;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-class v4, Ll2/d;

    .line 8
    .line 9
    const-class v5, Ly1/i;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v8, 0x0

    .line 14
    packed-switch v0, :pswitch_data_302

    .line 15
    .line 16
    .line 17
    const-class v0, Lz1/a;

    .line 18
    .line 19
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_19

    .line 24
    .line 25
    goto :goto_5c

    .line 26
    :cond_19
    :try_start_19
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lq2/g;->b(Landroid/content/Context;)Lq2/c;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_28

    .line 35
    .line 36
    iget-boolean v1, v1, Lq2/c;->e:Z

    .line 37
    .line 38
    if-eqz v1, :cond_28

    .line 39
    .line 40
    goto :goto_5c

    .line 41
    :cond_28
    sget-object v1, Lz1/a;->a:Lz1/a;

    .line 42
    .line 43
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_58

    .line 47
    if-eqz v2, :cond_31

    .line 48
    .line 49
    goto :goto_55

    .line 50
    :cond_31
    :try_start_31
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2, v8}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_3c

    .line 59
    .line 60
    goto :goto_55

    .line 61
    :cond_3c
    iget-object v2, v2, Lq2/t;->j:Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_51

    .line 62
    .line 63
    if-nez v2, :cond_41

    .line 64
    .line 65
    goto :goto_55

    .line 66
    :cond_41
    :try_start_41
    invoke-static {}, Lz1/c;->a()Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lorg/json/JSONObject;

    .line 74
    .line 75
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Lz7/l;->f(Lorg/json/JSONObject;)V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_50} :catch_55
    .catchall {:try_start_41 .. :try_end_50} :catchall_51

    .line 79
    .line 80
    .line 81
    goto :goto_55

    .line 82
    :catchall_51
    move-exception v2

    .line 83
    :try_start_52
    invoke-static {v2, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :catch_55
    :goto_55
    sput-boolean v7, Lz1/a;->b:Z
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_58

    .line 87
    .line 88
    goto :goto_5c

    .line 89
    :catchall_58
    move-exception v1

    .line 90
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :goto_5c
    return-void

    .line 94
    :pswitch_5d
    new-instance v0, Ljava/util/HashSet;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 97
    .line 98
    .line 99
    sget-object v1, Ly1/i;->a:Ly2/p;

    .line 100
    .line 101
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_6b

    .line 106
    .line 107
    goto :goto_76

    .line 108
    :cond_6b
    :try_start_6b
    sget-object v1, Ly1/i;->a:Ly2/p;

    .line 109
    .line 110
    invoke-virtual {v1}, Ly2/p;->e()Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v6
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_72

    .line 114
    goto :goto_76

    .line 115
    :catchall_72
    move-exception v1

    .line 116
    invoke-static {v1, v5}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :goto_76
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_8c

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Ly1/b;

    .line 134
    .line 135
    iget-object v2, v2, Ly1/b;->a:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_7a

    .line 141
    :cond_8c
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :goto_90
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_a0

    .line 150
    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v1, v7}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 158
    .line 159
    .line 160
    goto :goto_90

    .line 161
    :cond_a0
    return-void

    .line 162
    :pswitch_a1
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_a8

    .line 167
    .line 168
    goto :goto_b9

    .line 169
    :cond_a8
    :try_start_a8
    sget-object v0, Ly1/i;->a:Ly2/p;

    .line 170
    .line 171
    invoke-static {v0}, Ly1/j;->k(Ly2/p;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Ly2/p;

    .line 175
    .line 176
    invoke-direct {v0}, Ly2/p;-><init>()V

    .line 177
    .line 178
    .line 179
    sput-object v0, Ly1/i;->a:Ly2/p;
    :try_end_b4
    .catchall {:try_start_a8 .. :try_end_b4} :catchall_b5

    .line 180
    .line 181
    goto :goto_b9

    .line 182
    :catchall_b5
    move-exception v0

    .line 183
    invoke-static {v0, v5}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :goto_b9
    return-void

    .line 187
    :pswitch_ba
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_c1

    .line 192
    .line 193
    goto :goto_d4

    .line 194
    :cond_c1
    :try_start_c1
    sput-object v6, Ly1/i;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 195
    .line 196
    sget-object v0, Ly1/k;->c:Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {}, Lx1/w;->n()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    const/4 v1, 0x2

    .line 203
    if-eq v0, v1, :cond_d4

    .line 204
    .line 205
    invoke-static {v1}, Ly1/i;->d(I)V
    :try_end_cf
    .catchall {:try_start_c1 .. :try_end_cf} :catchall_d0

    .line 206
    .line 207
    .line 208
    goto :goto_d4

    .line 209
    :catchall_d0
    move-exception v0

    .line 210
    invoke-static {v0, v5}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_d4
    :goto_d4
    return-void

    .line 214
    :pswitch_d5
    invoke-static {}, Ly1/c;->a()V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_d9
    const-class v0, Lt2/a;

    .line 219
    .line 220
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_e2

    .line 225
    .line 226
    goto :goto_fb

    .line 227
    :cond_e2
    :try_start_e2
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    const-string v2, "activity"

    .line 232
    .line 233
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    const-string v2, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 238
    .line 239
    invoke-static {v2, v1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    check-cast v1, Landroid/app/ActivityManager;

    .line 243
    .line 244
    invoke-static {v1}, Lt2/a;->a(Landroid/app/ActivityManager;)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f6} :catch_fb
    .catchall {:try_start_e2 .. :try_end_f6} :catchall_f7

    .line 245
    .line 246
    .line 247
    goto :goto_fb

    .line 248
    :catchall_f7
    move-exception v1

    .line 249
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :catch_fb
    :goto_fb
    return-void

    .line 253
    :pswitch_fc
    sget-object v0, Lq2/b0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 254
    .line 255
    const-class v1, Lq2/b0;

    .line 256
    .line 257
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_107

    .line 262
    .line 263
    goto :goto_12b

    .line 264
    :cond_107
    :try_start_107
    sget-object v2, Lq2/b0;->b:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    move v4, v8

    .line 271
    :goto_10e
    if-ge v4, v3, :cond_11e

    .line 272
    .line 273
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    add-int/lit8 v4, v4, 0x1

    .line 278
    .line 279
    check-cast v5, Lq2/a0;

    .line 280
    .line 281
    invoke-virtual {v5, v7}, Lq2/a0;->a(Z)V
    :try_end_11b
    .catchall {:try_start_107 .. :try_end_11b} :catchall_11c

    .line 282
    .line 283
    .line 284
    goto :goto_10e

    .line 285
    :catchall_11c
    move-exception v2

    .line 286
    goto :goto_124

    .line 287
    :cond_11e
    :try_start_11e
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    .line 289
    .line 290
    goto :goto_12b

    .line 291
    :catchall_122
    move-exception v0

    .line 292
    goto :goto_128

    .line 293
    :goto_124
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 294
    .line 295
    .line 296
    throw v2
    :try_end_128
    .catchall {:try_start_11e .. :try_end_128} :catchall_122

    .line 297
    :goto_128
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    :goto_12b
    return-void

    .line 301
    :pswitch_12c
    const-class v0, Lo2/d;

    .line 302
    .line 303
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_135

    .line 308
    .line 309
    goto :goto_14b

    .line 310
    :cond_135
    :try_start_135
    sget-object v1, Lo2/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eqz v2, :cond_13e

    .line 317
    .line 318
    goto :goto_14b

    .line 319
    :cond_13e
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 320
    .line 321
    .line 322
    sget-object v1, Lo2/d;->a:Lo2/d;

    .line 323
    .line 324
    invoke-virtual {v1}, Lo2/d;->b()V
    :try_end_146
    .catchall {:try_start_135 .. :try_end_146} :catchall_147

    .line 325
    .line 326
    .line 327
    goto :goto_14b

    .line 328
    :catchall_147
    move-exception v1

    .line 329
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :goto_14b
    return-void

    .line 333
    :pswitch_14c
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;->a:I

    .line 334
    .line 335
    return-void

    .line 336
    :pswitch_14f
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_156

    .line 341
    .line 342
    goto :goto_177

    .line 343
    :cond_156
    :try_start_156
    const-class v0, Lj2/c;

    .line 344
    .line 345
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_173

    .line 349
    if-eqz v1, :cond_15f

    .line 350
    .line 351
    goto :goto_177

    .line 352
    :cond_15f
    :try_start_15f
    sput-boolean v7, Lj2/c;->b:Z

    .line 353
    .line 354
    const-string v1, "FBSDKFeatureIntegritySample"

    .line 355
    .line 356
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-static {v1, v2, v8}, Lq2/s;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    sput-boolean v1, Lj2/c;->c:Z
    :try_end_16d
    .catchall {:try_start_15f .. :try_end_16d} :catchall_16e

    .line 365
    .line 366
    goto :goto_177

    .line 367
    :catchall_16e
    move-exception v1

    .line 368
    :try_start_16f
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_172
    .catchall {:try_start_16f .. :try_end_172} :catchall_173

    .line 369
    .line 370
    .line 371
    goto :goto_177

    .line 372
    :catchall_173
    move-exception v0

    .line 373
    invoke-static {v0, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :goto_177
    return-void

    .line 377
    :pswitch_178
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_17f

    .line 382
    .line 383
    goto :goto_187

    .line 384
    :cond_17f
    :try_start_17f
    invoke-static {}, Lo2/d;->a()V
    :try_end_182
    .catchall {:try_start_17f .. :try_end_182} :catchall_183

    .line 385
    .line 386
    .line 387
    goto :goto_187

    .line 388
    :catchall_183
    move-exception v0

    .line 389
    invoke-static {v0, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    :goto_187
    return-void

    .line 393
    :pswitch_188
    const-string v0, "model_request_timestamp"

    .line 394
    .line 395
    const-string v1, "models"

    .line 396
    .line 397
    sget-object v5, Ll2/d;->a:Ll2/d;

    .line 398
    .line 399
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    if-eqz v7, :cond_196

    .line 404
    .line 405
    goto/16 :goto_211

    .line 406
    .line 407
    :cond_196
    :try_start_196
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    const-string v9, "com.facebook.internal.MODEL_STORE"

    .line 412
    .line 413
    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    invoke-interface {v7, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    if-eqz v6, :cond_1b5

    .line 422
    .line 423
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    if-nez v8, :cond_1ad

    .line 428
    .line 429
    goto :goto_1b5

    .line 430
    :cond_1ad
    new-instance v8, Lorg/json/JSONObject;

    .line 431
    .line 432
    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    goto :goto_1ba

    .line 436
    :catchall_1b3
    move-exception v0

    .line 437
    goto :goto_20e

    .line 438
    :cond_1b5
    :goto_1b5
    new-instance v8, Lorg/json/JSONObject;

    .line 439
    .line 440
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 441
    .line 442
    .line 443
    :goto_1ba
    invoke-interface {v7, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 444
    .line 445
    .line 446
    move-result-wide v9

    .line 447
    sget-object v6, Lq2/o;->l:Lq2/o;

    .line 448
    .line 449
    invoke-static {v6}, Lq2/q;->b(Lq2/o;)Z

    .line 450
    .line 451
    .line 452
    move-result v6

    .line 453
    if-eqz v6, :cond_1e9

    .line 454
    .line 455
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    .line 456
    .line 457
    .line 458
    move-result v6

    .line 459
    if-eqz v6, :cond_1e9

    .line 460
    .line 461
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v6
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1d0} :catch_211
    .catchall {:try_start_196 .. :try_end_1d0} :catchall_1b3

    .line 465
    if-eqz v6, :cond_1d3

    .line 466
    .line 467
    goto :goto_1e9

    .line 468
    :cond_1d3
    cmp-long v2, v9, v2

    .line 469
    .line 470
    if-nez v2, :cond_1d8

    .line 471
    .line 472
    goto :goto_1e9

    .line 473
    :cond_1d8
    :try_start_1d8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 474
    .line 475
    .line 476
    move-result-wide v2
    :try_end_1dc
    .catchall {:try_start_1d8 .. :try_end_1dc} :catchall_1e5

    .line 477
    sub-long/2addr v2, v9

    .line 478
    const-wide/32 v9, 0xf731400

    .line 479
    .line 480
    .line 481
    cmp-long v2, v2, v9

    .line 482
    .line 483
    if-gez v2, :cond_1e9

    .line 484
    .line 485
    goto :goto_207

    .line 486
    :catchall_1e5
    move-exception v2

    .line 487
    :try_start_1e6
    invoke-static {v2, v5}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    :cond_1e9
    :goto_1e9
    invoke-virtual {v5}, Ll2/d;->c()Lorg/json/JSONObject;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    if-nez v8, :cond_1f0

    .line 495
    .line 496
    goto :goto_211

    .line 497
    :cond_1f0
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 510
    .line 511
    .line 512
    move-result-wide v2

    .line 513
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 518
    .line 519
    .line 520
    :goto_207
    invoke-virtual {v5, v8}, Ll2/d;->a(Lorg/json/JSONObject;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v5}, Ll2/d;->b()V
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_20d} :catch_211
    .catchall {:try_start_1e6 .. :try_end_20d} :catchall_1b3

    .line 524
    .line 525
    .line 526
    goto :goto_211

    .line 527
    :goto_20e
    invoke-static {v0, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    :catch_211
    :goto_211
    return-void

    .line 531
    :pswitch_212
    sget-object v0, Lk2/d;->g:Lk2/n;

    .line 532
    .line 533
    if-nez v0, :cond_28a

    .line 534
    .line 535
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    const-string v1, "com.facebook.appevents.SessionInfo.sessionStartTime"

    .line 544
    .line 545
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 546
    .line 547
    .line 548
    move-result-wide v4

    .line 549
    const-string v1, "com.facebook.appevents.SessionInfo.sessionEndTime"

    .line 550
    .line 551
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 552
    .line 553
    .line 554
    move-result-wide v9

    .line 555
    const-string v1, "com.facebook.appevents.SessionInfo.sessionId"

    .line 556
    .line 557
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    cmp-long v7, v4, v2

    .line 562
    .line 563
    if-eqz v7, :cond_288

    .line 564
    .line 565
    cmp-long v2, v9, v2

    .line 566
    .line 567
    if-eqz v2, :cond_288

    .line 568
    .line 569
    if-nez v1, :cond_23b

    .line 570
    .line 571
    goto :goto_288

    .line 572
    :cond_23b
    new-instance v2, Lk2/n;

    .line 573
    .line 574
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    invoke-direct {v2, v3, v4}, Lk2/n;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 583
    .line 584
    .line 585
    const-string v3, "com.facebook.appevents.SessionInfo.interruptionCount"

    .line 586
    .line 587
    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    iput v0, v2, Lk2/n;->a:I

    .line 592
    .line 593
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    const-string v3, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    .line 602
    .line 603
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 604
    .line 605
    .line 606
    move-result v4

    .line 607
    if-nez v4, :cond_261

    .line 608
    .line 609
    goto :goto_270

    .line 610
    :cond_261
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    const-string v4, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    .line 615
    .line 616
    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    new-instance v6, Lg/m0;

    .line 621
    .line 622
    invoke-direct {v6, v3, v0}, Lg/m0;-><init>(Ljava/lang/String;Z)V

    .line 623
    .line 624
    .line 625
    :goto_270
    iput-object v6, v2, Lk2/n;->f:Ljava/lang/Object;

    .line 626
    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 628
    .line 629
    .line 630
    move-result-wide v3

    .line 631
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    iput-object v0, v2, Lk2/n;->d:Ljava/lang/Object;

    .line 636
    .line 637
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    const-string v1, "fromString(sessionIDStr)"

    .line 642
    .line 643
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    iput-object v0, v2, Lk2/n;->e:Ljava/lang/Object;

    .line 647
    .line 648
    move-object v6, v2

    .line 649
    :cond_288
    :goto_288
    sput-object v6, Lk2/d;->g:Lk2/n;

    .line 650
    .line 651
    :cond_28a
    return-void

    .line 652
    :pswitch_28b
    invoke-static {}, Li2/q;->d()V

    .line 653
    .line 654
    .line 655
    return-void

    .line 656
    :pswitch_28f
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    sget-object v2, Li2/e;->g:Ljava/lang/Object;

    .line 661
    .line 662
    invoke-static {v0, v2}, Li2/o;->f(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    invoke-static {v0, v2, v8}, Li2/e;->a(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 667
    .line 668
    .line 669
    sget-object v2, Li2/e;->g:Ljava/lang/Object;

    .line 670
    .line 671
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v3

    .line 675
    if-eqz v3, :cond_2a5

    .line 676
    .line 677
    goto :goto_2b6

    .line 678
    :cond_2a5
    :try_start_2a5
    sget-object v3, Li2/o;->a:Li2/o;

    .line 679
    .line 680
    const-string v4, "subs"

    .line 681
    .line 682
    invoke-virtual {v3, v0, v2, v4}, Li2/o;->e(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    invoke-virtual {v3, v2}, Li2/o;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 687
    .line 688
    .line 689
    move-result-object v6
    :try_end_2b1
    .catchall {:try_start_2a5 .. :try_end_2b1} :catchall_2b2

    .line 690
    goto :goto_2b6

    .line 691
    :catchall_2b2
    move-exception v2

    .line 692
    invoke-static {v2, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 693
    .line 694
    .line 695
    :goto_2b6
    invoke-static {v0, v6, v7}, Li2/e;->a(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 696
    .line 697
    .line 698
    return-void

    .line 699
    :pswitch_2ba
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    sget-object v2, Li2/e;->g:Ljava/lang/Object;

    .line 704
    .line 705
    invoke-static {v0, v2}, Li2/o;->f(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 710
    .line 711
    .line 712
    move-result v3

    .line 713
    if-eqz v3, :cond_2fe

    .line 714
    .line 715
    sget-object v2, Li2/e;->g:Ljava/lang/Object;

    .line 716
    .line 717
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v3

    .line 721
    if-eqz v3, :cond_2d3

    .line 722
    .line 723
    goto :goto_2fd

    .line 724
    :cond_2d3
    :try_start_2d3
    new-instance v3, Ljava/util/ArrayList;

    .line 725
    .line 726
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .line 728
    .line 729
    if-nez v2, :cond_2db

    .line 730
    .line 731
    goto :goto_2ee

    .line 732
    :cond_2db
    sget-object v4, Li2/o;->a:Li2/o;

    .line 733
    .line 734
    const-string v5, "com.android.vending.billing.IInAppBillingService"

    .line 735
    .line 736
    invoke-virtual {v4, v0, v5}, Li2/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    .line 737
    .line 738
    .line 739
    move-result-object v5

    .line 740
    if-nez v5, :cond_2e6

    .line 741
    .line 742
    goto :goto_2ee

    .line 743
    :cond_2e6
    const-string v7, "getPurchaseHistory"

    .line 744
    .line 745
    invoke-virtual {v4, v5, v7}, Li2/o;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 746
    .line 747
    .line 748
    move-result-object v5

    .line 749
    if-nez v5, :cond_2f0

    .line 750
    .line 751
    :goto_2ee
    move-object v6, v3

    .line 752
    goto :goto_2fd

    .line 753
    :cond_2f0
    invoke-virtual {v4, v0, v2}, Li2/o;->d(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 754
    .line 755
    .line 756
    move-result-object v2

    .line 757
    invoke-virtual {v4, v2}, Li2/o;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 758
    .line 759
    .line 760
    move-result-object v6
    :try_end_2f8
    .catchall {:try_start_2d3 .. :try_end_2f8} :catchall_2f9

    .line 761
    goto :goto_2fd

    .line 762
    :catchall_2f9
    move-exception v2

    .line 763
    invoke-static {v2, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 764
    .line 765
    .line 766
    :goto_2fd
    move-object v2, v6

    .line 767
    :cond_2fe
    invoke-static {v0, v2, v8}, Li2/e;->a(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 768
    .line 769
    .line 770
    return-void

    .line 771
    :pswitch_data_302
    .packed-switch 0x0
        :pswitch_2ba
        :pswitch_28f
        :pswitch_28b
        :pswitch_212
        :pswitch_188
        :pswitch_178
        :pswitch_14f
        :pswitch_14c
        :pswitch_12c
        :pswitch_fc
        :pswitch_d9
        :pswitch_d5
        :pswitch_ba
        :pswitch_a1
        :pswitch_5d
    .end packed-switch
.end method
