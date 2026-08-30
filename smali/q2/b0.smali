###### Class q2.b0 (q2.b0)
.class public final Lq2/b0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lq2/b0;

.field public static final b:Ljava/util/ArrayList;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 26

    .line 1
    new-instance v1, Lq2/b0;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v1, Lq2/b0;->a:Lq2/b0;

    .line 7
    .line 8
    invoke-virtual {v1}, Lq2/b0;->a()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lq2/b0;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v0, :cond_17

    .line 22
    .line 23
    goto :goto_31

    .line 24
    :cond_17
    :try_start_17
    new-instance v0, Lq2/a0;

    .line 25
    .line 26
    invoke-direct {v0, v3}, Lq2/a0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-array v5, v2, [Lq2/a0;

    .line 30
    .line 31
    aput-object v0, v5, v3

    .line 32
    .line 33
    invoke-static {v5}, Ls6/h;->i([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1}, Lq2/b0;->a()Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_2d

    .line 42
    .line 43
    .line 44
    move-object v4, v0

    .line 45
    goto :goto_31

    .line 46
    :catchall_2d
    move-exception v0

    .line 47
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :goto_31
    sget-object v1, Lq2/b0;->a:Lq2/b0;

    .line 51
    .line 52
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v5, 0x3

    .line 57
    if-eqz v0, :cond_3b

    .line 58
    .line 59
    goto :goto_7c

    .line 60
    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v6, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v7, Lq2/a0;

    .line 71
    .line 72
    invoke-direct {v7, v5}, Lq2/a0;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const-string v7, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    .line 79
    .line 80
    sget-object v8, Lq2/b0;->b:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string v7, "com.facebook.platform.action.request.FEED_DIALOG"

    .line 86
    .line 87
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v7, "com.facebook.platform.action.request.LIKE_DIALOG"

    .line 91
    .line 92
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string v7, "com.facebook.platform.action.request.APPINVITES_DIALOG"

    .line 96
    .line 97
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const-string v7, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    .line 101
    .line 102
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const-string v7, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

    .line 106
    .line 107
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const-string v6, "com.facebook.platform.action.request.CAMERA_EFFECT"

    .line 111
    .line 112
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    const-string v4, "com.facebook.platform.action.request.SHARE_STORY"

    .line 116
    .line 117
    invoke-virtual {v0, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catchall {:try_start_3b .. :try_end_77} :catchall_78

    .line 118
    .line 119
    .line 120
    goto :goto_7c

    .line 121
    :catchall_78
    move-exception v0

    .line 122
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :goto_7c
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    .line 127
    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 128
    .line 129
    .line 130
    sput-object v0, Lq2/b0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    .line 132
    const v0, 0x13464da

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const v1, 0x133c96b

    .line 140
    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const v4, 0x133c6b1

    .line 147
    .line 148
    .line 149
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    const v6, 0x133c6ab

    .line 154
    .line 155
    .line 156
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    const v7, 0x133c5e5

    .line 161
    .line 162
    .line 163
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    const v8, 0x133a1f9

    .line 168
    .line 169
    .line 170
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    const v9, 0x1339f47

    .line 175
    .line 176
    .line 177
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    const v10, 0x13379ae

    .line 182
    .line 183
    .line 184
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    const v11, 0x1337881

    .line 189
    .line 190
    .line 191
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    const v12, 0x13354a2

    .line 196
    .line 197
    .line 198
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    const v13, 0x1335433

    .line 203
    .line 204
    .line 205
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    const v14, 0x13353e4

    .line 210
    .line 211
    .line 212
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    const v15, 0x13353c9

    .line 217
    .line 218
    .line 219
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v15

    .line 223
    const v16, 0x133529d

    .line 224
    .line 225
    .line 226
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v16

    .line 230
    const v17, 0x1335124

    .line 231
    .line 232
    .line 233
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v17

    .line 237
    const v18, 0x1335119

    .line 238
    .line 239
    .line 240
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v18

    .line 244
    const v19, 0x13350ac

    .line 245
    .line 246
    .line 247
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v19

    .line 251
    const v20, 0x1332d23

    .line 252
    .line 253
    .line 254
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v20

    .line 258
    const v21, 0x1332cd0

    .line 259
    .line 260
    .line 261
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v21

    .line 265
    const v22, 0x1332b3a

    .line 266
    .line 267
    .line 268
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v22

    .line 272
    const v23, 0x1332ac6

    .line 273
    .line 274
    .line 275
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v23

    .line 279
    const v24, 0x133060d

    .line 280
    .line 281
    .line 282
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v24

    .line 286
    move/from16 v25, v2

    .line 287
    .line 288
    const/16 v2, 0x16

    .line 289
    .line 290
    new-array v2, v2, [Ljava/lang/Integer;

    .line 291
    .line 292
    aput-object v0, v2, v3

    .line 293
    .line 294
    aput-object v1, v2, v25

    .line 295
    .line 296
    const/4 v0, 0x2

    .line 297
    aput-object v4, v2, v0

    .line 298
    .line 299
    aput-object v6, v2, v5

    .line 300
    .line 301
    const/4 v0, 0x4

    .line 302
    aput-object v7, v2, v0

    .line 303
    .line 304
    const/4 v0, 0x5

    .line 305
    aput-object v8, v2, v0

    .line 306
    .line 307
    const/4 v0, 0x6

    .line 308
    aput-object v9, v2, v0

    .line 309
    .line 310
    const/4 v0, 0x7

    .line 311
    aput-object v10, v2, v0

    .line 312
    .line 313
    const/16 v0, 0x8

    .line 314
    .line 315
    aput-object v11, v2, v0

    .line 316
    .line 317
    const/16 v0, 0x9

    .line 318
    .line 319
    aput-object v12, v2, v0

    .line 320
    .line 321
    const/16 v0, 0xa

    .line 322
    .line 323
    aput-object v13, v2, v0

    .line 324
    .line 325
    const/16 v0, 0xb

    .line 326
    .line 327
    aput-object v14, v2, v0

    .line 328
    .line 329
    const/16 v0, 0xc

    .line 330
    .line 331
    aput-object v15, v2, v0

    .line 332
    .line 333
    const/16 v0, 0xd

    .line 334
    .line 335
    aput-object v16, v2, v0

    .line 336
    .line 337
    const/16 v0, 0xe

    .line 338
    .line 339
    aput-object v17, v2, v0

    .line 340
    .line 341
    const/16 v0, 0xf

    .line 342
    .line 343
    aput-object v18, v2, v0

    .line 344
    .line 345
    const/16 v0, 0x10

    .line 346
    .line 347
    aput-object v19, v2, v0

    .line 348
    .line 349
    const/16 v0, 0x11

    .line 350
    .line 351
    aput-object v20, v2, v0

    .line 352
    .line 353
    const/16 v0, 0x12

    .line 354
    .line 355
    aput-object v21, v2, v0

    .line 356
    .line 357
    const/16 v0, 0x13

    .line 358
    .line 359
    aput-object v22, v2, v0

    .line 360
    .line 361
    const/16 v0, 0x14

    .line 362
    .line 363
    aput-object v23, v2, v0

    .line 364
    .line 365
    const/16 v0, 0x15

    .line 366
    .line 367
    aput-object v24, v2, v0

    .line 368
    .line 369
    sput-object v2, Lq2/b0;->d:[Ljava/lang/Integer;

    .line 370
    .line 371
    return-void
.end method

.method public static final b(Ljava/util/TreeSet;I[I)I
    .registers 11

    .line 1
    const-class v0, Lq2/b0;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    const/4 v1, -0x1

    .line 12
    if-nez p0, :cond_e

    .line 13
    .line 14
    goto :goto_52

    .line 15
    :cond_e
    :try_start_e
    array-length v3, p2

    .line 16
    add-int/lit8 v3, v3, -0x1

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/TreeSet;->descendingIterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    move v4, v1

    .line 23
    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_52

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Ljava/lang/Integer;

    .line 34
    .line 35
    const-string v6, "fbAppVersion"

    .line 36
    .line 37
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    :goto_2f
    if-ltz v3, :cond_3e

    .line 49
    .line 50
    aget v6, p2, v3

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-le v6, v7, :cond_3e

    .line 57
    .line 58
    add-int/lit8 v3, v3, -0x1

    .line 59
    .line 60
    goto :goto_2f

    .line 61
    :catchall_3c
    move-exception p0

    .line 62
    goto :goto_53

    .line 63
    :cond_3e
    if-gez v3, :cond_41

    .line 64
    .line 65
    goto :goto_52

    .line 66
    :cond_41
    aget v6, p2, v3

    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-ne v6, v5, :cond_16

    .line 73
    .line 74
    rem-int/lit8 v3, v3, 0x2

    .line 75
    .line 76
    if-nez v3, :cond_52

    .line 77
    .line 78
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result p0
    :try_end_51
    .catchall {:try_start_e .. :try_end_51} :catchall_3c

    .line 82
    return p0

    .line 83
    :cond_52
    :goto_52
    return v1

    .line 84
    :goto_53
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return v2
.end method

.method public static final d(Landroid/content/Context;)Landroid/content/Intent;
    .registers 10

    .line 1
    const-class v0, Lq2/b0;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    goto :goto_66

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "context"

    .line 12
    .line 13
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lq2/b0;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    move v5, v4

    .line 24
    :cond_17
    if-ge v5, v3, :cond_66

    .line 25
    .line 26
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    add-int/lit8 v5, v5, 0x1

    .line 31
    .line 32
    check-cast v6, Lq2/a0;

    .line 33
    .line 34
    new-instance v7, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v8, "com.facebook.platform.PLATFORM_SERVICE"

    .line 37
    .line 38
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Lq2/a0;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    const-string v7, "android.intent.category.DEFAULT"

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v7
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_64

    .line 59
    if-eqz v7, :cond_3e

    .line 60
    .line 61
    :goto_3c
    move-object v6, v2

    .line 62
    goto :goto_61

    .line 63
    :cond_3e
    if-nez v6, :cond_41

    .line 64
    .line 65
    goto :goto_3c

    .line 66
    :cond_41
    :try_start_41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v7, v6, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    if-nez v7, :cond_4c

    .line 75
    .line 76
    goto :goto_3c

    .line 77
    :cond_4c
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 78
    .line 79
    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    const-string v8, "resolveInfo.serviceInfo.packageName"

    .line 82
    .line 83
    invoke-static {v8, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v7}, Lq2/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v7
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_5c

    .line 90
    if-nez v7, :cond_61

    .line 91
    .line 92
    goto :goto_3c

    .line 93
    :catchall_5c
    move-exception v6

    .line 94
    :try_start_5d
    invoke-static {v6, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_64

    .line 95
    .line 96
    .line 97
    goto :goto_3c

    .line 98
    :cond_61
    :goto_61
    if-eqz v6, :cond_17

    .line 99
    .line 100
    return-object v6

    .line 101
    :catchall_64
    move-exception p0

    .line 102
    goto :goto_67

    .line 103
    :cond_66
    :goto_66
    return-object v2

    .line 104
    :goto_67
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object v2
.end method

.method public static final e(Landroid/content/Intent;Landroid/os/Bundle;Lx1/l;)Landroid/content/Intent;
    .registers 11

    .line 1
    const-class v0, Lq2/b0;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    goto :goto_42

    .line 11
    :cond_a
    :try_start_a
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_8c

    .line 15
    const-string v3, "action_id"

    .line 16
    .line 17
    const-string v4, "com.facebook.platform.protocol.BRIDGE_ARGS"

    .line 18
    .line 19
    if-eqz v1, :cond_16

    .line 20
    .line 21
    :catch_14
    :cond_14
    :goto_14
    move-object v1, v2

    .line 22
    goto :goto_40

    .line 23
    :cond_16
    :try_start_16
    invoke-static {p0}, Lq2/b0;->i(Landroid/content/Intent;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Lq2/b0;->j(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2f

    .line 32
    .line 33
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_2d

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_35

    .line 44
    :catchall_2b
    move-exception v1

    .line 45
    goto :goto_3c

    .line 46
    :cond_2d
    move-object v1, v2

    .line 47
    goto :goto_35

    .line 48
    :cond_2f
    const-string v1, "com.facebook.platform.protocol.CALL_ID"

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_2b

    .line 54
    :goto_35
    if-eqz v1, :cond_14

    .line 55
    .line 56
    :try_start_37
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3b} :catch_14
    .catchall {:try_start_37 .. :try_end_3b} :catchall_2b

    .line 60
    goto :goto_40

    .line 61
    :goto_3c
    :try_start_3c
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_14

    .line 65
    :goto_40
    if-nez v1, :cond_43

    .line 66
    .line 67
    :goto_42
    return-object v2

    .line 68
    :cond_43
    new-instance v5, Landroid/content/Intent;

    .line 69
    .line 70
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v6, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    .line 74
    .line 75
    invoke-static {p0}, Lq2/b0;->i(Landroid/content/Intent;)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    invoke-virtual {v5, v6, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    new-instance p0, Landroid/os/Bundle;

    .line 83
    .line 84
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    if-eqz p2, :cond_8e

    .line 95
    .line 96
    const-string v1, "error"

    .line 97
    .line 98
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3
    :try_end_65
    .catchall {:try_start_3c .. :try_end_65} :catchall_8c

    .line 102
    if-eqz v3, :cond_69

    .line 103
    .line 104
    :goto_67
    move-object v3, v2

    .line 105
    goto :goto_88

    .line 106
    :cond_69
    :try_start_69
    new-instance v3, Landroid/os/Bundle;

    .line 107
    .line 108
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v6, "error_description"

    .line 112
    .line 113
    invoke-virtual {p2}, Lx1/l;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    instance-of p2, p2, Lx1/n;

    .line 121
    .line 122
    if-eqz p2, :cond_88

    .line 123
    .line 124
    const-string p2, "error_type"

    .line 125
    .line 126
    const-string v6, "UserCanceled"

    .line 127
    .line 128
    invoke-virtual {v3, p2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_83

    .line 129
    .line 130
    .line 131
    goto :goto_88

    .line 132
    :catchall_83
    move-exception p2

    .line 133
    :try_start_84
    invoke-static {p2, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_67

    .line 137
    :cond_88
    :goto_88
    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 138
    .line 139
    .line 140
    goto :goto_8e

    .line 141
    :catchall_8c
    move-exception p0

    .line 142
    goto :goto_99

    .line 143
    :cond_8e
    :goto_8e
    invoke-virtual {v5, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    if-eqz p1, :cond_98

    .line 147
    .line 148
    const-string p0, "com.facebook.platform.protocol.RESULT_ARGS"

    .line 149
    .line 150
    invoke-virtual {v5, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_98
    .catchall {:try_start_84 .. :try_end_98} :catchall_8c

    .line 151
    .line 152
    .line 153
    :cond_98
    return-object v5

    .line 154
    :goto_99
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return-object v2
.end method

.method public static final h(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 4

    .line 1
    const-class v0, Lq2/b0;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    invoke-static {p0}, Lq2/b0;->i(Landroid/content/Intent;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Lq2/b0;->j(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1b

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :catchall_19
    move-exception p0

    .line 27
    goto :goto_22

    .line 28
    :cond_1b
    const-string v1, "com.facebook.platform.protocol.METHOD_ARGS"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_19

    .line 34
    return-object p0

    .line 35
    :goto_22
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-object v2
.end method

.method public static final i(Landroid/content/Intent;)I
    .registers 4

    .line 1
    const-class v0, Lq2/b0;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_11

    .line 17
    return p0

    .line 18
    :catchall_11
    move-exception p0

    .line 19
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return v2
.end method

.method public static final j(I)Z
    .registers 5

    .line 1
    const-class v0, Lq2/b0;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    :try_start_a
    sget-object v1, Lq2/b0;->d:[Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v1, v3}, Ls6/f;->i([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1e

    .line 21
    if-eqz v0, :cond_1d

    .line 22
    .line 23
    const v0, 0x133529d

    .line 24
    .line 25
    .line 26
    if-lt p0, v0, :cond_1d

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_1d
    return v2

    .line 31
    :catchall_1e
    move-exception p0

    .line 32
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return v2
.end method

.method public static final k()V
    .registers 4

    .line 1
    const-class v0, Lq2/b0;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_13

    .line 10
    :cond_9
    :try_start_9
    sget-object v1, Lq2/b0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_14

    .line 19
    .line 20
    :goto_13
    return-void

    .line 21
    :cond_14
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Li2/c;

    .line 26
    .line 27
    const/16 v3, 0x9

    .line 28
    .line 29
    invoke-direct {v2, v3}, Li2/c;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_23

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_23
    move-exception v1

    .line 37
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .registers 6

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    new-instance v0, Lq2/a0;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-direct {v0, v2}, Lq2/a0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lq2/a0;

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    invoke-direct {v3, v4}, Lq2/a0;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-array v2, v2, [Lq2/a0;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v0, v2, v4

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    aput-object v3, v2, v0

    .line 28
    .line 29
    invoke-static {v2}, Ls6/h;->i([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_21

    .line 33
    return-object v0

    .line 34
    :catchall_21
    move-exception v0

    .line 35
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

.method public final c(Lq2/a0;Ljava/lang/String;Ljava/util/HashSet;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZZLjava/lang/String;)Landroid/content/Intent;
    .registers 20

    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    goto :goto_16

    .line 1
    :cond_8
    :try_start_8
    iget v0, p1, Lq2/a0;->b:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_44

    .line 2
    const-string v2, "com.facebook.katana.ProxyAuth"

    packed-switch v0, :pswitch_data_c4

    goto :goto_14

    :pswitch_10
    move-object v2, v1

    goto :goto_14

    .line 3
    :pswitch_12
    :try_start_12
    const-string v2, "com.instagram.platform.AppAuthorizeActivity"

    :goto_14
    :pswitch_14
    if-nez v2, :cond_17

    :goto_16
    return-object v1

    .line 4
    :cond_17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {p1}, Lq2/a0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 6
    const-string v2, "client_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "Intent()\n            .se\u2026PP_ID_KEY, applicationId)"

    invoke-static {v0, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    const-string v0, "facebook_sdk_version"

    sget-object v2, Lx1/r;->a:Lx1/r;

    const-string v2, "18.1.3"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    if-eqz p3, :cond_48

    .line 8
    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_48

    :cond_42
    const/4 v2, 0x0

    goto :goto_49

    :catchall_44
    move-exception v0

    move-object p1, v0

    goto/16 :goto_c0

    :cond_48
    :goto_48
    move v2, v0

    :goto_49
    if-nez v2, :cond_56

    .line 9
    const-string v2, "scope"

    const-string v3, ","

    invoke-static {v3, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    :cond_56
    invoke-static {p4}, Lq2/g0;->B(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_61

    .line 11
    const-string p3, "e2e"

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    :cond_61
    const-string p3, "state"

    invoke-virtual {p2, p3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string p3, "response_type"

    iget p1, p1, Lq2/a0;->b:I

    packed-switch p1, :pswitch_data_d0

    .line 14
    const-string p1, "id_token,token,signed_request,graph_domain"

    goto :goto_72

    .line 15
    :pswitch_70
    const-string p1, "token,signed_request,graph_domain,granted_scopes"

    .line 16
    :goto_72
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    const-string p1, "nonce"

    move-object/from16 p3, p15

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string p1, "return_scopes"

    const-string p3, "true"

    .line 19
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p5, :cond_8e

    .line 20
    const-string p1, "default_audience"

    .line 21
    invoke-static {p6}, Lq2/x;->b(I)Ljava/lang/String;

    move-result-object p3

    .line 22
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    :cond_8e
    const-string p1, "legacy_override"

    invoke-static {}, Lx1/r;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    const-string p1, "auth_type"

    invoke-virtual {p2, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p9, :cond_a3

    .line 25
    const-string p1, "fail_on_logged_out"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    :cond_a3
    const-string p1, "messenger_page_id"

    invoke-virtual {p2, p1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string p1, "reset_messenger_state"

    invoke-virtual {p2, p1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p13, :cond_b8

    .line 28
    const-string p1, "fx_app"

    .line 29
    invoke-static/range {p12 .. p12}, Lq2/x;->c(I)Ljava/lang/String;

    move-result-object p3

    .line 30
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_b8
    if-eqz p14, :cond_bf

    .line 31
    const-string p1, "skip_dedupe"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_bf
    .catchall {:try_start_12 .. :try_end_bf} :catchall_44

    :cond_bf
    return-object p2

    .line 32
    :goto_c0
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_12
        :pswitch_14
        :pswitch_10
    .end packed-switch

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_70
    .end packed-switch
.end method

.method public final f(Lq2/a0;)Ljava/util/TreeSet;
    .registers 16

    .line 1
    const-string v1, ".provider.PlatformProvider"

    .line 2
    .line 3
    const-string v2, "version"

    .line 4
    .line 5
    const-string v3, "Failed to query content resolver."

    .line 6
    .line 7
    const-string v4, "q2.b0"

    .line 8
    .line 9
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    return-object v5

    .line 17
    :cond_10
    :try_start_10
    new-instance v6, Ljava/util/TreeSet;

    .line 18
    .line 19
    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    filled-new-array {v2}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    const-string v0, "content://"

    .line 35
    .line 36
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v8
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_ab

    .line 40
    if-eqz v8, :cond_2b

    .line 41
    .line 42
    :goto_29
    move-object v8, v5

    .line 43
    goto :goto_50

    .line 44
    :cond_2b
    :try_start_2b
    new-instance v8, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lq2/a0;->b()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ".provider.PlatformProvider/versions"

    .line 57
    .line 58
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v8, "parse(CONTENT_SCHEME + a\u2026ATFORM_PROVIDER_VERSIONS)"

    .line 70
    .line 71
    invoke-static {v8, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_4b

    .line 72
    .line 73
    .line 74
    move-object v8, v0

    .line 75
    goto :goto_50

    .line 76
    :catchall_4b
    move-exception v0

    .line 77
    :try_start_4c
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_ab

    .line 78
    .line 79
    .line 80
    goto :goto_29

    .line 81
    :goto_50
    :try_start_50
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lq2/a0;->b()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1
    :try_end_60
    .catchall {:try_start_50 .. :try_end_60} :catchall_66

    .line 97
    const/4 v1, 0x0

    .line 98
    :try_start_61
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 99
    .line 100
    .line 101
    move-result-object p1
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_65} :catch_6a
    .catchall {:try_start_61 .. :try_end_65} :catchall_66

    .line 102
    goto :goto_70

    .line 103
    :catchall_66
    move-exception v0

    .line 104
    move-object p1, v0

    .line 105
    move-object v0, v5

    .line 106
    goto :goto_af

    .line 107
    :catch_6a
    move-exception v0

    .line 108
    move-object p1, v0

    .line 109
    :try_start_6c
    invoke-static {v4, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_66

    .line 110
    .line 111
    .line 112
    move-object p1, v5

    .line 113
    :goto_70
    if-eqz p1, :cond_a4

    .line 114
    .line 115
    const/4 v11, 0x0

    .line 116
    const/4 v12, 0x0

    .line 117
    const/4 v10, 0x0

    .line 118
    :try_start_75
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 119
    .line 120
    .line 121
    move-result-object p1
    :try_end_79
    .catch Ljava/lang/NullPointerException; {:try_start_75 .. :try_end_79} :catch_83
    .catch Ljava/lang/SecurityException; {:try_start_75 .. :try_end_79} :catch_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_79} :catch_7a
    .catchall {:try_start_75 .. :try_end_79} :catchall_66

    .line 122
    goto :goto_87

    .line 123
    :catch_7a
    :try_start_7a
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :goto_7d
    move-object p1, v5

    .line 127
    goto :goto_87

    .line 128
    :catch_7f
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_7d

    .line 132
    :catch_83
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_66

    .line 133
    .line 134
    .line 135
    goto :goto_7d

    .line 136
    :goto_87
    if-eqz p1, :cond_a5

    .line 137
    .line 138
    :goto_89
    :try_start_89
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_a5

    .line 143
    .line 144
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_9e
    .catchall {:try_start_89 .. :try_end_9e} :catchall_9f

    .line 157
    .line 158
    .line 159
    goto :goto_89

    .line 160
    :catchall_9f
    move-exception v0

    .line 161
    move-object v13, v0

    .line 162
    move-object v0, p1

    .line 163
    move-object p1, v13

    .line 164
    goto :goto_af

    .line 165
    :cond_a4
    move-object p1, v5

    .line 166
    :cond_a5
    if-eqz p1, :cond_ae

    .line 167
    .line 168
    :try_start_a7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 169
    .line 170
    .line 171
    goto :goto_ae

    .line 172
    :catchall_ab
    move-exception v0

    .line 173
    move-object p1, v0

    .line 174
    goto :goto_b5

    .line 175
    :cond_ae
    :goto_ae
    return-object v6

    .line 176
    :goto_af
    if-eqz v0, :cond_b4

    .line 177
    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 179
    .line 180
    .line 181
    :cond_b4
    throw p1
    :try_end_b5
    .catchall {:try_start_a7 .. :try_end_b5} :catchall_ab

    .line 182
    :goto_b5
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    return-object v5
.end method

.method public final g(Ljava/util/List;[I)Lf4/j;
    .registers 9

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    invoke-static {}, Lq2/b0;->k()V

    .line 10
    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    if-nez p1, :cond_16

    .line 14
    .line 15
    new-instance p1, Lf4/j;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput v0, p1, Lf4/j;->a:I

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_5d

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lq2/a0;

    .line 38
    .line 39
    iget-object v3, v2, Lq2/a0;->a:Ljava/util/TreeSet;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v3, :cond_32

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_32

    .line 49
    .line 50
    goto :goto_35

    .line 51
    :cond_32
    invoke-virtual {v2, v4}, Lq2/a0;->a(Z)V

    .line 52
    .line 53
    .line 54
    :goto_35
    iget-object v2, v2, Lq2/a0;->a:Ljava/util/TreeSet;

    .line 55
    .line 56
    const-class v3, Lq2/b0;

    .line 57
    .line 58
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_5b

    .line 62
    if-eqz v5, :cond_40

    .line 63
    .line 64
    goto :goto_4d

    .line 65
    :cond_40
    :try_start_40
    sget-object v5, Lq2/b0;->d:[Ljava/lang/Integer;

    .line 66
    .line 67
    aget-object v5, v5, v4

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v4
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_49

    .line 73
    goto :goto_4d

    .line 74
    :catchall_49
    move-exception v5

    .line 75
    :try_start_4a
    invoke-static {v5, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :goto_4d
    invoke-static {v2, v4, p2}, Lq2/b0;->b(Ljava/util/TreeSet;I[I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eq v2, v0, :cond_1a

    .line 83
    .line 84
    new-instance p1, Lf4/j;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    iput v2, p1, Lf4/j;->a:I

    .line 90
    .line 91
    return-object p1

    .line 92
    :catchall_5b
    move-exception p1

    .line 93
    goto :goto_65

    .line 94
    :cond_5d
    new-instance p1, Lf4/j;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    iput v0, p1, Lf4/j;->a:I
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_5b

    .line 100
    .line 101
    return-object p1

    .line 102
    :goto_65
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-object v1
.end method
