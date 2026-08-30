###### Class e3.t (e3.t)
.class public final enum Le3/t;
.super Ljava/lang/Enum;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Landroid/util/SparseArray;

.field public static final synthetic b:[Le3/t;


# direct methods
.method static constructor <clinit>()V
    .registers 43

    .line 1
    new-instance v0, Le3/t;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_MOBILE_SUBTYPE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Le3/t;

    .line 10
    .line 11
    const-string v3, "GPRS"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Le3/t;

    .line 18
    .line 19
    const-string v5, "EDGE"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Le3/t;

    .line 26
    .line 27
    const-string v7, "UMTS"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Le3/t;

    .line 34
    .line 35
    const-string v9, "CDMA"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Le3/t;

    .line 42
    .line 43
    const-string v11, "EVDO_0"

    .line 44
    .line 45
    const/4 v12, 0x5

    .line 46
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v11, Le3/t;

    .line 50
    .line 51
    const-string v13, "EVDO_A"

    .line 52
    .line 53
    const/4 v14, 0x6

    .line 54
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    new-instance v13, Le3/t;

    .line 58
    .line 59
    const-string v15, "RTT"

    .line 60
    .line 61
    move/from16 v16, v14

    .line 62
    .line 63
    const/4 v14, 0x7

    .line 64
    invoke-direct {v13, v15, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    new-instance v15, Le3/t;

    .line 68
    .line 69
    move/from16 v17, v14

    .line 70
    .line 71
    const-string v14, "HSDPA"

    .line 72
    .line 73
    move/from16 v18, v12

    .line 74
    .line 75
    const/16 v12, 0x8

    .line 76
    .line 77
    invoke-direct {v15, v14, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    new-instance v14, Le3/t;

    .line 81
    .line 82
    move/from16 v19, v12

    .line 83
    .line 84
    const-string v12, "HSUPA"

    .line 85
    .line 86
    move/from16 v20, v10

    .line 87
    .line 88
    const/16 v10, 0x9

    .line 89
    .line 90
    invoke-direct {v14, v12, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    new-instance v12, Le3/t;

    .line 94
    .line 95
    move/from16 v21, v10

    .line 96
    .line 97
    const-string v10, "HSPA"

    .line 98
    .line 99
    move/from16 v22, v8

    .line 100
    .line 101
    const/16 v8, 0xa

    .line 102
    .line 103
    invoke-direct {v12, v10, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    new-instance v10, Le3/t;

    .line 107
    .line 108
    move/from16 v23, v8

    .line 109
    .line 110
    const-string v8, "IDEN"

    .line 111
    .line 112
    move/from16 v24, v6

    .line 113
    .line 114
    const/16 v6, 0xb

    .line 115
    .line 116
    invoke-direct {v10, v8, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    new-instance v8, Le3/t;

    .line 120
    .line 121
    move/from16 v25, v6

    .line 122
    .line 123
    const-string v6, "EVDO_B"

    .line 124
    .line 125
    move/from16 v26, v4

    .line 126
    .line 127
    const/16 v4, 0xc

    .line 128
    .line 129
    invoke-direct {v8, v6, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    new-instance v6, Le3/t;

    .line 133
    .line 134
    move/from16 v27, v4

    .line 135
    .line 136
    const-string v4, "LTE"

    .line 137
    .line 138
    move/from16 v28, v2

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v6, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    new-instance v4, Le3/t;

    .line 146
    .line 147
    move/from16 v29, v2

    .line 148
    .line 149
    const-string v2, "EHRPD"

    .line 150
    .line 151
    move-object/from16 v30, v6

    .line 152
    .line 153
    const/16 v6, 0xe

    .line 154
    .line 155
    invoke-direct {v4, v2, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    new-instance v2, Le3/t;

    .line 159
    .line 160
    move/from16 v31, v6

    .line 161
    .line 162
    const-string v6, "HSPAP"

    .line 163
    .line 164
    move-object/from16 v32, v4

    .line 165
    .line 166
    const/16 v4, 0xf

    .line 167
    .line 168
    invoke-direct {v2, v6, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    new-instance v6, Le3/t;

    .line 172
    .line 173
    move/from16 v33, v4

    .line 174
    .line 175
    const-string v4, "GSM"

    .line 176
    .line 177
    move-object/from16 v34, v2

    .line 178
    .line 179
    const/16 v2, 0x10

    .line 180
    .line 181
    invoke-direct {v6, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    new-instance v4, Le3/t;

    .line 185
    .line 186
    move/from16 v35, v2

    .line 187
    .line 188
    const-string v2, "TD_SCDMA"

    .line 189
    .line 190
    move-object/from16 v36, v6

    .line 191
    .line 192
    const/16 v6, 0x11

    .line 193
    .line 194
    invoke-direct {v4, v2, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    new-instance v2, Le3/t;

    .line 198
    .line 199
    move/from16 v37, v6

    .line 200
    .line 201
    const-string v6, "IWLAN"

    .line 202
    .line 203
    move-object/from16 v38, v4

    .line 204
    .line 205
    const/16 v4, 0x12

    .line 206
    .line 207
    invoke-direct {v2, v6, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    new-instance v6, Le3/t;

    .line 211
    .line 212
    move/from16 v39, v4

    .line 213
    .line 214
    const-string v4, "LTE_CA"

    .line 215
    .line 216
    move-object/from16 v40, v2

    .line 217
    .line 218
    const/16 v2, 0x13

    .line 219
    .line 220
    invoke-direct {v6, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 221
    .line 222
    .line 223
    new-instance v4, Le3/t;

    .line 224
    .line 225
    move/from16 v41, v2

    .line 226
    .line 227
    const-string v2, "COMBINED"

    .line 228
    .line 229
    move-object/from16 v42, v6

    .line 230
    .line 231
    const/16 v6, 0x14

    .line 232
    .line 233
    invoke-direct {v4, v2, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    .line 235
    .line 236
    const/16 v2, 0x15

    .line 237
    .line 238
    new-array v2, v2, [Le3/t;

    .line 239
    .line 240
    aput-object v0, v2, v28

    .line 241
    .line 242
    aput-object v1, v2, v26

    .line 243
    .line 244
    aput-object v3, v2, v24

    .line 245
    .line 246
    aput-object v5, v2, v22

    .line 247
    .line 248
    aput-object v7, v2, v20

    .line 249
    .line 250
    aput-object v9, v2, v18

    .line 251
    .line 252
    aput-object v11, v2, v16

    .line 253
    .line 254
    aput-object v13, v2, v17

    .line 255
    .line 256
    aput-object v15, v2, v19

    .line 257
    .line 258
    aput-object v14, v2, v21

    .line 259
    .line 260
    aput-object v12, v2, v23

    .line 261
    .line 262
    aput-object v10, v2, v25

    .line 263
    .line 264
    aput-object v8, v2, v27

    .line 265
    .line 266
    aput-object v30, v2, v29

    .line 267
    .line 268
    aput-object v32, v2, v31

    .line 269
    .line 270
    aput-object v34, v2, v33

    .line 271
    .line 272
    aput-object v36, v2, v35

    .line 273
    .line 274
    aput-object v38, v2, v37

    .line 275
    .line 276
    aput-object v40, v2, v39

    .line 277
    .line 278
    aput-object v42, v2, v41

    .line 279
    .line 280
    aput-object v4, v2, v6

    .line 281
    .line 282
    sput-object v2, Le3/t;->b:[Le3/t;

    .line 283
    .line 284
    new-instance v2, Landroid/util/SparseArray;

    .line 285
    .line 286
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 287
    .line 288
    .line 289
    sput-object v2, Le3/t;->a:Landroid/util/SparseArray;

    .line 290
    .line 291
    move/from16 v4, v28

    .line 292
    .line 293
    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    move/from16 v0, v26

    .line 297
    .line 298
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    move/from16 v0, v24

    .line 302
    .line 303
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    move/from16 v0, v22

    .line 307
    .line 308
    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    move/from16 v0, v20

    .line 312
    .line 313
    invoke-virtual {v2, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    move/from16 v0, v18

    .line 317
    .line 318
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    move/from16 v0, v16

    .line 322
    .line 323
    invoke-virtual {v2, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    move/from16 v0, v17

    .line 327
    .line 328
    invoke-virtual {v2, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    move/from16 v0, v19

    .line 332
    .line 333
    invoke-virtual {v2, v0, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    move/from16 v0, v21

    .line 337
    .line 338
    invoke-virtual {v2, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    move/from16 v0, v23

    .line 342
    .line 343
    invoke-virtual {v2, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    move/from16 v0, v25

    .line 347
    .line 348
    invoke-virtual {v2, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    move/from16 v0, v27

    .line 352
    .line 353
    invoke-virtual {v2, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    move/from16 v1, v29

    .line 357
    .line 358
    move-object/from16 v0, v30

    .line 359
    .line 360
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    move/from16 v1, v31

    .line 364
    .line 365
    move-object/from16 v0, v32

    .line 366
    .line 367
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    move/from16 v1, v33

    .line 371
    .line 372
    move-object/from16 v0, v34

    .line 373
    .line 374
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    move/from16 v1, v35

    .line 378
    .line 379
    move-object/from16 v0, v36

    .line 380
    .line 381
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    move/from16 v1, v37

    .line 385
    .line 386
    move-object/from16 v0, v38

    .line 387
    .line 388
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    move/from16 v1, v39

    .line 392
    .line 393
    move-object/from16 v0, v40

    .line 394
    .line 395
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    move/from16 v1, v41

    .line 399
    .line 400
    move-object/from16 v0, v42

    .line 401
    .line 402
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le3/t;
    .registers 2

    .line 1
    const-class v0, Le3/t;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Le3/t;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Le3/t;
    .registers 1

    .line 1
    sget-object v0, Le3/t;->b:[Le3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, [Le3/t;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Le3/t;

    .line 8
    .line 9
    return-object v0
.end method
