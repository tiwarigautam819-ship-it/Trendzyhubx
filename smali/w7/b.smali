###### Class w7.b (w7.b)
.class public final Lw7/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lr7/o;


# virtual methods
.method public final a(Lw7/f;)Lr7/u;
    .registers 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "Connection"

    .line 4
    .line 5
    const-string v2, "close"

    .line 6
    .line 7
    const-string v3, "HTTP "

    .line 8
    .line 9
    iget-object v4, v0, Lw7/f;->d:Lcom/google/firebase/messaging/p;

    .line 10
    .line 11
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v5, v4, Lcom/google/firebase/messaging/p;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v5, Lv7/i;

    .line 17
    .line 18
    iget-object v6, v4, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v6, Lw7/d;

    .line 21
    .line 22
    iget-object v7, v4, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v7, Lv7/l;

    .line 25
    .line 26
    iget-object v8, v0, Lw7/f;->e:Lcom/google/android/gms/common/internal/g;

    .line 27
    .line 28
    iget-object v0, v8, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lb0/d;

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    const/4 v12, 0x0

    .line 37
    :try_start_24
    invoke-interface {v6, v8}, Lw7/d;->a(Lcom/google/android/gms/common/internal/g;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_b0

    .line 38
    .line 39
    .line 40
    :try_start_27
    iget-object v13, v8, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v13, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v13}, Ld4/a;->f(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v13

    .line 48
    const/4 v14, 0x1

    .line 49
    if-eqz v13, :cond_a1

    .line 50
    .line 51
    if-eqz v0, :cond_a1

    .line 52
    .line 53
    const-string v13, "100-continue"

    .line 54
    .line 55
    const-string v15, "Expect"

    .line 56
    .line 57
    iget-object v11, v8, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v11, Lr7/k;

    .line 60
    .line 61
    invoke-virtual {v11, v15}, Lr7/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v11
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_44} :catch_4e

    .line 69
    if-eqz v11, :cond_56

    .line 70
    .line 71
    :try_start_46
    invoke-interface {v6}, Lw7/d;->e()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_51

    .line 72
    .line 73
    .line 74
    :try_start_49
    invoke-virtual {v4, v14}, Lcom/google/firebase/messaging/p;->h(Z)Lr7/t;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    goto :goto_57

    .line 79
    :catch_4e
    move-exception v0

    .line 80
    move-object v11, v12

    .line 81
    goto :goto_b5

    .line 82
    :catch_51
    move-exception v0

    .line 83
    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/p;->i(Ljava/io/IOException;)V

    .line 84
    .line 85
    .line 86
    throw v0
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_56} :catch_4e

    .line 87
    :cond_56
    move-object v11, v12

    .line 88
    :goto_57
    if-nez v11, :cond_8d

    .line 89
    .line 90
    :try_start_59
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iget v5, v0, Lb0/d;->b:I

    .line 94
    .line 95
    int-to-long v13, v5

    .line 96
    invoke-interface {v6, v8, v13, v14}, Lw7/d;->d(Lcom/google/android/gms/common/internal/g;J)Le8/u;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    new-instance v15, Lv7/c;

    .line 101
    .line 102
    invoke-direct {v15, v4, v5, v13, v14}, Lv7/c;-><init>(Lcom/google/firebase/messaging/p;Le8/u;J)V

    .line 103
    .line 104
    .line 105
    new-instance v5, Le8/p;

    .line 106
    .line 107
    invoke-direct {v5, v15}, Le8/p;-><init>(Le8/u;)V

    .line 108
    .line 109
    .line 110
    iget-object v13, v0, Lb0/d;->d:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v13, [B

    .line 113
    .line 114
    iget v0, v0, Lb0/d;->b:I

    .line 115
    .line 116
    iget-boolean v14, v5, Le8/p;->c:Z

    .line 117
    .line 118
    if-nez v14, :cond_85

    .line 119
    .line 120
    iget-object v14, v5, Le8/p;->b:Le8/g;

    .line 121
    .line 122
    invoke-virtual {v14, v13, v0}, Le8/g;->x([BI)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Le8/p;->a()Le8/h;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5}, Le8/p;->close()V

    .line 129
    .line 130
    .line 131
    goto :goto_a6

    .line 132
    :catch_83
    move-exception v0

    .line 133
    goto :goto_b5

    .line 134
    :cond_85
    const-string v0, "closed"

    .line 135
    .line 136
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v5

    .line 142
    :cond_8d
    const/4 v13, 0x0

    .line 143
    invoke-virtual {v5, v4, v14, v13, v12}, Lv7/i;->i(Lcom/google/firebase/messaging/p;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 144
    .line 145
    .line 146
    iget-object v0, v7, Lv7/l;->g:Ly7/o;

    .line 147
    .line 148
    if-eqz v0, :cond_96

    .line 149
    .line 150
    goto :goto_97

    .line 151
    :cond_96
    const/4 v14, 0x0

    .line 152
    :goto_97
    if-nez v14, :cond_a6

    .line 153
    .line 154
    invoke-interface {v6}, Lw7/d;->h()Lv7/l;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lv7/l;->l()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_a0} :catch_83

    .line 159
    .line 160
    .line 161
    goto :goto_a6

    .line 162
    :cond_a1
    const/4 v13, 0x0

    .line 163
    :try_start_a2
    invoke-virtual {v5, v4, v14, v13, v12}, Lv7/i;->i(Lcom/google/firebase/messaging/p;ZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_4e

    .line 164
    .line 165
    .line 166
    move-object v11, v12

    .line 167
    :cond_a6
    :goto_a6
    :try_start_a6
    invoke-interface {v6}, Lw7/d;->c()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_ab

    .line 168
    .line 169
    .line 170
    move-object v5, v12

    .line 171
    goto :goto_be

    .line 172
    :catch_ab
    move-exception v0

    .line 173
    :try_start_ac
    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/p;->i(Ljava/io/IOException;)V

    .line 174
    .line 175
    .line 176
    throw v0
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b0} :catch_83

    .line 177
    :catch_b0
    move-exception v0

    .line 178
    :try_start_b1
    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/p;->i(Ljava/io/IOException;)V

    .line 179
    .line 180
    .line 181
    throw v0
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b5} :catch_4e

    .line 182
    :goto_b5
    instance-of v5, v0, Ly7/a;

    .line 183
    .line 184
    if-nez v5, :cond_19f

    .line 185
    .line 186
    iget-boolean v5, v4, Lcom/google/firebase/messaging/p;->a:Z

    .line 187
    .line 188
    if-eqz v5, :cond_19e

    .line 189
    .line 190
    move-object v5, v0

    .line 191
    :goto_be
    if-nez v11, :cond_cc

    .line 192
    .line 193
    const/4 v13, 0x0

    .line 194
    :try_start_c1
    invoke-virtual {v4, v13}, Lcom/google/firebase/messaging/p;->h(Z)Lr7/t;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    invoke-static {v11}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto :goto_cc

    .line 202
    :catch_c9
    move-exception v0

    .line 203
    goto/16 :goto_197

    .line 204
    .line 205
    :cond_cc
    :goto_cc
    iput-object v8, v11, Lr7/t;->a:Lcom/google/android/gms/common/internal/g;

    .line 206
    .line 207
    iget-object v0, v7, Lv7/l;->e:Lr7/i;

    .line 208
    .line 209
    iput-object v0, v11, Lr7/t;->e:Lr7/i;

    .line 210
    .line 211
    iput-wide v9, v11, Lr7/t;->k:J

    .line 212
    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 214
    .line 215
    .line 216
    move-result-wide v13

    .line 217
    iput-wide v13, v11, Lr7/t;->l:J

    .line 218
    .line 219
    invoke-virtual {v11}, Lr7/t;->a()Lr7/u;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iget v11, v0, Lr7/u;->d:I

    .line 224
    .line 225
    const/16 v13, 0x64

    .line 226
    .line 227
    if-ne v11, v13, :cond_e6

    .line 228
    .line 229
    :goto_e4
    const/4 v13, 0x0

    .line 230
    goto :goto_ef

    .line 231
    :cond_e6
    const/16 v13, 0x66

    .line 232
    .line 233
    if-gt v13, v11, :cond_10a

    .line 234
    .line 235
    const/16 v13, 0xc8

    .line 236
    .line 237
    if-ge v11, v13, :cond_10a

    .line 238
    .line 239
    goto :goto_e4

    .line 240
    :goto_ef
    invoke-virtual {v4, v13}, Lcom/google/firebase/messaging/p;->h(Z)Lr7/t;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iput-object v8, v0, Lr7/t;->a:Lcom/google/android/gms/common/internal/g;

    .line 248
    .line 249
    iget-object v7, v7, Lv7/l;->e:Lr7/i;

    .line 250
    .line 251
    iput-object v7, v0, Lr7/t;->e:Lr7/i;

    .line 252
    .line 253
    iput-wide v9, v0, Lr7/t;->k:J

    .line 254
    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 256
    .line 257
    .line 258
    move-result-wide v7

    .line 259
    iput-wide v7, v0, Lr7/t;->l:J

    .line 260
    .line 261
    invoke-virtual {v0}, Lr7/t;->a()Lr7/u;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iget v11, v0, Lr7/u;->d:I

    .line 266
    .line 267
    :cond_10a
    invoke-virtual {v0}, Lr7/u;->c()Lr7/t;

    .line 268
    .line 269
    .line 270
    move-result-object v7
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_10e} :catch_c9

    .line 271
    :try_start_10e
    const-string v8, "Content-Type"

    .line 272
    .line 273
    invoke-static {v8, v0}, Lr7/u;->a(Ljava/lang/String;Lr7/u;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    invoke-interface {v6, v0}, Lw7/d;->f(Lr7/u;)J

    .line 278
    .line 279
    .line 280
    move-result-wide v9

    .line 281
    invoke-interface {v6, v0}, Lw7/d;->b(Lr7/u;)Le8/w;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    new-instance v13, Lv7/d;

    .line 286
    .line 287
    invoke-direct {v13, v4, v0, v9, v10}, Lv7/d;-><init>(Lcom/google/firebase/messaging/p;Le8/w;J)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Lw7/g;

    .line 291
    .line 292
    new-instance v14, Le8/q;

    .line 293
    .line 294
    invoke-direct {v14, v13}, Le8/q;-><init>(Le8/w;)V

    .line 295
    .line 296
    .line 297
    invoke-direct {v0, v8, v9, v10, v14}, Lw7/g;-><init>(Ljava/lang/String;JLe8/q;)V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_12b} :catch_192

    .line 298
    .line 299
    .line 300
    :try_start_12b
    iput-object v0, v7, Lr7/t;->g:Lr7/w;

    .line 301
    .line 302
    invoke-virtual {v7}, Lr7/t;->a()Lr7/u;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    iget-object v4, v0, Lr7/u;->a:Lcom/google/android/gms/common/internal/g;

    .line 307
    .line 308
    iget-object v4, v4, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v4, Lr7/k;

    .line 311
    .line 312
    invoke-virtual {v4, v1}, Lr7/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-nez v4, :cond_14b

    .line 321
    .line 322
    invoke-static {v1, v0}, Lr7/u;->a(Ljava/lang/String;Lr7/u;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_152

    .line 331
    .line 332
    :cond_14b
    invoke-interface {v6}, Lw7/d;->h()Lv7/l;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v1}, Lv7/l;->l()V

    .line 337
    .line 338
    .line 339
    :cond_152
    const/16 v1, 0xcc

    .line 340
    .line 341
    if-eq v11, v1, :cond_15a

    .line 342
    .line 343
    const/16 v1, 0xcd

    .line 344
    .line 345
    if-ne v11, v1, :cond_191

    .line 346
    .line 347
    :cond_15a
    iget-object v1, v0, Lr7/u;->g:Lr7/w;

    .line 348
    .line 349
    if-eqz v1, :cond_163

    .line 350
    .line 351
    invoke-virtual {v1}, Lr7/w;->a()J

    .line 352
    .line 353
    .line 354
    move-result-wide v1

    .line 355
    goto :goto_165

    .line 356
    :cond_163
    const-wide/16 v1, -0x1

    .line 357
    .line 358
    :goto_165
    const-wide/16 v6, 0x0

    .line 359
    .line 360
    cmp-long v1, v1, v6

    .line 361
    .line 362
    if-lez v1, :cond_191

    .line 363
    .line 364
    new-instance v1, Ljava/net/ProtocolException;

    .line 365
    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v3, " had non-zero Content-Length: "

    .line 375
    .line 376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    iget-object v0, v0, Lr7/u;->g:Lr7/w;

    .line 380
    .line 381
    if-eqz v0, :cond_186

    .line 382
    .line 383
    invoke-virtual {v0}, Lr7/w;->a()J

    .line 384
    .line 385
    .line 386
    move-result-wide v3

    .line 387
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 388
    .line 389
    .line 390
    move-result-object v12

    .line 391
    :cond_186
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    throw v1

    .line 402
    :cond_191
    return-object v0

    .line 403
    :catch_192
    move-exception v0

    .line 404
    invoke-virtual {v4, v0}, Lcom/google/firebase/messaging/p;->i(Ljava/io/IOException;)V

    .line 405
    .line 406
    .line 407
    throw v0
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_197} :catch_c9

    .line 408
    :goto_197
    if-eqz v5, :cond_19d

    .line 409
    .line 410
    invoke-static {v5, v0}, Li2/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 411
    .line 412
    .line 413
    throw v5

    .line 414
    :cond_19d
    throw v0

    .line 415
    :cond_19e
    throw v0

    .line 416
    :cond_19f
    throw v0
.end method
