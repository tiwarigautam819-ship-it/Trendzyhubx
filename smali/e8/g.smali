###### Class e8.g (e8.g)
.class public final Le8/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Le8/i;
.implements Le8/h;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# instance fields
.field public a:Le8/r;

.field public b:J


# virtual methods
.method public final A(J)V
    .registers 15

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_c

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Le8/g;->z(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    const/4 v0, 0x1

    .line 14
    ushr-long v1, p1, v0

    .line 15
    .line 16
    or-long/2addr v1, p1

    .line 17
    const/4 v3, 0x2

    .line 18
    ushr-long v4, v1, v3

    .line 19
    .line 20
    or-long/2addr v1, v4

    .line 21
    const/4 v4, 0x4

    .line 22
    ushr-long v5, v1, v4

    .line 23
    .line 24
    or-long/2addr v1, v5

    .line 25
    const/16 v5, 0x8

    .line 26
    .line 27
    ushr-long v6, v1, v5

    .line 28
    .line 29
    or-long/2addr v1, v6

    .line 30
    const/16 v6, 0x10

    .line 31
    .line 32
    ushr-long v7, v1, v6

    .line 33
    .line 34
    or-long/2addr v1, v7

    .line 35
    const/16 v7, 0x20

    .line 36
    .line 37
    ushr-long v8, v1, v7

    .line 38
    .line 39
    or-long/2addr v1, v8

    .line 40
    ushr-long v8, v1, v0

    .line 41
    .line 42
    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v8, v10

    .line 48
    sub-long/2addr v1, v8

    .line 49
    ushr-long v8, v1, v3

    .line 50
    .line 51
    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    and-long/2addr v8, v10

    .line 57
    and-long/2addr v1, v10

    .line 58
    add-long/2addr v8, v1

    .line 59
    ushr-long v1, v8, v4

    .line 60
    .line 61
    add-long/2addr v1, v8

    .line 62
    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    and-long/2addr v1, v8

    .line 68
    ushr-long v8, v1, v5

    .line 69
    .line 70
    add-long/2addr v1, v8

    .line 71
    ushr-long v5, v1, v6

    .line 72
    .line 73
    add-long/2addr v1, v5

    .line 74
    const-wide/16 v5, 0x3f

    .line 75
    .line 76
    and-long v8, v1, v5

    .line 77
    .line 78
    ushr-long/2addr v1, v7

    .line 79
    and-long/2addr v1, v5

    .line 80
    add-long/2addr v8, v1

    .line 81
    const/4 v1, 0x3

    .line 82
    int-to-long v1, v1

    .line 83
    add-long/2addr v8, v1

    .line 84
    int-to-long v1, v4

    .line 85
    div-long/2addr v8, v1

    .line 86
    long-to-int v1, v8

    .line 87
    invoke-virtual {p0, v1}, Le8/g;->v(I)Le8/r;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget-object v3, v2, Le8/r;->a:[B

    .line 92
    .line 93
    iget v5, v2, Le8/r;->c:I

    .line 94
    .line 95
    add-int v6, v5, v1

    .line 96
    .line 97
    sub-int/2addr v6, v0

    .line 98
    :goto_61
    if-lt v6, v5, :cond_71

    .line 99
    .line 100
    sget-object v0, Lf8/a;->a:[B

    .line 101
    .line 102
    const-wide/16 v7, 0xf

    .line 103
    .line 104
    and-long/2addr v7, p1

    .line 105
    long-to-int v7, v7

    .line 106
    aget-byte v0, v0, v7

    .line 107
    .line 108
    aput-byte v0, v3, v6

    .line 109
    .line 110
    ushr-long/2addr p1, v4

    .line 111
    add-int/lit8 v6, v6, -0x1

    .line 112
    .line 113
    goto :goto_61

    .line 114
    :cond_71
    iget p1, v2, Le8/r;->c:I

    .line 115
    .line 116
    add-int/2addr p1, v1

    .line 117
    iput p1, v2, Le8/r;->c:I

    .line 118
    .line 119
    iget-wide p1, p0, Le8/g;->b:J

    .line 120
    .line 121
    int-to-long v0, v1

    .line 122
    add-long/2addr p1, v0

    .line 123
    iput-wide p1, p0, Le8/g;->b:J

    .line 124
    .line 125
    return-void
.end method

.method public final B(I)V
    .registers 9

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Le8/g;->v(I)Le8/r;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Le8/r;->a:[B

    .line 7
    .line 8
    iget v3, v1, Le8/r;->c:I

    .line 9
    .line 10
    add-int/lit8 v4, v3, 0x1

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0x18

    .line 13
    .line 14
    and-int/lit16 v5, v5, 0xff

    .line 15
    .line 16
    int-to-byte v5, v5

    .line 17
    aput-byte v5, v2, v3

    .line 18
    .line 19
    add-int/lit8 v5, v3, 0x2

    .line 20
    .line 21
    ushr-int/lit8 v6, p1, 0x10

    .line 22
    .line 23
    and-int/lit16 v6, v6, 0xff

    .line 24
    .line 25
    int-to-byte v6, v6

    .line 26
    aput-byte v6, v2, v4

    .line 27
    .line 28
    add-int/lit8 v4, v3, 0x3

    .line 29
    .line 30
    ushr-int/lit8 v6, p1, 0x8

    .line 31
    .line 32
    and-int/lit16 v6, v6, 0xff

    .line 33
    .line 34
    int-to-byte v6, v6

    .line 35
    aput-byte v6, v2, v5

    .line 36
    .line 37
    add-int/2addr v3, v0

    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    int-to-byte p1, p1

    .line 41
    aput-byte p1, v2, v4

    .line 42
    .line 43
    iput v3, v1, Le8/r;->c:I

    .line 44
    .line 45
    iget-wide v0, p0, Le8/g;->b:J

    .line 46
    .line 47
    const-wide/16 v2, 0x4

    .line 48
    .line 49
    add-long/2addr v0, v2

    .line 50
    iput-wide v0, p0, Le8/g;->b:J

    .line 51
    .line 52
    return-void
.end method

.method public final C(I)V
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Le8/g;->v(I)Le8/r;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Le8/r;->a:[B

    .line 7
    .line 8
    iget v3, v1, Le8/r;->c:I

    .line 9
    .line 10
    add-int/lit8 v4, v3, 0x1

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0x8

    .line 13
    .line 14
    and-int/lit16 v5, v5, 0xff

    .line 15
    .line 16
    int-to-byte v5, v5

    .line 17
    aput-byte v5, v2, v3

    .line 18
    .line 19
    add-int/2addr v3, v0

    .line 20
    and-int/lit16 p1, p1, 0xff

    .line 21
    .line 22
    int-to-byte p1, p1

    .line 23
    aput-byte p1, v2, v4

    .line 24
    .line 25
    iput v3, v1, Le8/r;->c:I

    .line 26
    .line 27
    iget-wide v0, p0, Le8/g;->b:J

    .line 28
    .line 29
    const-wide/16 v2, 0x2

    .line 30
    .line 31
    add-long/2addr v0, v2

    .line 32
    iput-wide v0, p0, Le8/g;->b:J

    .line 33
    .line 34
    return-void
.end method

.method public final D(ILjava/lang/String;I)V
    .registers 13

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-ltz p1, :cond_147

    .line 7
    .line 8
    if-lt p3, p1, :cond_135

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gt p3, v0, :cond_111

    .line 15
    .line 16
    :goto_f
    if-ge p1, p3, :cond_110

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x80

    .line 23
    .line 24
    if-ge v0, v1, :cond_4d

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {p0, v2}, Le8/g;->v(I)Le8/r;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, v2, Le8/r;->a:[B

    .line 32
    .line 33
    iget v4, v2, Le8/r;->c:I

    .line 34
    .line 35
    sub-int/2addr v4, p1

    .line 36
    rsub-int v5, v4, 0x2000

    .line 37
    .line 38
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    add-int/lit8 v6, p1, 0x1

    .line 43
    .line 44
    add-int/2addr p1, v4

    .line 45
    int-to-byte v0, v0

    .line 46
    aput-byte v0, v3, p1

    .line 47
    .line 48
    :goto_2f
    move p1, v6

    .line 49
    if-ge p1, v5, :cond_3f

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-ge v0, v1, :cond_3f

    .line 56
    .line 57
    add-int/lit8 v6, p1, 0x1

    .line 58
    .line 59
    add-int/2addr p1, v4

    .line 60
    int-to-byte v0, v0

    .line 61
    aput-byte v0, v3, p1

    .line 62
    .line 63
    goto :goto_2f

    .line 64
    :cond_3f
    add-int/2addr v4, p1

    .line 65
    iget v0, v2, Le8/r;->c:I

    .line 66
    .line 67
    sub-int/2addr v4, v0

    .line 68
    add-int/2addr v0, v4

    .line 69
    iput v0, v2, Le8/r;->c:I

    .line 70
    .line 71
    iget-wide v0, p0, Le8/g;->b:J

    .line 72
    .line 73
    int-to-long v2, v4

    .line 74
    add-long/2addr v0, v2

    .line 75
    iput-wide v0, p0, Le8/g;->b:J

    .line 76
    .line 77
    goto :goto_f

    .line 78
    :cond_4d
    const/16 v2, 0x800

    .line 79
    .line 80
    if-ge v0, v2, :cond_76

    .line 81
    .line 82
    const/4 v2, 0x2

    .line 83
    invoke-virtual {p0, v2}, Le8/g;->v(I)Le8/r;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget-object v4, v3, Le8/r;->a:[B

    .line 88
    .line 89
    iget v5, v3, Le8/r;->c:I

    .line 90
    .line 91
    shr-int/lit8 v6, v0, 0x6

    .line 92
    .line 93
    or-int/lit16 v6, v6, 0xc0

    .line 94
    .line 95
    int-to-byte v6, v6

    .line 96
    aput-byte v6, v4, v5

    .line 97
    .line 98
    add-int/lit8 v6, v5, 0x1

    .line 99
    .line 100
    and-int/lit8 v0, v0, 0x3f

    .line 101
    .line 102
    or-int/2addr v0, v1

    .line 103
    int-to-byte v0, v0

    .line 104
    aput-byte v0, v4, v6

    .line 105
    .line 106
    add-int/2addr v5, v2

    .line 107
    iput v5, v3, Le8/r;->c:I

    .line 108
    .line 109
    iget-wide v0, p0, Le8/g;->b:J

    .line 110
    .line 111
    const-wide/16 v2, 0x2

    .line 112
    .line 113
    add-long/2addr v0, v2

    .line 114
    iput-wide v0, p0, Le8/g;->b:J

    .line 115
    .line 116
    :goto_73
    add-int/lit8 p1, p1, 0x1

    .line 117
    .line 118
    goto :goto_f

    .line 119
    :cond_76
    const v2, 0xd800

    .line 120
    .line 121
    .line 122
    const/16 v3, 0x3f

    .line 123
    .line 124
    if-lt v0, v2, :cond_e3

    .line 125
    .line 126
    const v2, 0xdfff

    .line 127
    .line 128
    .line 129
    if-le v0, v2, :cond_83

    .line 130
    .line 131
    goto :goto_e3

    .line 132
    :cond_83
    add-int/lit8 v2, p1, 0x1

    .line 133
    .line 134
    if-ge v2, p3, :cond_8c

    .line 135
    .line 136
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    goto :goto_8d

    .line 141
    :cond_8c
    const/4 v4, 0x0

    .line 142
    :goto_8d
    const v5, 0xdbff

    .line 143
    .line 144
    .line 145
    if-gt v0, v5, :cond_dd

    .line 146
    .line 147
    const v5, 0xdc00

    .line 148
    .line 149
    .line 150
    if-gt v5, v4, :cond_dd

    .line 151
    .line 152
    const v5, 0xe000

    .line 153
    .line 154
    .line 155
    if-ge v4, v5, :cond_dd

    .line 156
    .line 157
    and-int/lit16 v0, v0, 0x3ff

    .line 158
    .line 159
    shl-int/lit8 v0, v0, 0xa

    .line 160
    .line 161
    and-int/lit16 v2, v4, 0x3ff

    .line 162
    .line 163
    or-int/2addr v0, v2

    .line 164
    const/high16 v2, 0x10000

    .line 165
    .line 166
    add-int/2addr v0, v2

    .line 167
    const/4 v2, 0x4

    .line 168
    invoke-virtual {p0, v2}, Le8/g;->v(I)Le8/r;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    iget-object v5, v4, Le8/r;->a:[B

    .line 173
    .line 174
    iget v6, v4, Le8/r;->c:I

    .line 175
    .line 176
    shr-int/lit8 v7, v0, 0x12

    .line 177
    .line 178
    or-int/lit16 v7, v7, 0xf0

    .line 179
    .line 180
    int-to-byte v7, v7

    .line 181
    aput-byte v7, v5, v6

    .line 182
    .line 183
    add-int/lit8 v7, v6, 0x1

    .line 184
    .line 185
    shr-int/lit8 v8, v0, 0xc

    .line 186
    .line 187
    and-int/2addr v8, v3

    .line 188
    or-int/2addr v8, v1

    .line 189
    int-to-byte v8, v8

    .line 190
    aput-byte v8, v5, v7

    .line 191
    .line 192
    add-int/lit8 v7, v6, 0x2

    .line 193
    .line 194
    shr-int/lit8 v8, v0, 0x6

    .line 195
    .line 196
    and-int/2addr v8, v3

    .line 197
    or-int/2addr v8, v1

    .line 198
    int-to-byte v8, v8

    .line 199
    aput-byte v8, v5, v7

    .line 200
    .line 201
    add-int/lit8 v7, v6, 0x3

    .line 202
    .line 203
    and-int/2addr v0, v3

    .line 204
    or-int/2addr v0, v1

    .line 205
    int-to-byte v0, v0

    .line 206
    aput-byte v0, v5, v7

    .line 207
    .line 208
    add-int/2addr v6, v2

    .line 209
    iput v6, v4, Le8/r;->c:I

    .line 210
    .line 211
    iget-wide v0, p0, Le8/g;->b:J

    .line 212
    .line 213
    const-wide/16 v2, 0x4

    .line 214
    .line 215
    add-long/2addr v0, v2

    .line 216
    iput-wide v0, p0, Le8/g;->b:J

    .line 217
    .line 218
    add-int/lit8 p1, p1, 0x2

    .line 219
    .line 220
    goto/16 :goto_f

    .line 221
    .line 222
    :cond_dd
    invoke-virtual {p0, v3}, Le8/g;->z(I)V

    .line 223
    .line 224
    .line 225
    move p1, v2

    .line 226
    goto/16 :goto_f

    .line 227
    .line 228
    :cond_e3
    :goto_e3
    const/4 v2, 0x3

    .line 229
    invoke-virtual {p0, v2}, Le8/g;->v(I)Le8/r;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    iget-object v5, v4, Le8/r;->a:[B

    .line 234
    .line 235
    iget v6, v4, Le8/r;->c:I

    .line 236
    .line 237
    shr-int/lit8 v7, v0, 0xc

    .line 238
    .line 239
    or-int/lit16 v7, v7, 0xe0

    .line 240
    .line 241
    int-to-byte v7, v7

    .line 242
    aput-byte v7, v5, v6

    .line 243
    .line 244
    add-int/lit8 v7, v6, 0x1

    .line 245
    .line 246
    shr-int/lit8 v8, v0, 0x6

    .line 247
    .line 248
    and-int/2addr v3, v8

    .line 249
    or-int/2addr v3, v1

    .line 250
    int-to-byte v3, v3

    .line 251
    aput-byte v3, v5, v7

    .line 252
    .line 253
    add-int/lit8 v3, v6, 0x2

    .line 254
    .line 255
    and-int/lit8 v0, v0, 0x3f

    .line 256
    .line 257
    or-int/2addr v0, v1

    .line 258
    int-to-byte v0, v0

    .line 259
    aput-byte v0, v5, v3

    .line 260
    .line 261
    add-int/2addr v6, v2

    .line 262
    iput v6, v4, Le8/r;->c:I

    .line 263
    .line 264
    iget-wide v0, p0, Le8/g;->b:J

    .line 265
    .line 266
    const-wide/16 v2, 0x3

    .line 267
    .line 268
    add-long/2addr v0, v2

    .line 269
    iput-wide v0, p0, Le8/g;->b:J

    .line 270
    .line 271
    goto/16 :goto_73

    .line 272
    .line 273
    :cond_110
    return-void

    .line 274
    :cond_111
    new-instance p1, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v0, "endIndex > string.length: "

    .line 277
    .line 278
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string p3, " > "

    .line 285
    .line 286
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 290
    .line 291
    .line 292
    move-result p2

    .line 293
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 301
    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw p2

    .line 310
    :cond_135
    const-string p2, "endIndex < beginIndex: "

    .line 311
    .line 312
    const-string v0, " < "

    .line 313
    .line 314
    invoke-static {p3, p1, p2, v0}, Lq2/x;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 319
    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw p2

    .line 328
    :cond_147
    const-string p2, "beginIndex < 0: "

    .line 329
    .line 330
    invoke-static {p1, p2}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw p2
.end method

.method public final E(Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Le8/g;->D(ILjava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final F(I)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/16 v2, 0x80

    .line 6
    .line 7
    if-ge v1, v2, :cond_c

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p1}, Le8/g;->z(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    const/16 v3, 0x800

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/16 v5, 0x3f

    .line 17
    .line 18
    if-ge v1, v3, :cond_34

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Le8/g;->v(I)Le8/r;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v6, v3, Le8/r;->a:[B

    .line 25
    .line 26
    iget v7, v3, Le8/r;->c:I

    .line 27
    .line 28
    shr-int/lit8 v8, v1, 0x6

    .line 29
    .line 30
    or-int/lit16 v8, v8, 0xc0

    .line 31
    .line 32
    int-to-byte v8, v8

    .line 33
    aput-byte v8, v6, v7

    .line 34
    .line 35
    add-int/lit8 v8, v7, 0x1

    .line 36
    .line 37
    and-int/2addr v1, v5

    .line 38
    or-int/2addr v1, v2

    .line 39
    int-to-byte v1, v1

    .line 40
    aput-byte v1, v6, v8

    .line 41
    .line 42
    add-int/2addr v7, v4

    .line 43
    iput v7, v3, Le8/r;->c:I

    .line 44
    .line 45
    iget-wide v1, v0, Le8/g;->b:J

    .line 46
    .line 47
    const-wide/16 v3, 0x2

    .line 48
    .line 49
    add-long/2addr v1, v3

    .line 50
    iput-wide v1, v0, Le8/g;->b:J

    .line 51
    .line 52
    return-void

    .line 53
    :cond_34
    const v3, 0xd800

    .line 54
    .line 55
    .line 56
    if-gt v3, v1, :cond_42

    .line 57
    .line 58
    const v3, 0xe000

    .line 59
    .line 60
    .line 61
    if-ge v1, v3, :cond_42

    .line 62
    .line 63
    invoke-virtual {v0, v5}, Le8/g;->z(I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_42
    const/high16 v3, 0x10000

    .line 68
    .line 69
    const/4 v6, 0x3

    .line 70
    if-ge v1, v3, :cond_71

    .line 71
    .line 72
    invoke-virtual {v0, v6}, Le8/g;->v(I)Le8/r;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v4, v3, Le8/r;->a:[B

    .line 77
    .line 78
    iget v7, v3, Le8/r;->c:I

    .line 79
    .line 80
    shr-int/lit8 v8, v1, 0xc

    .line 81
    .line 82
    or-int/lit16 v8, v8, 0xe0

    .line 83
    .line 84
    int-to-byte v8, v8

    .line 85
    aput-byte v8, v4, v7

    .line 86
    .line 87
    add-int/lit8 v8, v7, 0x1

    .line 88
    .line 89
    shr-int/lit8 v9, v1, 0x6

    .line 90
    .line 91
    and-int/2addr v9, v5

    .line 92
    or-int/2addr v9, v2

    .line 93
    int-to-byte v9, v9

    .line 94
    aput-byte v9, v4, v8

    .line 95
    .line 96
    add-int/lit8 v8, v7, 0x2

    .line 97
    .line 98
    and-int/2addr v1, v5

    .line 99
    or-int/2addr v1, v2

    .line 100
    int-to-byte v1, v1

    .line 101
    aput-byte v1, v4, v8

    .line 102
    .line 103
    add-int/2addr v7, v6

    .line 104
    iput v7, v3, Le8/r;->c:I

    .line 105
    .line 106
    iget-wide v1, v0, Le8/g;->b:J

    .line 107
    .line 108
    const-wide/16 v3, 0x3

    .line 109
    .line 110
    add-long/2addr v1, v3

    .line 111
    iput-wide v1, v0, Le8/g;->b:J

    .line 112
    .line 113
    return-void

    .line 114
    :cond_71
    const v3, 0x10ffff

    .line 115
    .line 116
    .line 117
    const/4 v7, 0x4

    .line 118
    if-gt v1, v3, :cond_aa

    .line 119
    .line 120
    invoke-virtual {v0, v7}, Le8/g;->v(I)Le8/r;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget-object v4, v3, Le8/r;->a:[B

    .line 125
    .line 126
    iget v6, v3, Le8/r;->c:I

    .line 127
    .line 128
    shr-int/lit8 v8, v1, 0x12

    .line 129
    .line 130
    or-int/lit16 v8, v8, 0xf0

    .line 131
    .line 132
    int-to-byte v8, v8

    .line 133
    aput-byte v8, v4, v6

    .line 134
    .line 135
    add-int/lit8 v8, v6, 0x1

    .line 136
    .line 137
    shr-int/lit8 v9, v1, 0xc

    .line 138
    .line 139
    and-int/2addr v9, v5

    .line 140
    or-int/2addr v9, v2

    .line 141
    int-to-byte v9, v9

    .line 142
    aput-byte v9, v4, v8

    .line 143
    .line 144
    add-int/lit8 v8, v6, 0x2

    .line 145
    .line 146
    shr-int/lit8 v9, v1, 0x6

    .line 147
    .line 148
    and-int/2addr v9, v5

    .line 149
    or-int/2addr v9, v2

    .line 150
    int-to-byte v9, v9

    .line 151
    aput-byte v9, v4, v8

    .line 152
    .line 153
    add-int/lit8 v8, v6, 0x3

    .line 154
    .line 155
    and-int/2addr v1, v5

    .line 156
    or-int/2addr v1, v2

    .line 157
    int-to-byte v1, v1

    .line 158
    aput-byte v1, v4, v8

    .line 159
    .line 160
    add-int/2addr v6, v7

    .line 161
    iput v6, v3, Le8/r;->c:I

    .line 162
    .line 163
    iget-wide v1, v0, Le8/g;->b:J

    .line 164
    .line 165
    const-wide/16 v3, 0x4

    .line 166
    .line 167
    add-long/2addr v1, v3

    .line 168
    iput-wide v1, v0, Le8/g;->b:J

    .line 169
    .line 170
    return-void

    .line 171
    :cond_aa
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v5, "Unexpected code point: 0x"

    .line 176
    .line 177
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    if-eqz v1, :cond_132

    .line 181
    .line 182
    shr-int/lit8 v5, v1, 0x1c

    .line 183
    .line 184
    and-int/lit8 v5, v5, 0xf

    .line 185
    .line 186
    sget-object v8, Lf8/b;->a:[C

    .line 187
    .line 188
    aget-char v5, v8, v5

    .line 189
    .line 190
    shr-int/lit8 v9, v1, 0x18

    .line 191
    .line 192
    and-int/lit8 v9, v9, 0xf

    .line 193
    .line 194
    aget-char v9, v8, v9

    .line 195
    .line 196
    shr-int/lit8 v10, v1, 0x14

    .line 197
    .line 198
    and-int/lit8 v10, v10, 0xf

    .line 199
    .line 200
    aget-char v10, v8, v10

    .line 201
    .line 202
    shr-int/lit8 v11, v1, 0x10

    .line 203
    .line 204
    and-int/lit8 v11, v11, 0xf

    .line 205
    .line 206
    aget-char v11, v8, v11

    .line 207
    .line 208
    shr-int/lit8 v12, v1, 0xc

    .line 209
    .line 210
    and-int/lit8 v12, v12, 0xf

    .line 211
    .line 212
    aget-char v12, v8, v12

    .line 213
    .line 214
    shr-int/lit8 v13, v1, 0x8

    .line 215
    .line 216
    and-int/lit8 v13, v13, 0xf

    .line 217
    .line 218
    aget-char v13, v8, v13

    .line 219
    .line 220
    shr-int/lit8 v14, v1, 0x4

    .line 221
    .line 222
    and-int/lit8 v14, v14, 0xf

    .line 223
    .line 224
    aget-char v14, v8, v14

    .line 225
    .line 226
    and-int/lit8 v1, v1, 0xf

    .line 227
    .line 228
    aget-char v1, v8, v1

    .line 229
    .line 230
    const/16 v8, 0x8

    .line 231
    .line 232
    new-array v15, v8, [C

    .line 233
    .line 234
    const/16 v16, 0x0

    .line 235
    .line 236
    aput-char v5, v15, v16

    .line 237
    .line 238
    const/4 v5, 0x1

    .line 239
    aput-char v9, v15, v5

    .line 240
    .line 241
    aput-char v10, v15, v4

    .line 242
    .line 243
    aput-char v11, v15, v6

    .line 244
    .line 245
    aput-char v12, v15, v7

    .line 246
    .line 247
    const/4 v4, 0x5

    .line 248
    aput-char v13, v15, v4

    .line 249
    .line 250
    const/4 v4, 0x6

    .line 251
    aput-char v14, v15, v4

    .line 252
    .line 253
    const/4 v4, 0x7

    .line 254
    aput-char v1, v15, v4

    .line 255
    .line 256
    move/from16 v1, v16

    .line 257
    .line 258
    :goto_101
    if-ge v1, v8, :cond_10c

    .line 259
    .line 260
    aget-char v4, v15, v1

    .line 261
    .line 262
    const/16 v5, 0x30

    .line 263
    .line 264
    if-ne v4, v5, :cond_10c

    .line 265
    .line 266
    add-int/lit8 v1, v1, 0x1

    .line 267
    .line 268
    goto :goto_101

    .line 269
    :cond_10c
    const-string v4, "startIndex: "

    .line 270
    .line 271
    if-ltz v1, :cond_126

    .line 272
    .line 273
    if-gt v1, v8, :cond_11a

    .line 274
    .line 275
    new-instance v4, Ljava/lang/String;

    .line 276
    .line 277
    rsub-int/lit8 v5, v1, 0x8

    .line 278
    .line 279
    invoke-direct {v4, v15, v1, v5}, Ljava/lang/String;-><init>([CII)V

    .line 280
    .line 281
    .line 282
    goto :goto_134

    .line 283
    :cond_11a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 284
    .line 285
    const-string v3, " > endIndex: 8"

    .line 286
    .line 287
    invoke-static {v1, v4, v3}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v2

    .line 295
    :cond_126
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 296
    .line 297
    const-string v3, ", endIndex: 8, size: 8"

    .line 298
    .line 299
    invoke-static {v1, v4, v3}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v2

    .line 307
    :cond_132
    const-string v4, "0"

    .line 308
    .line 309
    :goto_134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw v2
.end method

.method public final a(Le8/g;JJ)V
    .registers 13

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Le8/g;->b:J

    .line 7
    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-static/range {v1 .. v6}, Li2/t;->c(JJJ)V

    .line 11
    .line 12
    .line 13
    const-wide/16 p2, 0x0

    .line 14
    .line 15
    cmp-long p4, v5, p2

    .line 16
    .line 17
    if-nez p4, :cond_13

    .line 18
    .line 19
    goto :goto_66

    .line 20
    :cond_13
    iget-wide p4, p1, Le8/g;->b:J

    .line 21
    .line 22
    add-long/2addr p4, v5

    .line 23
    iput-wide p4, p1, Le8/g;->b:J

    .line 24
    .line 25
    iget-object p4, p0, Le8/g;->a:Le8/r;

    .line 26
    .line 27
    :goto_1a
    invoke-static {p4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget p5, p4, Le8/r;->c:I

    .line 31
    .line 32
    iget v0, p4, Le8/r;->b:I

    .line 33
    .line 34
    sub-int/2addr p5, v0

    .line 35
    int-to-long v0, p5

    .line 36
    cmp-long p5, v3, v0

    .line 37
    .line 38
    if-ltz p5, :cond_2b

    .line 39
    .line 40
    sub-long/2addr v3, v0

    .line 41
    iget-object p4, p4, Le8/r;->f:Le8/r;

    .line 42
    .line 43
    goto :goto_1a

    .line 44
    :cond_2b
    move-object v0, p4

    .line 45
    move-wide p4, v5

    .line 46
    :goto_2d
    cmp-long v1, p4, p2

    .line 47
    .line 48
    if-lez v1, :cond_66

    .line 49
    .line 50
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Le8/r;->c()Le8/r;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget v2, v1, Le8/r;->b:I

    .line 58
    .line 59
    long-to-int v3, v3

    .line 60
    add-int/2addr v2, v3

    .line 61
    iput v2, v1, Le8/r;->b:I

    .line 62
    .line 63
    long-to-int v3, p4

    .line 64
    add-int/2addr v2, v3

    .line 65
    iget v3, v1, Le8/r;->c:I

    .line 66
    .line 67
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iput v2, v1, Le8/r;->c:I

    .line 72
    .line 73
    iget-object v2, p1, Le8/g;->a:Le8/r;

    .line 74
    .line 75
    if-nez v2, :cond_53

    .line 76
    .line 77
    iput-object v1, v1, Le8/r;->g:Le8/r;

    .line 78
    .line 79
    iput-object v1, v1, Le8/r;->f:Le8/r;

    .line 80
    .line 81
    iput-object v1, p1, Le8/g;->a:Le8/r;

    .line 82
    .line 83
    goto :goto_5b

    .line 84
    :cond_53
    iget-object v2, v2, Le8/r;->g:Le8/r;

    .line 85
    .line 86
    invoke-static {v2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v1}, Le8/r;->b(Le8/r;)V

    .line 90
    .line 91
    .line 92
    :goto_5b
    iget v2, v1, Le8/r;->c:I

    .line 93
    .line 94
    iget v1, v1, Le8/r;->b:I

    .line 95
    .line 96
    sub-int/2addr v2, v1

    .line 97
    int-to-long v1, v2

    .line 98
    sub-long/2addr p4, v1

    .line 99
    iget-object v0, v0, Le8/r;->f:Le8/r;

    .line 100
    .line 101
    move-wide v3, p2

    .line 102
    goto :goto_2d

    .line 103
    :cond_66
    :goto_66
    return-void
.end method

.method public final b()Le8/y;
    .registers 2

    .line 1
    sget-object v0, Le8/y;->d:Le8/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Z
    .registers 5

    .line 1
    iget-wide v0, p0, Le8/g;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 7

    .line 1
    new-instance v0, Le8/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Le8/g;->b:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-nez v1, :cond_e

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_e
    iget-object v1, p0, Le8/g;->a:Le8/r;

    .line 16
    .line 17
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Le8/r;->c()Le8/r;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v0, Le8/g;->a:Le8/r;

    .line 25
    .line 26
    iput-object v2, v2, Le8/r;->g:Le8/r;

    .line 27
    .line 28
    iput-object v2, v2, Le8/r;->f:Le8/r;

    .line 29
    .line 30
    iget-object v3, v1, Le8/r;->f:Le8/r;

    .line 31
    .line 32
    :goto_1f
    if-eq v3, v1, :cond_33

    .line 33
    .line 34
    iget-object v4, v2, Le8/r;->g:Le8/r;

    .line 35
    .line 36
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Le8/r;->c()Le8/r;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Le8/r;->b(Le8/r;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v3, Le8/r;->f:Le8/r;

    .line 50
    .line 51
    goto :goto_1f

    .line 52
    :cond_33
    iget-wide v1, p0, Le8/g;->b:J

    .line 53
    .line 54
    iput-wide v1, v0, Le8/g;->b:J

    .line 55
    .line 56
    return-object v0
.end method

.method public final close()V
    .registers 1

    .line 1
    return-void
.end method

.method public final bridge synthetic d(J)Le8/h;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Le8/g;->A(J)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final e(J)Le8/j;
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_32

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-gtz v0, :cond_32

    .line 13
    .line 14
    iget-wide v0, p0, Le8/g;->b:J

    .line 15
    .line 16
    cmp-long v0, v0, p1

    .line 17
    .line 18
    if-ltz v0, :cond_2c

    .line 19
    .line 20
    const-wide/16 v0, 0x1000

    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-ltz v0, :cond_22

    .line 25
    .line 26
    long-to-int v0, p1

    .line 27
    invoke-virtual {p0, v0}, Le8/g;->u(I)Le8/j;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, p1, p2}, Le8/g;->skip(J)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_22
    new-instance v0, Le8/j;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Le8/g;->s(J)[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Le8/j;-><init>([B)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2c
    new-instance p1, Ljava/io/EOFException;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, "byteCount: "

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_8

    .line 7
    .line 8
    return v2

    .line 9
    :cond_8
    instance-of v3, v1, Le8/g;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_e

    .line 13
    .line 14
    return v4

    .line 15
    :cond_e
    iget-wide v5, v0, Le8/g;->b:J

    .line 16
    .line 17
    check-cast v1, Le8/g;

    .line 18
    .line 19
    iget-wide v7, v1, Le8/g;->b:J

    .line 20
    .line 21
    cmp-long v3, v5, v7

    .line 22
    .line 23
    if-eqz v3, :cond_19

    .line 24
    .line 25
    return v4

    .line 26
    :cond_19
    const-wide/16 v7, 0x0

    .line 27
    .line 28
    cmp-long v3, v5, v7

    .line 29
    .line 30
    if-nez v3, :cond_20

    .line 31
    .line 32
    return v2

    .line 33
    :cond_20
    iget-object v3, v0, Le8/g;->a:Le8/r;

    .line 34
    .line 35
    invoke-static {v3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v1, Le8/g;->a:Le8/r;

    .line 39
    .line 40
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget v5, v3, Le8/r;->b:I

    .line 44
    .line 45
    iget v6, v1, Le8/r;->b:I

    .line 46
    .line 47
    move-wide v9, v7

    .line 48
    :goto_2f
    iget-wide v11, v0, Le8/g;->b:J

    .line 49
    .line 50
    cmp-long v11, v9, v11

    .line 51
    .line 52
    if-gez v11, :cond_74

    .line 53
    .line 54
    iget v11, v3, Le8/r;->c:I

    .line 55
    .line 56
    sub-int/2addr v11, v5

    .line 57
    iget v12, v1, Le8/r;->c:I

    .line 58
    .line 59
    sub-int/2addr v12, v6

    .line 60
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    int-to-long v11, v11

    .line 65
    move-wide v13, v7

    .line 66
    :goto_41
    cmp-long v15, v13, v11

    .line 67
    .line 68
    if-gez v15, :cond_5c

    .line 69
    .line 70
    iget-object v15, v3, Le8/r;->a:[B

    .line 71
    .line 72
    add-int/lit8 v16, v5, 0x1

    .line 73
    .line 74
    aget-byte v5, v15, v5

    .line 75
    .line 76
    iget-object v15, v1, Le8/r;->a:[B

    .line 77
    .line 78
    add-int/lit8 v17, v6, 0x1

    .line 79
    .line 80
    aget-byte v6, v15, v6

    .line 81
    .line 82
    if-eq v5, v6, :cond_54

    .line 83
    .line 84
    return v4

    .line 85
    :cond_54
    const-wide/16 v5, 0x1

    .line 86
    .line 87
    add-long/2addr v13, v5

    .line 88
    move/from16 v5, v16

    .line 89
    .line 90
    move/from16 v6, v17

    .line 91
    .line 92
    goto :goto_41

    .line 93
    :cond_5c
    iget v13, v3, Le8/r;->c:I

    .line 94
    .line 95
    if-ne v5, v13, :cond_67

    .line 96
    .line 97
    iget-object v3, v3, Le8/r;->f:Le8/r;

    .line 98
    .line 99
    invoke-static {v3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget v5, v3, Le8/r;->b:I

    .line 103
    .line 104
    :cond_67
    iget v13, v1, Le8/r;->c:I

    .line 105
    .line 106
    if-ne v6, v13, :cond_72

    .line 107
    .line 108
    iget-object v1, v1, Le8/r;->f:Le8/r;

    .line 109
    .line 110
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget v6, v1, Le8/r;->b:I

    .line 114
    .line 115
    :cond_72
    add-long/2addr v9, v11

    .line 116
    goto :goto_2f

    .line 117
    :cond_74
    return v2
.end method

.method public final f()Ljava/lang/String;
    .registers 3

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Le8/g;->i(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final flush()V
    .registers 1

    .line 1
    return-void
.end method

.method public final g(J)B
    .registers 10

    .line 1
    iget-wide v0, p0, Le8/g;->b:J

    .line 2
    .line 3
    const-wide/16 v4, 0x1

    .line 4
    .line 5
    move-wide v2, p1

    .line 6
    invoke-static/range {v0 .. v5}, Li2/t;->c(JJJ)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Le8/g;->a:Le8/r;

    .line 10
    .line 11
    if-eqz p1, :cond_4d

    .line 12
    .line 13
    iget-wide v0, p0, Le8/g;->b:J

    .line 14
    .line 15
    sub-long v4, v0, v2

    .line 16
    .line 17
    cmp-long p2, v4, v2

    .line 18
    .line 19
    if-gez p2, :cond_30

    .line 20
    .line 21
    :goto_14
    cmp-long p2, v0, v2

    .line 22
    .line 23
    if-lez p2, :cond_25

    .line 24
    .line 25
    iget-object p1, p1, Le8/r;->g:Le8/r;

    .line 26
    .line 27
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget p2, p1, Le8/r;->c:I

    .line 31
    .line 32
    iget v4, p1, Le8/r;->b:I

    .line 33
    .line 34
    sub-int/2addr p2, v4

    .line 35
    int-to-long v4, p2

    .line 36
    sub-long/2addr v0, v4

    .line 37
    goto :goto_14

    .line 38
    :cond_25
    iget-object p2, p1, Le8/r;->a:[B

    .line 39
    .line 40
    iget p1, p1, Le8/r;->b:I

    .line 41
    .line 42
    int-to-long v4, p1

    .line 43
    add-long/2addr v4, v2

    .line 44
    sub-long/2addr v4, v0

    .line 45
    long-to-int p1, v4

    .line 46
    aget-byte p1, p2, p1

    .line 47
    .line 48
    return p1

    .line 49
    :cond_30
    const-wide/16 v0, 0x0

    .line 50
    .line 51
    :goto_32
    iget p2, p1, Le8/r;->c:I

    .line 52
    .line 53
    iget v4, p1, Le8/r;->b:I

    .line 54
    .line 55
    sub-int/2addr p2, v4

    .line 56
    int-to-long v5, p2

    .line 57
    add-long/2addr v5, v0

    .line 58
    cmp-long p2, v5, v2

    .line 59
    .line 60
    if-gtz p2, :cond_44

    .line 61
    .line 62
    iget-object p1, p1, Le8/r;->f:Le8/r;

    .line 63
    .line 64
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-wide v0, v5

    .line 68
    goto :goto_32

    .line 69
    :cond_44
    iget-object p1, p1, Le8/r;->a:[B

    .line 70
    .line 71
    int-to-long v4, v4

    .line 72
    add-long/2addr v4, v2

    .line 73
    sub-long/2addr v4, v0

    .line 74
    long-to-int p2, v4

    .line 75
    aget-byte p1, p1, p2

    .line 76
    .line 77
    return p1

    .line 78
    :cond_4d
    const/4 p1, 0x0

    .line 79
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public final h(JLe8/g;)J
    .registers 8

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p1, v0

    .line 9
    .line 10
    if-ltz v2, :cond_1d

    .line 11
    .line 12
    iget-wide v2, p0, Le8/g;->b:J

    .line 13
    .line 14
    cmp-long v0, v2, v0

    .line 15
    .line 16
    if-nez v0, :cond_14

    .line 17
    .line 18
    const-wide/16 p1, -0x1

    .line 19
    .line 20
    return-wide p1

    .line 21
    :cond_14
    cmp-long v0, p1, v2

    .line 22
    .line 23
    if-lez v0, :cond_19

    .line 24
    .line 25
    move-wide p1, v2

    .line 26
    :cond_19
    invoke-virtual {p3, p1, p2, p0}, Le8/g;->n(JLe8/g;)V

    .line 27
    .line 28
    .line 29
    return-wide p1

    .line 30
    :cond_1d
    new-instance p3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "byteCount < 0: "

    .line 33
    .line 34
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public final hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Le8/g;->a:Le8/r;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v1, 0x1

    .line 8
    :cond_7
    iget v2, v0, Le8/r;->b:I

    .line 9
    .line 10
    iget v3, v0, Le8/r;->c:I

    .line 11
    .line 12
    :goto_b
    if-ge v2, v3, :cond_17

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    iget-object v4, v0, Le8/r;->a:[B

    .line 17
    .line 18
    aget-byte v4, v4, v2

    .line 19
    .line 20
    add-int/2addr v1, v4

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_b

    .line 24
    :cond_17
    iget-object v0, v0, Le8/r;->f:Le8/r;

    .line 25
    .line 26
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Le8/g;->a:Le8/r;

    .line 30
    .line 31
    if-ne v0, v2, :cond_7

    .line 32
    .line 33
    return v1
.end method

.method public final i(J)Ljava/lang/String;
    .registers 13

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_8c

    .line 6
    .line 7
    const-wide v0, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    const-wide/16 v6, 0x1

    .line 15
    .line 16
    if-nez v2, :cond_13

    .line 17
    .line 18
    :goto_11
    move-wide v4, v0

    .line 19
    goto :goto_16

    .line 20
    :cond_13
    add-long v0, p1, v6

    .line 21
    .line 22
    goto :goto_11

    .line 23
    :goto_16
    const/16 v1, 0xa

    .line 24
    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    move-object v0, p0

    .line 28
    invoke-virtual/range {v0 .. v5}, Le8/g;->o(BJJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    const-wide/16 v8, -0x1

    .line 33
    .line 34
    cmp-long v3, v1, v8

    .line 35
    .line 36
    if-eqz v3, :cond_2a

    .line 37
    .line 38
    invoke-static {v1, v2, p0}, Lf8/a;->a(JLe8/g;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    return-object v1

    .line 43
    :cond_2a
    iget-wide v1, p0, Le8/g;->b:J

    .line 44
    .line 45
    cmp-long v1, v4, v1

    .line 46
    .line 47
    if-gez v1, :cond_47

    .line 48
    .line 49
    sub-long v1, v4, v6

    .line 50
    .line 51
    invoke-virtual {p0, v1, v2}, Le8/g;->g(J)B

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/16 v2, 0xd

    .line 56
    .line 57
    if-ne v1, v2, :cond_47

    .line 58
    .line 59
    invoke-virtual {p0, v4, v5}, Le8/g;->g(J)B

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/16 v2, 0xa

    .line 64
    .line 65
    if-ne v1, v2, :cond_47

    .line 66
    .line 67
    invoke-static {v4, v5, p0}, Lf8/a;->a(JLe8/g;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    return-object v1

    .line 72
    :cond_47
    new-instance v1, Le8/g;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-wide v2, p0, Le8/g;->b:J

    .line 78
    .line 79
    const/16 v4, 0x20

    .line 80
    .line 81
    int-to-long v4, v4

    .line 82
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    const-wide/16 v2, 0x0

    .line 87
    .line 88
    move-object v0, p0

    .line 89
    invoke-virtual/range {v0 .. v5}, Le8/g;->a(Le8/g;JJ)V

    .line 90
    .line 91
    .line 92
    new-instance v2, Ljava/io/EOFException;

    .line 93
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v4, "\\n not found: limit="

    .line 97
    .line 98
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-wide v4, p0, Le8/g;->b:J

    .line 102
    .line 103
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 104
    .line 105
    .line 106
    move-result-wide v4

    .line 107
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v4, " content="

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-wide v4, v1, Le8/g;->b:J

    .line 116
    .line 117
    invoke-virtual {v1, v4, v5}, Le8/g;->e(J)Le8/j;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Le8/j;->b()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const/16 v1, 0x2026

    .line 129
    .line 130
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-direct {v2, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v2

    .line 141
    :cond_8c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "limit < 0: "

    .line 144
    .line 145
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v2
.end method

.method public final isOpen()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final bridge synthetic j(Le8/j;)Le8/h;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Le8/g;->w(Le8/j;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final k(Le8/o;)I
    .registers 5

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, v0}, Lf8/a;->b(Le8/g;Le8/o;Z)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-ne v0, v1, :cond_e

    .line 13
    .line 14
    return v1

    .line 15
    :cond_e
    iget-object p1, p1, Le8/o;->a:[Le8/j;

    .line 16
    .line 17
    aget-object p1, p1, v0

    .line 18
    .line 19
    invoke-virtual {p1}, Le8/j;->a()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    int-to-long v1, p1

    .line 24
    invoke-virtual {p0, v1, v2}, Le8/g;->skip(J)V

    .line 25
    .line 26
    .line 27
    return v0
.end method

.method public final l(J)V
    .registers 5

    .line 1
    iget-wide v0, p0, Le8/g;->b:J

    .line 2
    .line 3
    cmp-long p1, v0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final bridge synthetic m(Ljava/lang/String;)Le8/h;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Le8/g;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final n(JLe8/g;)V
    .registers 12

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-eq p3, p0, :cond_11b

    .line 7
    .line 8
    iget-wide v1, p3, Le8/g;->b:J

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    move-wide v5, p1

    .line 13
    invoke-static/range {v1 .. v6}, Li2/t;->c(JJJ)V

    .line 14
    .line 15
    .line 16
    :goto_f
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmp-long v0, p1, v0

    .line 19
    .line 20
    if-lez v0, :cond_11a

    .line 21
    .line 22
    iget-object v0, p3, Le8/g;->a:Le8/r;

    .line 23
    .line 24
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget v0, v0, Le8/r;->c:I

    .line 28
    .line 29
    iget-object v1, p3, Le8/g;->a:Le8/r;

    .line 30
    .line 31
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget v1, v1, Le8/r;->b:I

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    int-to-long v0, v0

    .line 38
    cmp-long v0, p1, v0

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    if-gez v0, :cond_a4

    .line 42
    .line 43
    iget-object v0, p0, Le8/g;->a:Le8/r;

    .line 44
    .line 45
    if-eqz v0, :cond_31

    .line 46
    .line 47
    iget-object v0, v0, Le8/r;->g:Le8/r;

    .line 48
    .line 49
    goto :goto_32

    .line 50
    :cond_31
    const/4 v0, 0x0

    .line 51
    :goto_32
    if-eqz v0, :cond_60

    .line 52
    .line 53
    iget-boolean v2, v0, Le8/r;->e:Z

    .line 54
    .line 55
    if-eqz v2, :cond_60

    .line 56
    .line 57
    iget v2, v0, Le8/r;->c:I

    .line 58
    .line 59
    int-to-long v2, v2

    .line 60
    add-long/2addr v2, p1

    .line 61
    iget-boolean v4, v0, Le8/r;->d:Z

    .line 62
    .line 63
    if-eqz v4, :cond_42

    .line 64
    .line 65
    move v4, v1

    .line 66
    goto :goto_44

    .line 67
    :cond_42
    iget v4, v0, Le8/r;->b:I

    .line 68
    .line 69
    :goto_44
    int-to-long v4, v4

    .line 70
    sub-long/2addr v2, v4

    .line 71
    const-wide/16 v4, 0x2000

    .line 72
    .line 73
    cmp-long v2, v2, v4

    .line 74
    .line 75
    if-gtz v2, :cond_60

    .line 76
    .line 77
    iget-object v1, p3, Le8/g;->a:Le8/r;

    .line 78
    .line 79
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    long-to-int v2, p1

    .line 83
    invoke-virtual {v1, v0, v2}, Le8/r;->d(Le8/r;I)V

    .line 84
    .line 85
    .line 86
    iget-wide v0, p3, Le8/g;->b:J

    .line 87
    .line 88
    sub-long/2addr v0, p1

    .line 89
    iput-wide v0, p3, Le8/g;->b:J

    .line 90
    .line 91
    iget-wide v0, p0, Le8/g;->b:J

    .line 92
    .line 93
    add-long/2addr v0, p1

    .line 94
    iput-wide v0, p0, Le8/g;->b:J

    .line 95
    .line 96
    return-void

    .line 97
    :cond_60
    iget-object v0, p3, Le8/g;->a:Le8/r;

    .line 98
    .line 99
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    long-to-int v2, p1

    .line 103
    if-lez v2, :cond_9c

    .line 104
    .line 105
    iget v3, v0, Le8/r;->c:I

    .line 106
    .line 107
    iget v4, v0, Le8/r;->b:I

    .line 108
    .line 109
    sub-int/2addr v3, v4

    .line 110
    if-gt v2, v3, :cond_9c

    .line 111
    .line 112
    const/16 v3, 0x400

    .line 113
    .line 114
    if-lt v2, v3, :cond_78

    .line 115
    .line 116
    invoke-virtual {v0}, Le8/r;->c()Le8/r;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    goto :goto_87

    .line 121
    :cond_78
    invoke-static {}, Le8/s;->b()Le8/r;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iget-object v4, v0, Le8/r;->a:[B

    .line 126
    .line 127
    iget-object v5, v3, Le8/r;->a:[B

    .line 128
    .line 129
    iget v6, v0, Le8/r;->b:I

    .line 130
    .line 131
    add-int v7, v6, v2

    .line 132
    .line 133
    invoke-static {v1, v6, v7, v4, v5}, Ls6/f;->j(III[B[B)V

    .line 134
    .line 135
    .line 136
    :goto_87
    iget v4, v3, Le8/r;->b:I

    .line 137
    .line 138
    add-int/2addr v4, v2

    .line 139
    iput v4, v3, Le8/r;->c:I

    .line 140
    .line 141
    iget v4, v0, Le8/r;->b:I

    .line 142
    .line 143
    add-int/2addr v4, v2

    .line 144
    iput v4, v0, Le8/r;->b:I

    .line 145
    .line 146
    iget-object v0, v0, Le8/r;->g:Le8/r;

    .line 147
    .line 148
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v3}, Le8/r;->b(Le8/r;)V

    .line 152
    .line 153
    .line 154
    iput-object v3, p3, Le8/g;->a:Le8/r;

    .line 155
    .line 156
    goto :goto_a4

    .line 157
    :cond_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    const-string p2, "byteCount out of range"

    .line 160
    .line 161
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :cond_a4
    :goto_a4
    iget-object v0, p3, Le8/g;->a:Le8/r;

    .line 166
    .line 167
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iget v2, v0, Le8/r;->c:I

    .line 171
    .line 172
    iget v3, v0, Le8/r;->b:I

    .line 173
    .line 174
    sub-int/2addr v2, v3

    .line 175
    int-to-long v2, v2

    .line 176
    invoke-virtual {v0}, Le8/r;->a()Le8/r;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    iput-object v4, p3, Le8/g;->a:Le8/r;

    .line 181
    .line 182
    iget-object v4, p0, Le8/g;->a:Le8/r;

    .line 183
    .line 184
    if-nez v4, :cond_c0

    .line 185
    .line 186
    iput-object v0, p0, Le8/g;->a:Le8/r;

    .line 187
    .line 188
    iput-object v0, v0, Le8/r;->g:Le8/r;

    .line 189
    .line 190
    iput-object v0, v0, Le8/r;->f:Le8/r;

    .line 191
    .line 192
    goto :goto_105

    .line 193
    :cond_c0
    iget-object v4, v4, Le8/r;->g:Le8/r;

    .line 194
    .line 195
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v0}, Le8/r;->b(Le8/r;)V

    .line 199
    .line 200
    .line 201
    iget-object v4, v0, Le8/r;->g:Le8/r;

    .line 202
    .line 203
    if-eq v4, v0, :cond_112

    .line 204
    .line 205
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-boolean v4, v4, Le8/r;->e:Z

    .line 209
    .line 210
    if-nez v4, :cond_d4

    .line 211
    .line 212
    goto :goto_105

    .line 213
    :cond_d4
    iget v4, v0, Le8/r;->c:I

    .line 214
    .line 215
    iget v5, v0, Le8/r;->b:I

    .line 216
    .line 217
    sub-int/2addr v4, v5

    .line 218
    iget-object v5, v0, Le8/r;->g:Le8/r;

    .line 219
    .line 220
    invoke-static {v5}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iget v5, v5, Le8/r;->c:I

    .line 224
    .line 225
    rsub-int v5, v5, 0x2000

    .line 226
    .line 227
    iget-object v6, v0, Le8/r;->g:Le8/r;

    .line 228
    .line 229
    invoke-static {v6}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iget-boolean v6, v6, Le8/r;->d:Z

    .line 233
    .line 234
    if-eqz v6, :cond_ec

    .line 235
    .line 236
    goto :goto_f3

    .line 237
    :cond_ec
    iget-object v1, v0, Le8/r;->g:Le8/r;

    .line 238
    .line 239
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    iget v1, v1, Le8/r;->b:I

    .line 243
    .line 244
    :goto_f3
    add-int/2addr v5, v1

    .line 245
    if-le v4, v5, :cond_f7

    .line 246
    .line 247
    goto :goto_105

    .line 248
    :cond_f7
    iget-object v1, v0, Le8/r;->g:Le8/r;

    .line 249
    .line 250
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v1, v4}, Le8/r;->d(Le8/r;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Le8/r;->a()Le8/r;

    .line 257
    .line 258
    .line 259
    invoke-static {v0}, Le8/s;->a(Le8/r;)V

    .line 260
    .line 261
    .line 262
    :goto_105
    iget-wide v0, p3, Le8/g;->b:J

    .line 263
    .line 264
    sub-long/2addr v0, v2

    .line 265
    iput-wide v0, p3, Le8/g;->b:J

    .line 266
    .line 267
    iget-wide v0, p0, Le8/g;->b:J

    .line 268
    .line 269
    add-long/2addr v0, v2

    .line 270
    iput-wide v0, p0, Le8/g;->b:J

    .line 271
    .line 272
    sub-long/2addr p1, v2

    .line 273
    goto/16 :goto_f

    .line 274
    .line 275
    :cond_112
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 276
    .line 277
    const-string p2, "cannot compact"

    .line 278
    .line 279
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p1

    .line 283
    :cond_11a
    return-void

    .line 284
    :cond_11b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 285
    .line 286
    const-string p2, "source == this"

    .line 287
    .line 288
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    throw p1
.end method

.method public final o(BJJ)J
    .registers 15

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, v0, p2

    .line 4
    .line 5
    if-gtz v2, :cond_b5

    .line 6
    .line 7
    cmp-long v2, p2, p4

    .line 8
    .line 9
    if-gtz v2, :cond_b5

    .line 10
    .line 11
    iget-wide v2, p0, Le8/g;->b:J

    .line 12
    .line 13
    cmp-long v4, p4, v2

    .line 14
    .line 15
    if-lez v4, :cond_11

    .line 16
    .line 17
    move-wide p4, v2

    .line 18
    :cond_11
    cmp-long v4, p2, p4

    .line 19
    .line 20
    if-nez v4, :cond_17

    .line 21
    .line 22
    goto/16 :goto_b2

    .line 23
    .line 24
    :cond_17
    iget-object v4, p0, Le8/g;->a:Le8/r;

    .line 25
    .line 26
    if-nez v4, :cond_1d

    .line 27
    .line 28
    goto/16 :goto_b2

    .line 29
    .line 30
    :cond_1d
    sub-long v5, v2, p2

    .line 31
    .line 32
    cmp-long v5, v5, p2

    .line 33
    .line 34
    if-gez v5, :cond_6a

    .line 35
    .line 36
    :goto_23
    cmp-long v0, v2, p2

    .line 37
    .line 38
    if-lez v0, :cond_34

    .line 39
    .line 40
    iget-object v4, v4, Le8/r;->g:Le8/r;

    .line 41
    .line 42
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget v0, v4, Le8/r;->c:I

    .line 46
    .line 47
    iget v1, v4, Le8/r;->b:I

    .line 48
    .line 49
    sub-int/2addr v0, v1

    .line 50
    int-to-long v0, v0

    .line 51
    sub-long/2addr v2, v0

    .line 52
    goto :goto_23

    .line 53
    :cond_34
    :goto_34
    cmp-long v0, v2, p4

    .line 54
    .line 55
    if-gez v0, :cond_b2

    .line 56
    .line 57
    iget-object v0, v4, Le8/r;->a:[B

    .line 58
    .line 59
    iget v1, v4, Le8/r;->c:I

    .line 60
    .line 61
    int-to-long v5, v1

    .line 62
    iget v1, v4, Le8/r;->b:I

    .line 63
    .line 64
    int-to-long v7, v1

    .line 65
    add-long/2addr v7, p4

    .line 66
    sub-long/2addr v7, v2

    .line 67
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    long-to-int v1, v5

    .line 72
    iget v5, v4, Le8/r;->b:I

    .line 73
    .line 74
    int-to-long v5, v5

    .line 75
    add-long/2addr v5, p2

    .line 76
    sub-long/2addr v5, v2

    .line 77
    long-to-int p2, v5

    .line 78
    :goto_4d
    if-ge p2, v1, :cond_5c

    .line 79
    .line 80
    aget-byte p3, v0, p2

    .line 81
    .line 82
    if-ne p3, p1, :cond_59

    .line 83
    .line 84
    iget p1, v4, Le8/r;->b:I

    .line 85
    .line 86
    sub-int/2addr p2, p1

    .line 87
    int-to-long p1, p2

    .line 88
    add-long/2addr p1, v2

    .line 89
    return-wide p1

    .line 90
    :cond_59
    add-int/lit8 p2, p2, 0x1

    .line 91
    .line 92
    goto :goto_4d

    .line 93
    :cond_5c
    iget p2, v4, Le8/r;->c:I

    .line 94
    .line 95
    iget p3, v4, Le8/r;->b:I

    .line 96
    .line 97
    sub-int/2addr p2, p3

    .line 98
    int-to-long p2, p2

    .line 99
    add-long/2addr v2, p2

    .line 100
    iget-object v4, v4, Le8/r;->f:Le8/r;

    .line 101
    .line 102
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    move-wide p2, v2

    .line 106
    goto :goto_34

    .line 107
    :cond_6a
    :goto_6a
    iget v2, v4, Le8/r;->c:I

    .line 108
    .line 109
    iget v3, v4, Le8/r;->b:I

    .line 110
    .line 111
    sub-int/2addr v2, v3

    .line 112
    int-to-long v2, v2

    .line 113
    add-long/2addr v2, v0

    .line 114
    cmp-long v5, v2, p2

    .line 115
    .line 116
    if-gtz v5, :cond_7c

    .line 117
    .line 118
    iget-object v4, v4, Le8/r;->f:Le8/r;

    .line 119
    .line 120
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    move-wide v0, v2

    .line 124
    goto :goto_6a

    .line 125
    :cond_7c
    :goto_7c
    cmp-long v2, v0, p4

    .line 126
    .line 127
    if-gez v2, :cond_b2

    .line 128
    .line 129
    iget-object v2, v4, Le8/r;->a:[B

    .line 130
    .line 131
    iget v3, v4, Le8/r;->c:I

    .line 132
    .line 133
    int-to-long v5, v3

    .line 134
    iget v3, v4, Le8/r;->b:I

    .line 135
    .line 136
    int-to-long v7, v3

    .line 137
    add-long/2addr v7, p4

    .line 138
    sub-long/2addr v7, v0

    .line 139
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 140
    .line 141
    .line 142
    move-result-wide v5

    .line 143
    long-to-int v3, v5

    .line 144
    iget v5, v4, Le8/r;->b:I

    .line 145
    .line 146
    int-to-long v5, v5

    .line 147
    add-long/2addr v5, p2

    .line 148
    sub-long/2addr v5, v0

    .line 149
    long-to-int p2, v5

    .line 150
    :goto_95
    if-ge p2, v3, :cond_a4

    .line 151
    .line 152
    aget-byte p3, v2, p2

    .line 153
    .line 154
    if-ne p3, p1, :cond_a1

    .line 155
    .line 156
    iget p1, v4, Le8/r;->b:I

    .line 157
    .line 158
    sub-int/2addr p2, p1

    .line 159
    int-to-long p1, p2

    .line 160
    add-long/2addr p1, v0

    .line 161
    return-wide p1

    .line 162
    :cond_a1
    add-int/lit8 p2, p2, 0x1

    .line 163
    .line 164
    goto :goto_95

    .line 165
    :cond_a4
    iget p2, v4, Le8/r;->c:I

    .line 166
    .line 167
    iget p3, v4, Le8/r;->b:I

    .line 168
    .line 169
    sub-int/2addr p2, p3

    .line 170
    int-to-long p2, p2

    .line 171
    add-long/2addr v0, p2

    .line 172
    iget-object v4, v4, Le8/r;->f:Le8/r;

    .line 173
    .line 174
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    move-wide p2, v0

    .line 178
    goto :goto_7c

    .line 179
    :cond_b2
    :goto_b2
    const-wide/16 p1, -0x1

    .line 180
    .line 181
    return-wide p1

    .line 182
    :cond_b5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v0, "size="

    .line 185
    .line 186
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-wide v0, p0, Le8/g;->b:J

    .line 190
    .line 191
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v0, " fromIndex="

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string p2, " toIndex="

    .line 203
    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p2
.end method

.method public final p()J
    .registers 16

    .line 1
    iget-wide v0, p0, Le8/g;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_ad

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    move v6, v1

    .line 12
    move-wide v4, v2

    .line 13
    :cond_c
    iget-object v7, p0, Le8/g;->a:Le8/r;

    .line 14
    .line 15
    invoke-static {v7}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v8, v7, Le8/r;->a:[B

    .line 19
    .line 20
    iget v9, v7, Le8/r;->b:I

    .line 21
    .line 22
    iget v10, v7, Le8/r;->c:I

    .line 23
    .line 24
    :goto_17
    if-ge v9, v10, :cond_92

    .line 25
    .line 26
    aget-byte v11, v8, v9

    .line 27
    .line 28
    const/16 v12, 0x30

    .line 29
    .line 30
    if-lt v11, v12, :cond_26

    .line 31
    .line 32
    const/16 v12, 0x39

    .line 33
    .line 34
    if-gt v11, v12, :cond_26

    .line 35
    .line 36
    add-int/lit8 v12, v11, -0x30

    .line 37
    .line 38
    goto :goto_3b

    .line 39
    :cond_26
    const/16 v12, 0x61

    .line 40
    .line 41
    if-lt v11, v12, :cond_31

    .line 42
    .line 43
    const/16 v12, 0x66

    .line 44
    .line 45
    if-gt v11, v12, :cond_31

    .line 46
    .line 47
    add-int/lit8 v12, v11, -0x57

    .line 48
    .line 49
    goto :goto_3b

    .line 50
    :cond_31
    const/16 v12, 0x41

    .line 51
    .line 52
    if-lt v11, v12, :cond_6a

    .line 53
    .line 54
    const/16 v12, 0x46

    .line 55
    .line 56
    if-gt v11, v12, :cond_6a

    .line 57
    .line 58
    add-int/lit8 v12, v11, -0x37

    .line 59
    .line 60
    :goto_3b
    const-wide/high16 v13, -0x1000000000000000L    # -3.105036184601418E231

    .line 61
    .line 62
    and-long/2addr v13, v4

    .line 63
    cmp-long v13, v13, v2

    .line 64
    .line 65
    if-nez v13, :cond_4b

    .line 66
    .line 67
    const/4 v11, 0x4

    .line 68
    shl-long/2addr v4, v11

    .line 69
    int-to-long v11, v12

    .line 70
    or-long/2addr v4, v11

    .line 71
    add-int/lit8 v9, v9, 0x1

    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_17

    .line 76
    :cond_4b
    new-instance v0, Le8/g;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v4, v5}, Le8/g;->A(J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v11}, Le8/g;->z(I)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 88
    .line 89
    iget-wide v2, v0, Le8/g;->b:J

    .line 90
    .line 91
    sget-object v4, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 92
    .line 93
    invoke-virtual {v0, v2, v3, v4}, Le8/g;->t(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v2, "Number too large: "

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :cond_6a
    const/4 v6, 0x1

    .line 108
    if-eqz v1, :cond_6e

    .line 109
    .line 110
    goto :goto_92

    .line 111
    :cond_6e
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 112
    .line 113
    shr-int/lit8 v2, v11, 0x4

    .line 114
    .line 115
    and-int/lit8 v2, v2, 0xf

    .line 116
    .line 117
    sget-object v3, Lf8/b;->a:[C

    .line 118
    .line 119
    aget-char v2, v3, v2

    .line 120
    .line 121
    and-int/lit8 v4, v11, 0xf

    .line 122
    .line 123
    aget-char v3, v3, v4

    .line 124
    .line 125
    const/4 v4, 0x2

    .line 126
    new-array v4, v4, [C

    .line 127
    .line 128
    aput-char v2, v4, v0

    .line 129
    .line 130
    aput-char v3, v4, v6

    .line 131
    .line 132
    new-instance v0, Ljava/lang/String;

    .line 133
    .line 134
    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    .line 135
    .line 136
    .line 137
    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v1

    .line 147
    :cond_92
    :goto_92
    if-ne v9, v10, :cond_9e

    .line 148
    .line 149
    invoke-virtual {v7}, Le8/r;->a()Le8/r;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    iput-object v8, p0, Le8/g;->a:Le8/r;

    .line 154
    .line 155
    invoke-static {v7}, Le8/s;->a(Le8/r;)V

    .line 156
    .line 157
    .line 158
    goto :goto_a0

    .line 159
    :cond_9e
    iput v9, v7, Le8/r;->b:I

    .line 160
    .line 161
    :goto_a0
    if-nez v6, :cond_a6

    .line 162
    .line 163
    iget-object v7, p0, Le8/g;->a:Le8/r;

    .line 164
    .line 165
    if-nez v7, :cond_c

    .line 166
    .line 167
    :cond_a6
    iget-wide v2, p0, Le8/g;->b:J

    .line 168
    .line 169
    int-to-long v0, v1

    .line 170
    sub-long/2addr v2, v0

    .line 171
    iput-wide v2, p0, Le8/g;->b:J

    .line 172
    .line 173
    return-wide v4

    .line 174
    :cond_ad
    new-instance v0, Ljava/io/EOFException;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 177
    .line 178
    .line 179
    throw v0
.end method

.method public final q(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-wide v0, p0, Le8/g;->b:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1, p1}, Le8/g;->t(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final r()Ljava/io/InputStream;
    .registers 3

    .line 1
    new-instance v0, Le8/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Le8/f;-><init>(Le8/i;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .registers 8

    const-string v0, "sink"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    iget-object v0, p0, Le8/g;->a:Le8/r;

    if-nez v0, :cond_b

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_b
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Le8/r;->c:I

    iget v3, v0, Le8/r;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, v0, Le8/r;->a:[B

    iget v3, v0, Le8/r;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4
    iget p1, v0, Le8/r;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Le8/r;->b:I

    .line 5
    iget-wide v2, p0, Le8/g;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Le8/g;->b:J

    .line 6
    iget v2, v0, Le8/r;->c:I

    if-ne p1, v2, :cond_37

    .line 7
    invoke-virtual {v0}, Le8/r;->a()Le8/r;

    move-result-object p1

    iput-object p1, p0, Le8/g;->a:Le8/r;

    .line 8
    invoke-static {v0}, Le8/s;->a(Le8/r;)V

    :cond_37
    return v1
.end method

.method public final read([BII)I
    .registers 11

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Li2/t;->c(JJJ)V

    .line 10
    iget-object v0, p0, Le8/g;->a:Le8/r;

    if-nez v0, :cond_d

    const/4 p1, -0x1

    return p1

    .line 11
    :cond_d
    iget v1, v0, Le8/r;->c:I

    iget v2, v0, Le8/r;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 12
    iget-object v1, v0, Le8/r;->a:[B

    .line 13
    iget v2, v0, Le8/r;->b:I

    add-int v3, v2, p3

    .line 14
    invoke-static {p2, v2, v3, v1, p1}, Ls6/f;->j(III[B[B)V

    .line 15
    iget p1, v0, Le8/r;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Le8/r;->b:I

    .line 16
    iget-wide v1, p0, Le8/g;->b:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 17
    iput-wide v1, p0, Le8/g;->b:J

    .line 18
    iget p2, v0, Le8/r;->c:I

    if-ne p1, p2, :cond_37

    .line 19
    invoke-virtual {v0}, Le8/r;->a()Le8/r;

    move-result-object p1

    iput-object p1, p0, Le8/g;->a:Le8/r;

    .line 20
    invoke-static {v0}, Le8/s;->a(Le8/r;)V

    :cond_37
    return p3
.end method

.method public final readByte()B
    .registers 10

    .line 1
    iget-wide v0, p0, Le8/g;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_2d

    .line 8
    .line 9
    iget-object v0, p0, Le8/g;->a:Le8/r;

    .line 10
    .line 11
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Le8/r;->b:I

    .line 15
    .line 16
    iget v2, v0, Le8/r;->c:I

    .line 17
    .line 18
    iget-object v3, v0, Le8/r;->a:[B

    .line 19
    .line 20
    add-int/lit8 v4, v1, 0x1

    .line 21
    .line 22
    aget-byte v1, v3, v1

    .line 23
    .line 24
    iget-wide v5, p0, Le8/g;->b:J

    .line 25
    .line 26
    const-wide/16 v7, 0x1

    .line 27
    .line 28
    sub-long/2addr v5, v7

    .line 29
    iput-wide v5, p0, Le8/g;->b:J

    .line 30
    .line 31
    if-ne v4, v2, :cond_2a

    .line 32
    .line 33
    invoke-virtual {v0}, Le8/r;->a()Le8/r;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, p0, Le8/g;->a:Le8/r;

    .line 38
    .line 39
    invoke-static {v0}, Le8/s;->a(Le8/r;)V

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_2a
    iput v4, v0, Le8/r;->b:I

    .line 44
    .line 45
    return v1

    .line 46
    :cond_2d
    new-instance v0, Ljava/io/EOFException;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public final readInt()I
    .registers 10

    .line 1
    iget-wide v0, p0, Le8/g;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x4

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_71

    .line 8
    .line 9
    iget-object v0, p0, Le8/g;->a:Le8/r;

    .line 10
    .line 11
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Le8/r;->b:I

    .line 15
    .line 16
    iget v4, v0, Le8/r;->c:I

    .line 17
    .line 18
    sub-int v5, v4, v1

    .line 19
    .line 20
    int-to-long v5, v5

    .line 21
    cmp-long v5, v5, v2

    .line 22
    .line 23
    if-gez v5, :cond_3a

    .line 24
    .line 25
    invoke-virtual {p0}, Le8/g;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    shl-int/lit8 v0, v0, 0x18

    .line 32
    .line 33
    invoke-virtual {p0}, Le8/g;->readByte()B

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    and-int/lit16 v1, v1, 0xff

    .line 38
    .line 39
    shl-int/lit8 v1, v1, 0x10

    .line 40
    .line 41
    or-int/2addr v0, v1

    .line 42
    invoke-virtual {p0}, Le8/g;->readByte()B

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    and-int/lit16 v1, v1, 0xff

    .line 47
    .line 48
    shl-int/lit8 v1, v1, 0x8

    .line 49
    .line 50
    or-int/2addr v0, v1

    .line 51
    invoke-virtual {p0}, Le8/g;->readByte()B

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    and-int/lit16 v1, v1, 0xff

    .line 56
    .line 57
    or-int/2addr v0, v1

    .line 58
    return v0

    .line 59
    :cond_3a
    iget-object v5, v0, Le8/r;->a:[B

    .line 60
    .line 61
    add-int/lit8 v6, v1, 0x1

    .line 62
    .line 63
    aget-byte v7, v5, v1

    .line 64
    .line 65
    and-int/lit16 v7, v7, 0xff

    .line 66
    .line 67
    shl-int/lit8 v7, v7, 0x18

    .line 68
    .line 69
    add-int/lit8 v8, v1, 0x2

    .line 70
    .line 71
    aget-byte v6, v5, v6

    .line 72
    .line 73
    and-int/lit16 v6, v6, 0xff

    .line 74
    .line 75
    shl-int/lit8 v6, v6, 0x10

    .line 76
    .line 77
    or-int/2addr v6, v7

    .line 78
    add-int/lit8 v7, v1, 0x3

    .line 79
    .line 80
    aget-byte v8, v5, v8

    .line 81
    .line 82
    and-int/lit16 v8, v8, 0xff

    .line 83
    .line 84
    shl-int/lit8 v8, v8, 0x8

    .line 85
    .line 86
    or-int/2addr v6, v8

    .line 87
    add-int/lit8 v1, v1, 0x4

    .line 88
    .line 89
    aget-byte v5, v5, v7

    .line 90
    .line 91
    and-int/lit16 v5, v5, 0xff

    .line 92
    .line 93
    or-int/2addr v5, v6

    .line 94
    iget-wide v6, p0, Le8/g;->b:J

    .line 95
    .line 96
    sub-long/2addr v6, v2

    .line 97
    iput-wide v6, p0, Le8/g;->b:J

    .line 98
    .line 99
    if-ne v1, v4, :cond_6e

    .line 100
    .line 101
    invoke-virtual {v0}, Le8/r;->a()Le8/r;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iput-object v1, p0, Le8/g;->a:Le8/r;

    .line 106
    .line 107
    invoke-static {v0}, Le8/s;->a(Le8/r;)V

    .line 108
    .line 109
    .line 110
    return v5

    .line 111
    :cond_6e
    iput v1, v0, Le8/r;->b:I

    .line 112
    .line 113
    return v5

    .line 114
    :cond_71
    new-instance v0, Ljava/io/EOFException;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 117
    .line 118
    .line 119
    throw v0
.end method

.method public final readShort()S
    .registers 10

    .line 1
    iget-wide v0, p0, Le8/g;->b:J

    .line 2
    .line 3
    const-wide/16 v2, 0x2

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-ltz v0, :cond_4c

    .line 8
    .line 9
    iget-object v0, p0, Le8/g;->a:Le8/r;

    .line 10
    .line 11
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget v1, v0, Le8/r;->b:I

    .line 15
    .line 16
    iget v4, v0, Le8/r;->c:I

    .line 17
    .line 18
    sub-int v5, v4, v1

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    if-ge v5, v6, :cond_27

    .line 22
    .line 23
    invoke-virtual {p0}, Le8/g;->readByte()B

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/lit16 v0, v0, 0xff

    .line 28
    .line 29
    shl-int/lit8 v0, v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p0}, Le8/g;->readByte()B

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    and-int/lit16 v1, v1, 0xff

    .line 36
    .line 37
    or-int/2addr v0, v1

    .line 38
    int-to-short v0, v0

    .line 39
    return v0

    .line 40
    :cond_27
    iget-object v5, v0, Le8/r;->a:[B

    .line 41
    .line 42
    add-int/lit8 v7, v1, 0x1

    .line 43
    .line 44
    aget-byte v8, v5, v1

    .line 45
    .line 46
    and-int/lit16 v8, v8, 0xff

    .line 47
    .line 48
    shl-int/lit8 v8, v8, 0x8

    .line 49
    .line 50
    add-int/2addr v1, v6

    .line 51
    aget-byte v5, v5, v7

    .line 52
    .line 53
    and-int/lit16 v5, v5, 0xff

    .line 54
    .line 55
    or-int/2addr v5, v8

    .line 56
    iget-wide v6, p0, Le8/g;->b:J

    .line 57
    .line 58
    sub-long/2addr v6, v2

    .line 59
    iput-wide v6, p0, Le8/g;->b:J

    .line 60
    .line 61
    if-ne v1, v4, :cond_48

    .line 62
    .line 63
    invoke-virtual {v0}, Le8/r;->a()Le8/r;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Le8/g;->a:Le8/r;

    .line 68
    .line 69
    invoke-static {v0}, Le8/s;->a(Le8/r;)V

    .line 70
    .line 71
    .line 72
    goto :goto_4a

    .line 73
    :cond_48
    iput v1, v0, Le8/r;->b:I

    .line 74
    .line 75
    :goto_4a
    int-to-short v0, v5

    .line 76
    return v0

    .line 77
    :cond_4c
    new-instance v0, Ljava/io/EOFException;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public final s(J)[B
    .registers 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_31

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-gtz v0, :cond_31

    .line 13
    .line 14
    iget-wide v0, p0, Le8/g;->b:J

    .line 15
    .line 16
    cmp-long v0, v0, p1

    .line 17
    .line 18
    if-ltz v0, :cond_2b

    .line 19
    .line 20
    long-to-int p1, p1

    .line 21
    new-array p2, p1, [B

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_17
    if-ge v0, p1, :cond_2a

    .line 25
    .line 26
    sub-int v1, p1, v0

    .line 27
    .line 28
    invoke-virtual {p0, p2, v0, v1}, Le8/g;->read([BII)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, -0x1

    .line 33
    if-eq v1, v2, :cond_24

    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    goto :goto_17

    .line 37
    :cond_24
    new-instance p1, Ljava/io/EOFException;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_2a
    return-object p2

    .line 44
    :cond_2b
    new-instance p1, Ljava/io/EOFException;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "byteCount: "

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p2
.end method

.method public final skip(J)V
    .registers 9

    .line 1
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_35

    .line 6
    .line 7
    iget-object v0, p0, Le8/g;->a:Le8/r;

    .line 8
    .line 9
    if-eqz v0, :cond_2f

    .line 10
    .line 11
    iget v1, v0, Le8/r;->c:I

    .line 12
    .line 13
    iget v2, v0, Le8/r;->b:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    long-to-int v1, v1

    .line 22
    iget-wide v2, p0, Le8/g;->b:J

    .line 23
    .line 24
    int-to-long v4, v1

    .line 25
    sub-long/2addr v2, v4

    .line 26
    iput-wide v2, p0, Le8/g;->b:J

    .line 27
    .line 28
    sub-long/2addr p1, v4

    .line 29
    iget v2, v0, Le8/r;->b:I

    .line 30
    .line 31
    add-int/2addr v2, v1

    .line 32
    iput v2, v0, Le8/r;->b:I

    .line 33
    .line 34
    iget v1, v0, Le8/r;->c:I

    .line 35
    .line 36
    if-ne v2, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Le8/r;->a()Le8/r;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Le8/g;->a:Le8/r;

    .line 43
    .line 44
    invoke-static {v0}, Le8/s;->a(Le8/r;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2f
    new-instance p1, Ljava/io/EOFException;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_35
    return-void
.end method

.method public final t(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {v0, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-ltz v0, :cond_5d

    .line 11
    .line 12
    const-wide/32 v1, 0x7fffffff

    .line 13
    .line 14
    .line 15
    cmp-long v1, p1, v1

    .line 16
    .line 17
    if-gtz v1, :cond_5d

    .line 18
    .line 19
    iget-wide v1, p0, Le8/g;->b:J

    .line 20
    .line 21
    cmp-long v1, v1, p1

    .line 22
    .line 23
    if-ltz v1, :cond_57

    .line 24
    .line 25
    if-nez v0, :cond_1d

    .line 26
    .line 27
    const-string p1, ""

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1d
    iget-object v0, p0, Le8/g;->a:Le8/r;

    .line 31
    .line 32
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget v1, v0, Le8/r;->b:I

    .line 36
    .line 37
    int-to-long v2, v1

    .line 38
    add-long/2addr v2, p1

    .line 39
    iget v4, v0, Le8/r;->c:I

    .line 40
    .line 41
    int-to-long v4, v4

    .line 42
    cmp-long v2, v2, v4

    .line 43
    .line 44
    if-lez v2, :cond_37

    .line 45
    .line 46
    new-instance v0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Le8/g;->s(J)[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_37
    new-instance v2, Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, v0, Le8/r;->a:[B

    .line 59
    .line 60
    long-to-int v4, p1

    .line 61
    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 62
    .line 63
    .line 64
    iget p3, v0, Le8/r;->b:I

    .line 65
    .line 66
    add-int/2addr p3, v4

    .line 67
    iput p3, v0, Le8/r;->b:I

    .line 68
    .line 69
    iget-wide v3, p0, Le8/g;->b:J

    .line 70
    .line 71
    sub-long/2addr v3, p1

    .line 72
    iput-wide v3, p0, Le8/g;->b:J

    .line 73
    .line 74
    iget p1, v0, Le8/r;->c:I

    .line 75
    .line 76
    if-ne p3, p1, :cond_56

    .line 77
    .line 78
    invoke-virtual {v0}, Le8/r;->a()Le8/r;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Le8/g;->a:Le8/r;

    .line 83
    .line 84
    invoke-static {v0}, Le8/s;->a(Le8/r;)V

    .line 85
    .line 86
    .line 87
    :cond_56
    return-object v2

    .line 88
    :cond_57
    new-instance p1, Ljava/io/EOFException;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_5d
    new-instance p3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v0, "byteCount: "

    .line 97
    .line 98
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-wide v0, p0, Le8/g;->b:J

    .line 2
    .line 3
    const-wide/32 v2, 0x7fffffff

    .line 4
    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-gtz v2, :cond_13

    .line 9
    .line 10
    long-to-int v0, v0

    .line 11
    invoke-virtual {p0, v0}, Le8/g;->u(I)Le8/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Le8/j;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "size > Int.MAX_VALUE: "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-wide v1, p0, Le8/g;->b:J

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public final u(I)Le8/j;
    .registers 10

    .line 1
    if-nez p1, :cond_5

    .line 2
    .line 3
    sget-object p1, Le8/j;->d:Le8/j;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_5
    iget-wide v0, p0, Le8/g;->b:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    int-to-long v4, p1

    .line 11
    invoke-static/range {v0 .. v5}, Li2/t;->c(JJJ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Le8/g;->a:Le8/r;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    move v3, v2

    .line 19
    :goto_12
    if-ge v2, p1, :cond_2c

    .line 20
    .line 21
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget v4, v0, Le8/r;->c:I

    .line 25
    .line 26
    iget v5, v0, Le8/r;->b:I

    .line 27
    .line 28
    if-eq v4, v5, :cond_24

    .line 29
    .line 30
    sub-int/2addr v4, v5

    .line 31
    add-int/2addr v2, v4

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    iget-object v0, v0, Le8/r;->f:Le8/r;

    .line 35
    .line 36
    goto :goto_12

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/AssertionError;

    .line 38
    .line 39
    const-string v0, "s.limit == s.pos"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2c
    new-array v0, v3, [[B

    .line 46
    .line 47
    mul-int/lit8 v2, v3, 0x2

    .line 48
    .line 49
    new-array v2, v2, [I

    .line 50
    .line 51
    iget-object v4, p0, Le8/g;->a:Le8/r;

    .line 52
    .line 53
    move-object v5, v4

    .line 54
    move v4, v1

    .line 55
    :goto_36
    if-ge v1, p1, :cond_58

    .line 56
    .line 57
    invoke-static {v5}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v6, v5, Le8/r;->a:[B

    .line 61
    .line 62
    aput-object v6, v0, v4

    .line 63
    .line 64
    iget v6, v5, Le8/r;->c:I

    .line 65
    .line 66
    iget v7, v5, Le8/r;->b:I

    .line 67
    .line 68
    sub-int/2addr v6, v7

    .line 69
    add-int/2addr v1, v6

    .line 70
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    aput v6, v2, v4

    .line 75
    .line 76
    add-int v6, v4, v3

    .line 77
    .line 78
    iget v7, v5, Le8/r;->b:I

    .line 79
    .line 80
    aput v7, v2, v6

    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    iput-boolean v6, v5, Le8/r;->d:Z

    .line 84
    .line 85
    add-int/2addr v4, v6

    .line 86
    iget-object v5, v5, Le8/r;->f:Le8/r;

    .line 87
    .line 88
    goto :goto_36

    .line 89
    :cond_58
    new-instance p1, Le8/t;

    .line 90
    .line 91
    invoke-direct {p1, v0, v2}, Le8/t;-><init>([[B[I)V

    .line 92
    .line 93
    .line 94
    return-object p1
.end method

.method public final v(I)Le8/r;
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_2e

    .line 3
    .line 4
    const/16 v0, 0x2000

    .line 5
    .line 6
    if-gt p1, v0, :cond_2e

    .line 7
    .line 8
    iget-object v1, p0, Le8/g;->a:Le8/r;

    .line 9
    .line 10
    if-nez v1, :cond_16

    .line 11
    .line 12
    invoke-static {}, Le8/s;->b()Le8/r;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Le8/g;->a:Le8/r;

    .line 17
    .line 18
    iput-object p1, p1, Le8/r;->g:Le8/r;

    .line 19
    .line 20
    iput-object p1, p1, Le8/r;->f:Le8/r;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_16
    iget-object v1, v1, Le8/r;->g:Le8/r;

    .line 24
    .line 25
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget v2, v1, Le8/r;->c:I

    .line 29
    .line 30
    add-int/2addr v2, p1

    .line 31
    if-gt v2, v0, :cond_26

    .line 32
    .line 33
    iget-boolean p1, v1, Le8/r;->e:Z

    .line 34
    .line 35
    if-nez p1, :cond_25

    .line 36
    .line 37
    goto :goto_26

    .line 38
    :cond_25
    return-object v1

    .line 39
    :cond_26
    :goto_26
    invoke-static {}, Le8/s;->b()Le8/r;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Le8/r;->b(Le8/r;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string v0, "unexpected capacity"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public final w(Le8/j;)V
    .registers 3

    .line 1
    const-string v0, "byteString"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Le8/j;->a()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1, p0, v0}, Le8/j;->i(Le8/g;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .registers 8

    const-string v0, "source"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_a
    if-lez v1, :cond_27

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v2}, Le8/g;->v(I)Le8/r;

    move-result-object v2

    .line 3
    iget v3, v2, Le8/r;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4
    iget-object v4, v2, Le8/r;->a:[B

    iget v5, v2, Le8/r;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 5
    iget v4, v2, Le8/r;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Le8/r;->c:I

    goto :goto_a

    .line 6
    :cond_27
    iget-wide v1, p0, Le8/g;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Le8/g;->b:J

    return v0
.end method

.method public final write([B)Le8/h;
    .registers 3

    .line 7
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Le8/g;->x([BI)V

    return-object p0
.end method

.method public final bridge synthetic writeByte(I)Le8/h;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Le8/g;->z(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final bridge synthetic writeInt(I)Le8/h;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Le8/g;->B(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final bridge synthetic writeShort(I)Le8/h;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Le8/g;->C(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final x([BI)V
    .registers 11

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    int-to-long v1, v0

    .line 8
    const/4 v0, 0x0

    .line 9
    int-to-long v3, v0

    .line 10
    int-to-long v5, p2

    .line 11
    invoke-static/range {v1 .. v6}, Li2/t;->c(JJJ)V

    .line 12
    .line 13
    .line 14
    :goto_d
    if-ge v0, p2, :cond_2e

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Le8/g;->v(I)Le8/r;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sub-int v2, p2, v0

    .line 22
    .line 23
    iget v3, v1, Le8/r;->c:I

    .line 24
    .line 25
    rsub-int v3, v3, 0x2000

    .line 26
    .line 27
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, v1, Le8/r;->a:[B

    .line 32
    .line 33
    iget v4, v1, Le8/r;->c:I

    .line 34
    .line 35
    add-int v7, v0, v2

    .line 36
    .line 37
    invoke-static {v4, v0, v7, p1, v3}, Ls6/f;->j(III[B[B)V

    .line 38
    .line 39
    .line 40
    iget v0, v1, Le8/r;->c:I

    .line 41
    .line 42
    add-int/2addr v0, v2

    .line 43
    iput v0, v1, Le8/r;->c:I

    .line 44
    .line 45
    move v0, v7

    .line 46
    goto :goto_d

    .line 47
    :cond_2e
    iget-wide p1, p0, Le8/g;->b:J

    .line 48
    .line 49
    add-long/2addr p1, v5

    .line 50
    iput-wide p1, p0, Le8/g;->b:J

    .line 51
    .line 52
    return-void
.end method

.method public final y(Le8/w;)V
    .registers 6

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :goto_5
    const-wide/16 v0, 0x2000

    .line 7
    .line 8
    invoke-interface {p1, v0, v1, p0}, Le8/w;->h(JLe8/g;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, -0x1

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-eqz v0, :cond_12

    .line 17
    .line 18
    goto :goto_5

    .line 19
    :cond_12
    return-void
.end method

.method public final z(I)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Le8/g;->v(I)Le8/r;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Le8/r;->a:[B

    .line 7
    .line 8
    iget v2, v0, Le8/r;->c:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    .line 12
    iput v3, v0, Le8/r;->c:I

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    aput-byte p1, v1, v2

    .line 16
    .line 17
    iget-wide v0, p0, Le8/g;->b:J

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    add-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Le8/g;->b:J

    .line 23
    .line 24
    return-void
.end method
