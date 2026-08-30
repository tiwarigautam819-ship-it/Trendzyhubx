###### Class e8.l (e8.l)
.class public final Le8/l;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Le8/w;


# instance fields
.field public a:B

.field public final b:Le8/q;

.field public final c:Ljava/util/zip/Inflater;

.field public final d:Le8/m;

.field public final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Le8/w;)V
    .registers 4

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Le8/q;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Le8/q;-><init>(Le8/w;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Le8/l;->b:Le8/q;

    .line 15
    .line 16
    new-instance p1, Ljava/util/zip/Inflater;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Le8/l;->c:Ljava/util/zip/Inflater;

    .line 23
    .line 24
    new-instance v1, Le8/m;

    .line 25
    .line 26
    invoke-direct {v1, v0, p1}, Le8/m;-><init>(Le8/q;Ljava/util/zip/Inflater;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Le8/l;->d:Le8/m;

    .line 30
    .line 31
    new-instance p1, Ljava/util/zip/CRC32;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Le8/l;->e:Ljava/util/zip/CRC32;

    .line 37
    .line 38
    return-void
.end method

.method public static a(ILjava/lang/String;I)V
    .registers 7

    .line 1
    if-ne p2, p0, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v1, 0x3

    .line 15
    new-array v2, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object p1, v2, v3

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    aput-object p2, v2, p1

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    aput-object p0, v2, p1

    .line 25
    .line 26
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    .line 31
    .line 32
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method


# virtual methods
.method public final b()Le8/y;
    .registers 2

    .line 1
    iget-object v0, p0, Le8/l;->b:Le8/q;

    .line 2
    .line 3
    iget-object v0, v0, Le8/q;->a:Le8/w;

    .line 4
    .line 5
    invoke-interface {v0}, Le8/w;->b()Le8/y;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final c(Le8/g;JJ)V
    .registers 10

    .line 1
    iget-object p1, p1, Le8/g;->a:Le8/r;

    .line 2
    .line 3
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :goto_5
    iget v0, p1, Le8/r;->c:I

    .line 7
    .line 8
    iget v1, p1, Le8/r;->b:I

    .line 9
    .line 10
    sub-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    cmp-long v2, p2, v2

    .line 14
    .line 15
    if-ltz v2, :cond_19

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    int-to-long v0, v0

    .line 19
    sub-long/2addr p2, v0

    .line 20
    iget-object p1, p1, Le8/r;->f:Le8/r;

    .line 21
    .line 22
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_5

    .line 26
    :cond_19
    :goto_19
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    cmp-long v2, p4, v0

    .line 29
    .line 30
    if-lez v2, :cond_3d

    .line 31
    .line 32
    iget v2, p1, Le8/r;->b:I

    .line 33
    .line 34
    int-to-long v2, v2

    .line 35
    add-long/2addr v2, p2

    .line 36
    long-to-int p2, v2

    .line 37
    iget p3, p1, Le8/r;->c:I

    .line 38
    .line 39
    sub-int/2addr p3, p2

    .line 40
    int-to-long v2, p3

    .line 41
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    long-to-int p3, v2

    .line 46
    iget-object v2, p0, Le8/l;->e:Ljava/util/zip/CRC32;

    .line 47
    .line 48
    iget-object v3, p1, Le8/r;->a:[B

    .line 49
    .line 50
    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 51
    .line 52
    .line 53
    int-to-long p2, p3

    .line 54
    sub-long/2addr p4, p2

    .line 55
    iget-object p1, p1, Le8/r;->f:Le8/r;

    .line 56
    .line 57
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-wide p2, v0

    .line 61
    goto :goto_19

    .line 62
    :cond_3d
    return-void
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Le8/l;->d:Le8/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Le8/m;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final h(JLe8/g;)J
    .registers 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    const-string v1, "sink"

    .line 6
    .line 7
    invoke-static {v1, v6}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-byte v1, v0, Le8/l;->a:B

    .line 11
    .line 12
    iget-object v7, v0, Le8/l;->e:Ljava/util/zip/CRC32;

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    iget-object v9, v0, Le8/l;->b:Le8/q;

    .line 16
    .line 17
    const-wide/16 v15, -0x1

    .line 18
    .line 19
    if-nez v1, :cond_110

    .line 20
    .line 21
    const-wide/16 v1, 0xa

    .line 22
    .line 23
    invoke-virtual {v9, v1, v2}, Le8/q;->l(J)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v9, Le8/q;->b:Le8/g;

    .line 27
    .line 28
    const-wide/16 v2, 0x3

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Le8/g;->g(J)B

    .line 31
    .line 32
    .line 33
    move-result v17

    .line 34
    shr-int/lit8 v2, v17, 0x1

    .line 35
    .line 36
    and-int/2addr v2, v8

    .line 37
    if-ne v2, v8, :cond_29

    .line 38
    .line 39
    move/from16 v18, v8

    .line 40
    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    const/4 v2, 0x0

    .line 43
    move/from16 v18, v2

    .line 44
    .line 45
    :goto_2c
    if-eqz v18, :cond_35

    .line 46
    .line 47
    const-wide/16 v2, 0x0

    .line 48
    .line 49
    const-wide/16 v4, 0xa

    .line 50
    .line 51
    invoke-virtual/range {v0 .. v5}, Le8/l;->c(Le8/g;JJ)V

    .line 52
    .line 53
    .line 54
    :cond_35
    invoke-virtual {v9}, Le8/q;->readShort()S

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const-string v2, "ID1ID2"

    .line 59
    .line 60
    const/16 v3, 0x1f8b

    .line 61
    .line 62
    invoke-static {v3, v2, v0}, Le8/l;->a(ILjava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v2, 0x8

    .line 66
    .line 67
    invoke-virtual {v9, v2, v3}, Le8/q;->skip(J)V

    .line 68
    .line 69
    .line 70
    shr-int/lit8 v0, v17, 0x2

    .line 71
    .line 72
    and-int/2addr v0, v8

    .line 73
    const v19, 0xff00

    .line 74
    .line 75
    .line 76
    const-wide/16 v10, 0x2

    .line 77
    .line 78
    if-ne v0, v8, :cond_7f

    .line 79
    .line 80
    invoke-virtual {v9, v10, v11}, Le8/q;->l(J)V

    .line 81
    .line 82
    .line 83
    if-eqz v18, :cond_5d

    .line 84
    .line 85
    const-wide/16 v2, 0x0

    .line 86
    .line 87
    const-wide/16 v4, 0x2

    .line 88
    .line 89
    move-object/from16 v0, p0

    .line 90
    .line 91
    invoke-virtual/range {v0 .. v5}, Le8/l;->c(Le8/g;JJ)V

    .line 92
    .line 93
    .line 94
    :cond_5d
    invoke-virtual {v1}, Le8/g;->readShort()S

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    and-int v2, v0, v19

    .line 99
    .line 100
    ushr-int/lit8 v2, v2, 0x8

    .line 101
    .line 102
    and-int/lit16 v0, v0, 0xff

    .line 103
    .line 104
    shl-int/lit8 v0, v0, 0x8

    .line 105
    .line 106
    or-int/2addr v0, v2

    .line 107
    int-to-short v0, v0

    .line 108
    const v2, 0xffff

    .line 109
    .line 110
    .line 111
    and-int/2addr v0, v2

    .line 112
    int-to-long v4, v0

    .line 113
    invoke-virtual {v9, v4, v5}, Le8/q;->l(J)V

    .line 114
    .line 115
    .line 116
    if-eqz v18, :cond_7c

    .line 117
    .line 118
    const-wide/16 v2, 0x0

    .line 119
    .line 120
    move-object/from16 v0, p0

    .line 121
    .line 122
    invoke-virtual/range {v0 .. v5}, Le8/l;->c(Le8/g;JJ)V

    .line 123
    .line 124
    .line 125
    :cond_7c
    invoke-virtual {v9, v4, v5}, Le8/q;->skip(J)V

    .line 126
    .line 127
    .line 128
    :cond_7f
    shr-int/lit8 v0, v17, 0x3

    .line 129
    .line 130
    and-int/2addr v0, v8

    .line 131
    const-wide/16 v20, 0x1

    .line 132
    .line 133
    if-ne v0, v8, :cond_b6

    .line 134
    .line 135
    move-wide v2, v10

    .line 136
    const-wide/16 v11, 0x0

    .line 137
    .line 138
    const-wide v13, 0x7fffffffffffffffL

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    const/4 v10, 0x0

    .line 144
    invoke-virtual/range {v9 .. v14}, Le8/q;->c(BJJ)J

    .line 145
    .line 146
    .line 147
    move-result-wide v10

    .line 148
    cmp-long v0, v10, v15

    .line 149
    .line 150
    if-eqz v0, :cond_b0

    .line 151
    .line 152
    if-eqz v18, :cond_a9

    .line 153
    .line 154
    move-wide v4, v2

    .line 155
    const-wide/16 v2, 0x0

    .line 156
    .line 157
    add-long v12, v10, v20

    .line 158
    .line 159
    move-wide/from16 v22, v12

    .line 160
    .line 161
    move-wide v12, v4

    .line 162
    move-wide/from16 v4, v22

    .line 163
    .line 164
    move-object/from16 v0, p0

    .line 165
    .line 166
    invoke-virtual/range {v0 .. v5}, Le8/l;->c(Le8/g;JJ)V

    .line 167
    .line 168
    .line 169
    goto :goto_aa

    .line 170
    :cond_a9
    move-wide v12, v2

    .line 171
    :goto_aa
    add-long v10, v10, v20

    .line 172
    .line 173
    invoke-virtual {v9, v10, v11}, Le8/q;->skip(J)V

    .line 174
    .line 175
    .line 176
    goto :goto_b7

    .line 177
    :cond_b0
    new-instance v0, Ljava/io/EOFException;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_b6
    move-wide v12, v10

    .line 184
    :goto_b7
    shr-int/lit8 v0, v17, 0x4

    .line 185
    .line 186
    and-int/2addr v0, v8

    .line 187
    if-ne v0, v8, :cond_eb

    .line 188
    .line 189
    move-wide v2, v12

    .line 190
    const-wide/16 v11, 0x0

    .line 191
    .line 192
    const-wide v13, 0x7fffffffffffffffL

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    const/4 v10, 0x0

    .line 198
    invoke-virtual/range {v9 .. v14}, Le8/q;->c(BJJ)J

    .line 199
    .line 200
    .line 201
    move-result-wide v10

    .line 202
    cmp-long v0, v10, v15

    .line 203
    .line 204
    if-eqz v0, :cond_e3

    .line 205
    .line 206
    if-eqz v18, :cond_da

    .line 207
    .line 208
    move-wide v12, v2

    .line 209
    const-wide/16 v2, 0x0

    .line 210
    .line 211
    add-long v4, v10, v20

    .line 212
    .line 213
    move-object/from16 v0, p0

    .line 214
    .line 215
    invoke-virtual/range {v0 .. v5}, Le8/l;->c(Le8/g;JJ)V

    .line 216
    .line 217
    .line 218
    goto :goto_dd

    .line 219
    :cond_da
    move-object/from16 v0, p0

    .line 220
    .line 221
    move-wide v12, v2

    .line 222
    :goto_dd
    add-long v10, v10, v20

    .line 223
    .line 224
    invoke-virtual {v9, v10, v11}, Le8/q;->skip(J)V

    .line 225
    .line 226
    .line 227
    goto :goto_ed

    .line 228
    :cond_e3
    move-object/from16 v0, p0

    .line 229
    .line 230
    new-instance v1, Ljava/io/EOFException;

    .line 231
    .line 232
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 233
    .line 234
    .line 235
    throw v1

    .line 236
    :cond_eb
    move-object/from16 v0, p0

    .line 237
    .line 238
    :goto_ed
    if-eqz v18, :cond_10e

    .line 239
    .line 240
    invoke-virtual {v9, v12, v13}, Le8/q;->l(J)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Le8/g;->readShort()S

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    and-int v2, v1, v19

    .line 248
    .line 249
    ushr-int/lit8 v2, v2, 0x8

    .line 250
    .line 251
    and-int/lit16 v1, v1, 0xff

    .line 252
    .line 253
    shl-int/lit8 v1, v1, 0x8

    .line 254
    .line 255
    or-int/2addr v1, v2

    .line 256
    int-to-short v1, v1

    .line 257
    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    .line 258
    .line 259
    .line 260
    move-result-wide v2

    .line 261
    long-to-int v2, v2

    .line 262
    int-to-short v2, v2

    .line 263
    const-string v3, "FHCRC"

    .line 264
    .line 265
    invoke-static {v1, v3, v2}, Le8/l;->a(ILjava/lang/String;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7}, Ljava/util/zip/CRC32;->reset()V

    .line 269
    .line 270
    .line 271
    :cond_10e
    iput-byte v8, v0, Le8/l;->a:B

    .line 272
    .line 273
    :cond_110
    iget-byte v1, v0, Le8/l;->a:B

    .line 274
    .line 275
    const/4 v10, 0x2

    .line 276
    if-ne v1, v8, :cond_12a

    .line 277
    .line 278
    iget-wide v2, v6, Le8/g;->b:J

    .line 279
    .line 280
    iget-object v1, v0, Le8/l;->d:Le8/m;

    .line 281
    .line 282
    const-wide/16 v4, 0x2000

    .line 283
    .line 284
    invoke-virtual {v1, v4, v5, v6}, Le8/m;->h(JLe8/g;)J

    .line 285
    .line 286
    .line 287
    move-result-wide v4

    .line 288
    cmp-long v1, v4, v15

    .line 289
    .line 290
    if-eqz v1, :cond_128

    .line 291
    .line 292
    move-object v1, v6

    .line 293
    invoke-virtual/range {v0 .. v5}, Le8/l;->c(Le8/g;JJ)V

    .line 294
    .line 295
    .line 296
    return-wide v4

    .line 297
    :cond_128
    iput-byte v10, v0, Le8/l;->a:B

    .line 298
    .line 299
    :cond_12a
    iget-byte v1, v0, Le8/l;->a:B

    .line 300
    .line 301
    if-ne v1, v10, :cond_15e

    .line 302
    .line 303
    invoke-virtual {v9}, Le8/q;->g()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    .line 308
    .line 309
    .line 310
    move-result-wide v2

    .line 311
    long-to-int v2, v2

    .line 312
    const-string v3, "CRC"

    .line 313
    .line 314
    invoke-static {v1, v3, v2}, Le8/l;->a(ILjava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v9}, Le8/q;->g()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    iget-object v2, v0, Le8/l;->c:Ljava/util/zip/Inflater;

    .line 322
    .line 323
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    .line 324
    .line 325
    .line 326
    move-result-wide v2

    .line 327
    long-to-int v2, v2

    .line 328
    const-string v3, "ISIZE"

    .line 329
    .line 330
    invoke-static {v1, v3, v2}, Le8/l;->a(ILjava/lang/String;I)V

    .line 331
    .line 332
    .line 333
    const/4 v1, 0x3

    .line 334
    iput-byte v1, v0, Le8/l;->a:B

    .line 335
    .line 336
    invoke-virtual {v9}, Le8/q;->a()Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_156

    .line 341
    .line 342
    goto :goto_15e

    .line 343
    :cond_156
    new-instance v1, Ljava/io/IOException;

    .line 344
    .line 345
    const-string v2, "gzip finished without exhausting source"

    .line 346
    .line 347
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v1

    .line 351
    :cond_15e
    :goto_15e
    return-wide v15
.end method
