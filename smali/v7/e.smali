###### Class v7.e (v7.e)
.class public final Lv7/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lv7/m;

.field public final b:Lr7/a;

.field public final c:Lv7/i;

.field public d:Lg/j;

.field public e:Lk2/n;

.field public f:I

.field public g:I

.field public h:I

.field public i:Lr7/x;


# direct methods
.method public constructor <init>(Lv7/m;Lr7/a;Lv7/i;)V
    .registers 5

    .line 1
    const-string v0, "connectionPool"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lv7/e;->a:Lv7/m;

    .line 10
    .line 11
    iput-object p2, p0, Lv7/e;->b:Lr7/a;

    .line 12
    .line 13
    iput-object p3, p0, Lv7/e;->c:Lv7/i;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(IIIZZ)Lv7/l;
    .registers 17

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lv7/e;->c:Lv7/i;

    .line 2
    .line 3
    iget-boolean v0, v0, Lv7/i;->m:Z

    .line 4
    .line 5
    if-nez v0, :cond_18e

    .line 6
    .line 7
    iget-object v0, p0, Lv7/e;->c:Lv7/i;

    .line 8
    .line 9
    iget-object v1, v0, Lv7/i;->h:Lv7/l;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_48

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_f
    iget-boolean v3, v1, Lv7/l;->j:Z

    .line 17
    .line 18
    if-nez v3, :cond_25

    .line 19
    .line 20
    iget-object v3, v1, Lv7/l;->b:Lr7/x;

    .line 21
    .line 22
    iget-object v3, v3, Lr7/x;->a:Lr7/a;

    .line 23
    .line 24
    iget-object v3, v3, Lr7/a;->h:Lr7/m;

    .line 25
    .line 26
    invoke-virtual {p0, v3}, Lv7/e;->b(Lr7/m;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_20

    .line 31
    .line 32
    goto :goto_25

    .line 33
    :cond_20
    move-object v3, v2

    .line 34
    goto :goto_2b

    .line 35
    :catchall_22
    move-exception v0

    .line 36
    move-object p1, v0

    .line 37
    goto :goto_46

    .line 38
    :cond_25
    :goto_25
    iget-object v3, p0, Lv7/e;->c:Lv7/i;

    .line 39
    .line 40
    invoke-virtual {v3}, Lv7/i;->k()Ljava/net/Socket;

    .line 41
    .line 42
    .line 43
    move-result-object v3
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_22

    .line 44
    :goto_2b
    monitor-exit v1

    .line 45
    iget-object v4, p0, Lv7/e;->c:Lv7/i;

    .line 46
    .line 47
    iget-object v4, v4, Lv7/i;->h:Lv7/l;

    .line 48
    .line 49
    if-eqz v4, :cond_40

    .line 50
    .line 51
    if-nez v3, :cond_38

    .line 52
    .line 53
    :goto_34
    move/from16 v2, p5

    .line 54
    .line 55
    goto/16 :goto_147

    .line 56
    .line 57
    :cond_38
    const-string p1, "Check failed."

    .line 58
    .line 59
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p2

    .line 65
    :cond_40
    if-eqz v3, :cond_48

    .line 66
    .line 67
    invoke-static {v3}, Ls7/b;->e(Ljava/net/Socket;)V

    .line 68
    .line 69
    .line 70
    goto :goto_48

    .line 71
    :goto_46
    monitor-exit v1

    .line 72
    throw p1

    .line 73
    :cond_48
    :goto_48
    const/4 v1, 0x0

    .line 74
    iput v1, p0, Lv7/e;->f:I

    .line 75
    .line 76
    iput v1, p0, Lv7/e;->g:I

    .line 77
    .line 78
    iput v1, p0, Lv7/e;->h:I

    .line 79
    .line 80
    iget-object v3, p0, Lv7/e;->a:Lv7/m;

    .line 81
    .line 82
    iget-object v4, p0, Lv7/e;->b:Lr7/a;

    .line 83
    .line 84
    iget-object v5, p0, Lv7/e;->c:Lv7/i;

    .line 85
    .line 86
    invoke-virtual {v3, v4, v5, v2, v1}, Lv7/m;->a(Lr7/a;Lv7/i;Ljava/util/List;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_63

    .line 91
    .line 92
    iget-object v1, p0, Lv7/e;->c:Lv7/i;

    .line 93
    .line 94
    iget-object v1, v1, Lv7/i;->h:Lv7/l;

    .line 95
    .line 96
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_34

    .line 100
    :cond_63
    iget-object v3, p0, Lv7/e;->i:Lr7/x;

    .line 101
    .line 102
    if-eqz v3, :cond_6c

    .line 103
    .line 104
    iput-object v2, p0, Lv7/e;->i:Lr7/x;

    .line 105
    .line 106
    :goto_69
    move-object v4, v2

    .line 107
    goto/16 :goto_e8

    .line 108
    .line 109
    :cond_6c
    iget-object v3, p0, Lv7/e;->d:Lg/j;

    .line 110
    .line 111
    if-eqz v3, :cond_99

    .line 112
    .line 113
    invoke-virtual {v3}, Lg/j;->c()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_99

    .line 118
    .line 119
    iget-object v1, p0, Lv7/e;->d:Lg/j;

    .line 120
    .line 121
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lg/j;->c()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_93

    .line 129
    .line 130
    iget-object v3, v1, Lg/j;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v3, Ljava/util/ArrayList;

    .line 133
    .line 134
    iget v4, v1, Lg/j;->a:I

    .line 135
    .line 136
    add-int/lit8 v5, v4, 0x1

    .line 137
    .line 138
    iput v5, v1, Lg/j;->a:I

    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    move-object v3, v1

    .line 145
    check-cast v3, Lr7/x;

    .line 146
    .line 147
    goto :goto_69

    .line 148
    :cond_93
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_99
    iget-object v3, p0, Lv7/e;->e:Lk2/n;

    .line 155
    .line 156
    if-nez v3, :cond_ac

    .line 157
    .line 158
    new-instance v3, Lk2/n;

    .line 159
    .line 160
    iget-object v4, p0, Lv7/e;->b:Lr7/a;

    .line 161
    .line 162
    iget-object v5, p0, Lv7/e;->c:Lv7/i;

    .line 163
    .line 164
    iget-object v6, v5, Lv7/i;->a:Lr7/r;

    .line 165
    .line 166
    iget-object v6, v6, Lr7/r;->G:Lo5/c;

    .line 167
    .line 168
    invoke-direct {v3, v4, v6, v5}, Lk2/n;-><init>(Lr7/a;Lo5/c;Lv7/i;)V

    .line 169
    .line 170
    .line 171
    iput-object v3, p0, Lv7/e;->e:Lk2/n;

    .line 172
    .line 173
    :cond_ac
    invoke-virtual {v3}, Lk2/n;->f()Lg/j;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    iput-object v3, p0, Lv7/e;->d:Lg/j;

    .line 178
    .line 179
    iget-object v4, v3, Lg/j;->b:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v4, Ljava/util/ArrayList;

    .line 182
    .line 183
    iget-object v5, p0, Lv7/e;->c:Lv7/i;

    .line 184
    .line 185
    iget-boolean v5, v5, Lv7/i;->m:Z

    .line 186
    .line 187
    if-nez v5, :cond_186

    .line 188
    .line 189
    iget-object v5, p0, Lv7/e;->a:Lv7/m;

    .line 190
    .line 191
    iget-object v6, p0, Lv7/e;->b:Lr7/a;

    .line 192
    .line 193
    iget-object v7, p0, Lv7/e;->c:Lv7/i;

    .line 194
    .line 195
    invoke-virtual {v5, v6, v7, v4, v1}, Lv7/m;->a(Lr7/a;Lv7/i;Ljava/util/List;Z)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_d1

    .line 200
    .line 201
    iget-object v1, p0, Lv7/e;->c:Lv7/i;

    .line 202
    .line 203
    iget-object v1, v1, Lv7/i;->h:Lv7/l;

    .line 204
    .line 205
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_34

    .line 209
    .line 210
    :cond_d1
    invoke-virtual {v3}, Lg/j;->c()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_180

    .line 215
    .line 216
    iget-object v1, v3, Lg/j;->b:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v1, Ljava/util/ArrayList;

    .line 219
    .line 220
    iget v5, v3, Lg/j;->a:I

    .line 221
    .line 222
    add-int/lit8 v6, v5, 0x1

    .line 223
    .line 224
    iput v6, v3, Lg/j;->a:I

    .line 225
    .line 226
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    move-object v3, v1

    .line 231
    check-cast v3, Lr7/x;

    .line 232
    .line 233
    :goto_e8
    new-instance v5, Lv7/l;

    .line 234
    .line 235
    iget-object v1, p0, Lv7/e;->a:Lv7/m;

    .line 236
    .line 237
    invoke-direct {v5, v1, v3}, Lv7/l;-><init>(Lv7/m;Lr7/x;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, p0, Lv7/e;->c:Lv7/i;

    .line 241
    .line 242
    iput-object v5, v1, Lv7/i;->w:Lv7/l;

    .line 243
    .line 244
    :try_start_f3
    iget-object v10, p0, Lv7/e;->c:Lv7/i;

    .line 245
    .line 246
    move v6, p1

    .line 247
    move v7, p2

    .line 248
    move v8, p3

    .line 249
    move v9, p4

    .line 250
    invoke-virtual/range {v5 .. v10}, Lv7/l;->c(IIIZLv7/i;)V
    :try_end_fc
    .catchall {:try_start_f3 .. :try_end_fc} :catchall_179

    .line 251
    .line 252
    .line 253
    iget-object v1, p0, Lv7/e;->c:Lv7/i;

    .line 254
    .line 255
    iput-object v2, v1, Lv7/i;->w:Lv7/l;

    .line 256
    .line 257
    iget-object v1, p0, Lv7/e;->c:Lv7/i;

    .line 258
    .line 259
    iget-object v1, v1, Lv7/i;->a:Lr7/r;

    .line 260
    .line 261
    iget-object v1, v1, Lr7/r;->G:Lo5/c;

    .line 262
    .line 263
    invoke-virtual {v1, v3}, Lo5/c;->k(Lr7/x;)V

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Lv7/e;->a:Lv7/m;

    .line 267
    .line 268
    iget-object v2, p0, Lv7/e;->b:Lr7/a;

    .line 269
    .line 270
    iget-object v6, p0, Lv7/e;->c:Lv7/i;

    .line 271
    .line 272
    invoke-virtual {v1, v2, v6, v4, v0}, Lv7/m;->a(Lr7/a;Lv7/i;Ljava/util/List;Z)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-eqz v1, :cond_128

    .line 277
    .line 278
    iget-object v1, p0, Lv7/e;->c:Lv7/i;

    .line 279
    .line 280
    iget-object v1, v1, Lv7/i;->h:Lv7/l;

    .line 281
    .line 282
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    iput-object v3, p0, Lv7/e;->i:Lr7/x;

    .line 286
    .line 287
    iget-object v2, v5, Lv7/l;->d:Ljava/net/Socket;

    .line 288
    .line 289
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-static {v2}, Ls7/b;->e(Ljava/net/Socket;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_34

    .line 296
    .line 297
    :cond_128
    monitor-enter v5

    .line 298
    :try_start_129
    iget-object v1, p0, Lv7/e;->a:Lv7/m;

    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    sget-object v2, Ls7/b;->a:[B

    .line 304
    .line 305
    iget-object v2, v1, Lv7/m;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 306
    .line 307
    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    iget-object v2, v1, Lv7/m;->c:Lu7/c;

    .line 311
    .line 312
    iget-object v1, v1, Lv7/m;->d:Lu7/b;

    .line 313
    .line 314
    const-wide/16 v3, 0x0

    .line 315
    .line 316
    invoke-virtual {v2, v1, v3, v4}, Lu7/c;->c(Lu7/a;J)V

    .line 317
    .line 318
    .line 319
    iget-object v1, p0, Lv7/e;->c:Lv7/i;

    .line 320
    .line 321
    invoke-virtual {v1, v5}, Lv7/i;->b(Lv7/l;)V
    :try_end_143
    .catchall {:try_start_129 .. :try_end_143} :catchall_175

    .line 322
    .line 323
    .line 324
    monitor-exit v5

    .line 325
    move/from16 v2, p5

    .line 326
    .line 327
    move-object v1, v5

    .line 328
    :goto_147
    invoke-virtual {v1, v2}, Lv7/l;->j(Z)Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-eqz v3, :cond_14e

    .line 333
    .line 334
    return-object v1

    .line 335
    :cond_14e
    invoke-virtual {v1}, Lv7/l;->l()V

    .line 336
    .line 337
    .line 338
    iget-object v1, p0, Lv7/e;->i:Lr7/x;

    .line 339
    .line 340
    if-nez v1, :cond_0

    .line 341
    .line 342
    iget-object v1, p0, Lv7/e;->d:Lg/j;

    .line 343
    .line 344
    if-eqz v1, :cond_15e

    .line 345
    .line 346
    invoke-virtual {v1}, Lg/j;->c()Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    goto :goto_15f

    .line 351
    :cond_15e
    move v1, v0

    .line 352
    :goto_15f
    if-nez v1, :cond_0

    .line 353
    .line 354
    iget-object v1, p0, Lv7/e;->e:Lk2/n;

    .line 355
    .line 356
    if-eqz v1, :cond_169

    .line 357
    .line 358
    invoke-virtual {v1}, Lk2/n;->d()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    :cond_169
    if-eqz v0, :cond_16d

    .line 363
    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_16d
    new-instance p1, Ljava/io/IOException;

    .line 367
    .line 368
    const-string p2, "exhausted all routes"

    .line 369
    .line 370
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw p1

    .line 374
    :catchall_175
    move-exception v0

    .line 375
    move-object p1, v0

    .line 376
    monitor-exit v5

    .line 377
    throw p1

    .line 378
    :catchall_179
    move-exception v0

    .line 379
    move-object p1, v0

    .line 380
    iget-object p2, p0, Lv7/e;->c:Lv7/i;

    .line 381
    .line 382
    iput-object v2, p2, Lv7/i;->w:Lv7/l;

    .line 383
    .line 384
    throw p1

    .line 385
    :cond_180
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 386
    .line 387
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 388
    .line 389
    .line 390
    throw p1

    .line 391
    :cond_186
    new-instance p1, Ljava/io/IOException;

    .line 392
    .line 393
    const-string p2, "Canceled"

    .line 394
    .line 395
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw p1

    .line 399
    :cond_18e
    new-instance p1, Ljava/io/IOException;

    .line 400
    .line 401
    const-string p2, "Canceled"

    .line 402
    .line 403
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw p1
.end method

.method public final b(Lr7/m;)Z
    .registers 5

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv7/e;->b:Lr7/a;

    .line 7
    .line 8
    iget-object v0, v0, Lr7/a;->h:Lr7/m;

    .line 9
    .line 10
    iget v1, p1, Lr7/m;->e:I

    .line 11
    .line 12
    iget v2, v0, Lr7/m;->e:I

    .line 13
    .line 14
    if-ne v1, v2, :cond_1b

    .line 15
    .line 16
    iget-object p1, p1, Lr7/m;->d:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, v0, Lr7/m;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1, v0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1b

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public final c(Ljava/io/IOException;)V
    .registers 4

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lv7/e;->i:Lr7/x;

    .line 8
    .line 9
    instance-of v0, p1, Ly7/b0;

    .line 10
    .line 11
    if-eqz v0, :cond_1c

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Ly7/b0;

    .line 15
    .line 16
    iget v0, v0, Ly7/b0;->a:I

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    if-ne v0, v1, :cond_1c

    .line 21
    .line 22
    iget p1, p0, Lv7/e;->f:I

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    iput p1, p0, Lv7/e;->f:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1c
    instance-of p1, p1, Ly7/a;

    .line 30
    .line 31
    if-eqz p1, :cond_27

    .line 32
    .line 33
    iget p1, p0, Lv7/e;->g:I

    .line 34
    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    iput p1, p0, Lv7/e;->g:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_27
    iget p1, p0, Lv7/e;->h:I

    .line 41
    .line 42
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    iput p1, p0, Lv7/e;->h:I

    .line 45
    .line 46
    return-void
.end method
