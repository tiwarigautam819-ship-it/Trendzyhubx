###### Class n4.e (n4.e)
.class public final Ln4/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Ln4/e;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Ln4/e;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_3ac

    .line 8
    .line 9
    .line 10
    const-string v2, "source"

    .line 11
    .line 12
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ly2/v;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Ly2/v;-><init>(Landroid/os/Parcel;)V

    .line 18
    .line 19
    .line 20
    return-object v2

    .line 21
    :pswitch_14
    const-string v2, "source"

    .line 22
    .line 23
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Ly2/n;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Ly2/n;-><init>(Landroid/os/Parcel;)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :pswitch_1f
    const-string v2, "source"

    .line 33
    .line 34
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Ly2/m;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Ly2/m;-><init>(Landroid/os/Parcel;)V

    .line 40
    .line 41
    .line 42
    return-object v2

    .line 43
    :pswitch_2a
    const-string v2, "source"

    .line 44
    .line 45
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Ly2/o;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    const/4 v3, -0x1

    .line 54
    iput v3, v2, Ly2/o;->b:I

    .line 55
    .line 56
    const-class v3, Ly2/t;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/4 v4, 0x0

    .line 67
    if-nez v3, :cond_46

    .line 68
    .line 69
    new-array v3, v4, [Landroid/os/Parcelable;

    .line 70
    .line 71
    :cond_46
    new-instance v5, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    array-length v6, v3

    .line 77
    move v7, v4

    .line 78
    :goto_4d
    const/4 v8, 0x0

    .line 79
    if-ge v7, v6, :cond_66

    .line 80
    .line 81
    aget-object v9, v3, v7

    .line 82
    .line 83
    instance-of v10, v9, Ly2/t;

    .line 84
    .line 85
    if-eqz v10, :cond_59

    .line 86
    .line 87
    move-object v8, v9

    .line 88
    check-cast v8, Ly2/t;

    .line 89
    .line 90
    :cond_59
    if-nez v8, :cond_5c

    .line 91
    .line 92
    goto :goto_5e

    .line 93
    :cond_5c
    iput-object v2, v8, Ly2/t;->b:Ly2/o;

    .line 94
    .line 95
    :goto_5e
    if-eqz v8, :cond_63

    .line 96
    .line 97
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    :cond_63
    add-int/lit8 v7, v7, 0x1

    .line 101
    .line 102
    goto :goto_4d

    .line 103
    :cond_66
    new-array v3, v4, [Ly2/t;

    .line 104
    .line 105
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, [Ly2/t;

    .line 110
    .line 111
    iput-object v3, v2, Ly2/o;->a:[Ly2/t;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    iput v3, v2, Ly2/o;->b:I

    .line 118
    .line 119
    const-class v3, Ly2/m;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Ly2/m;

    .line 130
    .line 131
    iput-object v3, v2, Ly2/o;->g:Ly2/m;

    .line 132
    .line 133
    invoke-static {v1}, Lq2/g0;->I(Landroid/os/Parcel;)Ljava/util/HashMap;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    if-eqz v3, :cond_8f

    .line 138
    .line 139
    invoke-static {v3}, Ls6/r;->y(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    goto :goto_90

    .line 144
    :cond_8f
    move-object v3, v8

    .line 145
    :goto_90
    iput-object v3, v2, Ly2/o;->h:Ljava/util/Map;

    .line 146
    .line 147
    invoke-static {v1}, Lq2/g0;->I(Landroid/os/Parcel;)Ljava/util/HashMap;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-eqz v1, :cond_9c

    .line 152
    .line 153
    invoke-static {v1}, Ls6/r;->y(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    :cond_9c
    iput-object v8, v2, Ly2/o;->i:Ljava/util/LinkedHashMap;

    .line 158
    .line 159
    return-object v2

    .line 160
    :pswitch_9f
    const-string v2, "source"

    .line 161
    .line 162
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    new-instance v2, Ly2/l;

    .line 166
    .line 167
    invoke-direct {v2, v1}, Ly2/l;-><init>(Landroid/os/Parcel;)V

    .line 168
    .line 169
    .line 170
    return-object v2

    .line 171
    :pswitch_aa
    const-string v2, "source"

    .line 172
    .line 173
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    new-instance v2, Ly2/k;

    .line 177
    .line 178
    invoke-direct {v2, v1}, Ly2/k;-><init>(Landroid/os/Parcel;)V

    .line 179
    .line 180
    .line 181
    return-object v2

    .line 182
    :pswitch_b5
    const-string v2, "source"

    .line 183
    .line 184
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    new-instance v2, Ly2/j;

    .line 188
    .line 189
    invoke-direct {v2, v1}, Ly2/j;-><init>(Landroid/os/Parcel;)V

    .line 190
    .line 191
    .line 192
    return-object v2

    .line 193
    :pswitch_c0
    const-string v2, "source"

    .line 194
    .line 195
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    new-instance v2, Ly2/h;

    .line 199
    .line 200
    invoke-direct {v2, v1}, Ly2/h;-><init>(Landroid/os/Parcel;)V

    .line 201
    .line 202
    .line 203
    return-object v2

    .line 204
    :pswitch_cb
    const-string v2, "parcel"

    .line 205
    .line 206
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    new-instance v2, Ly2/e;

    .line 210
    .line 211
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    iput-object v3, v2, Ly2/e;->a:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    iput-object v3, v2, Ly2/e;->b:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    iput-object v3, v2, Ly2/e;->c:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 233
    .line 234
    .line 235
    move-result-wide v3

    .line 236
    iput-wide v3, v2, Ly2/e;->d:J

    .line 237
    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 239
    .line 240
    .line 241
    move-result-wide v3

    .line 242
    iput-wide v3, v2, Ly2/e;->e:J

    .line 243
    .line 244
    return-object v2

    .line 245
    :pswitch_f4
    const-string v2, "source"

    .line 246
    .line 247
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    new-instance v2, Ly2/a;

    .line 251
    .line 252
    invoke-direct {v2, v1}, Ly2/a;-><init>(Landroid/os/Parcel;)V

    .line 253
    .line 254
    .line 255
    return-object v2

    .line 256
    :pswitch_ff
    const-string v2, "source"

    .line 257
    .line 258
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    new-instance v2, Lx1/f0;

    .line 262
    .line 263
    invoke-direct {v2, v1}, Lx1/f0;-><init>(Landroid/os/Parcel;)V

    .line 264
    .line 265
    .line 266
    return-object v2

    .line 267
    :pswitch_10a
    const-string v2, "source"

    .line 268
    .line 269
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    new-instance v2, Lx1/y;

    .line 273
    .line 274
    invoke-direct {v2, v1}, Lx1/y;-><init>(Landroid/os/Parcel;)V

    .line 275
    .line 276
    .line 277
    return-object v2

    .line 278
    :pswitch_115
    const-string v2, "parcel"

    .line 279
    .line 280
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    new-instance v3, Lx1/o;

    .line 284
    .line 285
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    const/4 v12, 0x0

    .line 314
    const/4 v13, 0x0

    .line 315
    const/4 v11, 0x0

    .line 316
    invoke-direct/range {v3 .. v13}, Lx1/o;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lx1/l;Z)V

    .line 317
    .line 318
    .line 319
    return-object v3

    .line 320
    :pswitch_13f
    const-string v2, "source"

    .line 321
    .line 322
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    new-instance v2, Lx1/i;

    .line 326
    .line 327
    invoke-direct {v2, v1}, Lx1/i;-><init>(Landroid/os/Parcel;)V

    .line 328
    .line 329
    .line 330
    return-object v2

    .line 331
    :pswitch_14a
    const-string v2, "source"

    .line 332
    .line 333
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    new-instance v2, Lx1/h;

    .line 337
    .line 338
    invoke-direct {v2, v1}, Lx1/h;-><init>(Landroid/os/Parcel;)V

    .line 339
    .line 340
    .line 341
    return-object v2

    .line 342
    :pswitch_155
    const-string v2, "source"

    .line 343
    .line 344
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    new-instance v2, Lx1/g;

    .line 348
    .line 349
    invoke-direct {v2, v1}, Lx1/g;-><init>(Landroid/os/Parcel;)V

    .line 350
    .line 351
    .line 352
    return-object v2

    .line 353
    :pswitch_160
    const-string v2, "source"

    .line 354
    .line 355
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    new-instance v2, Lx1/a;

    .line 359
    .line 360
    invoke-direct {v2, v1}, Lx1/a;-><init>(Landroid/os/Parcel;)V

    .line 361
    .line 362
    .line 363
    return-object v2

    .line 364
    :pswitch_16b
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    const/4 v3, 0x0

    .line 369
    const/4 v4, 0x0

    .line 370
    move-object v5, v3

    .line 371
    move v6, v4

    .line 372
    move-object v4, v5

    .line 373
    :goto_174
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 374
    .line 375
    .line 376
    move-result v7

    .line 377
    if-ge v7, v2, :cond_1ab

    .line 378
    .line 379
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    int-to-char v8, v7

    .line 384
    const/4 v9, 0x1

    .line 385
    if-eq v8, v9, :cond_1a6

    .line 386
    .line 387
    const/4 v9, 0x2

    .line 388
    if-eq v8, v9, :cond_1a1

    .line 389
    .line 390
    const/4 v9, 0x3

    .line 391
    if-eq v8, v9, :cond_198

    .line 392
    .line 393
    const/4 v9, 0x4

    .line 394
    if-eq v8, v9, :cond_18f

    .line 395
    .line 396
    invoke-static {v7, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 397
    .line 398
    .line 399
    goto :goto_174

    .line 400
    :cond_18f
    sget-object v5, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 401
    .line 402
    invoke-static {v1, v7, v5}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    check-cast v5, Lcom/google/android/gms/common/ConnectionResult;

    .line 407
    .line 408
    goto :goto_174

    .line 409
    :cond_198
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 410
    .line 411
    invoke-static {v1, v7, v4}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    check-cast v4, Landroid/app/PendingIntent;

    .line 416
    .line 417
    goto :goto_174

    .line 418
    :cond_1a1
    invoke-static {v7, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    goto :goto_174

    .line 423
    :cond_1a6
    invoke-static {v7, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 424
    .line 425
    .line 426
    move-result v6

    .line 427
    goto :goto_174

    .line 428
    :cond_1ab
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 429
    .line 430
    .line 431
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 432
    .line 433
    invoke-direct {v1, v6, v3, v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 434
    .line 435
    .line 436
    return-object v1

    .line 437
    :pswitch_1b4
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    const/4 v3, 0x0

    .line 442
    const/4 v4, 0x0

    .line 443
    :goto_1ba
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    if-ge v5, v2, :cond_1d9

    .line 448
    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    int-to-char v6, v5

    .line 454
    const/4 v7, 0x1

    .line 455
    if-eq v6, v7, :cond_1d4

    .line 456
    .line 457
    const/4 v7, 0x2

    .line 458
    if-eq v6, v7, :cond_1cf

    .line 459
    .line 460
    invoke-static {v5, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 461
    .line 462
    .line 463
    goto :goto_1ba

    .line 464
    :cond_1cf
    invoke-static {v5, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    goto :goto_1ba

    .line 469
    :cond_1d4
    invoke-static {v5, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    goto :goto_1ba

    .line 474
    :cond_1d9
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 475
    .line 476
    .line 477
    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    .line 478
    .line 479
    invoke-direct {v1, v4, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    .line 480
    .line 481
    .line 482
    return-object v1

    .line 483
    :pswitch_1e2
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    const/4 v3, 0x0

    .line 488
    const/4 v4, 0x0

    .line 489
    move v5, v3

    .line 490
    move-object v6, v4

    .line 491
    move v4, v5

    .line 492
    :goto_1eb
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 493
    .line 494
    .line 495
    move-result v7

    .line 496
    if-ge v7, v2, :cond_21a

    .line 497
    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 499
    .line 500
    .line 501
    move-result v7

    .line 502
    int-to-char v8, v7

    .line 503
    const/4 v9, 0x1

    .line 504
    if-eq v8, v9, :cond_215

    .line 505
    .line 506
    const/4 v9, 0x2

    .line 507
    if-eq v8, v9, :cond_210

    .line 508
    .line 509
    const/4 v9, 0x3

    .line 510
    if-eq v8, v9, :cond_20b

    .line 511
    .line 512
    const/4 v9, 0x4

    .line 513
    if-eq v8, v9, :cond_206

    .line 514
    .line 515
    invoke-static {v7, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 516
    .line 517
    .line 518
    goto :goto_1eb

    .line 519
    :cond_206
    invoke-static {v7, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 520
    .line 521
    .line 522
    move-result v5

    .line 523
    goto :goto_1eb

    .line 524
    :cond_20b
    invoke-static {v7, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 525
    .line 526
    .line 527
    move-result v4

    .line 528
    goto :goto_1eb

    .line 529
    :cond_210
    invoke-static {v7, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v6

    .line 533
    goto :goto_1eb

    .line 534
    :cond_215
    invoke-static {v7, v1}, Lj7/g;->n(ILandroid/os/Parcel;)Z

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    goto :goto_1eb

    .line 539
    :cond_21a
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 540
    .line 541
    .line 542
    new-instance v1, Lv3/p;

    .line 543
    .line 544
    invoke-direct {v1, v4, v5, v6, v3}, Lv3/p;-><init>(IILjava/lang/String;Z)V

    .line 545
    .line 546
    .line 547
    return-object v1

    .line 548
    :pswitch_223
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 549
    .line 550
    .line 551
    move-result v2

    .line 552
    const-wide/16 v3, -0x1

    .line 553
    .line 554
    const/4 v5, 0x0

    .line 555
    const/4 v6, 0x0

    .line 556
    :goto_22b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 557
    .line 558
    .line 559
    move-result v7

    .line 560
    if-ge v7, v2, :cond_252

    .line 561
    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 563
    .line 564
    .line 565
    move-result v7

    .line 566
    int-to-char v8, v7

    .line 567
    const/4 v9, 0x1

    .line 568
    if-eq v8, v9, :cond_24d

    .line 569
    .line 570
    const/4 v9, 0x2

    .line 571
    if-eq v8, v9, :cond_248

    .line 572
    .line 573
    const/4 v9, 0x3

    .line 574
    if-eq v8, v9, :cond_243

    .line 575
    .line 576
    invoke-static {v7, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 577
    .line 578
    .line 579
    goto :goto_22b

    .line 580
    :cond_243
    invoke-static {v7, v1}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 581
    .line 582
    .line 583
    move-result-wide v3

    .line 584
    goto :goto_22b

    .line 585
    :cond_248
    invoke-static {v7, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    goto :goto_22b

    .line 590
    :cond_24d
    invoke-static {v7, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v6

    .line 594
    goto :goto_22b

    .line 595
    :cond_252
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 596
    .line 597
    .line 598
    new-instance v1, Lv3/c;

    .line 599
    .line 600
    invoke-direct {v1, v6, v3, v4, v5}, Lv3/c;-><init>(Ljava/lang/String;JI)V

    .line 601
    .line 602
    .line 603
    return-object v1

    .line 604
    :pswitch_25b
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    const/4 v3, 0x0

    .line 609
    const/4 v4, 0x0

    .line 610
    move v5, v4

    .line 611
    move v6, v5

    .line 612
    move-object v4, v3

    .line 613
    :goto_264
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 614
    .line 615
    .line 616
    move-result v7

    .line 617
    if-ge v7, v2, :cond_297

    .line 618
    .line 619
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 620
    .line 621
    .line 622
    move-result v7

    .line 623
    int-to-char v8, v7

    .line 624
    const/4 v9, 0x1

    .line 625
    if-eq v8, v9, :cond_292

    .line 626
    .line 627
    const/4 v9, 0x2

    .line 628
    if-eq v8, v9, :cond_28d

    .line 629
    .line 630
    const/4 v9, 0x3

    .line 631
    if-eq v8, v9, :cond_284

    .line 632
    .line 633
    const/4 v9, 0x4

    .line 634
    if-eq v8, v9, :cond_27f

    .line 635
    .line 636
    invoke-static {v7, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 637
    .line 638
    .line 639
    goto :goto_264

    .line 640
    :cond_27f
    invoke-static {v7, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    goto :goto_264

    .line 645
    :cond_284
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 646
    .line 647
    invoke-static {v1, v7, v3}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    check-cast v3, Landroid/app/PendingIntent;

    .line 652
    .line 653
    goto :goto_264

    .line 654
    :cond_28d
    invoke-static {v7, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 655
    .line 656
    .line 657
    move-result v6

    .line 658
    goto :goto_264

    .line 659
    :cond_292
    invoke-static {v7, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 660
    .line 661
    .line 662
    move-result v5

    .line 663
    goto :goto_264

    .line 664
    :cond_297
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 665
    .line 666
    .line 667
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 668
    .line 669
    invoke-direct {v1, v5, v6, v3, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    return-object v1

    .line 673
    :pswitch_2a0
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    const/4 v3, 0x0

    .line 678
    const-wide/16 v4, 0x0

    .line 679
    .line 680
    const/4 v6, 0x0

    .line 681
    move-object v9, v3

    .line 682
    move-object v10, v9

    .line 683
    move-object v11, v10

    .line 684
    move-object v12, v11

    .line 685
    move-object v13, v12

    .line 686
    move-object v14, v13

    .line 687
    move-object/from16 v17, v14

    .line 688
    .line 689
    move-object/from16 v18, v17

    .line 690
    .line 691
    move-object/from16 v19, v18

    .line 692
    .line 693
    move-object/from16 v20, v19

    .line 694
    .line 695
    move-wide v15, v4

    .line 696
    move v8, v6

    .line 697
    :goto_2b8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 698
    .line 699
    .line 700
    move-result v4

    .line 701
    if-ge v4, v2, :cond_322

    .line 702
    .line 703
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 704
    .line 705
    .line 706
    move-result v4

    .line 707
    int-to-char v5, v4

    .line 708
    packed-switch v5, :pswitch_data_3e0

    .line 709
    .line 710
    .line 711
    invoke-static {v4, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 712
    .line 713
    .line 714
    goto :goto_2b8

    .line 715
    :pswitch_2ca
    invoke-static {v4, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v20

    .line 719
    goto :goto_2b8

    .line 720
    :pswitch_2cf
    invoke-static {v4, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v19

    .line 724
    goto :goto_2b8

    .line 725
    :pswitch_2d4
    sget-object v5, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 726
    .line 727
    invoke-static {v4, v1}, Lj7/g;->r(ILandroid/os/Parcel;)I

    .line 728
    .line 729
    .line 730
    move-result v4

    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 732
    .line 733
    .line 734
    move-result v6

    .line 735
    if-nez v4, :cond_2e3

    .line 736
    .line 737
    move-object/from16 v18, v3

    .line 738
    .line 739
    goto :goto_2b8

    .line 740
    :cond_2e3
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 741
    .line 742
    .line 743
    move-result-object v5

    .line 744
    add-int/2addr v6, v4

    .line 745
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 746
    .line 747
    .line 748
    move-object/from16 v18, v5

    .line 749
    .line 750
    goto :goto_2b8

    .line 751
    :pswitch_2ee
    invoke-static {v4, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v17

    .line 755
    goto :goto_2b8

    .line 756
    :pswitch_2f3
    invoke-static {v4, v1}, Lj7/g;->q(ILandroid/os/Parcel;)J

    .line 757
    .line 758
    .line 759
    move-result-wide v4

    .line 760
    move-wide v15, v4

    .line 761
    goto :goto_2b8

    .line 762
    :pswitch_2f9
    invoke-static {v4, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v14

    .line 766
    goto :goto_2b8

    .line 767
    :pswitch_2fe
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 768
    .line 769
    invoke-static {v1, v4, v5}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    move-object v13, v4

    .line 774
    check-cast v13, Landroid/net/Uri;

    .line 775
    .line 776
    goto :goto_2b8

    .line 777
    :pswitch_308
    invoke-static {v4, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v12

    .line 781
    goto :goto_2b8

    .line 782
    :pswitch_30d
    invoke-static {v4, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v11

    .line 786
    goto :goto_2b8

    .line 787
    :pswitch_312
    invoke-static {v4, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v10

    .line 791
    goto :goto_2b8

    .line 792
    :pswitch_317
    invoke-static {v4, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v9

    .line 796
    goto :goto_2b8

    .line 797
    :pswitch_31c
    invoke-static {v4, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 798
    .line 799
    .line 800
    move-result v4

    .line 801
    move v8, v4

    .line 802
    goto :goto_2b8

    .line 803
    :cond_322
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 804
    .line 805
    .line 806
    new-instance v7, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 807
    .line 808
    invoke-direct/range {v7 .. v20}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    return-object v7

    .line 812
    :pswitch_32b
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 813
    .line 814
    .line 815
    move-result v2

    .line 816
    const/4 v3, 0x0

    .line 817
    const/4 v4, 0x0

    .line 818
    move v5, v4

    .line 819
    move-object v4, v3

    .line 820
    :goto_333
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 821
    .line 822
    .line 823
    move-result v6

    .line 824
    if-ge v6, v2, :cond_362

    .line 825
    .line 826
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 827
    .line 828
    .line 829
    move-result v6

    .line 830
    int-to-char v7, v6

    .line 831
    const/4 v8, 0x1

    .line 832
    if-eq v7, v8, :cond_35d

    .line 833
    .line 834
    const/4 v8, 0x2

    .line 835
    if-eq v7, v8, :cond_354

    .line 836
    .line 837
    const/4 v8, 0x3

    .line 838
    if-eq v7, v8, :cond_34b

    .line 839
    .line 840
    invoke-static {v6, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 841
    .line 842
    .line 843
    goto :goto_333

    .line 844
    :cond_34b
    sget-object v4, Lcom/google/android/gms/common/internal/w;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 845
    .line 846
    invoke-static {v1, v6, v4}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    check-cast v4, Lcom/google/android/gms/common/internal/w;

    .line 851
    .line 852
    goto :goto_333

    .line 853
    :cond_354
    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 854
    .line 855
    invoke-static {v1, v6, v3}, Lj7/g;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 856
    .line 857
    .line 858
    move-result-object v3

    .line 859
    check-cast v3, Lcom/google/android/gms/common/ConnectionResult;

    .line 860
    .line 861
    goto :goto_333

    .line 862
    :cond_35d
    invoke-static {v6, v1}, Lj7/g;->p(ILandroid/os/Parcel;)I

    .line 863
    .line 864
    .line 865
    move-result v5

    .line 866
    goto :goto_333

    .line 867
    :cond_362
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 868
    .line 869
    .line 870
    new-instance v1, Ln4/f;

    .line 871
    .line 872
    invoke-direct {v1, v5, v3, v4}, Ln4/f;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/w;)V

    .line 873
    .line 874
    .line 875
    return-object v1

    .line 876
    :pswitch_36b
    invoke-static {v1}, Lj7/g;->u(Landroid/os/Parcel;)I

    .line 877
    .line 878
    .line 879
    move-result v2

    .line 880
    const/4 v3, 0x0

    .line 881
    move-object v4, v3

    .line 882
    move-object v5, v4

    .line 883
    :goto_372
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 884
    .line 885
    .line 886
    move-result v6

    .line 887
    if-ge v6, v2, :cond_3a2

    .line 888
    .line 889
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 890
    .line 891
    .line 892
    move-result v6

    .line 893
    int-to-char v7, v6

    .line 894
    const/4 v8, 0x1

    .line 895
    if-eq v7, v8, :cond_38c

    .line 896
    .line 897
    const/4 v8, 0x2

    .line 898
    if-eq v7, v8, :cond_387

    .line 899
    .line 900
    invoke-static {v6, v1}, Lj7/g;->s(ILandroid/os/Parcel;)V

    .line 901
    .line 902
    .line 903
    goto :goto_372

    .line 904
    :cond_387
    invoke-static {v6, v1}, Lj7/g;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v5

    .line 908
    goto :goto_372

    .line 909
    :cond_38c
    invoke-static {v6, v1}, Lj7/g;->r(ILandroid/os/Parcel;)I

    .line 910
    .line 911
    .line 912
    move-result v4

    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 914
    .line 915
    .line 916
    move-result v6

    .line 917
    if-nez v4, :cond_398

    .line 918
    .line 919
    move-object v4, v3

    .line 920
    goto :goto_372

    .line 921
    :cond_398
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 922
    .line 923
    .line 924
    move-result-object v7

    .line 925
    add-int/2addr v6, v4

    .line 926
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 927
    .line 928
    .line 929
    move-object v4, v7

    .line 930
    goto :goto_372

    .line 931
    :cond_3a2
    invoke-static {v2, v1}, Lj7/g;->i(ILandroid/os/Parcel;)V

    .line 932
    .line 933
    .line 934
    new-instance v1, Ln4/d;

    .line 935
    .line 936
    invoke-direct {v1, v5, v4}, Ln4/d;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 937
    .line 938
    .line 939
    return-object v1

    .line 940
    nop

    .line 941
    :pswitch_data_3ac
    .packed-switch 0x0
        :pswitch_36b
        :pswitch_32b
        :pswitch_2a0
        :pswitch_25b
        :pswitch_223
        :pswitch_1e2
        :pswitch_1b4
        :pswitch_16b
        :pswitch_160
        :pswitch_155
        :pswitch_14a
        :pswitch_13f
        :pswitch_115
        :pswitch_10a
        :pswitch_ff
        :pswitch_f4
        :pswitch_cb
        :pswitch_c0
        :pswitch_b5
        :pswitch_aa
        :pswitch_9f
        :pswitch_2a
        :pswitch_1f
        :pswitch_14
    .end packed-switch

    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    :pswitch_data_3e0
    .packed-switch 0x1
        :pswitch_31c
        :pswitch_317
        :pswitch_312
        :pswitch_30d
        :pswitch_308
        :pswitch_2fe
        :pswitch_2f9
        :pswitch_2f3
        :pswitch_2ee
        :pswitch_2d4
        :pswitch_2cf
        :pswitch_2ca
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Ln4/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_50

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Ly2/v;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_8
    new-array p1, p1, [Ly2/n;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_b
    new-array p1, p1, [Ly2/m;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_e
    new-array p1, p1, [Ly2/o;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_11
    new-array p1, p1, [Ly2/l;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_14
    new-array p1, p1, [Ly2/k;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_17
    new-array p1, p1, [Ly2/j;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_1a
    new-array p1, p1, [Ly2/h;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_1d
    new-array p1, p1, [Ly2/e;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_20
    new-array p1, p1, [Ly2/a;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_23
    new-array p1, p1, [Lx1/f0;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_26
    new-array p1, p1, [Lx1/y;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_29
    new-array p1, p1, [Lx1/o;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_2c
    new-array p1, p1, [Lx1/i;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_2f
    new-array p1, p1, [Lx1/h;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_32
    new-array p1, p1, [Lx1/g;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_35
    new-array p1, p1, [Lx1/a;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_38
    new-array p1, p1, [Lcom/google/android/gms/common/api/Status;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_3b
    new-array p1, p1, [Lcom/google/android/gms/common/api/Scope;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_3e
    new-array p1, p1, [Lv3/p;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_41
    new-array p1, p1, [Lv3/c;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_44
    new-array p1, p1, [Lcom/google/android/gms/common/ConnectionResult;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_47
    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_4a
    new-array p1, p1, [Ln4/f;

    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_4d
    new-array p1, p1, [Ln4/d;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
