###### Class w7.a (w7.a)
.class public final Lw7/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lr7/o;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr7/b;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lw7/a;->a:I

    const-string v0, "cookieJar"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw7/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr7/r;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lw7/a;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw7/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static d(Lr7/u;I)I
    .registers 3

    .line 1
    const-string v0, "Retry-After"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lr7/u;->a(Ljava/lang/String;Lr7/u;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_9

    .line 8
    .line 9
    return p1

    .line 10
    :cond_9
    const-string p1, "\\d+"

    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "compile(...)"

    .line 17
    .line 18
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2c

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "valueOf(header)"

    .line 36
    .line 37
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_2c
    const p0, 0x7fffffff

    .line 46
    .line 47
    .line 48
    return p0
.end method


# virtual methods
.method public final a(Lw7/f;)Lr7/u;
    .registers 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget v0, v1, Lw7/a;->a:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_292

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lw7/f;->e:Lcom/google/android/gms/common/internal/g;

    .line 11
    .line 12
    iget-object v3, v2, Lw7/f;->a:Lv7/i;

    .line 13
    .line 14
    sget-object v4, Ls6/o;->a:Ls6/o;

    .line 15
    .line 16
    move-object v8, v4

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    move-object v4, v0

    .line 20
    :goto_13
    const/4 v0, 0x1

    .line 21
    :goto_14
    iget-object v11, v3, Lv7/i;->i:Lcom/google/firebase/messaging/p;

    .line 22
    .line 23
    if-nez v11, :cond_18f

    .line 24
    .line 25
    monitor-enter v3

    .line 26
    :try_start_19
    iget-boolean v11, v3, Lv7/i;->k:Z

    .line 27
    .line 28
    if-nez v11, :cond_185

    .line 29
    .line 30
    iget-boolean v11, v3, Lv7/i;->j:Z
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_183

    .line 31
    .line 32
    if-nez v11, :cond_17b

    .line 33
    .line 34
    monitor-exit v3

    .line 35
    if-eqz v0, :cond_7b

    .line 36
    .line 37
    new-instance v0, Lv7/e;

    .line 38
    .line 39
    iget-object v11, v3, Lv7/i;->c:Lv7/m;

    .line 40
    .line 41
    iget-object v12, v4, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v12, Lr7/m;

    .line 44
    .line 45
    iget-object v13, v3, Lv7/i;->a:Lr7/r;

    .line 46
    .line 47
    iget-boolean v14, v12, Lr7/m;->i:Z

    .line 48
    .line 49
    if-eqz v14, :cond_49

    .line 50
    .line 51
    iget-object v14, v13, Lr7/r;->w:Ljavax/net/ssl/SSLSocketFactory;

    .line 52
    .line 53
    if-eqz v14, :cond_41

    .line 54
    .line 55
    iget-object v15, v13, Lr7/r;->A:Ld8/c;

    .line 56
    .line 57
    iget-object v7, v13, Lr7/r;->B:Lr7/d;

    .line 58
    .line 59
    move-object/from16 v24, v7

    .line 60
    .line 61
    move-object/from16 v22, v14

    .line 62
    .line 63
    move-object/from16 v23, v15

    .line 64
    .line 65
    goto :goto_4f

    .line 66
    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v2, "CLEARTEXT-only client"

    .line 69
    .line 70
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_49
    const/16 v22, 0x0

    .line 75
    .line 76
    const/16 v23, 0x0

    .line 77
    .line 78
    const/16 v24, 0x0

    .line 79
    .line 80
    :goto_4f
    new-instance v17, Lr7/a;

    .line 81
    .line 82
    iget-object v7, v12, Lr7/m;->d:Ljava/lang/String;

    .line 83
    .line 84
    iget v12, v12, Lr7/m;->e:I

    .line 85
    .line 86
    iget-object v14, v13, Lr7/r;->k:Lr7/b;

    .line 87
    .line 88
    iget-object v15, v13, Lr7/r;->v:Ljavax/net/SocketFactory;

    .line 89
    .line 90
    iget-object v5, v13, Lr7/r;->m:Lr7/b;

    .line 91
    .line 92
    iget-object v6, v13, Lr7/r;->z:Ljava/util/List;

    .line 93
    .line 94
    move-object/from16 v25, v5

    .line 95
    .line 96
    iget-object v5, v13, Lr7/r;->y:Ljava/util/List;

    .line 97
    .line 98
    iget-object v13, v13, Lr7/r;->l:Ljava/net/ProxySelector;

    .line 99
    .line 100
    move-object/from16 v27, v5

    .line 101
    .line 102
    move-object/from16 v26, v6

    .line 103
    .line 104
    move-object/from16 v18, v7

    .line 105
    .line 106
    move/from16 v19, v12

    .line 107
    .line 108
    move-object/from16 v28, v13

    .line 109
    .line 110
    move-object/from16 v20, v14

    .line 111
    .line 112
    move-object/from16 v21, v15

    .line 113
    .line 114
    invoke-direct/range {v17 .. v28}, Lr7/a;-><init>(Ljava/lang/String;ILr7/b;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lr7/d;Lr7/b;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 115
    .line 116
    .line 117
    move-object/from16 v5, v17

    .line 118
    .line 119
    invoke-direct {v0, v11, v5, v3}, Lv7/e;-><init>(Lv7/m;Lr7/a;Lv7/i;)V

    .line 120
    .line 121
    .line 122
    iput-object v0, v3, Lv7/i;->g:Lv7/e;

    .line 123
    .line 124
    :cond_7b
    :try_start_7b
    iget-boolean v0, v3, Lv7/i;->m:Z
    :try_end_7d
    .catchall {:try_start_7b .. :try_end_7d} :catchall_a0

    .line 125
    .line 126
    if-nez v0, :cond_16f

    .line 127
    .line 128
    :try_start_7f
    invoke-virtual {v2, v4}, Lw7/f;->b(Lcom/google/android/gms/common/internal/g;)Lr7/u;

    .line 129
    .line 130
    .line 131
    move-result-object v0
    :try_end_83
    .catch Lv7/n; {:try_start_7f .. :try_end_83} :catch_127
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_83} :catch_e5
    .catchall {:try_start_7f .. :try_end_83} :catchall_a0

    .line 132
    if-eqz v9, :cond_ac

    .line 133
    .line 134
    :try_start_85
    invoke-virtual {v0}, Lr7/u;->c()Lr7/t;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v9}, Lr7/u;->c()Lr7/t;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const/4 v5, 0x0

    .line 143
    iput-object v5, v4, Lr7/t;->g:Lr7/w;

    .line 144
    .line 145
    invoke-virtual {v4}, Lr7/t;->a()Lr7/u;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iget-object v6, v4, Lr7/u;->g:Lr7/w;

    .line 150
    .line 151
    if-nez v6, :cond_a4

    .line 152
    .line 153
    iput-object v4, v0, Lr7/t;->j:Lr7/u;

    .line 154
    .line 155
    invoke-virtual {v0}, Lr7/t;->a()Lr7/u;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :goto_9e
    move-object v9, v0

    .line 160
    goto :goto_ae

    .line 161
    :catchall_a0
    move-exception v0

    .line 162
    const/4 v6, 0x1

    .line 163
    goto/16 :goto_177

    .line 164
    .line 165
    :cond_a4
    const-string v0, "priorResponse.body != null"

    .line 166
    .line 167
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 168
    .line 169
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v2

    .line 173
    :cond_ac
    const/4 v5, 0x0

    .line 174
    goto :goto_9e

    .line 175
    :goto_ae
    iget-object v0, v3, Lv7/i;->i:Lcom/google/firebase/messaging/p;

    .line 176
    .line 177
    invoke-virtual {v1, v9, v0}, Lw7/a;->b(Lr7/u;Lcom/google/firebase/messaging/p;)Lcom/google/android/gms/common/internal/g;

    .line 178
    .line 179
    .line 180
    move-result-object v4
    :try_end_b4
    .catchall {:try_start_85 .. :try_end_b4} :catchall_a0

    .line 181
    if-nez v4, :cond_bb

    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    invoke-virtual {v3, v6}, Lv7/i;->g(Z)V

    .line 185
    .line 186
    .line 187
    return-object v9

    .line 188
    :cond_bb
    :try_start_bb
    iget-object v0, v9, Lr7/u;->g:Lr7/w;

    .line 189
    .line 190
    if-eqz v0, :cond_c2

    .line 191
    .line 192
    invoke-static {v0}, Ls7/b;->d(Ljava/io/Closeable;)V
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_a0

    .line 193
    .line 194
    .line 195
    :cond_c2
    add-int/lit8 v10, v10, 0x1

    .line 196
    .line 197
    const/16 v0, 0x14

    .line 198
    .line 199
    if-gt v10, v0, :cond_ce

    .line 200
    .line 201
    const/4 v6, 0x1

    .line 202
    invoke-virtual {v3, v6}, Lv7/i;->g(Z)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_13

    .line 206
    .line 207
    :cond_ce
    :try_start_ce
    new-instance v0, Ljava/net/ProtocolException;

    .line 208
    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v4, "Too many follow-up requests: "

    .line 215
    .line 216
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :catch_e5
    move-exception v0

    .line 231
    const/4 v5, 0x0

    .line 232
    instance-of v6, v0, Ly7/a;

    .line 233
    .line 234
    const/16 v16, 0x1

    .line 235
    .line 236
    xor-int/lit8 v6, v6, 0x1

    .line 237
    .line 238
    invoke-virtual {v1, v0, v3, v4, v6}, Lw7/a;->c(Ljava/io/IOException;Lv7/i;Lcom/google/android/gms/common/internal/g;Z)Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-eqz v6, :cond_112

    .line 243
    .line 244
    check-cast v8, Ljava/util/Collection;

    .line 245
    .line 246
    const-string v6, "<this>"

    .line 247
    .line 248
    invoke-static {v6, v8}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    new-instance v6, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    const/4 v11, 0x1

    .line 258
    add-int/2addr v7, v11

    .line 259
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 263
    .line 264
    .line 265
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10b
    .catchall {:try_start_ce .. :try_end_10b} :catchall_a0

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v11}, Lv7/i;->g(Z)V

    .line 269
    .line 270
    .line 271
    move-object v8, v6

    .line 272
    const/4 v0, 0x0

    .line 273
    goto/16 :goto_14

    .line 274
    .line 275
    :cond_112
    :try_start_112
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    :goto_116
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_126

    .line 284
    .line 285
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    check-cast v4, Ljava/lang/Exception;

    .line 290
    .line 291
    invoke-static {v0, v4}, Li2/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    goto :goto_116

    .line 295
    :cond_126
    throw v0

    .line 296
    :catch_127
    move-exception v0

    .line 297
    const/4 v5, 0x0

    .line 298
    iget-object v6, v0, Lv7/n;->b:Ljava/io/IOException;

    .line 299
    .line 300
    const/4 v7, 0x0

    .line 301
    invoke-virtual {v1, v6, v3, v4, v7}, Lw7/a;->c(Ljava/io/IOException;Lv7/i;Lcom/google/android/gms/common/internal/g;Z)Z

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    if-eqz v6, :cond_153

    .line 306
    .line 307
    check-cast v8, Ljava/util/Collection;

    .line 308
    .line 309
    iget-object v0, v0, Lv7/n;->a:Ljava/io/IOException;

    .line 310
    .line 311
    const-string v6, "<this>"

    .line 312
    .line 313
    invoke-static {v6, v8}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    new-instance v6, Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 319
    .line 320
    .line 321
    move-result v11

    .line 322
    const/4 v12, 0x1

    .line 323
    add-int/2addr v11, v12

    .line 324
    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 328
    .line 329
    .line 330
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14c
    .catchall {:try_start_112 .. :try_end_14c} :catchall_a0

    .line 331
    .line 332
    .line 333
    invoke-virtual {v3, v12}, Lv7/i;->g(Z)V

    .line 334
    .line 335
    .line 336
    move-object v8, v6

    .line 337
    move v0, v7

    .line 338
    goto/16 :goto_14

    .line 339
    .line 340
    :cond_153
    :try_start_153
    iget-object v0, v0, Lv7/n;->a:Ljava/io/IOException;

    .line 341
    .line 342
    const-string v2, "<this>"

    .line 343
    .line 344
    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    :goto_15e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    if-eqz v4, :cond_16e

    .line 356
    .line 357
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    check-cast v4, Ljava/lang/Exception;

    .line 362
    .line 363
    invoke-static {v0, v4}, Li2/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 364
    .line 365
    .line 366
    goto :goto_15e

    .line 367
    :cond_16e
    throw v0

    .line 368
    :cond_16f
    new-instance v0, Ljava/io/IOException;

    .line 369
    .line 370
    const-string v2, "Canceled"

    .line 371
    .line 372
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw v0
    :try_end_177
    .catchall {:try_start_153 .. :try_end_177} :catchall_a0

    .line 376
    :goto_177
    invoke-virtual {v3, v6}, Lv7/i;->g(Z)V

    .line 377
    .line 378
    .line 379
    throw v0

    .line 380
    :cond_17b
    :try_start_17b
    const-string v0, "Check failed."

    .line 381
    .line 382
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 383
    .line 384
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw v2

    .line 388
    :catchall_183
    move-exception v0

    .line 389
    goto :goto_18d

    .line 390
    :cond_185
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 391
    .line 392
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 393
    .line 394
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    throw v2
    :try_end_18d
    .catchall {:try_start_17b .. :try_end_18d} :catchall_183

    .line 398
    :goto_18d
    monitor-exit v3

    .line 399
    throw v0

    .line 400
    :cond_18f
    const-string v0, "Check failed."

    .line 401
    .line 402
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 403
    .line 404
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    throw v2

    .line 408
    :pswitch_197
    const-string v0, "Content-Encoding"

    .line 409
    .line 410
    const-string v3, "User-Agent"

    .line 411
    .line 412
    iget-object v4, v1, Lw7/a;->b:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v4, Lr7/b;

    .line 415
    .line 416
    const-string v5, "gzip"

    .line 417
    .line 418
    const-string v6, "Accept-Encoding"

    .line 419
    .line 420
    const-string v7, "Connection"

    .line 421
    .line 422
    const-string v8, "Host"

    .line 423
    .line 424
    const-string v9, "Transfer-Encoding"

    .line 425
    .line 426
    const-string v10, "Content-Type"

    .line 427
    .line 428
    const-string v11, "Content-Length"

    .line 429
    .line 430
    iget-object v12, v2, Lw7/f;->e:Lcom/google/android/gms/common/internal/g;

    .line 431
    .line 432
    iget-object v13, v12, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v13, Lr7/k;

    .line 435
    .line 436
    invoke-virtual {v12}, Lcom/google/android/gms/common/internal/g;->h()Lcom/google/firebase/messaging/z;

    .line 437
    .line 438
    .line 439
    move-result-object v14

    .line 440
    iget-object v15, v12, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast v15, Lr7/m;

    .line 443
    .line 444
    iget-object v1, v12, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v1, Lb0/d;

    .line 447
    .line 448
    move-object/from16 v16, v3

    .line 449
    .line 450
    const-wide/16 v17, -0x1

    .line 451
    .line 452
    if-eqz v1, :cond_1f2

    .line 453
    .line 454
    iget-object v2, v1, Lb0/d;->c:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v2, Lr7/p;

    .line 457
    .line 458
    if-eqz v2, :cond_1d0

    .line 459
    .line 460
    iget-object v2, v2, Lr7/p;->a:Ljava/lang/String;

    .line 461
    .line 462
    invoke-virtual {v14, v10, v2}, Lcom/google/firebase/messaging/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    :cond_1d0
    iget v1, v1, Lb0/d;->b:I

    .line 466
    .line 467
    int-to-long v1, v1

    .line 468
    cmp-long v3, v1, v17

    .line 469
    .line 470
    if-eqz v3, :cond_1e6

    .line 471
    .line 472
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-virtual {v14, v11, v1}, Lcom/google/firebase/messaging/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    iget-object v1, v14, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v1, Lr7/j;

    .line 482
    .line 483
    invoke-virtual {v1, v9}, Lr7/j;->d(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    goto :goto_1f2

    .line 487
    :cond_1e6
    const-string v1, "chunked"

    .line 488
    .line 489
    invoke-virtual {v14, v9, v1}, Lcom/google/firebase/messaging/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iget-object v1, v14, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v1, Lr7/j;

    .line 495
    .line 496
    invoke-virtual {v1, v11}, Lr7/j;->d(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    :cond_1f2
    :goto_1f2
    invoke-virtual {v13, v8}, Lr7/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    const/4 v2, 0x0

    .line 504
    if-nez v1, :cond_200

    .line 505
    .line 506
    invoke-static {v15, v2}, Ls7/b;->v(Lr7/m;Z)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-virtual {v14, v8, v1}, Lcom/google/firebase/messaging/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    :cond_200
    invoke-virtual {v13, v7}, Lr7/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    if-nez v1, :cond_20b

    .line 518
    .line 519
    const-string v1, "Keep-Alive"

    .line 520
    .line 521
    invoke-virtual {v14, v7, v1}, Lcom/google/firebase/messaging/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :cond_20b
    invoke-virtual {v13, v6}, Lr7/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    if-nez v1, :cond_21d

    .line 529
    .line 530
    const-string v1, "Range"

    .line 531
    .line 532
    invoke-virtual {v13, v1}, Lr7/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    if-nez v1, :cond_21d

    .line 537
    .line 538
    invoke-virtual {v14, v6, v5}, Lcom/google/firebase/messaging/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    const/4 v2, 0x1

    .line 542
    :cond_21d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 543
    .line 544
    .line 545
    const-string v1, "url"

    .line 546
    .line 547
    invoke-static {v1, v15}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 548
    .line 549
    .line 550
    move-object/from16 v1, v16

    .line 551
    .line 552
    invoke-virtual {v13, v1}, Lr7/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    if-nez v3, :cond_232

    .line 557
    .line 558
    const-string v3, "okhttp/4.12.0"

    .line 559
    .line 560
    invoke-virtual {v14, v1, v3}, Lcom/google/firebase/messaging/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    :cond_232
    invoke-virtual {v14}, Lcom/google/firebase/messaging/z;->a()Lcom/google/android/gms/common/internal/g;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    move-object/from16 v3, p1

    .line 568
    .line 569
    invoke-virtual {v3, v1}, Lw7/f;->b(Lcom/google/android/gms/common/internal/g;)Lr7/u;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    iget-object v3, v1, Lr7/u;->f:Lr7/k;

    .line 574
    .line 575
    invoke-static {v4, v15, v3}, Lw7/e;->b(Lr7/b;Lr7/m;Lr7/k;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v1}, Lr7/u;->c()Lr7/t;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    iput-object v12, v4, Lr7/t;->a:Lcom/google/android/gms/common/internal/g;

    .line 583
    .line 584
    if-eqz v2, :cond_28c

    .line 585
    .line 586
    invoke-static {v0, v1}, Lr7/u;->a(Ljava/lang/String;Lr7/u;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    if-eqz v2, :cond_28c

    .line 595
    .line 596
    invoke-static {v1}, Lw7/e;->a(Lr7/u;)Z

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    if-eqz v2, :cond_28c

    .line 601
    .line 602
    iget-object v2, v1, Lr7/u;->g:Lr7/w;

    .line 603
    .line 604
    if-eqz v2, :cond_28c

    .line 605
    .line 606
    new-instance v5, Le8/l;

    .line 607
    .line 608
    invoke-virtual {v2}, Lr7/w;->g()Le8/i;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-direct {v5, v2}, Le8/l;-><init>(Le8/w;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v3}, Lr7/k;->c()Lr7/j;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-virtual {v2, v0}, Lr7/j;->d(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v2, v11}, Lr7/j;->d(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v2}, Lr7/j;->c()Lr7/k;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-virtual {v0}, Lr7/k;->c()Lr7/j;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    iput-object v0, v4, Lr7/t;->f:Lr7/j;

    .line 634
    .line 635
    invoke-static {v10, v1}, Lr7/u;->a(Ljava/lang/String;Lr7/u;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    new-instance v1, Lw7/g;

    .line 640
    .line 641
    new-instance v2, Le8/q;

    .line 642
    .line 643
    invoke-direct {v2, v5}, Le8/q;-><init>(Le8/w;)V

    .line 644
    .line 645
    .line 646
    move-wide/from16 v5, v17

    .line 647
    .line 648
    invoke-direct {v1, v0, v5, v6, v2}, Lw7/g;-><init>(Ljava/lang/String;JLe8/q;)V

    .line 649
    .line 650
    .line 651
    iput-object v1, v4, Lr7/t;->g:Lr7/w;

    .line 652
    .line 653
    :cond_28c
    invoke-virtual {v4}, Lr7/t;->a()Lr7/u;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    return-object v0

    .line 658
    nop

    .line 659
    :pswitch_data_292
    .packed-switch 0x0
        :pswitch_197
    .end packed-switch
.end method

.method public b(Lr7/u;Lcom/google/firebase/messaging/p;)Lcom/google/android/gms/common/internal/g;
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_c

    .line 3
    .line 4
    iget-object v1, p2, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lv7/l;

    .line 7
    .line 8
    if-eqz v1, :cond_c

    .line 9
    .line 10
    iget-object v1, v1, Lv7/l;->b:Lr7/x;

    .line 11
    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move-object v1, v0

    .line 14
    :goto_d
    iget v2, p1, Lr7/u;->d:I

    .line 15
    .line 16
    iget-object v3, p1, Lr7/u;->a:Lcom/google/android/gms/common/internal/g;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    const/16 v6, 0x134

    .line 25
    .line 26
    const/16 v7, 0x133

    .line 27
    .line 28
    if-eq v2, v7, :cond_c3

    .line 29
    .line 30
    if-eq v2, v6, :cond_c3

    .line 31
    .line 32
    const/16 v8, 0x191

    .line 33
    .line 34
    if-eq v2, v8, :cond_b9

    .line 35
    .line 36
    const/16 v8, 0x1a5

    .line 37
    .line 38
    if-eq v2, v8, :cond_8c

    .line 39
    .line 40
    const/16 p2, 0x1f7

    .line 41
    .line 42
    if-eq v2, p2, :cond_76

    .line 43
    .line 44
    const/16 p2, 0x197

    .line 45
    .line 46
    if-eq v2, p2, :cond_57

    .line 47
    .line 48
    const/16 p2, 0x198

    .line 49
    .line 50
    if-eq v2, p2, :cond_38

    .line 51
    .line 52
    packed-switch v2, :pswitch_data_170

    .line 53
    .line 54
    .line 55
    goto/16 :goto_107

    .line 56
    .line 57
    :cond_38
    iget-object v1, p0, Lw7/a;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lr7/r;

    .line 60
    .line 61
    iget-boolean v1, v1, Lr7/r;->f:Z

    .line 62
    .line 63
    if-nez v1, :cond_42

    .line 64
    .line 65
    goto/16 :goto_107

    .line 66
    .line 67
    :cond_42
    iget-object v1, p1, Lr7/u;->j:Lr7/u;

    .line 68
    .line 69
    if-eqz v1, :cond_4c

    .line 70
    .line 71
    iget v1, v1, Lr7/u;->d:I

    .line 72
    .line 73
    if-ne v1, p2, :cond_4c

    .line 74
    .line 75
    goto/16 :goto_107

    .line 76
    .line 77
    :cond_4c
    invoke-static {p1, v4}, Lw7/a;->d(Lr7/u;I)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-lez p2, :cond_54

    .line 82
    .line 83
    goto/16 :goto_107

    .line 84
    .line 85
    :cond_54
    iget-object p1, p1, Lr7/u;->a:Lcom/google/android/gms/common/internal/g;

    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_57
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, v1, Lr7/x;->b:Ljava/net/Proxy;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 98
    .line 99
    if-ne p1, p2, :cond_6e

    .line 100
    .line 101
    iget-object p1, p0, Lw7/a;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Lr7/r;

    .line 104
    .line 105
    iget-object p1, p1, Lr7/r;->m:Lr7/b;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_6e
    new-instance p1, Ljava/net/ProtocolException;

    .line 112
    .line 113
    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    .line 114
    .line 115
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_76
    iget-object v1, p1, Lr7/u;->j:Lr7/u;

    .line 120
    .line 121
    if-eqz v1, :cond_80

    .line 122
    .line 123
    iget v1, v1, Lr7/u;->d:I

    .line 124
    .line 125
    if-ne v1, p2, :cond_80

    .line 126
    .line 127
    goto/16 :goto_107

    .line 128
    .line 129
    :cond_80
    const p2, 0x7fffffff

    .line 130
    .line 131
    .line 132
    invoke-static {p1, p2}, Lw7/a;->d(Lr7/u;I)I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-nez p2, :cond_107

    .line 137
    .line 138
    iget-object p1, p1, Lr7/u;->a:Lcom/google/android/gms/common/internal/g;

    .line 139
    .line 140
    return-object p1

    .line 141
    :cond_8c
    if-eqz p2, :cond_107

    .line 142
    .line 143
    iget-object v1, p2, Lcom/google/firebase/messaging/p;->c:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v1, Lv7/e;

    .line 146
    .line 147
    iget-object v1, v1, Lv7/e;->b:Lr7/a;

    .line 148
    .line 149
    iget-object v1, v1, Lr7/a;->h:Lr7/m;

    .line 150
    .line 151
    iget-object v1, v1, Lr7/m;->d:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v2, p2, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v2, Lv7/l;

    .line 156
    .line 157
    iget-object v2, v2, Lv7/l;->b:Lr7/x;

    .line 158
    .line 159
    iget-object v2, v2, Lr7/x;->a:Lr7/a;

    .line 160
    .line 161
    iget-object v2, v2, Lr7/a;->h:Lr7/m;

    .line 162
    .line 163
    iget-object v2, v2, Lr7/m;->d:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v1, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_ab

    .line 170
    .line 171
    goto :goto_107

    .line 172
    :cond_ab
    iget-object p2, p2, Lcom/google/firebase/messaging/p;->e:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p2, Lv7/l;

    .line 175
    .line 176
    monitor-enter p2

    .line 177
    :try_start_b0
    iput-boolean v5, p2, Lv7/l;->k:Z
    :try_end_b2
    .catchall {:try_start_b0 .. :try_end_b2} :catchall_b6

    .line 178
    .line 179
    monitor-exit p2

    .line 180
    iget-object p1, p1, Lr7/u;->a:Lcom/google/android/gms/common/internal/g;

    .line 181
    .line 182
    return-object p1

    .line 183
    :catchall_b6
    move-exception p1

    .line 184
    :try_start_b7
    monitor-exit p2
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    .line 185
    throw p1

    .line 186
    :cond_b9
    iget-object p1, p0, Lw7/a;->b:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast p1, Lr7/r;

    .line 189
    .line 190
    iget-object p1, p1, Lr7/r;->g:Lr7/b;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_c3
    :pswitch_c3
    const-string p2, "PROPFIND"

    .line 197
    .line 198
    iget-object v1, p0, Lw7/a;->b:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v1, Lr7/r;

    .line 201
    .line 202
    iget-boolean v2, v1, Lr7/r;->h:Z

    .line 203
    .line 204
    if-nez v2, :cond_ce

    .line 205
    .line 206
    goto :goto_107

    .line 207
    :cond_ce
    const-string v2, "Location"

    .line 208
    .line 209
    invoke-static {v2, p1}, Lr7/u;->a(Ljava/lang/String;Lr7/u;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    iget-object v8, p1, Lr7/u;->a:Lcom/google/android/gms/common/internal/g;

    .line 214
    .line 215
    if-nez v2, :cond_d9

    .line 216
    .line 217
    goto :goto_107

    .line 218
    :cond_d9
    iget-object v9, v8, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v9, Lr7/m;

    .line 221
    .line 222
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    :try_start_e0
    new-instance v10, Lr7/l;

    .line 226
    .line 227
    invoke-direct {v10}, Lr7/l;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10, v9, v2}, Lr7/l;->c(Lr7/m;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e0 .. :try_end_e8} :catch_e9

    .line 231
    .line 232
    .line 233
    goto :goto_ea

    .line 234
    :catch_e9
    move-object v10, v0

    .line 235
    :goto_ea
    if-eqz v10, :cond_f1

    .line 236
    .line 237
    invoke-virtual {v10}, Lr7/l;->a()Lr7/m;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    goto :goto_f2

    .line 242
    :cond_f1
    move-object v2, v0

    .line 243
    :goto_f2
    if-nez v2, :cond_f5

    .line 244
    .line 245
    goto :goto_107

    .line 246
    :cond_f5
    iget-object v9, v2, Lr7/m;->a:Ljava/lang/String;

    .line 247
    .line 248
    iget-object v10, v8, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v10, Lr7/m;

    .line 251
    .line 252
    iget-object v10, v10, Lr7/m;->a:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {v9, v10}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    if-nez v9, :cond_108

    .line 259
    .line 260
    iget-boolean v1, v1, Lr7/r;->i:Z

    .line 261
    .line 262
    if-nez v1, :cond_108

    .line 263
    .line 264
    :cond_107
    :goto_107
    return-object v0

    .line 265
    :cond_108
    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/g;->h()Lcom/google/firebase/messaging/z;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-static {v3}, Ld4/a;->f(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v9

    .line 273
    if-eqz v9, :cond_156

    .line 274
    .line 275
    iget p1, p1, Lr7/u;->d:I

    .line 276
    .line 277
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    if-nez v9, :cond_11e

    .line 282
    .line 283
    if-eq p1, v6, :cond_11e

    .line 284
    .line 285
    if-ne p1, v7, :cond_11f

    .line 286
    .line 287
    :cond_11e
    move v4, v5

    .line 288
    :cond_11f
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    if-nez p2, :cond_12f

    .line 293
    .line 294
    if-eq p1, v6, :cond_12f

    .line 295
    .line 296
    if-eq p1, v7, :cond_12f

    .line 297
    .line 298
    const-string p1, "GET"

    .line 299
    .line 300
    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/messaging/z;->d(Ljava/lang/String;Lb0/d;)V

    .line 301
    .line 302
    .line 303
    goto :goto_139

    .line 304
    :cond_12f
    if-eqz v4, :cond_136

    .line 305
    .line 306
    iget-object p1, v8, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 307
    .line 308
    move-object v0, p1

    .line 309
    check-cast v0, Lb0/d;

    .line 310
    .line 311
    :cond_136
    invoke-virtual {v1, v3, v0}, Lcom/google/firebase/messaging/z;->d(Ljava/lang/String;Lb0/d;)V

    .line 312
    .line 313
    .line 314
    :goto_139
    if-nez v4, :cond_156

    .line 315
    .line 316
    const-string p1, "Transfer-Encoding"

    .line 317
    .line 318
    iget-object p2, v1, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast p2, Lr7/j;

    .line 321
    .line 322
    invoke-virtual {p2, p1}, Lr7/j;->d(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    const-string p1, "Content-Length"

    .line 326
    .line 327
    iget-object p2, v1, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast p2, Lr7/j;

    .line 330
    .line 331
    invoke-virtual {p2, p1}, Lr7/j;->d(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string p1, "Content-Type"

    .line 335
    .line 336
    iget-object p2, v1, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast p2, Lr7/j;

    .line 339
    .line 340
    invoke-virtual {p2, p1}, Lr7/j;->d(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    :cond_156
    iget-object p1, v8, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast p1, Lr7/m;

    .line 346
    .line 347
    invoke-static {p1, v2}, Ls7/b;->a(Lr7/m;Lr7/m;)Z

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    if-nez p1, :cond_169

    .line 352
    .line 353
    const-string p1, "Authorization"

    .line 354
    .line 355
    iget-object p2, v1, Lcom/google/firebase/messaging/z;->c:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast p2, Lr7/j;

    .line 358
    .line 359
    invoke-virtual {p2, p1}, Lr7/j;->d(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    :cond_169
    iput-object v2, v1, Lcom/google/firebase/messaging/z;->a:Ljava/lang/Object;

    .line 363
    .line 364
    invoke-virtual {v1}, Lcom/google/firebase/messaging/z;->a()Lcom/google/android/gms/common/internal/g;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    return-object p1

    .line 369
    :pswitch_data_170
    .packed-switch 0x12c
        :pswitch_c3
        :pswitch_c3
        :pswitch_c3
        :pswitch_c3
    .end packed-switch
.end method

.method public c(Ljava/io/IOException;Lv7/i;Lcom/google/android/gms/common/internal/g;Z)Z
    .registers 8

    .line 1
    iget-object p3, p0, Lw7/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p3, Lr7/r;

    .line 4
    .line 5
    iget-boolean p3, p3, Lr7/r;->f:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p3, :cond_b

    .line 9
    .line 10
    goto/16 :goto_9d

    .line 11
    .line 12
    :cond_b
    if-eqz p4, :cond_12

    .line 13
    .line 14
    instance-of p3, p1, Ljava/io/FileNotFoundException;

    .line 15
    .line 16
    if-eqz p3, :cond_12

    .line 17
    .line 18
    return v0

    .line 19
    :cond_12
    instance-of p3, p1, Ljava/net/ProtocolException;

    .line 20
    .line 21
    if-eqz p3, :cond_17

    .line 22
    .line 23
    return v0

    .line 24
    :cond_17
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    .line 25
    .line 26
    if-eqz p3, :cond_22

    .line 27
    .line 28
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    .line 29
    .line 30
    if-eqz p1, :cond_9d

    .line 31
    .line 32
    if-nez p4, :cond_9d

    .line 33
    .line 34
    goto :goto_35

    .line 35
    :cond_22
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 36
    .line 37
    if-eqz p3, :cond_30

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    instance-of p3, p3, Ljava/security/cert/CertificateException;

    .line 44
    .line 45
    if-eqz p3, :cond_30

    .line 46
    .line 47
    goto/16 :goto_9d

    .line 48
    .line 49
    :cond_30
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 50
    .line 51
    if-eqz p1, :cond_35

    .line 52
    .line 53
    return v0

    .line 54
    :cond_35
    :goto_35
    iget-object p1, p2, Lv7/i;->g:Lv7/e;

    .line 55
    .line 56
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget p2, p1, Lv7/e;->f:I

    .line 60
    .line 61
    const/4 p3, 0x1

    .line 62
    if-nez p2, :cond_49

    .line 63
    .line 64
    iget p4, p1, Lv7/e;->g:I

    .line 65
    .line 66
    if-nez p4, :cond_49

    .line 67
    .line 68
    iget p4, p1, Lv7/e;->h:I

    .line 69
    .line 70
    if-nez p4, :cond_49

    .line 71
    .line 72
    move p1, v0

    .line 73
    goto :goto_9b

    .line 74
    :cond_49
    iget-object p4, p1, Lv7/e;->i:Lr7/x;

    .line 75
    .line 76
    if-eqz p4, :cond_4e

    .line 77
    .line 78
    goto :goto_96

    .line 79
    :cond_4e
    const/4 p4, 0x0

    .line 80
    if-gt p2, p3, :cond_81

    .line 81
    .line 82
    iget p2, p1, Lv7/e;->g:I

    .line 83
    .line 84
    if-gt p2, p3, :cond_81

    .line 85
    .line 86
    iget p2, p1, Lv7/e;->h:I

    .line 87
    .line 88
    if-lez p2, :cond_5a

    .line 89
    .line 90
    goto :goto_81

    .line 91
    :cond_5a
    iget-object p2, p1, Lv7/e;->c:Lv7/i;

    .line 92
    .line 93
    iget-object p2, p2, Lv7/i;->h:Lv7/l;

    .line 94
    .line 95
    if-nez p2, :cond_61

    .line 96
    .line 97
    goto :goto_81

    .line 98
    :cond_61
    monitor-enter p2

    .line 99
    :try_start_62
    iget v1, p2, Lv7/l;->l:I
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_7e

    .line 100
    .line 101
    if-eqz v1, :cond_68

    .line 102
    .line 103
    monitor-exit p2

    .line 104
    goto :goto_81

    .line 105
    :cond_68
    :try_start_68
    iget-object v1, p2, Lv7/l;->b:Lr7/x;

    .line 106
    .line 107
    iget-object v1, v1, Lr7/x;->a:Lr7/a;

    .line 108
    .line 109
    iget-object v1, v1, Lr7/a;->h:Lr7/m;

    .line 110
    .line 111
    iget-object v2, p1, Lv7/e;->b:Lr7/a;

    .line 112
    .line 113
    iget-object v2, v2, Lr7/a;->h:Lr7/m;

    .line 114
    .line 115
    invoke-static {v1, v2}, Ls7/b;->a(Lr7/m;Lr7/m;)Z

    .line 116
    .line 117
    .line 118
    move-result v1
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_7e

    .line 119
    if-nez v1, :cond_7a

    .line 120
    .line 121
    monitor-exit p2

    .line 122
    goto :goto_81

    .line 123
    :cond_7a
    :try_start_7a
    iget-object p4, p2, Lv7/l;->b:Lr7/x;
    :try_end_7c
    .catchall {:try_start_7a .. :try_end_7c} :catchall_7e

    .line 124
    .line 125
    monitor-exit p2

    .line 126
    goto :goto_81

    .line 127
    :catchall_7e
    move-exception p1

    .line 128
    monitor-exit p2

    .line 129
    throw p1

    .line 130
    :cond_81
    :goto_81
    if-eqz p4, :cond_87

    .line 131
    .line 132
    iput-object p4, p1, Lv7/e;->i:Lr7/x;

    .line 133
    .line 134
    :goto_85
    move p1, p3

    .line 135
    goto :goto_9b

    .line 136
    :cond_87
    iget-object p2, p1, Lv7/e;->d:Lg/j;

    .line 137
    .line 138
    if-eqz p2, :cond_92

    .line 139
    .line 140
    invoke-virtual {p2}, Lg/j;->c()Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-ne p2, p3, :cond_92

    .line 145
    .line 146
    goto :goto_96

    .line 147
    :cond_92
    iget-object p1, p1, Lv7/e;->e:Lk2/n;

    .line 148
    .line 149
    if-nez p1, :cond_97

    .line 150
    .line 151
    :goto_96
    goto :goto_85

    .line 152
    :cond_97
    invoke-virtual {p1}, Lk2/n;->d()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    :goto_9b
    if-nez p1, :cond_9e

    .line 157
    .line 158
    :cond_9d
    :goto_9d
    return v0

    .line 159
    :cond_9e
    return p3
.end method
