###### Class x1.q (x1.q)
.class public final synthetic Lx1/q;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lq2/n;
.implements Lv4/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lx1/q;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public create(Lv4/c;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Lx1/q;->a:I

    .line 2
    .line 3
    check-cast p1, Lcom/google/firebase/messaging/y;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_16

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/firebase/datatransport/TransportRegistrar;->a(Lcom/google/firebase/messaging/y;)Lc3/e;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :pswitch_c
    invoke-static {p1}, Lcom/google/firebase/datatransport/TransportRegistrar;->b(Lcom/google/firebase/messaging/y;)Lc3/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :pswitch_11
    invoke-static {p1}, Lcom/google/firebase/datatransport/TransportRegistrar;->c(Lcom/google/firebase/messaging/y;)Lc3/e;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method public d(Z)V
    .registers 12

    .line 1
    iget v0, p0, Lx1/q;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_2ec

    .line 6
    .line 7
    .line 8
    :pswitch_7
    if-eqz p1, :cond_20

    .line 9
    .line 10
    sget-object p1, Ld2/b;->a:Ld2/b;

    .line 11
    .line 12
    const-class p1, Ld2/b;

    .line 13
    .line 14
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_14

    .line 19
    .line 20
    goto :goto_20

    .line 21
    :cond_14
    :try_start_14
    sput-boolean v2, Ld2/b;->b:Z

    .line 22
    .line 23
    sget-object v0, Ld2/b;->a:Ld2/b;

    .line 24
    .line 25
    invoke-virtual {v0}, Ld2/b;->a()V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1c

    .line 26
    .line 27
    .line 28
    goto :goto_20

    .line 29
    :catchall_1c
    move-exception v0

    .line 30
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_20
    :goto_20
    return-void

    .line 34
    :pswitch_21
    if-eqz p1, :cond_3c

    .line 35
    .line 36
    sget-object p1, Ll2/d;->a:Ll2/d;

    .line 37
    .line 38
    const-class p1, Ll2/d;

    .line 39
    .line 40
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2e

    .line 45
    .line 46
    goto :goto_3c

    .line 47
    :cond_2e
    :try_start_2e
    new-instance v0, Li2/c;

    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    invoke-direct {v0, v1}, Li2/c;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lq2/g0;->K(Ljava/lang/Runnable;)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_38

    .line 54
    .line 55
    .line 56
    goto :goto_3c

    .line 57
    :catchall_38
    move-exception v0

    .line 58
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_3c
    :goto_3c
    return-void

    .line 62
    :pswitch_3d
    if-eqz p1, :cond_56

    .line 63
    .line 64
    sget-object p1, Ln2/b;->a:Ln2/b;

    .line 65
    .line 66
    const-class p1, Ln2/b;

    .line 67
    .line 68
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4a

    .line 73
    .line 74
    goto :goto_56

    .line 75
    :cond_4a
    :try_start_4a
    sput-boolean v2, Ln2/b;->b:Z

    .line 76
    .line 77
    sget-object v0, Ln2/b;->a:Ln2/b;

    .line 78
    .line 79
    invoke-virtual {v0}, Ln2/b;->b()V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_52

    .line 80
    .line 81
    .line 82
    goto :goto_56

    .line 83
    :catchall_52
    move-exception v0

    .line 84
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_56
    :goto_56
    return-void

    .line 88
    :pswitch_57
    if-eqz p1, :cond_6e

    .line 89
    .line 90
    sget-object p1, Lh2/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    .line 92
    const-class p1, Lh2/a;

    .line 93
    .line 94
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_64

    .line 99
    .line 100
    goto :goto_6e

    .line 101
    :cond_64
    :try_start_64
    sget-object v0, Lh2/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_6a

    .line 104
    .line 105
    .line 106
    goto :goto_6e

    .line 107
    :catchall_6a
    move-exception v0

    .line 108
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_6e
    :goto_6e
    return-void

    .line 112
    :pswitch_6f
    if-eqz p1, :cond_74

    .line 113
    .line 114
    invoke-static {}, Lg2/b;->a()V

    .line 115
    .line 116
    .line 117
    :cond_74
    return-void

    .line 118
    :pswitch_75
    if-eqz p1, :cond_ac

    .line 119
    .line 120
    sget-object p1, Lf2/d;->a:Lf2/d;

    .line 121
    .line 122
    const-string p1, "https://www."

    .line 123
    .line 124
    const-class v1, Lf2/d;

    .line 125
    .line 126
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_84

    .line 131
    .line 132
    goto :goto_ac

    .line 133
    :cond_84
    :try_start_84
    sput-boolean v2, Lf2/d;->c:Z

    .line 134
    .line 135
    new-instance v0, Le2/a;

    .line 136
    .line 137
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-direct {v0, v2}, Le2/a;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    sput-object v0, Lf2/d;->d:Le2/a;

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    sget-object p1, Lx1/r;->q:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p1, "/privacy_sandbox/mobile/register/trigger"

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    sput-object p1, Lf2/d;->e:Ljava/lang/String;
    :try_end_a6
    .catchall {:try_start_84 .. :try_end_a6} :catchall_a7

    .line 166
    .line 167
    goto :goto_ac

    .line 168
    :catchall_a7
    move-exception v0

    .line 169
    move-object p1, v0

    .line 170
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_ac
    :goto_ac
    return-void

    .line 174
    :pswitch_ad
    if-eqz p1, :cond_ea

    .line 175
    .line 176
    const-string p1, "a2.c"

    .line 177
    .line 178
    sget-object v3, Lx1/e0;->d:Lx1/e0;

    .line 179
    .line 180
    const-string v0, "/cloudbridge_settings"

    .line 181
    .line 182
    :try_start_b5
    new-instance v9, La2/b;

    .line 183
    .line 184
    invoke-direct {v9, v1}, La2/b;-><init>(I)V

    .line 185
    .line 186
    .line 187
    new-instance v4, Lx1/z;

    .line 188
    .line 189
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    sget-object v8, Lx1/d0;->a:Lx1/d0;

    .line 198
    .line 199
    const/4 v5, 0x0

    .line 200
    const/4 v7, 0x0

    .line 201
    invoke-direct/range {v4 .. v9}, Lx1/z;-><init>(Lx1/a;Ljava/lang/String;Landroid/os/Bundle;Lx1/d0;Lx1/v;)V

    .line 202
    .line 203
    .line 204
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 205
    .line 206
    const-string v0, " \n\nCreating Graph Request: \n=============\n%s\n\n "

    .line 207
    .line 208
    new-array v5, v2, [Ljava/lang/Object;

    .line 209
    .line 210
    aput-object v4, v5, v1

    .line 211
    .line 212
    invoke-static {v3, p1, v0, v5}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4}, Lx1/z;->d()Lx1/a0;
    :try_end_d9
    .catch Lorg/json/JSONException; {:try_start_b5 .. :try_end_d9} :catch_da

    .line 216
    .line 217
    .line 218
    goto :goto_ea

    .line 219
    :catch_da
    move-exception v0

    .line 220
    sget-object v4, Lq2/z;->c:Lo3/a;

    .line 221
    .line 222
    invoke-static {v0}, Li2/t;->q(Ljava/lang/Exception;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    new-array v2, v2, [Ljava/lang/Object;

    .line 227
    .line 228
    aput-object v0, v2, v1

    .line 229
    .line 230
    const-string v0, " \n\nGraph Request Exception: \n=============\n%s\n\n "

    .line 231
    .line 232
    invoke-static {v3, p1, v0, v2}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    :cond_ea
    :goto_ea
    return-void

    .line 236
    :pswitch_eb
    if-eqz p1, :cond_118

    .line 237
    .line 238
    sget-object p1, Lj2/h;->a:Lj2/h;

    .line 239
    .line 240
    const-class p1, Lj2/h;

    .line 241
    .line 242
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_f8

    .line 247
    .line 248
    goto :goto_118

    .line 249
    :cond_f8
    :try_start_f8
    sget-object v0, Lj2/h;->a:Lj2/h;

    .line 250
    .line 251
    invoke-virtual {v0}, Lj2/h;->a()V

    .line 252
    .line 253
    .line 254
    sget-object v0, Lj2/h;->c:Ljava/util/HashSet;

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_112

    .line 261
    .line 262
    sget-object v0, Lj2/h;->d:Ljava/util/HashMap;

    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_112

    .line 269
    .line 270
    sput-boolean v1, Lj2/h;->b:Z

    .line 271
    .line 272
    goto :goto_118

    .line 273
    :catchall_110
    move-exception v0

    .line 274
    goto :goto_115

    .line 275
    :cond_112
    sput-boolean v2, Lj2/h;->b:Z
    :try_end_114
    .catchall {:try_start_f8 .. :try_end_114} :catchall_110

    .line 276
    .line 277
    goto :goto_118

    .line 278
    :goto_115
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    :cond_118
    :goto_118
    return-void

    .line 282
    :pswitch_119
    if-eqz p1, :cond_13a

    .line 283
    .line 284
    sget-object p1, Lj2/g;->a:Lj2/g;

    .line 285
    .line 286
    const-class p1, Lj2/g;

    .line 287
    .line 288
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_126

    .line 293
    .line 294
    goto :goto_13a

    .line 295
    :cond_126
    :try_start_126
    sget-object v0, Lj2/g;->a:Lj2/g;

    .line 296
    .line 297
    invoke-virtual {v0}, Lj2/g;->a()V

    .line 298
    .line 299
    .line 300
    sget-object v0, Lj2/g;->c:Ljava/util/HashMap;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-nez v0, :cond_13a

    .line 307
    .line 308
    sput-boolean v2, Lj2/g;->b:Z
    :try_end_135
    .catchall {:try_start_126 .. :try_end_135} :catchall_136

    .line 309
    .line 310
    goto :goto_13a

    .line 311
    :catchall_136
    move-exception v0

    .line 312
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    :cond_13a
    :goto_13a
    return-void

    .line 316
    :pswitch_13b
    if-eqz p1, :cond_17d

    .line 317
    .line 318
    sget-object p1, Lj2/b;->a:Lj2/b;

    .line 319
    .line 320
    const-class p1, Lj2/b;

    .line 321
    .line 322
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_148

    .line 327
    .line 328
    goto :goto_17d

    .line 329
    :cond_148
    :try_start_148
    sget-object v3, Lj2/b;->a:Lj2/b;

    .line 330
    .line 331
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v0
    :try_end_14e
    .catchall {:try_start_148 .. :try_end_14e} :catchall_179

    .line 335
    if-eqz v0, :cond_151

    .line 336
    .line 337
    goto :goto_16b

    .line 338
    :cond_151
    :try_start_151
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {v0, v1}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    if-nez v0, :cond_15c

    .line 347
    .line 348
    goto :goto_16b

    .line 349
    :cond_15c
    iget-object v0, v0, Lq2/t;->o:Lorg/json/JSONArray;

    .line 350
    .line 351
    invoke-static {v0}, Lq2/g0;->f(Lorg/json/JSONArray;)Ljava/util/HashSet;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    if-eqz v0, :cond_16b

    .line 356
    .line 357
    sput-object v0, Lj2/b;->c:Ljava/util/HashSet;
    :try_end_166
    .catchall {:try_start_151 .. :try_end_166} :catchall_167

    .line 358
    .line 359
    goto :goto_16b

    .line 360
    :catchall_167
    move-exception v0

    .line 361
    :try_start_168
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    :cond_16b
    :goto_16b
    sget-object v0, Lj2/b;->c:Ljava/util/HashSet;

    .line 365
    .line 366
    if-eqz v0, :cond_17d

    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-eqz v0, :cond_176

    .line 373
    .line 374
    goto :goto_17d

    .line 375
    :cond_176
    sput-boolean v2, Lj2/b;->b:Z
    :try_end_178
    .catchall {:try_start_168 .. :try_end_178} :catchall_179

    .line 376
    .line 377
    goto :goto_17d

    .line 378
    :catchall_179
    move-exception v0

    .line 379
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    :cond_17d
    :goto_17d
    return-void

    .line 383
    :pswitch_17e
    if-eqz p1, :cond_1b1

    .line 384
    .line 385
    const-class p1, Lj2/d;

    .line 386
    .line 387
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_189

    .line 392
    .line 393
    goto :goto_1b1

    .line 394
    :cond_189
    :try_start_189
    sget-object v3, Lj2/d;->a:Lj2/d;

    .line 395
    .line 396
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v0
    :try_end_18f
    .catchall {:try_start_189 .. :try_end_18f} :catchall_1ad

    .line 400
    if-eqz v0, :cond_192

    .line 401
    .line 402
    goto :goto_1a6

    .line 403
    :cond_192
    :try_start_192
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-static {v0, v1}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    if-nez v0, :cond_19d

    .line 412
    .line 413
    goto :goto_1a6

    .line 414
    :cond_19d
    iget-object v0, v0, Lq2/t;->n:Lorg/json/JSONArray;

    .line 415
    .line 416
    sput-object v0, Lj2/d;->c:Lorg/json/JSONArray;
    :try_end_1a1
    .catchall {:try_start_192 .. :try_end_1a1} :catchall_1a2

    .line 417
    .line 418
    goto :goto_1a6

    .line 419
    :catchall_1a2
    move-exception v0

    .line 420
    :try_start_1a3
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    :goto_1a6
    sget-object v0, Lj2/d;->c:Lorg/json/JSONArray;

    .line 424
    .line 425
    if-eqz v0, :cond_1b1

    .line 426
    .line 427
    sput-boolean v2, Lj2/d;->b:Z
    :try_end_1ac
    .catchall {:try_start_1a3 .. :try_end_1ac} :catchall_1ad

    .line 428
    .line 429
    goto :goto_1b1

    .line 430
    :catchall_1ad
    move-exception v0

    .line 431
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    :cond_1b1
    :goto_1b1
    return-void

    .line 435
    :pswitch_1b2
    if-eqz p1, :cond_1cb

    .line 436
    .line 437
    sget-object p1, Lj2/f;->a:Lj2/f;

    .line 438
    .line 439
    const-class p1, Lj2/f;

    .line 440
    .line 441
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-eqz v0, :cond_1bf

    .line 446
    .line 447
    goto :goto_1cb

    .line 448
    :cond_1bf
    :try_start_1bf
    sput-boolean v2, Lj2/f;->b:Z

    .line 449
    .line 450
    sget-object v0, Lj2/f;->a:Lj2/f;

    .line 451
    .line 452
    invoke-virtual {v0}, Lj2/f;->a()V
    :try_end_1c6
    .catchall {:try_start_1bf .. :try_end_1c6} :catchall_1c7

    .line 453
    .line 454
    .line 455
    goto :goto_1cb

    .line 456
    :catchall_1c7
    move-exception v0

    .line 457
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :cond_1cb
    :goto_1cb
    return-void

    .line 461
    :pswitch_1cc
    if-eqz p1, :cond_216

    .line 462
    .line 463
    sget-object p1, Lj2/i;->a:Lj2/i;

    .line 464
    .line 465
    const-class p1, Lj2/i;

    .line 466
    .line 467
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-eqz v0, :cond_1d9

    .line 472
    .line 473
    goto :goto_216

    .line 474
    :cond_1d9
    :try_start_1d9
    sget-boolean v0, Lj2/i;->b:Z

    .line 475
    .line 476
    if-eqz v0, :cond_1de

    .line 477
    .line 478
    goto :goto_216

    .line 479
    :cond_1de
    sget-object v3, Lj2/i;->a:Lj2/i;

    .line 480
    .line 481
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v0
    :try_end_1e4
    .catchall {:try_start_1d9 .. :try_end_1e4} :catchall_20d

    .line 485
    if-eqz v0, :cond_1e7

    .line 486
    .line 487
    goto :goto_1fc

    .line 488
    :cond_1e7
    :try_start_1e7
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-static {v0, v1}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    if-nez v0, :cond_1f2

    .line 497
    .line 498
    goto :goto_1fc

    .line 499
    :cond_1f2
    iget-object v0, v0, Lq2/t;->r:Lorg/json/JSONArray;

    .line 500
    .line 501
    invoke-virtual {v3, v0}, Lj2/i;->a(Lorg/json/JSONArray;)V
    :try_end_1f7
    .catchall {:try_start_1e7 .. :try_end_1f7} :catchall_1f8

    .line 502
    .line 503
    .line 504
    goto :goto_1fc

    .line 505
    :catchall_1f8
    move-exception v0

    .line 506
    :try_start_1f9
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    :goto_1fc
    sget-object v0, Lj2/i;->c:Ljava/util/HashMap;

    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_20f

    .line 516
    .line 517
    sget-object v0, Lj2/i;->d:Ljava/util/HashMap;

    .line 518
    .line 519
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-nez v0, :cond_210

    .line 524
    .line 525
    goto :goto_20f

    .line 526
    :catchall_20d
    move-exception v0

    .line 527
    goto :goto_213

    .line 528
    :cond_20f
    :goto_20f
    move v1, v2

    .line 529
    :cond_210
    sput-boolean v1, Lj2/i;->b:Z
    :try_end_212
    .catchall {:try_start_1f9 .. :try_end_212} :catchall_20d

    .line 530
    .line 531
    goto :goto_216

    .line 532
    :goto_213
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    :cond_216
    :goto_216
    return-void

    .line 536
    :pswitch_217
    if-eqz p1, :cond_23c

    .line 537
    .line 538
    sget-object p1, Li2/q;->a:Li2/q;

    .line 539
    .line 540
    const-class p1, Li2/q;

    .line 541
    .line 542
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    if-eqz v0, :cond_224

    .line 547
    .line 548
    goto :goto_23c

    .line 549
    :cond_224
    :try_start_224
    invoke-static {}, Lk2/k;->d()Z

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    if-nez v0, :cond_230

    .line 554
    .line 555
    invoke-static {}, Li2/p;->m()V

    .line 556
    .line 557
    .line 558
    goto :goto_23c

    .line 559
    :catchall_22e
    move-exception v0

    .line 560
    goto :goto_239

    .line 561
    :cond_230
    sget-object v0, Li2/q;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 562
    .line 563
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 564
    .line 565
    .line 566
    invoke-static {}, Li2/q;->d()V
    :try_end_238
    .catchall {:try_start_224 .. :try_end_238} :catchall_22e

    .line 567
    .line 568
    .line 569
    goto :goto_23c

    .line 570
    :goto_239
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    :cond_23c
    :goto_23c
    return-void

    .line 574
    :pswitch_23d
    if-eqz p1, :cond_29a

    .line 575
    .line 576
    sget-object p1, Lj2/a;->a:Lj2/a;

    .line 577
    .line 578
    const-class p1, Lj2/a;

    .line 579
    .line 580
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    if-eqz v0, :cond_24a

    .line 585
    .line 586
    goto :goto_29a

    .line 587
    :cond_24a
    :try_start_24a
    sget-boolean v0, Lj2/a;->b:Z

    .line 588
    .line 589
    if-eqz v0, :cond_24f

    .line 590
    .line 591
    goto :goto_29a

    .line 592
    :cond_24f
    sget-object v3, Lj2/a;->a:Lj2/a;

    .line 593
    .line 594
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v0
    :try_end_255
    .catchall {:try_start_24a .. :try_end_255} :catchall_296

    .line 598
    if-eqz v0, :cond_258

    .line 599
    .line 600
    goto :goto_28c

    .line 601
    :cond_258
    :try_start_258
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-static {v0, v1}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    if-nez v0, :cond_263

    .line 610
    .line 611
    goto :goto_28c

    .line 612
    :cond_263
    iget-object v0, v0, Lq2/t;->s:Lorg/json/JSONArray;

    .line 613
    .line 614
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v1
    :try_end_269
    .catchall {:try_start_258 .. :try_end_269} :catchall_288

    .line 618
    const/4 v4, 0x0

    .line 619
    if-eqz v1, :cond_26d

    .line 620
    .line 621
    goto :goto_285

    .line 622
    :cond_26d
    :try_start_26d
    invoke-static {v0}, Lq2/g0;->f(Lorg/json/JSONArray;)Ljava/util/HashSet;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    if-nez v0, :cond_278

    .line 627
    .line 628
    new-instance v0, Ljava/util/HashSet;

    .line 629
    .line 630
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_278} :catch_27c
    .catchall {:try_start_26d .. :try_end_278} :catchall_27a

    .line 631
    .line 632
    .line 633
    :cond_278
    :goto_278
    move-object v4, v0

    .line 634
    goto :goto_285

    .line 635
    :catchall_27a
    move-exception v0

    .line 636
    goto :goto_282

    .line 637
    :catch_27c
    :try_start_27c
    new-instance v0, Ljava/util/HashSet;

    .line 638
    .line 639
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_281
    .catchall {:try_start_27c .. :try_end_281} :catchall_27a

    .line 640
    .line 641
    .line 642
    goto :goto_278

    .line 643
    :goto_282
    :try_start_282
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    :goto_285
    sput-object v4, Lj2/a;->c:Ljava/util/HashSet;
    :try_end_287
    .catchall {:try_start_282 .. :try_end_287} :catchall_288

    .line 647
    .line 648
    goto :goto_28c

    .line 649
    :catchall_288
    move-exception v0

    .line 650
    :try_start_289
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    :goto_28c
    sget-object v0, Lj2/a;->c:Ljava/util/HashSet;

    .line 654
    .line 655
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    xor-int/2addr v0, v2

    .line 660
    sput-boolean v0, Lj2/a;->b:Z
    :try_end_295
    .catchall {:try_start_289 .. :try_end_295} :catchall_296

    .line 661
    .line 662
    goto :goto_29a

    .line 663
    :catchall_296
    move-exception v0

    .line 664
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    :cond_29a
    :goto_29a
    return-void

    .line 668
    :pswitch_29b
    if-eqz p1, :cond_2bd

    .line 669
    .line 670
    const-class p1, Lz1/a;

    .line 671
    .line 672
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    if-eqz v0, :cond_2a6

    .line 677
    .line 678
    goto :goto_2bd

    .line 679
    :cond_2a6
    :try_start_2a6
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    new-instance v1, Li2/c;

    .line 684
    .line 685
    const/16 v2, 0xf

    .line 686
    .line 687
    invoke-direct {v1, v2}, Li2/c;-><init>(I)V

    .line 688
    .line 689
    .line 690
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b4
    .catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_2b4} :catch_2b7
    .catchall {:try_start_2a6 .. :try_end_2b4} :catchall_2b5

    .line 691
    .line 692
    .line 693
    goto :goto_2bd

    .line 694
    :catchall_2b5
    move-exception v0

    .line 695
    goto :goto_2ba

    .line 696
    :catch_2b7
    :try_start_2b7
    sget-object p1, Lx1/r;->a:Lx1/r;
    :try_end_2b9
    .catchall {:try_start_2b7 .. :try_end_2b9} :catchall_2b5

    .line 697
    .line 698
    goto :goto_2bd

    .line 699
    :goto_2ba
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    :cond_2bd
    :goto_2bd
    return-void

    .line 703
    :pswitch_2be
    if-eqz p1, :cond_2c2

    .line 704
    .line 705
    sput-boolean v2, Lx1/r;->n:Z

    .line 706
    .line 707
    :cond_2c2
    return-void

    .line 708
    :pswitch_2c3
    if-eqz p1, :cond_2c7

    .line 709
    .line 710
    sput-boolean v2, Lx1/r;->m:Z

    .line 711
    .line 712
    :cond_2c7
    return-void

    .line 713
    :pswitch_2c8
    if-eqz p1, :cond_2cc

    .line 714
    .line 715
    sput-boolean v2, Lx1/r;->l:Z

    .line 716
    .line 717
    :cond_2cc
    return-void

    .line 718
    :pswitch_2cd
    if-eqz p1, :cond_2ea

    .line 719
    .line 720
    const-class p1, Lj7/g;

    .line 721
    .line 722
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    move-result v0

    .line 726
    if-eqz v0, :cond_2d8

    .line 727
    .line 728
    goto :goto_2ea

    .line 729
    :cond_2d8
    :try_start_2d8
    new-instance v0, Ly1/l;

    .line 730
    .line 731
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 732
    .line 733
    .line 734
    sget-object v1, Lq2/w;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 735
    .line 736
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    invoke-static {}, Lq2/w;->d()V
    :try_end_2e5
    .catchall {:try_start_2d8 .. :try_end_2e5} :catchall_2e6

    .line 740
    .line 741
    .line 742
    goto :goto_2ea

    .line 743
    :catchall_2e6
    move-exception v0

    .line 744
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 745
    .line 746
    .line 747
    :cond_2ea
    :goto_2ea
    return-void

    .line 748
    nop

    .line 749
    :pswitch_data_2ec
    .packed-switch 0x0
        :pswitch_2cd
        :pswitch_2c8
        :pswitch_2c3
        :pswitch_2be
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_29b
        :pswitch_23d
        :pswitch_217
        :pswitch_1cc
        :pswitch_1b2
        :pswitch_17e
        :pswitch_13b
        :pswitch_119
        :pswitch_eb
        :pswitch_ad
        :pswitch_75
        :pswitch_6f
        :pswitch_57
        :pswitch_3d
        :pswitch_21
    .end packed-switch
.end method
