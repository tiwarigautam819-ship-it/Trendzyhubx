###### Class x1.c (x1.c)
.class public final synthetic Lx1/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lx1/v;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 6

    .line 1
    iput p5, p0, Lx1/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lx1/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lx1/c;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lx1/c;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lx1/c;->e:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lx1/c0;)V
    .registers 14

    .line 1
    iget v0, p0, Lx1/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_1d2

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lx1/c;->b:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v3, v0

    .line 11
    check-cast v3, Ly2/g;

    .line 12
    .line 13
    iget-object v0, p0, Lx1/c;->c:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v6, v0

    .line 16
    check-cast v6, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p0, Lx1/c;->d:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v7, v0

    .line 21
    check-cast v7, Ljava/util/Date;

    .line 22
    .line 23
    iget-object v0, p0, Lx1/c;->e:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v8, v0

    .line 26
    check-cast v8, Ljava/util/Date;

    .line 27
    .line 28
    iget-object v0, v3, Ly2/g;->x0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_25

    .line 35
    .line 36
    goto/16 :goto_10a

    .line 37
    .line 38
    :cond_25
    iget-object v0, p1, Lx1/c0;->c:Lx1/o;

    .line 39
    .line 40
    if-eqz v0, :cond_37

    .line 41
    .line 42
    iget-object p1, v0, Lx1/o;->i:Lx1/l;

    .line 43
    .line 44
    if-nez p1, :cond_32

    .line 45
    .line 46
    new-instance p1, Lx1/l;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_32
    invoke-virtual {v3, p1}, Ly2/g;->P(Lx1/l;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_10a

    .line 55
    .line 56
    :cond_37
    :try_start_37
    iget-object p1, p1, Lx1/c0;->b:Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_39} :catch_ff

    .line 57
    .line 58
    if-nez p1, :cond_46

    .line 59
    .line 60
    :try_start_3b
    new-instance p1, Lorg/json/JSONObject;

    .line 61
    .line 62
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_40} :catch_41

    .line 63
    .line 64
    .line 65
    goto :goto_46

    .line 66
    :catch_41
    move-exception v0

    .line 67
    move-object p1, v0

    .line 68
    move-object v4, v3

    .line 69
    goto/16 :goto_102

    .line 70
    .line 71
    :cond_46
    :goto_46
    :try_start_46
    const-string v0, "id"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-string v0, "jsonObject.getString(\"id\")"

    .line 78
    .line 79
    invoke-static {v0, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lx1/w;->b(Lorg/json/JSONObject;)Lc5/h;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    const-string v0, "name"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v0, "jsonObject.getString(\"name\")"

    .line 93
    .line 94
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_60} :catch_ff

    .line 95
    .line 96
    .line 97
    iget-object v0, v3, Ly2/g;->A0:Ly2/e;

    .line 98
    .line 99
    if-eqz v0, :cond_69

    .line 100
    .line 101
    iget-object v0, v0, Ly2/e;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v0}, Lp2/b;->a(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_69
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lq2/w;->b(Ljava/lang/String;)Lq2/t;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_80

    .line 115
    .line 116
    iget-object v0, v0, Lq2/t;->c:Ljava/util/EnumSet;

    .line 117
    .line 118
    sget-object v9, Lq2/d0;->d:Lq2/d0;

    .line 119
    .line 120
    invoke-virtual {v0, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    goto :goto_81

    .line 129
    :cond_80
    const/4 v0, 0x0

    .line 130
    :goto_81
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-static {v0, v9}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_fb

    .line 137
    .line 138
    iget-boolean v0, v3, Ly2/g;->C0:Z

    .line 139
    .line 140
    if-nez v0, :cond_fb

    .line 141
    .line 142
    iput-boolean v2, v3, Ly2/g;->C0:Z

    .line 143
    .line 144
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->h()Landroid/content/res/Resources;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const v9, 0x7f0f003d

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v9, "resources.getString(R.st\u2026login_confirmation_title)"

    .line 156
    .line 157
    invoke-static {v9, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->h()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    const v10, 0x7f0f003c

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    const-string v10, "resources.getString(R.st\u2026confirmation_continue_as)"

    .line 172
    .line 173
    invoke-static {v10, v9}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->h()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    const v11, 0x7f0f003b

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    const-string v11, "resources.getString(R.st\u2026ogin_confirmation_cancel)"

    .line 188
    .line 189
    invoke-static {v11, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    new-array v11, v2, [Ljava/lang/Object;

    .line 193
    .line 194
    aput-object p1, v11, v1

    .line 195
    .line 196
    invoke-static {v11, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {v9, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 205
    .line 206
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->e()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    move-object v9, v8

    .line 222
    move-object v8, v7

    .line 223
    move-object v7, v6

    .line 224
    move-object v6, v5

    .line 225
    move-object v5, v4

    .line 226
    move-object v4, v3

    .line 227
    new-instance v3, Ly2/d;

    .line 228
    .line 229
    invoke-direct/range {v3 .. v9}, Ly2/d;-><init>(Ly2/g;Ljava/lang/String;Lc5/h;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, p1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    new-instance v0, Ll6/f;

    .line 237
    .line 238
    invoke-direct {v0, v2, v4}, Ll6/f;-><init>(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 249
    .line 250
    .line 251
    goto :goto_10a

    .line 252
    :cond_fb
    invoke-virtual/range {v3 .. v8}, Ly2/g;->M(Ljava/lang/String;Lc5/h;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 253
    .line 254
    .line 255
    goto :goto_10a

    .line 256
    :catch_ff
    move-exception v0

    .line 257
    move-object v4, v3

    .line 258
    move-object p1, v0

    .line 259
    :goto_102
    new-instance v0, Lx1/l;

    .line 260
    .line 261
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v0}, Ly2/g;->P(Lx1/l;)V

    .line 265
    .line 266
    .line 267
    :goto_10a
    return-void

    .line 268
    :pswitch_10b
    iget-object v0, p0, Lx1/c;->b:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v0, Ly1/b;

    .line 271
    .line 272
    iget-object v1, p0, Lx1/c;->c:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v1, Lx1/z;

    .line 275
    .line 276
    iget-object v2, p0, Lx1/c;->d:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v2, Ly1/s;

    .line 279
    .line 280
    iget-object v3, p0, Lx1/c;->e:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v3, Lg/j;

    .line 283
    .line 284
    const-class v4, Ly1/i;

    .line 285
    .line 286
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    if-eqz v5, :cond_124

    .line 291
    .line 292
    goto :goto_12d

    .line 293
    :cond_124
    :try_start_124
    invoke-static {v0, v1, p1, v2, v3}, Ly1/i;->e(Ly1/b;Lx1/z;Lx1/c0;Ly1/s;Lg/j;)V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_128

    .line 294
    .line 295
    .line 296
    goto :goto_12d

    .line 297
    :catchall_128
    move-exception v0

    .line 298
    move-object p1, v0

    .line 299
    invoke-static {p1, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :goto_12d
    return-void

    .line 303
    :pswitch_12e
    iget-object v0, p0, Lx1/c;->b:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 306
    .line 307
    iget-object v3, p0, Lx1/c;->c:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v3, Ljava/util/HashSet;

    .line 310
    .line 311
    iget-object v4, p0, Lx1/c;->d:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v4, Ljava/util/HashSet;

    .line 314
    .line 315
    iget-object v5, p0, Lx1/c;->e:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v5, Ljava/util/HashSet;

    .line 318
    .line 319
    iget-object p1, p1, Lx1/c0;->d:Lorg/json/JSONObject;

    .line 320
    .line 321
    if-nez p1, :cond_144

    .line 322
    .line 323
    goto/16 :goto_1d1

    .line 324
    .line 325
    :cond_144
    const-string v6, "data"

    .line 326
    .line 327
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    if-nez p1, :cond_14e

    .line 332
    .line 333
    goto/16 :goto_1d1

    .line 334
    .line 335
    :cond_14e
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    :goto_155
    if-ge v1, v0, :cond_1d1

    .line 343
    .line 344
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    if-nez v2, :cond_15f

    .line 349
    .line 350
    goto/16 :goto_1ce

    .line 351
    .line 352
    :cond_15f
    const-string v6, "permission"

    .line 353
    .line 354
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    const-string v7, "status"

    .line 359
    .line 360
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-static {v6}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    if-nez v8, :cond_1ce

    .line 369
    .line 370
    invoke-static {v2}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    if-nez v8, :cond_1ce

    .line 375
    .line 376
    invoke-static {v7, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 380
    .line 381
    const-string v8, "US"

    .line 382
    .line 383
    invoke-static {v8, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    const-string v7, "this as java.lang.String).toLowerCase(locale)"

    .line 391
    .line 392
    invoke-static {v7, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 396
    .line 397
    .line 398
    move-result v7

    .line 399
    const v8, -0x4e0958db

    .line 400
    .line 401
    .line 402
    if-eq v7, v8, :cond_1b7

    .line 403
    .line 404
    const v8, 0x10b4f6bb

    .line 405
    .line 406
    .line 407
    if-eq v7, v8, :cond_1ab

    .line 408
    .line 409
    const v8, 0x21ddfc2e

    .line 410
    .line 411
    .line 412
    if-eq v7, v8, :cond_19e

    .line 413
    .line 414
    goto :goto_1bf

    .line 415
    :cond_19e
    const-string v7, "declined"

    .line 416
    .line 417
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v7

    .line 421
    if-nez v7, :cond_1a7

    .line 422
    .line 423
    goto :goto_1bf

    .line 424
    :cond_1a7
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    goto :goto_1ce

    .line 428
    :cond_1ab
    const-string v7, "granted"

    .line 429
    .line 430
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v7

    .line 434
    if-eqz v7, :cond_1bf

    .line 435
    .line 436
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    goto :goto_1ce

    .line 440
    :cond_1b7
    const-string v7, "expired"

    .line 441
    .line 442
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v7

    .line 446
    if-nez v7, :cond_1cb

    .line 447
    .line 448
    :cond_1bf
    :goto_1bf
    const-string v6, "Unexpected status: "

    .line 449
    .line 450
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    const-string v6, "AccessTokenManager"

    .line 455
    .line 456
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .line 458
    .line 459
    goto :goto_1ce

    .line 460
    :cond_1cb
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    :cond_1ce
    :goto_1ce
    add-int/lit8 v1, v1, 0x1

    .line 464
    .line 465
    goto :goto_155

    .line 466
    :cond_1d1
    :goto_1d1
    return-void

    .line 467
    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_12e
        :pswitch_10b
    .end packed-switch
.end method

###### Class y2.d (y2.d)
.class public final synthetic Ly2/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ly2/g;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lc5/h;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/Date;

.field public final synthetic f:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Ly2/g;Ljava/lang/String;Lc5/h;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly2/d;->a:Ly2/g;

    .line 5
    .line 6
    iput-object p2, p0, Ly2/d;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Ly2/d;->c:Lc5/h;

    .line 9
    .line 10
    iput-object p4, p0, Ly2/d;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Ly2/d;->e:Ljava/util/Date;

    .line 13
    .line 14
    iput-object p6, p0, Ly2/d;->f:Ljava/util/Date;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    iget-object v0, p0, Ly2/d;->a:Ly2/g;

    .line 4
    .line 5
    invoke-static {p1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "$userId"

    .line 9
    .line 10
    iget-object v1, p0, Ly2/d;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "$permissions"

    .line 16
    .line 17
    iget-object v2, p0, Ly2/d;->c:Lc5/h;

    .line 18
    .line 19
    invoke-static {p1, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "$accessToken"

    .line 23
    .line 24
    iget-object v3, p0, Ly2/d;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1, v3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Ly2/d;->e:Ljava/util/Date;

    .line 30
    .line 31
    iget-object v5, p0, Ly2/d;->f:Ljava/util/Date;

    .line 32
    .line 33
    invoke-virtual/range {v0 .. v5}, Ly2/g;->M(Ljava/lang/String;Lc5/h;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
