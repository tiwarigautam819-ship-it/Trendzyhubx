###### Class w7.e (w7.e)
.class public abstract Lw7/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Le8/j;->d:Le8/j;

    .line 2
    .line 3
    const-string v0, "\"\\"

    .line 4
    .line 5
    invoke-static {v0}, Le5/e;->o(Ljava/lang/String;)Le8/j;

    .line 6
    .line 7
    .line 8
    const-string v0, "\t ,="

    .line 9
    .line 10
    invoke-static {v0}, Le5/e;->o(Ljava/lang/String;)Le8/j;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final a(Lr7/u;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lr7/u;->a:Lcom/google/android/gms/common/internal/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "HEAD"

    .line 8
    .line 9
    invoke-static {v0, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    goto :goto_3b

    .line 16
    :cond_f
    iget v0, p0, Lr7/u;->d:I

    .line 17
    .line 18
    const/16 v1, 0x64

    .line 19
    .line 20
    if-lt v0, v1, :cond_19

    .line 21
    .line 22
    const/16 v1, 0xc8

    .line 23
    .line 24
    if-lt v0, v1, :cond_22

    .line 25
    .line 26
    :cond_19
    const/16 v1, 0xcc

    .line 27
    .line 28
    if-eq v0, v1, :cond_22

    .line 29
    .line 30
    const/16 v1, 0x130

    .line 31
    .line 32
    if-eq v0, v1, :cond_22

    .line 33
    .line 34
    goto :goto_3d

    .line 35
    :cond_22
    invoke-static {p0}, Ls7/b;->j(Lr7/u;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    const-wide/16 v2, -0x1

    .line 40
    .line 41
    cmp-long v0, v0, v2

    .line 42
    .line 43
    if-nez v0, :cond_3d

    .line 44
    .line 45
    const-string v0, "Transfer-Encoding"

    .line 46
    .line 47
    invoke-static {v0, p0}, Lr7/u;->a(Ljava/lang/String;Lr7/u;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "chunked"

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_3b

    .line 58
    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    :goto_3b
    const/4 p0, 0x0

    .line 61
    return p0

    .line 62
    :cond_3d
    :goto_3d
    const/4 p0, 0x1

    .line 63
    return p0
.end method

.method public static final b(Lr7/b;Lr7/m;Lr7/k;)V
    .registers 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "<this>"

    .line 8
    .line 9
    invoke-static {v3, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-string v4, "url"

    .line 13
    .line 14
    invoke-static {v4, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const-string v4, "headers"

    .line 18
    .line 19
    invoke-static {v4, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object v4, Lr7/b;->b:Lr7/b;

    .line 23
    .line 24
    if-ne v0, v4, :cond_1a

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    sget-object v0, Lr7/h;->j:Ljava/util/regex/Pattern;

    .line 28
    .line 29
    invoke-virtual {v2}, Lr7/k;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v4, 0x0

    .line 34
    move v6, v4

    .line 35
    const/4 v7, 0x0

    .line 36
    :goto_23
    if-ge v6, v0, :cond_43

    .line 37
    .line 38
    invoke-virtual {v2, v6}, Lr7/k;->b(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    const-string v9, "Set-Cookie"

    .line 43
    .line 44
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_40

    .line 49
    .line 50
    if-nez v7, :cond_39

    .line 51
    .line 52
    new-instance v7, Ljava/util/ArrayList;

    .line 53
    .line 54
    const/4 v8, 0x2

    .line 55
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    :cond_39
    invoke-virtual {v2, v6}, Lr7/k;->d(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_40
    add-int/lit8 v6, v6, 0x1

    .line 66
    .line 67
    goto :goto_23

    .line 68
    :cond_43
    sget-object v2, Ls6/o;->a:Ls6/o;

    .line 69
    .line 70
    if-eqz v7, :cond_52

    .line 71
    .line 72
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v6, "{\n      Collections.unmodifiableList(result)\n    }"

    .line 77
    .line 78
    invoke-static {v6, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object v6, v0

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move-object v6, v2

    .line 84
    :goto_53
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    move v8, v4

    .line 89
    const/4 v9, 0x0

    .line 90
    :goto_59
    if-ge v8, v7, :cond_24f

    .line 91
    .line 92
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    move-object v10, v0

    .line 97
    check-cast v10, Ljava/lang/String;

    .line 98
    .line 99
    const-string v0, "setCookie"

    .line 100
    .line 101
    invoke-static {v0, v10}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v11

    .line 108
    sget-object v0, Ls7/b;->a:[B

    .line 109
    .line 110
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const/16 v13, 0x3b

    .line 115
    .line 116
    invoke-static {v10, v13, v4, v0}, Ls7/b;->g(Ljava/lang/String;CII)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const/16 v14, 0x3d

    .line 121
    .line 122
    invoke-static {v10, v14, v4, v0}, Ls7/b;->g(Ljava/lang/String;CII)I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    if-ne v15, v0, :cond_80

    .line 127
    .line 128
    goto :goto_9f

    .line 129
    :cond_80
    invoke-static {v4, v10, v15}, Ls7/b;->y(ILjava/lang/String;I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v17

    .line 133
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v16

    .line 137
    if-nez v16, :cond_8b

    .line 138
    .line 139
    goto :goto_9f

    .line 140
    :cond_8b
    invoke-static/range {v17 .. v17}, Ls7/b;->l(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    const/4 v4, -0x1

    .line 145
    if-eq v5, v4, :cond_93

    .line 146
    .line 147
    goto :goto_9f

    .line 148
    :cond_93
    add-int/lit8 v15, v15, 0x1

    .line 149
    .line 150
    invoke-static {v15, v10, v0}, Ls7/b;->y(ILjava/lang/String;I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v18

    .line 154
    invoke-static/range {v18 .. v18}, Ls7/b;->l(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eq v5, v4, :cond_a5

    .line 159
    .line 160
    :goto_9f
    move-object/from16 v34, v2

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    const/4 v14, 0x0

    .line 164
    goto/16 :goto_23b

    .line 165
    .line 166
    :cond_a5
    add-int/lit8 v0, v0, 0x1

    .line 167
    .line 168
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    const-wide v19, 0xe677d21fdbffL

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    move-wide/from16 v27, v19

    .line 178
    .line 179
    const/16 p2, 0x1

    .line 180
    .line 181
    const/4 v5, 0x0

    .line 182
    const/4 v15, 0x0

    .line 183
    const/16 v16, 0x0

    .line 184
    .line 185
    const-wide/16 v21, -0x1

    .line 186
    .line 187
    const-wide/16 v23, -0x1

    .line 188
    .line 189
    const/16 v25, 0x0

    .line 190
    .line 191
    const/16 v26, 0x1

    .line 192
    .line 193
    const/16 v29, 0x0

    .line 194
    .line 195
    :goto_c2
    const-wide v30, 0x7fffffffffffffffL

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    const-wide/high16 v32, -0x8000000000000000L

    .line 201
    .line 202
    if-ge v0, v4, :cond_18c

    .line 203
    .line 204
    move-object/from16 v34, v2

    .line 205
    .line 206
    invoke-static {v10, v13, v0, v4}, Ls7/b;->g(Ljava/lang/String;CII)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-static {v10, v14, v0, v2}, Ls7/b;->g(Ljava/lang/String;CII)I

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    invoke-static {v0, v10, v13}, Ls7/b;->y(ILjava/lang/String;I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-ge v13, v2, :cond_e2

    .line 219
    .line 220
    add-int/lit8 v13, v13, 0x1

    .line 221
    .line 222
    invoke-static {v13, v10, v2}, Ls7/b;->y(ILjava/lang/String;I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v13

    .line 226
    goto :goto_e4

    .line 227
    :cond_e2
    const-string v13, ""

    .line 228
    .line 229
    :goto_e4
    const-string v14, "expires"

    .line 230
    .line 231
    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v14

    .line 235
    if-eqz v14, :cond_f8

    .line 236
    .line 237
    :try_start_ec
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    invoke-static {v0, v13}, Lt4/b;->i(ILjava/lang/String;)J

    .line 242
    .line 243
    .line 244
    move-result-wide v27
    :try_end_f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ec .. :try_end_f4} :catch_182

    .line 245
    :goto_f4
    move/from16 v25, p2

    .line 246
    .line 247
    goto/16 :goto_182

    .line 248
    .line 249
    :cond_f8
    const-string v14, "max-age"

    .line 250
    .line 251
    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v14

    .line 255
    if-eqz v14, :cond_137

    .line 256
    .line 257
    :try_start_100
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 258
    .line 259
    .line 260
    move-result-wide v13
    :try_end_104
    .catch Ljava/lang/NumberFormatException; {:try_start_100 .. :try_end_104} :catch_110

    .line 261
    const-wide/16 v21, 0x0

    .line 262
    .line 263
    cmp-long v0, v13, v21

    .line 264
    .line 265
    if-gtz v0, :cond_10d

    .line 266
    .line 267
    move-wide/from16 v21, v32

    .line 268
    .line 269
    goto :goto_f4

    .line 270
    :cond_10d
    move-wide/from16 v21, v13

    .line 271
    .line 272
    goto :goto_f4

    .line 273
    :catch_110
    move-exception v0

    .line 274
    :try_start_111
    const-string v14, "-?\\d+"

    .line 275
    .line 276
    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 277
    .line 278
    .line 279
    move-result-object v14

    .line 280
    move-object/from16 v35, v0

    .line 281
    .line 282
    const-string v0, "compile(...)"

    .line 283
    .line 284
    invoke-static {v0, v14}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_136

    .line 296
    .line 297
    const-string v0, "-"

    .line 298
    .line 299
    const/4 v14, 0x0

    .line 300
    invoke-static {v13, v0, v14}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_133

    .line 305
    .line 306
    move-wide/from16 v30, v32

    .line 307
    .line 308
    :cond_133
    move-wide/from16 v21, v30

    .line 309
    .line 310
    goto :goto_f4

    .line 311
    :cond_136
    throw v35
    :try_end_137
    .catch Ljava/lang/NumberFormatException; {:try_start_111 .. :try_end_137} :catch_182

    .line 312
    :cond_137
    const-string v14, "domain"

    .line 313
    .line 314
    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result v14

    .line 318
    if-eqz v14, :cond_163

    .line 319
    .line 320
    :try_start_13f
    const-string v0, "."

    .line 321
    .line 322
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result v14

    .line 326
    if-nez v14, :cond_15b

    .line 327
    .line 328
    invoke-static {v13, v0}, Lk7/g;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v0}, Lk2/e;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    if-eqz v0, :cond_155

    .line 337
    .line 338
    move-object v5, v0

    .line 339
    const/16 v26, 0x0

    .line 340
    .line 341
    goto :goto_182

    .line 342
    :cond_155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 343
    .line 344
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :cond_15b
    const-string v0, "Failed requirement."

    .line 349
    .line 350
    new-instance v13, Ljava/lang/IllegalArgumentException;

    .line 351
    .line 352
    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v13
    :try_end_163
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13f .. :try_end_163} :catch_182

    .line 356
    :cond_163
    const-string v14, "path"

    .line 357
    .line 358
    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v14

    .line 362
    if-eqz v14, :cond_16d

    .line 363
    .line 364
    move-object v15, v13

    .line 365
    goto :goto_182

    .line 366
    :cond_16d
    const-string v13, "secure"

    .line 367
    .line 368
    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 369
    .line 370
    .line 371
    move-result v13

    .line 372
    if-eqz v13, :cond_178

    .line 373
    .line 374
    move/from16 v29, p2

    .line 375
    .line 376
    goto :goto_182

    .line 377
    :cond_178
    const-string v13, "httponly"

    .line 378
    .line 379
    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-eqz v0, :cond_182

    .line 384
    .line 385
    move/from16 v16, p2

    .line 386
    .line 387
    :catch_182
    :cond_182
    :goto_182
    add-int/lit8 v0, v2, 0x1

    .line 388
    .line 389
    move-object/from16 v2, v34

    .line 390
    .line 391
    const/16 v13, 0x3b

    .line 392
    .line 393
    const/16 v14, 0x3d

    .line 394
    .line 395
    goto/16 :goto_c2

    .line 396
    .line 397
    :cond_18c
    move-object/from16 v34, v2

    .line 398
    .line 399
    cmp-long v0, v21, v32

    .line 400
    .line 401
    if-nez v0, :cond_195

    .line 402
    .line 403
    move-wide/from16 v19, v32

    .line 404
    .line 405
    goto :goto_1b7

    .line 406
    :cond_195
    cmp-long v0, v21, v23

    .line 407
    .line 408
    if-eqz v0, :cond_1b5

    .line 409
    .line 410
    const-wide v13, 0x20c49ba5e353f7L

    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    cmp-long v0, v21, v13

    .line 416
    .line 417
    if-gtz v0, :cond_1a7

    .line 418
    .line 419
    const/16 v0, 0x3e8

    .line 420
    .line 421
    int-to-long v13, v0

    .line 422
    mul-long v30, v21, v13

    .line 423
    .line 424
    :cond_1a7
    add-long v30, v11, v30

    .line 425
    .line 426
    cmp-long v0, v30, v11

    .line 427
    .line 428
    if-ltz v0, :cond_1b7

    .line 429
    .line 430
    cmp-long v0, v30, v19

    .line 431
    .line 432
    if-lez v0, :cond_1b2

    .line 433
    .line 434
    goto :goto_1b7

    .line 435
    :cond_1b2
    move-wide/from16 v19, v30

    .line 436
    .line 437
    goto :goto_1b7

    .line 438
    :cond_1b5
    move-wide/from16 v19, v27

    .line 439
    .line 440
    :cond_1b7
    :goto_1b7
    iget-object v0, v1, Lr7/m;->d:Ljava/lang/String;

    .line 441
    .line 442
    if-nez v5, :cond_1bd

    .line 443
    .line 444
    move-object v5, v0

    .line 445
    goto :goto_1f1

    .line 446
    :cond_1bd
    invoke-static {v0, v5}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-eqz v2, :cond_1c4

    .line 451
    .line 452
    goto :goto_1f1

    .line 453
    :cond_1c4
    invoke-static {v3, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    if-eqz v2, :cond_203

    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    sub-int/2addr v2, v4

    .line 471
    add-int/lit8 v2, v2, -0x1

    .line 472
    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    const/16 v4, 0x2e

    .line 478
    .line 479
    if-ne v2, v4, :cond_203

    .line 480
    .line 481
    sget-object v2, Ls7/b;->f:Lk7/f;

    .line 482
    .line 483
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    iget-object v2, v2, Lk7/f;->a:Ljava/util/regex/Pattern;

    .line 487
    .line 488
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    if-nez v2, :cond_203

    .line 497
    .line 498
    :goto_1f1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    if-eq v0, v2, :cond_207

    .line 507
    .line 508
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 509
    .line 510
    invoke-virtual {v0, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    if-nez v0, :cond_207

    .line 515
    .line 516
    :cond_203
    const/4 v14, 0x0

    .line 517
    const/16 v16, 0x0

    .line 518
    .line 519
    goto :goto_239

    .line 520
    :cond_207
    const-string v0, "/"

    .line 521
    .line 522
    const/4 v14, 0x0

    .line 523
    if-eqz v15, :cond_218

    .line 524
    .line 525
    invoke-static {v15, v0, v14}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    if-nez v2, :cond_213

    .line 530
    .line 531
    goto :goto_218

    .line 532
    :cond_213
    :goto_213
    move-object/from16 v22, v15

    .line 533
    .line 534
    move/from16 v24, v16

    .line 535
    .line 536
    goto :goto_230

    .line 537
    :cond_218
    :goto_218
    invoke-virtual {v1}, Lr7/m;->b()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    const/16 v4, 0x2f

    .line 542
    .line 543
    const/4 v10, 0x6

    .line 544
    invoke-static {v2, v4, v14, v10}, Lk7/g;->D(Ljava/lang/String;CII)I

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    if-eqz v4, :cond_22e

    .line 549
    .line 550
    invoke-virtual {v2, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 555
    .line 556
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    :cond_22e
    move-object v15, v0

    .line 560
    goto :goto_213

    .line 561
    :goto_230
    new-instance v16, Lr7/h;

    .line 562
    .line 563
    move-object/from16 v21, v5

    .line 564
    .line 565
    move/from16 v23, v29

    .line 566
    .line 567
    invoke-direct/range {v16 .. v26}, Lr7/h;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 568
    .line 569
    .line 570
    :goto_239
    move-object/from16 v0, v16

    .line 571
    .line 572
    :goto_23b
    if-nez v0, :cond_23e

    .line 573
    .line 574
    goto :goto_248

    .line 575
    :cond_23e
    if-nez v9, :cond_245

    .line 576
    .line 577
    new-instance v9, Ljava/util/ArrayList;

    .line 578
    .line 579
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .line 581
    .line 582
    :cond_245
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    :goto_248
    add-int/lit8 v8, v8, 0x1

    .line 586
    .line 587
    move v4, v14

    .line 588
    move-object/from16 v2, v34

    .line 589
    .line 590
    goto/16 :goto_59

    .line 591
    .line 592
    :cond_24f
    move-object/from16 v34, v2

    .line 593
    .line 594
    if-eqz v9, :cond_25d

    .line 595
    .line 596
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    const-string v0, "{\n        Collections.un\u2026ableList(cookies)\n      }"

    .line 601
    .line 602
    invoke-static {v0, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    goto :goto_25f

    .line 606
    :cond_25d
    move-object/from16 v2, v34

    .line 607
    .line 608
    :goto_25f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 609
    .line 610
    .line 611
    return-void
.end method
