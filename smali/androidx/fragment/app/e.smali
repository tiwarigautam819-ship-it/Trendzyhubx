###### Class androidx.fragment.app.e (androidx.fragment.app.e)
.class public final synthetic Landroidx/fragment/app/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 5

    .line 1
    iput p4, p0, Landroidx/fragment/app/e;->a:I

    iput-object p1, p0, Landroidx/fragment/app/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk3/a;Lf3/i;Lcom/getcapacitor/n;Lf3/h;)V
    .registers 5

    .line 2
    const/4 p3, 0x5

    iput p3, p0, Landroidx/fragment/app/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    .line 1
    iget v0, p0, Landroidx/fragment/app/e;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    packed-switch v0, :pswitch_data_22a

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/fragment/app/e;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ly2/u;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ly2/m;

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Landroid/os/Bundle;

    .line 21
    .line 22
    :try_start_15
    invoke-virtual {v0, v1, v3}, Ly2/t;->i(Ly2/m;Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v3}, Ly2/u;->p(Ly2/m;Landroid/os/Bundle;)V
    :try_end_1b
    .catch Lx1/t; {:try_start_15 .. :try_end_1b} :catch_1e
    .catch Lx1/l; {:try_start_15 .. :try_end_1b} :catch_1c

    .line 26
    .line 27
    .line 28
    goto :goto_39

    .line 29
    :catch_1c
    move-exception v3

    .line 30
    goto :goto_20

    .line 31
    :catch_1e
    move-exception v2

    .line 32
    goto :goto_28

    .line 33
    :goto_20
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v1, v2, v3, v2}, Ly2/u;->o(Ly2/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_39

    .line 41
    :goto_28
    iget-object v2, v2, Lx1/t;->a:Lx1/o;

    .line 42
    .line 43
    iget-object v3, v2, Lx1/o;->d:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2}, Lx1/o;->a()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget v2, v2, Lx1/o;->b:I

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v3, v4, v2}, Ly2/u;->o(Ly2/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_39
    return-void

    .line 59
    :pswitch_3a
    iget-object v0, p0, Landroidx/fragment/app/e;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Ly2/a;

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Ly2/m;

    .line 66
    .line 67
    iget-object v3, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v3, Landroid/os/Bundle;

    .line 70
    .line 71
    :try_start_46
    invoke-virtual {v0, v1, v3}, Ly2/t;->i(Ly2/m;Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v3, v2}, Ly2/u;->q(Ly2/m;Landroid/os/Bundle;Lx1/l;)V
    :try_end_4c
    .catch Lx1/l; {:try_start_46 .. :try_end_4c} :catch_4d

    .line 75
    .line 76
    .line 77
    goto :goto_51

    .line 78
    :catch_4d
    move-exception v3

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Ly2/u;->q(Ly2/m;Landroid/os/Bundle;Lx1/l;)V

    .line 80
    .line 81
    .line 82
    :goto_51
    return-void

    .line 83
    :pswitch_52
    iget-object v0, p0, Landroidx/fragment/app/e;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Ld4/b;

    .line 86
    .line 87
    iget-object v1, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Lx2/a;

    .line 90
    .line 91
    iget-object v2, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 94
    .line 95
    :try_start_5e
    iget-object v0, v0, Ld4/b;->a:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v0}, Lt4/b;->c(Landroid/content/Context;)Lp0/r;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_80

    .line 102
    .line 103
    iget-object v3, v0, Lp0/r;->a:Lp0/j;

    .line 104
    .line 105
    check-cast v3, Lp0/q;

    .line 106
    .line 107
    iget-object v4, v3, Lp0/q;->d:Ljava/lang/Object;

    .line 108
    .line 109
    monitor-enter v4
    :try_end_6d
    .catchall {:try_start_5e .. :try_end_6d} :catchall_7b

    .line 110
    :try_start_6d
    iput-object v2, v3, Lp0/q;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 111
    .line 112
    monitor-exit v4
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_7d

    .line 113
    :try_start_70
    iget-object v0, v0, Lp0/r;->a:Lp0/j;

    .line 114
    .line 115
    new-instance v3, Lp0/l;

    .line 116
    .line 117
    invoke-direct {v3, v1, v2}, Lp0/l;-><init>(Lx2/a;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v0, v3}, Lp0/j;->a(Lx2/a;)V
    :try_end_7a
    .catchall {:try_start_70 .. :try_end_7a} :catchall_7b

    .line 121
    .line 122
    .line 123
    goto :goto_8e

    .line 124
    :catchall_7b
    move-exception v0

    .line 125
    goto :goto_88

    .line 126
    :catchall_7d
    move-exception v0

    .line 127
    :try_start_7e
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    .line 128
    :try_start_7f
    throw v0

    .line 129
    :cond_80
    new-instance v0, Ljava/lang/RuntimeException;

    .line 130
    .line 131
    const-string v3, "EmojiCompat font provider not available on this device."

    .line 132
    .line 133
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_7b

    .line 137
    :goto_88
    invoke-virtual {v1, v0}, Lx2/a;->k(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 141
    .line 142
    .line 143
    :goto_8e
    return-void

    .line 144
    :pswitch_8f
    iget-object v0, p0, Landroidx/fragment/app/e;->b:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v0, Lm1/e;

    .line 147
    .line 148
    iget-object v1, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v1, Ljava/io/File;

    .line 151
    .line 152
    iget-object v2, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v2, Ljava/lang/String;

    .line 155
    .line 156
    iget-object v0, v0, Lm1/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 157
    .line 158
    :try_start_9d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_a9

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_a7

    .line 165
    .line 166
    .line 167
    goto :goto_a9

    .line 168
    :catchall_a7
    move-exception v1

    .line 169
    goto :goto_ad

    .line 170
    :cond_a9
    :goto_a9
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :goto_ad
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    throw v1

    .line 178
    :pswitch_b1
    iget-object v0, p0, Landroidx/fragment/app/e;->b:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Lk3/a;

    .line 181
    .line 182
    iget-object v1, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v1, Lf3/i;

    .line 185
    .line 186
    iget-object v2, v1, Lf3/i;->a:Ljava/lang/String;

    .line 187
    .line 188
    iget-object v3, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v3, Lf3/h;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    sget-object v5, Lk3/a;->f:Ljava/util/logging/Logger;

    .line 196
    .line 197
    const-string v6, "Transport backend \'"

    .line 198
    .line 199
    :try_start_c6
    iget-object v7, v0, Lk3/a;->c:Lg3/d;

    .line 200
    .line 201
    invoke-virtual {v7, v2}, Lg3/d;->a(Ljava/lang/String;)Lg3/e;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    if-nez v7, :cond_ea

    .line 206
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v1, "\' is not registered"

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 228
    .line 229
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_112

    .line 233
    :catch_e8
    move-exception v0

    .line 234
    goto :goto_fd

    .line 235
    :cond_ea
    check-cast v7, Ld3/c;

    .line 236
    .line 237
    invoke-virtual {v7, v3}, Ld3/c;->a(Lf3/h;)Lf3/h;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget-object v3, v0, Lk3/a;->e:Ln3/c;

    .line 242
    .line 243
    new-instance v6, Lcom/google/firebase/messaging/o;

    .line 244
    .line 245
    invoke-direct {v6, v0, v1, v2, v4}, Lcom/google/firebase/messaging/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 246
    .line 247
    .line 248
    check-cast v3, Lm3/h;

    .line 249
    .line 250
    invoke-virtual {v3, v6}, Lm3/h;->t(Ln3/b;)Ljava/lang/Object;
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_fc} :catch_e8

    .line 251
    .line 252
    .line 253
    goto :goto_112

    .line 254
    :goto_fd
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v2, "Error scheduling event "

    .line 257
    .line 258
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :goto_112
    return-void

    .line 276
    :pswitch_113
    iget-object v0, p0, Landroidx/fragment/app/e;->b:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v0, Li2/m;

    .line 279
    .line 280
    iget-object v5, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v5, Li2/s;

    .line 283
    .line 284
    iget-object v6, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v6, Ljava/lang/Runnable;

    .line 287
    .line 288
    const-class v7, Li2/m;

    .line 289
    .line 290
    invoke-static {v7}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    if-eqz v8, :cond_128

    .line 295
    .line 296
    goto :goto_18f

    .line 297
    :cond_128
    :try_start_128
    iget-object v8, v0, Li2/m;->o:Ljava/lang/Class;

    .line 298
    .line 299
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    new-array v10, v4, [Ljava/lang/Class;

    .line 304
    .line 305
    aput-object v8, v10, v3

    .line 306
    .line 307
    new-instance v8, Li2/k;

    .line 308
    .line 309
    new-array v11, v1, [Ljava/lang/Object;

    .line 310
    .line 311
    aput-object v5, v11, v3

    .line 312
    .line 313
    aput-object v6, v11, v4

    .line 314
    .line 315
    invoke-direct {v8, v0, v11, v4}, Li2/k;-><init>(Li2/h;Ljava/lang/Object;I)V

    .line 316
    .line 317
    .line 318
    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    iget-object v8, v0, Li2/m;->b:Ljava/lang/Class;

    .line 323
    .line 324
    iget-object v9, v0, Li2/m;->q:Ljava/lang/reflect/Method;

    .line 325
    .line 326
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v10
    :try_end_149
    .catchall {:try_start_128 .. :try_end_149} :catchall_18b

    .line 330
    if-eqz v10, :cond_14d

    .line 331
    .line 332
    :goto_14b
    move-object v10, v2

    .line 333
    goto :goto_155

    .line 334
    :cond_14d
    :try_start_14d
    iget-object v10, v0, Li2/m;->a:Ljava/lang/Object;
    :try_end_14f
    .catchall {:try_start_14d .. :try_end_14f} :catchall_150

    .line 335
    .line 336
    goto :goto_155

    .line 337
    :catchall_150
    move-exception v10

    .line 338
    :try_start_151
    invoke-static {v10, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    goto :goto_14b

    .line 342
    :goto_155
    iget-object v11, v0, Li2/m;->k:Ljava/lang/Class;

    .line 343
    .line 344
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v12
    :try_end_15b
    .catchall {:try_start_151 .. :try_end_15b} :catchall_18b

    .line 348
    if-eqz v12, :cond_15e

    .line 349
    .line 350
    goto :goto_181

    .line 351
    :cond_15e
    :try_start_15e
    iget-object v12, v0, Li2/m;->i:Ljava/lang/Class;

    .line 352
    .line 353
    iget-object v13, v0, Li2/m;->r:Ljava/lang/reflect/Method;

    .line 354
    .line 355
    new-array v14, v3, [Ljava/lang/Object;

    .line 356
    .line 357
    invoke-static {v12, v13, v2, v14}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v12

    .line 361
    iget-object v13, v0, Li2/m;->t:Ljava/lang/reflect/Method;

    .line 362
    .line 363
    iget-object v5, v5, Li2/s;->a:Ljava/lang/String;

    .line 364
    .line 365
    new-array v14, v4, [Ljava/lang/Object;

    .line 366
    .line 367
    aput-object v5, v14, v3

    .line 368
    .line 369
    invoke-static {v11, v13, v12, v14}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    iget-object v12, v0, Li2/m;->s:Ljava/lang/reflect/Method;

    .line 374
    .line 375
    new-array v13, v3, [Ljava/lang/Object;

    .line 376
    .line 377
    invoke-static {v11, v12, v5, v13}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v2
    :try_end_17c
    .catchall {:try_start_15e .. :try_end_17c} :catchall_17d

    .line 381
    goto :goto_181

    .line 382
    :catchall_17d
    move-exception v5

    .line 383
    :try_start_17e
    invoke-static {v5, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    :goto_181
    new-array v0, v1, [Ljava/lang/Object;

    .line 387
    .line 388
    aput-object v2, v0, v3

    .line 389
    .line 390
    aput-object v6, v0, v4

    .line 391
    .line 392
    invoke-static {v8, v9, v10, v0}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18a
    .catchall {:try_start_17e .. :try_end_18a} :catchall_18b

    .line 393
    .line 394
    .line 395
    goto :goto_18f

    .line 396
    :catchall_18b
    move-exception v0

    .line 397
    invoke-static {v0, v7}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    :goto_18f
    return-void

    .line 401
    :pswitch_190
    iget-object v0, p0, Landroidx/fragment/app/e;->b:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v0, Li2/l;

    .line 404
    .line 405
    iget-object v5, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v5, Li2/s;

    .line 408
    .line 409
    iget-object v6, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v6, Ljava/lang/Runnable;

    .line 412
    .line 413
    const-class v7, Li2/l;

    .line 414
    .line 415
    invoke-static {v7}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v8

    .line 419
    if-eqz v8, :cond_1a5

    .line 420
    .line 421
    goto :goto_1da

    .line 422
    :cond_1a5
    :try_start_1a5
    iget-object v8, v0, Li2/l;->f:Ljava/lang/Class;

    .line 423
    .line 424
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    new-array v10, v4, [Ljava/lang/Class;

    .line 429
    .line 430
    aput-object v8, v10, v3

    .line 431
    .line 432
    new-instance v8, Li2/i;

    .line 433
    .line 434
    invoke-direct {v8, v0, v5, v6}, Li2/i;-><init>(Li2/l;Li2/s;Ljava/lang/Runnable;)V

    .line 435
    .line 436
    .line 437
    invoke-static {v9, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    iget-object v8, v0, Li2/l;->b:Ljava/lang/Class;

    .line 442
    .line 443
    iget-object v9, v0, Li2/l;->j:Ljava/lang/reflect/Method;

    .line 444
    .line 445
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v10
    :try_end_1c0
    .catchall {:try_start_1a5 .. :try_end_1c0} :catchall_1d6

    .line 449
    if-eqz v10, :cond_1c3

    .line 450
    .line 451
    goto :goto_1ca

    .line 452
    :cond_1c3
    :try_start_1c3
    iget-object v2, v0, Li2/l;->a:Ljava/lang/Object;
    :try_end_1c5
    .catchall {:try_start_1c3 .. :try_end_1c5} :catchall_1c6

    .line 453
    .line 454
    goto :goto_1ca

    .line 455
    :catchall_1c6
    move-exception v10

    .line 456
    :try_start_1c7
    invoke-static {v10, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    :goto_1ca
    iget-object v0, v5, Li2/s;->a:Ljava/lang/String;

    .line 460
    .line 461
    new-array v1, v1, [Ljava/lang/Object;

    .line 462
    .line 463
    aput-object v0, v1, v3

    .line 464
    .line 465
    aput-object v6, v1, v4

    .line 466
    .line 467
    invoke-static {v8, v9, v2, v1}, Li2/t;->j(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d5
    .catchall {:try_start_1c7 .. :try_end_1d5} :catchall_1d6

    .line 468
    .line 469
    .line 470
    goto :goto_1da

    .line 471
    :catchall_1d6
    move-exception v0

    .line 472
    invoke-static {v0, v7}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    :goto_1da
    return-void

    .line 476
    :pswitch_1db
    iget-object v0, p0, Landroidx/fragment/app/e;->b:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v0, Lcom/google/firebase/messaging/g;

    .line 479
    .line 480
    iget-object v1, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v1, Landroid/content/Intent;

    .line 483
    .line 484
    iget-object v3, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v3, Lp4/j;

    .line 487
    .line 488
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    :try_start_1ea
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/g;->handleIntent(Landroid/content/Intent;)V
    :try_end_1ed
    .catchall {:try_start_1ea .. :try_end_1ed} :catchall_1f1

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3, v2}, Lp4/j;->a(Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    return-void

    .line 498
    :catchall_1f1
    move-exception v0

    .line 499
    invoke-virtual {v3, v2}, Lp4/j;->a(Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    throw v0

    .line 503
    :pswitch_1f6
    iget-object v0, p0, Landroidx/fragment/app/e;->b:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v0, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;

    .line 506
    .line 507
    iget-object v1, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 508
    .line 509
    check-cast v1, Ljava/lang/String;

    .line 510
    .line 511
    iget-object v2, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v2, Landroid/webkit/ValueCallback;

    .line 514
    .line 515
    invoke-static {v0, v1, v2}, Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;->a(Lcom/getcapacitor/cordova/MockCordovaWebViewImpl;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 516
    .line 517
    .line 518
    return-void

    .line 519
    :pswitch_206
    iget-object v0, p0, Landroidx/fragment/app/e;->b:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v0, Landroid/view/ViewGroup;

    .line 522
    .line 523
    iget-object v1, p0, Landroidx/fragment/app/e;->c:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v1, Landroid/view/View;

    .line 526
    .line 527
    iget-object v2, p0, Landroidx/fragment/app/e;->d:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast v2, Landroidx/fragment/app/g;

    .line 530
    .line 531
    const-string v3, "$container"

    .line 532
    .line 533
    invoke-static {v3, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    const-string v3, "this$0"

    .line 537
    .line 538
    invoke-static {v3, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 542
    .line 543
    .line 544
    iget-object v0, v2, Landroidx/fragment/app/g;->c:Landroidx/fragment/app/h;

    .line 545
    .line 546
    iget-object v0, v0, Landroidx/fragment/app/m;->a:Ljava/lang/Object;

    .line 547
    .line 548
    check-cast v0, Landroidx/fragment/app/l1;

    .line 549
    .line 550
    invoke-virtual {v0, v2}, Landroidx/fragment/app/l1;->c(Landroidx/fragment/app/k1;)V

    .line 551
    .line 552
    .line 553
    return-void

    .line 554
    nop

    .line 555
    :pswitch_data_22a
    .packed-switch 0x0
        :pswitch_206
        :pswitch_1f6
        :pswitch_1db
        :pswitch_190
        :pswitch_113
        :pswitch_b1
        :pswitch_8f
        :pswitch_52
        :pswitch_3a
    .end packed-switch
.end method
