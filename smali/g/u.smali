###### Class g.u (g.u)
.class public final Lg/u;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lj0/r;
.implements Ll/y;


# instance fields
.field public final synthetic a:Lg/f0;


# direct methods
.method public synthetic constructor <init>(Lg/f0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lg/u;->a:Lg/f0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Ll/n;Z)V
    .registers 3

    .line 1
    iget-object p2, p0, Lg/u;->a:Lg/f0;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lg/f0;->s(Ll/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Landroid/view/View;Lj0/b1;)Lj0/b1;
    .registers 22

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    invoke-virtual {v2}, Lj0/b1;->d()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    move-object/from16 v4, p0

    .line 10
    .line 11
    iget-object v5, v4, Lg/u;->a:Lg/f0;

    .line 12
    .line 13
    iget-object v6, v5, Lg/f0;->k:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v2}, Lj0/b1;->d()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    iget-object v0, v5, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 20
    .line 21
    const/16 v8, 0x1d

    .line 22
    .line 23
    if-eqz v0, :cond_193

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 30
    .line 31
    if-eqz v0, :cond_193

    .line 32
    .line 33
    iget-object v0, v5, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v11, v0

    .line 40
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 41
    .line 42
    iget-object v0, v5, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v12, 0x1

    .line 49
    if-eqz v0, :cond_178

    .line 50
    .line 51
    iget-object v0, v5, Lg/f0;->k0:Landroid/graphics/Rect;

    .line 52
    .line 53
    if-nez v0, :cond_44

    .line 54
    .line 55
    new-instance v0, Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, v5, Lg/f0;->k0:Landroid/graphics/Rect;

    .line 61
    .line 62
    new-instance v0, Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, v5, Lg/f0;->l0:Landroid/graphics/Rect;

    .line 68
    .line 69
    :cond_44
    iget-object v13, v5, Lg/f0;->k0:Landroid/graphics/Rect;

    .line 70
    .line 71
    iget-object v0, v5, Lg/f0;->l0:Landroid/graphics/Rect;

    .line 72
    .line 73
    invoke-virtual {v2}, Lj0/b1;->b()I

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    invoke-virtual {v2}, Lj0/b1;->d()I

    .line 78
    .line 79
    .line 80
    move-result v15

    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    invoke-virtual {v2}, Lj0/b1;->c()I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    invoke-virtual {v2}, Lj0/b1;->a()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    invoke-virtual {v13, v14, v15, v10, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    .line 93
    .line 94
    iget-object v9, v5, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 95
    .line 96
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    if-lt v10, v8, :cond_6b

    .line 99
    .line 100
    sget-boolean v10, Lm/l3;->a:Z

    .line 101
    .line 102
    invoke-static {v9, v13, v0}, Lm/k3;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 103
    .line 104
    .line 105
    move/from16 v17, v12

    .line 106
    .line 107
    goto :goto_b8

    .line 108
    :cond_6b
    sget-boolean v10, Lm/l3;->a:Z

    .line 109
    .line 110
    const/4 v14, 0x2

    .line 111
    const-string v15, "ViewUtils"

    .line 112
    .line 113
    if-nez v10, :cond_9b

    .line 114
    .line 115
    sput-boolean v12, Lm/l3;->a:Z

    .line 116
    .line 117
    :try_start_74
    const-class v10, Landroid/view/View;

    .line 118
    .line 119
    const-string v8, "computeFitSystemWindows"

    .line 120
    .line 121
    move/from16 v17, v12

    .line 122
    .line 123
    new-array v12, v14, [Ljava/lang/Class;

    .line 124
    .line 125
    const-class v18, Landroid/graphics/Rect;

    .line 126
    .line 127
    aput-object v18, v12, v16

    .line 128
    .line 129
    aput-object v18, v12, v17

    .line 130
    .line 131
    invoke-virtual {v10, v8, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    sput-object v8, Lm/l3;->b:Ljava/lang/reflect/Method;

    .line 136
    .line 137
    invoke-virtual {v8}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-nez v8, :cond_9b

    .line 142
    .line 143
    sget-object v8, Lm/l3;->b:Ljava/lang/reflect/Method;

    .line 144
    .line 145
    move/from16 v10, v17

    .line 146
    .line 147
    invoke-virtual {v8, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_95
    .catch Ljava/lang/NoSuchMethodException; {:try_start_74 .. :try_end_95} :catch_96

    .line 148
    .line 149
    .line 150
    goto :goto_9b

    .line 151
    :catch_96
    const-string v8, "Could not find method computeFitSystemWindows. Oh well."

    .line 152
    .line 153
    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    :cond_9b
    :goto_9b
    sget-object v8, Lm/l3;->b:Ljava/lang/reflect/Method;

    .line 157
    .line 158
    if-eqz v8, :cond_b6

    .line 159
    .line 160
    :try_start_9f
    new-array v10, v14, [Ljava/lang/Object;

    .line 161
    .line 162
    aput-object v13, v10, v16
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a3} :catch_ad

    .line 163
    .line 164
    const/16 v17, 0x1

    .line 165
    .line 166
    :try_start_a5
    aput-object v0, v10, v17

    .line 167
    .line 168
    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_aa} :catch_ab

    .line 169
    .line 170
    .line 171
    goto :goto_b8

    .line 172
    :catch_ab
    move-exception v0

    .line 173
    goto :goto_b0

    .line 174
    :catch_ad
    move-exception v0

    .line 175
    const/16 v17, 0x1

    .line 176
    .line 177
    :goto_b0
    const-string v8, "Could not invoke computeFitSystemWindows"

    .line 178
    .line 179
    invoke-static {v15, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .line 181
    .line 182
    goto :goto_b8

    .line 183
    :cond_b6
    const/16 v17, 0x1

    .line 184
    .line 185
    :goto_b8
    iget v0, v13, Landroid/graphics/Rect;->top:I

    .line 186
    .line 187
    iget v8, v13, Landroid/graphics/Rect;->left:I

    .line 188
    .line 189
    iget v9, v13, Landroid/graphics/Rect;->right:I

    .line 190
    .line 191
    iget-object v10, v5, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 192
    .line 193
    sget-object v12, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 194
    .line 195
    invoke-static {v10}, Lj0/e0;->a(Landroid/view/View;)Lj0/b1;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    if-nez v10, :cond_cb

    .line 200
    .line 201
    move/from16 v12, v16

    .line 202
    .line 203
    goto :goto_cf

    .line 204
    :cond_cb
    invoke-virtual {v10}, Lj0/b1;->b()I

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    :goto_cf
    if-nez v10, :cond_d4

    .line 209
    .line 210
    move/from16 v10, v16

    .line 211
    .line 212
    goto :goto_d8

    .line 213
    :cond_d4
    invoke-virtual {v10}, Lj0/b1;->c()I

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    :goto_d8
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 218
    .line 219
    if-ne v13, v0, :cond_e8

    .line 220
    .line 221
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 222
    .line 223
    if-ne v13, v8, :cond_e8

    .line 224
    .line 225
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 226
    .line 227
    if-eq v13, v9, :cond_e5

    .line 228
    .line 229
    goto :goto_e8

    .line 230
    :cond_e5
    move/from16 v8, v16

    .line 231
    .line 232
    goto :goto_f0

    .line 233
    :cond_e8
    :goto_e8
    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 234
    .line 235
    iput v8, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 236
    .line 237
    iput v9, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 238
    .line 239
    move/from16 v8, v17

    .line 240
    .line 241
    :goto_f0
    if-lez v0, :cond_118

    .line 242
    .line 243
    iget-object v0, v5, Lg/f0;->K:Landroid/view/View;

    .line 244
    .line 245
    if-nez v0, :cond_118

    .line 246
    .line 247
    new-instance v0, Landroid/view/View;

    .line 248
    .line 249
    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 250
    .line 251
    .line 252
    iput-object v0, v5, Lg/f0;->K:Landroid/view/View;

    .line 253
    .line 254
    const/16 v9, 0x8

    .line 255
    .line 256
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 260
    .line 261
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 262
    .line 263
    const/16 v14, 0x33

    .line 264
    .line 265
    const/4 v15, -0x1

    .line 266
    invoke-direct {v0, v15, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 267
    .line 268
    .line 269
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 270
    .line 271
    iput v10, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 272
    .line 273
    iget-object v10, v5, Lg/f0;->I:Landroid/view/ViewGroup;

    .line 274
    .line 275
    iget-object v12, v5, Lg/f0;->K:Landroid/view/View;

    .line 276
    .line 277
    invoke-virtual {v10, v12, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .line 279
    .line 280
    goto :goto_13d

    .line 281
    :cond_118
    const/16 v9, 0x8

    .line 282
    .line 283
    iget-object v0, v5, Lg/f0;->K:Landroid/view/View;

    .line 284
    .line 285
    if-eqz v0, :cond_13d

    .line 286
    .line 287
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 292
    .line 293
    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 294
    .line 295
    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 296
    .line 297
    if-ne v13, v14, :cond_132

    .line 298
    .line 299
    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 300
    .line 301
    if-ne v13, v12, :cond_132

    .line 302
    .line 303
    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 304
    .line 305
    if-eq v13, v10, :cond_13d

    .line 306
    .line 307
    :cond_132
    iput v14, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 308
    .line 309
    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 310
    .line 311
    iput v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 312
    .line 313
    iget-object v10, v5, Lg/f0;->K:Landroid/view/View;

    .line 314
    .line 315
    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    .line 317
    .line 318
    :cond_13d
    :goto_13d
    iget-object v0, v5, Lg/f0;->K:Landroid/view/View;

    .line 319
    .line 320
    if-eqz v0, :cond_144

    .line 321
    .line 322
    move/from16 v12, v17

    .line 323
    .line 324
    goto :goto_146

    .line 325
    :cond_144
    move/from16 v12, v16

    .line 326
    .line 327
    :goto_146
    if-eqz v12, :cond_16a

    .line 328
    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_16a

    .line 334
    .line 335
    iget-object v0, v5, Lg/f0;->K:Landroid/view/View;

    .line 336
    .line 337
    invoke-virtual {v0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    and-int/lit16 v10, v10, 0x2000

    .line 342
    .line 343
    if-eqz v10, :cond_160

    .line 344
    .line 345
    const v10, 0x7f060006

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    goto :goto_167

    .line 353
    :cond_160
    const v10, 0x7f060005

    .line 354
    .line 355
    .line 356
    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    :goto_167
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 361
    .line 362
    .line 363
    :cond_16a
    iget-boolean v0, v5, Lg/f0;->P:Z

    .line 364
    .line 365
    if-nez v0, :cond_172

    .line 366
    .line 367
    if-eqz v12, :cond_172

    .line 368
    .line 369
    move/from16 v7, v16

    .line 370
    .line 371
    :cond_172
    move/from16 v17, v8

    .line 372
    .line 373
    move v0, v12

    .line 374
    move/from16 v12, v16

    .line 375
    .line 376
    goto :goto_18b

    .line 377
    :cond_178
    move/from16 v17, v12

    .line 378
    .line 379
    const/16 v9, 0x8

    .line 380
    .line 381
    const/16 v16, 0x0

    .line 382
    .line 383
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 384
    .line 385
    move/from16 v12, v16

    .line 386
    .line 387
    if-eqz v0, :cond_188

    .line 388
    .line 389
    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 390
    .line 391
    move v0, v12

    .line 392
    goto :goto_18b

    .line 393
    :cond_188
    move v0, v12

    .line 394
    move/from16 v17, v0

    .line 395
    .line 396
    :goto_18b
    if-eqz v17, :cond_197

    .line 397
    .line 398
    iget-object v6, v5, Lg/f0;->D:Landroidx/appcompat/widget/ActionBarContextView;

    .line 399
    .line 400
    invoke-virtual {v6, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    .line 402
    .line 403
    goto :goto_197

    .line 404
    :cond_193
    const/16 v9, 0x8

    .line 405
    .line 406
    const/4 v12, 0x0

    .line 407
    move v0, v12

    .line 408
    :cond_197
    :goto_197
    iget-object v5, v5, Lg/f0;->K:Landroid/view/View;

    .line 409
    .line 410
    if-eqz v5, :cond_1a1

    .line 411
    .line 412
    if-eqz v0, :cond_19e

    .line 413
    .line 414
    move v9, v12

    .line 415
    :cond_19e
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 416
    .line 417
    .line 418
    :cond_1a1
    if-eq v3, v7, :cond_1d6

    .line 419
    .line 420
    invoke-virtual {v2}, Lj0/b1;->b()I

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    invoke-virtual {v2}, Lj0/b1;->c()I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    invoke-virtual {v2}, Lj0/b1;->a()I

    .line 429
    .line 430
    .line 431
    move-result v5

    .line 432
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 433
    .line 434
    const/16 v8, 0x1e

    .line 435
    .line 436
    if-lt v6, v8, :cond_1bb

    .line 437
    .line 438
    new-instance v6, Lj0/s0;

    .line 439
    .line 440
    invoke-direct {v6, v2}, Lj0/s0;-><init>(Lj0/b1;)V

    .line 441
    .line 442
    .line 443
    goto :goto_1ca

    .line 444
    :cond_1bb
    const/16 v8, 0x1d

    .line 445
    .line 446
    if-lt v6, v8, :cond_1c5

    .line 447
    .line 448
    new-instance v6, Lj0/r0;

    .line 449
    .line 450
    invoke-direct {v6, v2}, Lj0/r0;-><init>(Lj0/b1;)V

    .line 451
    .line 452
    .line 453
    goto :goto_1ca

    .line 454
    :cond_1c5
    new-instance v6, Lj0/q0;

    .line 455
    .line 456
    invoke-direct {v6, v2}, Lj0/q0;-><init>(Lj0/b1;)V

    .line 457
    .line 458
    .line 459
    :goto_1ca
    invoke-static {v0, v7, v3, v5}, Lc0/c;->a(IIII)Lc0/c;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v6, v0}, Lj0/t0;->d(Lc0/c;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v6}, Lj0/t0;->b()Lj0/b1;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    goto :goto_1d7

    .line 471
    :cond_1d6
    move-object v0, v2

    .line 472
    :goto_1d7
    sget-object v2, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 473
    .line 474
    invoke-virtual {v0}, Lj0/b1;->f()Landroid/view/WindowInsets;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    if-eqz v2, :cond_1ed

    .line 479
    .line 480
    invoke-static {v1, v2}, Lj0/b0;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    invoke-virtual {v3, v2}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    if-nez v2, :cond_1ed

    .line 489
    .line 490
    invoke-static {v3, v1}, Lj0/b1;->g(Landroid/view/WindowInsets;Landroid/view/View;)Lj0/b1;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    :cond_1ed
    return-object v0
.end method

.method public f(Ll/n;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lg/u;->a:Lg/f0;

    .line 2
    .line 3
    iget-object v0, v0, Lg/f0;->l:Landroid/view/Window;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_f

    .line 10
    .line 11
    const/16 v1, 0x6c

    .line 12
    .line 13
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 14
    .line 15
    .line 16
    :cond_f
    const/4 p1, 0x1

    .line 17
    return p1
.end method
