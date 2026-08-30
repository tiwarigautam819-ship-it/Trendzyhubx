###### Class j0.a (j0.a)
.class public final Lj0/a;
.super Landroid/view/View$AccessibilityDelegate;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lj0/b;


# direct methods
.method public constructor <init>(Lj0/b;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj0/a;->a:Lj0/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lj0/a;->a:Lj0/b;

    .line 2
    .line 3
    iget-object v0, v0, Lj0/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 5

    .line 1
    iget-object v0, p0, Lj0/a;->a:Lj0/b;

    .line 2
    .line 3
    iget-object v0, v0, Lj0/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_13

    .line 11
    .line 12
    new-instance v1, Lo5/c;

    .line 13
    .line 14
    const/16 v2, 0xe

    .line 15
    .line 16
    invoke-direct {v1, v2, p1}, Lo5/c;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move-object v1, v0

    .line 21
    :goto_14
    if-eqz v1, :cond_1b

    .line 22
    .line 23
    iget-object p1, v1, Lo5/c;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_1b
    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lj0/a;->a:Lj0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lj0/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lk0/d;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Lk0/d;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/16 v5, 0x1c

    .line 16
    .line 17
    const-class v6, Ljava/lang/Boolean;

    .line 18
    .line 19
    if-lt v3, v5, :cond_1d

    .line 20
    .line 21
    invoke-static {v0}, Lj0/f0;->c(Landroid/view/View;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_2c

    .line 30
    :cond_1d
    const v3, 0x7f0900dd

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v6, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_2b

    .line 42
    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move-object v3, v4

    .line 45
    :goto_2c
    check-cast v3, Ljava/lang/Boolean;

    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x1

    .line 49
    if-eqz v3, :cond_3a

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3a

    .line 56
    .line 57
    move v3, v8

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move v3, v7

    .line 60
    :goto_3b
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY"

    .line 63
    .line 64
    if-lt v9, v5, :cond_45

    .line 65
    .line 66
    invoke-static {v1, v3}, Lh0/a;->r(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_55

    .line 70
    :cond_45
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    if-eqz v11, :cond_55

    .line 75
    .line 76
    invoke-virtual {v11, v10, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    and-int/lit8 v12, v12, -0x2

    .line 81
    .line 82
    or-int/2addr v3, v12

    .line 83
    invoke-virtual {v11, v10, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    :cond_55
    :goto_55
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    .line 88
    if-lt v3, v5, :cond_62

    .line 89
    .line 90
    invoke-static {v0}, Lj0/f0;->b(Landroid/view/View;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    goto :goto_71

    .line 99
    :cond_62
    const v3, 0x7f0900d8

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v6, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_70

    .line 111
    .line 112
    goto :goto_71

    .line 113
    :cond_70
    move-object v3, v4

    .line 114
    :goto_71
    check-cast v3, Ljava/lang/Boolean;

    .line 115
    .line 116
    if-eqz v3, :cond_7c

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_7c

    .line 123
    .line 124
    goto :goto_7d

    .line 125
    :cond_7c
    move v8, v7

    .line 126
    :goto_7d
    if-lt v9, v5, :cond_83

    .line 127
    .line 128
    invoke-static {v1, v8}, Lh0/a;->w(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 129
    .line 130
    .line 131
    goto :goto_98

    .line 132
    :cond_83
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    if-eqz v3, :cond_98

    .line 137
    .line 138
    invoke-virtual {v3, v10, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    and-int/lit8 v6, v6, -0x3

    .line 143
    .line 144
    if-eqz v8, :cond_93

    .line 145
    .line 146
    const/4 v8, 0x2

    .line 147
    goto :goto_94

    .line 148
    :cond_93
    move v8, v7

    .line 149
    :goto_94
    or-int/2addr v6, v8

    .line 150
    invoke-virtual {v3, v10, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    :cond_98
    :goto_98
    const-class v3, Ljava/lang/CharSequence;

    .line 154
    .line 155
    if-lt v9, v5, :cond_a1

    .line 156
    .line 157
    invoke-static {v0}, Lj0/f0;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    goto :goto_b0

    .line 162
    :cond_a1
    const v6, 0x7f0900d9

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_af

    .line 174
    .line 175
    goto :goto_b0

    .line 176
    :cond_af
    move-object v6, v4

    .line 177
    :goto_b0
    check-cast v6, Ljava/lang/CharSequence;

    .line 178
    .line 179
    if-lt v9, v5, :cond_b8

    .line 180
    .line 181
    invoke-static {v1, v6}, Lh0/a;->q(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    goto :goto_c1

    .line 185
    :cond_b8
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    const-string v8, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    .line 190
    .line 191
    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    :goto_c1
    const/16 v5, 0x1e

    .line 195
    .line 196
    if-lt v9, v5, :cond_ca

    .line 197
    .line 198
    invoke-static {v0}, Lj0/h0;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    goto :goto_da

    .line 203
    :cond_ca
    const v6, 0x7f0900de

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-virtual {v3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_d9

    .line 215
    .line 216
    move-object v3, v6

    .line 217
    goto :goto_da

    .line 218
    :cond_d9
    move-object v3, v4

    .line 219
    :goto_da
    check-cast v3, Ljava/lang/CharSequence;

    .line 220
    .line 221
    if-lt v9, v5, :cond_e4

    .line 222
    .line 223
    invoke-static {v1, v3}, Ld0/b;->f(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    :goto_e1
    move-object/from16 v3, p0

    .line 227
    .line 228
    goto :goto_ee

    .line 229
    :cond_e4
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 234
    .line 235
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    goto :goto_e1

    .line 239
    :goto_ee
    iget-object v5, v3, Lj0/a;->a:Lj0/b;

    .line 240
    .line 241
    invoke-virtual {v5, v0, v2}, Lj0/b;->b(Landroid/view/View;Lk0/d;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    const/16 v6, 0x1a

    .line 249
    .line 250
    if-ge v9, v6, :cond_20f

    .line 251
    .line 252
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    const-string v8, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 257
    .line 258
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 266
    .line 267
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    const-string v10, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 275
    .line 276
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    const-string v11, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 284
    .line 285
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    const v6, 0x7f0900d7

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    check-cast v12, Landroid/util/SparseArray;

    .line 296
    .line 297
    if-eqz v12, :cond_163

    .line 298
    .line 299
    new-instance v13, Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .line 303
    .line 304
    move v14, v7

    .line 305
    :goto_130
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 306
    .line 307
    .line 308
    move-result v15

    .line 309
    if-ge v14, v15, :cond_14c

    .line 310
    .line 311
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v15

    .line 315
    check-cast v15, Ljava/lang/ref/WeakReference;

    .line 316
    .line 317
    invoke-virtual {v15}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v15

    .line 321
    if-nez v15, :cond_149

    .line 322
    .line 323
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v15

    .line 327
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    :cond_149
    add-int/lit8 v14, v14, 0x1

    .line 331
    .line 332
    goto :goto_130

    .line 333
    :cond_14c
    move v14, v7

    .line 334
    :goto_14d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 335
    .line 336
    .line 337
    move-result v15

    .line 338
    if-ge v14, v15, :cond_163

    .line 339
    .line 340
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v15

    .line 344
    check-cast v15, Ljava/lang/Integer;

    .line 345
    .line 346
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result v15

    .line 350
    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->remove(I)V

    .line 351
    .line 352
    .line 353
    add-int/lit8 v14, v14, 0x1

    .line 354
    .line 355
    goto :goto_14d

    .line 356
    :cond_163
    instance-of v12, v5, Landroid/text/Spanned;

    .line 357
    .line 358
    if-eqz v12, :cond_176

    .line 359
    .line 360
    move-object v4, v5

    .line 361
    check-cast v4, Landroid/text/Spanned;

    .line 362
    .line 363
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 364
    .line 365
    .line 366
    move-result v12

    .line 367
    const-class v13, Landroid/text/style/ClickableSpan;

    .line 368
    .line 369
    invoke-interface {v4, v7, v12, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    check-cast v4, [Landroid/text/style/ClickableSpan;

    .line 374
    .line 375
    :cond_176
    if-eqz v4, :cond_20f

    .line 376
    .line 377
    array-length v12, v4

    .line 378
    if-lez v12, :cond_20f

    .line 379
    .line 380
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    const-string v12, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    .line 385
    .line 386
    const v13, 0x7f090006

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v12, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    check-cast v1, Landroid/util/SparseArray;

    .line 397
    .line 398
    if-nez v1, :cond_197

    .line 399
    .line 400
    new-instance v1, Landroid/util/SparseArray;

    .line 401
    .line 402
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    :cond_197
    move v6, v7

    .line 409
    :goto_198
    array-length v12, v4

    .line 410
    if-ge v6, v12, :cond_20f

    .line 411
    .line 412
    aget-object v12, v4, v6

    .line 413
    .line 414
    move v13, v7

    .line 415
    :goto_19e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 416
    .line 417
    .line 418
    move-result v14

    .line 419
    if-ge v13, v14, :cond_1be

    .line 420
    .line 421
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v14

    .line 425
    check-cast v14, Ljava/lang/ref/WeakReference;

    .line 426
    .line 427
    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v14

    .line 431
    check-cast v14, Landroid/text/style/ClickableSpan;

    .line 432
    .line 433
    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v14

    .line 437
    if-eqz v14, :cond_1bb

    .line 438
    .line 439
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 440
    .line 441
    .line 442
    move-result v12

    .line 443
    goto :goto_1c4

    .line 444
    :cond_1bb
    add-int/lit8 v13, v13, 0x1

    .line 445
    .line 446
    goto :goto_19e

    .line 447
    :cond_1be
    sget v12, Lk0/d;->b:I

    .line 448
    .line 449
    add-int/lit8 v13, v12, 0x1

    .line 450
    .line 451
    sput v13, Lk0/d;->b:I

    .line 452
    .line 453
    :goto_1c4
    new-instance v13, Ljava/lang/ref/WeakReference;

    .line 454
    .line 455
    aget-object v14, v4, v6

    .line 456
    .line 457
    invoke-direct {v13, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    .line 462
    .line 463
    aget-object v13, v4, v6

    .line 464
    .line 465
    move-object v14, v5

    .line 466
    check-cast v14, Landroid/text/Spanned;

    .line 467
    .line 468
    invoke-virtual {v2, v8}, Lk0/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 469
    .line 470
    .line 471
    move-result-object v15

    .line 472
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 473
    .line 474
    .line 475
    move-result v16

    .line 476
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2, v9}, Lk0/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 488
    .line 489
    .line 490
    move-result v15

    .line 491
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v15

    .line 495
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2, v10}, Lk0/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    invoke-interface {v14, v13}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 503
    .line 504
    .line 505
    move-result v13

    .line 506
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v13

    .line 510
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2, v11}, Lk0/d;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 518
    .line 519
    .line 520
    move-result-object v12

    .line 521
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    add-int/lit8 v6, v6, 0x1

    .line 525
    .line 526
    const/4 v7, 0x0

    .line 527
    goto :goto_198

    .line 528
    :cond_20f
    const v1, 0x7f0900d6

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    check-cast v0, Ljava/util/List;

    .line 536
    .line 537
    if-nez v0, :cond_21c

    .line 538
    .line 539
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 540
    .line 541
    :cond_21c
    const/4 v7, 0x0

    .line 542
    :goto_21d
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    if-ge v7, v1, :cond_235

    .line 547
    .line 548
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    check-cast v1, Lk0/c;

    .line 553
    .line 554
    iget-object v1, v1, Lk0/c;->a:Ljava/lang/Object;

    .line 555
    .line 556
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 557
    .line 558
    iget-object v4, v2, Lk0/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 559
    .line 560
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 561
    .line 562
    .line 563
    add-int/lit8 v7, v7, 0x1

    .line 564
    .line 565
    goto :goto_21d

    .line 566
    :cond_235
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lj0/a;->a:Lj0/b;

    .line 2
    .line 3
    iget-object v0, v0, Lj0/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lj0/a;->a:Lj0/b;

    .line 2
    .line 3
    iget-object v0, v0, Lj0/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lj0/a;->a:Lj0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lj0/b;->c(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lj0/a;->a:Lj0/b;

    .line 2
    .line 3
    iget-object v0, v0, Lj0/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lj0/a;->a:Lj0/b;

    .line 2
    .line 3
    iget-object v0, v0, Lj0/b;->a:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
