###### Class a6.d (a6.d)
.class public final La6/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[[I

.field public static final c:[[I

.field public static final d:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    const-string v0, "MIXED"

    .line 2
    .line 3
    const-string v1, "PUNCT"

    .line 4
    .line 5
    const-string v2, "UPPER"

    .line 6
    .line 7
    const-string v3, "LOWER"

    .line 8
    .line 9
    const-string v4, "DIGIT"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, La6/d;->a:[Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    new-array v1, v0, [[I

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const v3, 0x5001c

    .line 22
    .line 23
    .line 24
    const v4, 0x5001e

    .line 25
    .line 26
    .line 27
    const v5, 0x5001d

    .line 28
    .line 29
    .line 30
    const v6, 0xa03be

    .line 31
    .line 32
    .line 33
    filled-new-array {v2, v3, v4, v5, v6}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    aput-object v7, v1, v2

    .line 38
    .line 39
    const v7, 0x901ee

    .line 40
    .line 41
    .line 42
    filled-new-array {v7, v2, v4, v5, v6}, [I

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const/4 v8, 0x1

    .line 47
    aput-object v7, v1, v8

    .line 48
    .line 49
    const v7, 0x901dd

    .line 50
    .line 51
    .line 52
    const v9, 0xe3bbe

    .line 53
    .line 54
    .line 55
    const v10, 0x4000e

    .line 56
    .line 57
    .line 58
    const v11, 0x901dc

    .line 59
    .line 60
    .line 61
    filled-new-array {v10, v11, v2, v7, v9}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const/4 v9, 0x2

    .line 66
    aput-object v7, v1, v9

    .line 67
    .line 68
    filled-new-array {v5, v3, v6, v2, v4}, [I

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/4 v4, 0x3

    .line 73
    aput-object v3, v1, v4

    .line 74
    .line 75
    const v3, 0xa03fe

    .line 76
    .line 77
    .line 78
    const v5, 0xa03fd

    .line 79
    .line 80
    .line 81
    const v6, 0x5001f

    .line 82
    .line 83
    .line 84
    const v7, 0xa03fc

    .line 85
    .line 86
    .line 87
    filled-new-array {v6, v7, v3, v5, v2}, [I

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v5, 0x4

    .line 92
    aput-object v3, v1, v5

    .line 93
    .line 94
    sput-object v1, La6/d;->b:[[I

    .line 95
    .line 96
    new-array v1, v9, [I

    .line 97
    .line 98
    const/16 v3, 0x100

    .line 99
    .line 100
    aput v3, v1, v8

    .line 101
    .line 102
    aput v0, v1, v2

    .line 103
    .line 104
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 105
    .line 106
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, [[I

    .line 111
    .line 112
    sput-object v1, La6/d;->c:[[I

    .line 113
    .line 114
    aget-object v1, v1, v2

    .line 115
    .line 116
    const/16 v3, 0x20

    .line 117
    .line 118
    aput v8, v1, v3

    .line 119
    .line 120
    const/16 v1, 0x41

    .line 121
    .line 122
    :goto_79
    const/16 v6, 0x5a

    .line 123
    .line 124
    if-gt v1, v6, :cond_88

    .line 125
    .line 126
    sget-object v6, La6/d;->c:[[I

    .line 127
    .line 128
    aget-object v6, v6, v2

    .line 129
    .line 130
    add-int/lit8 v7, v1, -0x3f

    .line 131
    .line 132
    aput v7, v6, v1

    .line 133
    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_79

    .line 137
    :cond_88
    sget-object v1, La6/d;->c:[[I

    .line 138
    .line 139
    aget-object v1, v1, v8

    .line 140
    .line 141
    aput v8, v1, v3

    .line 142
    .line 143
    const/16 v1, 0x61

    .line 144
    .line 145
    :goto_90
    const/16 v6, 0x7a

    .line 146
    .line 147
    if-gt v1, v6, :cond_9f

    .line 148
    .line 149
    sget-object v6, La6/d;->c:[[I

    .line 150
    .line 151
    aget-object v6, v6, v8

    .line 152
    .line 153
    add-int/lit8 v7, v1, -0x5f

    .line 154
    .line 155
    aput v7, v6, v1

    .line 156
    .line 157
    add-int/lit8 v1, v1, 0x1

    .line 158
    .line 159
    goto :goto_90

    .line 160
    :cond_9f
    sget-object v1, La6/d;->c:[[I

    .line 161
    .line 162
    aget-object v1, v1, v9

    .line 163
    .line 164
    aput v8, v1, v3

    .line 165
    .line 166
    const/16 v1, 0x30

    .line 167
    .line 168
    :goto_a7
    const/16 v3, 0x39

    .line 169
    .line 170
    if-gt v1, v3, :cond_b6

    .line 171
    .line 172
    sget-object v3, La6/d;->c:[[I

    .line 173
    .line 174
    aget-object v3, v3, v9

    .line 175
    .line 176
    add-int/lit8 v6, v1, -0x2e

    .line 177
    .line 178
    aput v6, v3, v1

    .line 179
    .line 180
    add-int/lit8 v1, v1, 0x1

    .line 181
    .line 182
    goto :goto_a7

    .line 183
    :cond_b6
    sget-object v1, La6/d;->c:[[I

    .line 184
    .line 185
    aget-object v1, v1, v9

    .line 186
    .line 187
    const/16 v3, 0x2c

    .line 188
    .line 189
    const/16 v6, 0xc

    .line 190
    .line 191
    aput v6, v1, v3

    .line 192
    .line 193
    const/16 v3, 0x2e

    .line 194
    .line 195
    const/16 v6, 0xd

    .line 196
    .line 197
    aput v6, v1, v3

    .line 198
    .line 199
    const/16 v1, 0x1c

    .line 200
    .line 201
    new-array v3, v1, [I

    .line 202
    .line 203
    fill-array-data v3, :array_128

    .line 204
    .line 205
    .line 206
    move v6, v2

    .line 207
    :goto_ce
    if-ge v6, v1, :cond_db

    .line 208
    .line 209
    sget-object v7, La6/d;->c:[[I

    .line 210
    .line 211
    aget-object v7, v7, v4

    .line 212
    .line 213
    aget v10, v3, v6

    .line 214
    .line 215
    aput v6, v7, v10

    .line 216
    .line 217
    add-int/lit8 v6, v6, 0x1

    .line 218
    .line 219
    goto :goto_ce

    .line 220
    :cond_db
    const/16 v3, 0x1f

    .line 221
    .line 222
    new-array v6, v3, [I

    .line 223
    .line 224
    fill-array-data v6, :array_164

    .line 225
    .line 226
    .line 227
    move v7, v2

    .line 228
    :goto_e3
    if-ge v7, v3, :cond_f2

    .line 229
    .line 230
    aget v10, v6, v7

    .line 231
    .line 232
    if-lez v10, :cond_ef

    .line 233
    .line 234
    sget-object v11, La6/d;->c:[[I

    .line 235
    .line 236
    aget-object v11, v11, v5

    .line 237
    .line 238
    aput v7, v11, v10

    .line 239
    .line 240
    :cond_ef
    add-int/lit8 v7, v7, 0x1

    .line 241
    .line 242
    goto :goto_e3

    .line 243
    :cond_f2
    new-array v3, v9, [I

    .line 244
    .line 245
    const/4 v6, 0x6

    .line 246
    aput v6, v3, v8

    .line 247
    .line 248
    aput v6, v3, v2

    .line 249
    .line 250
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, [[I

    .line 255
    .line 256
    sput-object v0, La6/d;->d:[[I

    .line 257
    .line 258
    array-length v3, v0

    .line 259
    move v6, v2

    .line 260
    :goto_103
    if-ge v6, v3, :cond_10e

    .line 261
    .line 262
    aget-object v7, v0, v6

    .line 263
    .line 264
    const/4 v10, -0x1

    .line 265
    invoke-static {v7, v10}, Ljava/util/Arrays;->fill([II)V

    .line 266
    .line 267
    .line 268
    add-int/lit8 v6, v6, 0x1

    .line 269
    .line 270
    goto :goto_103

    .line 271
    :cond_10e
    sget-object v0, La6/d;->d:[[I

    .line 272
    .line 273
    aget-object v3, v0, v2

    .line 274
    .line 275
    aput v2, v3, v5

    .line 276
    .line 277
    aget-object v3, v0, v8

    .line 278
    .line 279
    aput v2, v3, v5

    .line 280
    .line 281
    aput v1, v3, v2

    .line 282
    .line 283
    aget-object v1, v0, v4

    .line 284
    .line 285
    aput v2, v1, v5

    .line 286
    .line 287
    aget-object v0, v0, v9

    .line 288
    .line 289
    aput v2, v0, v5

    .line 290
    .line 291
    const/16 v1, 0xf

    .line 292
    .line 293
    aput v1, v0, v2

    .line 294
    .line 295
    return-void

    .line 296
    nop

    .line 297
    :array_128
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_164
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method

.method public static a(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3a

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, La6/f;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_36

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, La6/f;

    .line 37
    .line 38
    invoke-virtual {v3, v1}, La6/f;->c(La6/f;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2c

    .line 43
    .line 44
    goto :goto_9

    .line 45
    :cond_2c
    invoke-virtual {v1, v3}, La6/f;->c(La6/f;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_19

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 52
    .line 53
    .line 54
    goto :goto_19

    .line 55
    :cond_36
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_9

    .line 59
    :cond_3a
    return-object v0
.end method
