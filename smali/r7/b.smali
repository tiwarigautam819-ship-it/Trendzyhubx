###### Class r7.b (r7.b)
.class public final Lr7/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lr7/b;

.field public static final b:Lr7/b;

.field public static final c:Lr7/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lr7/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr7/b;->a:Lr7/b;

    .line 7
    .line 8
    new-instance v0, Lr7/b;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lr7/b;->b:Lr7/b;

    .line 14
    .line 15
    new-instance v0, Lr7/b;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lr7/b;->c:Lr7/b;

    .line 21
    .line 22
    return-void
.end method

.method public static final a(Lr7/b;Ljava/lang/String;)Lr7/f;
    .registers 3

    .line 1
    new-instance p0, Lr7/f;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lr7/f;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lr7/f;->d:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public static b(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    and-int/lit8 v2, p4, 0x1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_b

    .line 9
    .line 10
    move v2, v3

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    move/from16 v2, p1

    .line 13
    .line 14
    :goto_d
    and-int/lit8 v4, p4, 0x2

    .line 15
    .line 16
    if-eqz v4, :cond_16

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    move/from16 v4, p2

    .line 24
    .line 25
    :goto_18
    and-int/lit8 v5, p4, 0x8

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-eqz v5, :cond_1f

    .line 29
    .line 30
    move v5, v3

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v5, v6

    .line 33
    :goto_20
    and-int/lit8 v7, p4, 0x10

    .line 34
    .line 35
    if-eqz v7, :cond_26

    .line 36
    .line 37
    move v7, v3

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v7, v6

    .line 40
    :goto_27
    and-int/lit8 v8, p4, 0x20

    .line 41
    .line 42
    if-eqz v8, :cond_2d

    .line 43
    .line 44
    move v8, v3

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move v8, v6

    .line 47
    :goto_2e
    and-int/lit8 v9, p4, 0x40

    .line 48
    .line 49
    if-eqz v9, :cond_33

    .line 50
    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move v3, v6

    .line 53
    :goto_34
    const-string v6, "<this>"

    .line 54
    .line 55
    invoke-static {v6, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move v6, v2

    .line 59
    :goto_3a
    if-ge v6, v4, :cond_10c

    .line 60
    .line 61
    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    const/16 v10, 0x80

    .line 66
    .line 67
    const/16 v11, 0x20

    .line 68
    .line 69
    const/16 v12, 0x2b

    .line 70
    .line 71
    const/16 v13, 0x25

    .line 72
    .line 73
    const/16 v14, 0x7f

    .line 74
    .line 75
    if-lt v9, v11, :cond_70

    .line 76
    .line 77
    if-eq v9, v14, :cond_70

    .line 78
    .line 79
    if-lt v9, v10, :cond_52

    .line 80
    .line 81
    if-eqz v3, :cond_70

    .line 82
    .line 83
    :cond_52
    int-to-char v15, v9

    .line 84
    invoke-static {v1, v15}, Lk7/g;->w(Ljava/lang/CharSequence;C)Z

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    if-nez v15, :cond_70

    .line 89
    .line 90
    if-ne v9, v13, :cond_65

    .line 91
    .line 92
    if-eqz v5, :cond_70

    .line 93
    .line 94
    if-eqz v7, :cond_65

    .line 95
    .line 96
    invoke-static {v6, v0, v4}, Lr7/b;->d(ILjava/lang/String;I)Z

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    if-eqz v15, :cond_70

    .line 101
    .line 102
    :cond_65
    if-ne v9, v12, :cond_6a

    .line 103
    .line 104
    if-eqz v8, :cond_6a

    .line 105
    .line 106
    goto :goto_70

    .line 107
    :cond_6a
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    add-int/2addr v6, v9

    .line 112
    goto :goto_3a

    .line 113
    :cond_70
    :goto_70
    new-instance v9, Le8/g;

    .line 114
    .line 115
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9, v2, v0, v6}, Le8/g;->D(ILjava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    :goto_79
    if-ge v6, v4, :cond_103

    .line 123
    .line 124
    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    if-eqz v5, :cond_92

    .line 129
    .line 130
    const/16 v13, 0x9

    .line 131
    .line 132
    if-eq v15, v13, :cond_c2

    .line 133
    .line 134
    const/16 v13, 0xa

    .line 135
    .line 136
    if-eq v15, v13, :cond_c2

    .line 137
    .line 138
    const/16 v13, 0xc

    .line 139
    .line 140
    if-eq v15, v13, :cond_c2

    .line 141
    .line 142
    const/16 v13, 0xd

    .line 143
    .line 144
    if-ne v15, v13, :cond_92

    .line 145
    .line 146
    goto :goto_c2

    .line 147
    :cond_92
    if-ne v15, v12, :cond_a1

    .line 148
    .line 149
    if-eqz v8, :cond_a1

    .line 150
    .line 151
    if-eqz v5, :cond_9b

    .line 152
    .line 153
    const-string v13, "+"

    .line 154
    .line 155
    goto :goto_9d

    .line 156
    :cond_9b
    const-string v13, "%2B"

    .line 157
    .line 158
    :goto_9d
    invoke-virtual {v9, v13}, Le8/g;->E(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_c2

    .line 162
    :cond_a1
    if-lt v15, v11, :cond_c5

    .line 163
    .line 164
    if-eq v15, v14, :cond_c5

    .line 165
    .line 166
    if-lt v15, v10, :cond_a9

    .line 167
    .line 168
    if-eqz v3, :cond_c5

    .line 169
    .line 170
    :cond_a9
    int-to-char v13, v15

    .line 171
    invoke-static {v1, v13}, Lk7/g;->w(Ljava/lang/CharSequence;C)Z

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    if-nez v13, :cond_c5

    .line 176
    .line 177
    const/16 v13, 0x25

    .line 178
    .line 179
    if-ne v15, v13, :cond_bf

    .line 180
    .line 181
    if-eqz v5, :cond_c5

    .line 182
    .line 183
    if-eqz v7, :cond_bf

    .line 184
    .line 185
    invoke-static {v6, v0, v4}, Lr7/b;->d(ILjava/lang/String;I)Z

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-nez v13, :cond_bf

    .line 190
    .line 191
    goto :goto_c5

    .line 192
    :cond_bf
    invoke-virtual {v9, v15}, Le8/g;->F(I)V

    .line 193
    .line 194
    .line 195
    :cond_c2
    :goto_c2
    const/16 v11, 0x25

    .line 196
    .line 197
    goto :goto_f7

    .line 198
    :cond_c5
    :goto_c5
    if-nez v2, :cond_cc

    .line 199
    .line 200
    new-instance v2, Le8/g;

    .line 201
    .line 202
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 203
    .line 204
    .line 205
    :cond_cc
    invoke-virtual {v2, v15}, Le8/g;->F(I)V

    .line 206
    .line 207
    .line 208
    :goto_cf
    invoke-virtual {v2}, Le8/g;->c()Z

    .line 209
    .line 210
    .line 211
    move-result v13

    .line 212
    if-nez v13, :cond_c2

    .line 213
    .line 214
    invoke-virtual {v2}, Le8/g;->readByte()B

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    and-int/lit16 v10, v13, 0xff

    .line 219
    .line 220
    const/16 v11, 0x25

    .line 221
    .line 222
    invoke-virtual {v9, v11}, Le8/g;->z(I)V

    .line 223
    .line 224
    .line 225
    shr-int/lit8 v10, v10, 0x4

    .line 226
    .line 227
    and-int/lit8 v10, v10, 0xf

    .line 228
    .line 229
    sget-object v16, Lr7/m;->j:[C

    .line 230
    .line 231
    aget-char v10, v16, v10

    .line 232
    .line 233
    invoke-virtual {v9, v10}, Le8/g;->z(I)V

    .line 234
    .line 235
    .line 236
    and-int/lit8 v10, v13, 0xf

    .line 237
    .line 238
    aget-char v10, v16, v10

    .line 239
    .line 240
    invoke-virtual {v9, v10}, Le8/g;->z(I)V

    .line 241
    .line 242
    .line 243
    const/16 v10, 0x80

    .line 244
    .line 245
    const/16 v11, 0x20

    .line 246
    .line 247
    goto :goto_cf

    .line 248
    :goto_f7
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    .line 249
    .line 250
    .line 251
    move-result v10

    .line 252
    add-int/2addr v6, v10

    .line 253
    move v13, v11

    .line 254
    const/16 v10, 0x80

    .line 255
    .line 256
    const/16 v11, 0x20

    .line 257
    .line 258
    goto/16 :goto_79

    .line 259
    .line 260
    :cond_103
    iget-wide v0, v9, Le8/g;->b:J

    .line 261
    .line 262
    sget-object v2, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 263
    .line 264
    invoke-virtual {v9, v0, v1, v2}, Le8/g;->t(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    return-object v0

    .line 269
    :cond_10c
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 274
    .line 275
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    return-object v0
.end method

.method public static d(ILjava/lang/String;I)Z
    .registers 5

    .line 1
    add-int/lit8 v0, p0, 0x2

    .line 2
    .line 3
    if-ge v0, p2, :cond_24

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/16 v1, 0x25

    .line 10
    .line 11
    if-ne p2, v1, :cond_24

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    add-int/2addr p0, p2

    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ls7/b;->q(C)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 v1, -0x1

    .line 24
    if-eq p0, v1, :cond_24

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, Ls7/b;->q(C)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eq p0, v1, :cond_24

    .line 35
    .line 36
    return p2

    .line 37
    :cond_24
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public static e(Ljava/lang/String;III)Ljava/lang/String;
    .registers 12

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    move p1, v1

    .line 7
    :cond_6
    and-int/lit8 v0, p3, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_e

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    :cond_e
    and-int/lit8 p3, p3, 0x4

    .line 16
    .line 17
    if-eqz p3, :cond_13

    .line 18
    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v1, 0x1

    .line 21
    :goto_14
    const-string p3, "<this>"

    .line 22
    .line 23
    invoke-static {p3, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    move p3, p1

    .line 27
    :goto_1a
    if-ge p3, p2, :cond_84

    .line 28
    .line 29
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v2, 0x2b

    .line 34
    .line 35
    const/16 v3, 0x25

    .line 36
    .line 37
    if-eq v0, v3, :cond_2e

    .line 38
    .line 39
    if-ne v0, v2, :cond_2b

    .line 40
    .line 41
    if-eqz v1, :cond_2b

    .line 42
    .line 43
    goto :goto_2e

    .line 44
    :cond_2b
    add-int/lit8 p3, p3, 0x1

    .line 45
    .line 46
    goto :goto_1a

    .line 47
    :cond_2e
    :goto_2e
    new-instance v0, Le8/g;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1, p0, p3}, Le8/g;->D(ILjava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    :goto_36
    if-ge p3, p2, :cond_7b

    .line 56
    .line 57
    invoke-virtual {p0, p3}, Ljava/lang/String;->codePointAt(I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p1, v3, :cond_66

    .line 62
    .line 63
    add-int/lit8 v4, p3, 0x2

    .line 64
    .line 65
    if-ge v4, p2, :cond_66

    .line 66
    .line 67
    add-int/lit8 v5, p3, 0x1

    .line 68
    .line 69
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-static {v5}, Ls7/b;->q(C)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-static {v6}, Ls7/b;->q(C)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    const/4 v7, -0x1

    .line 86
    if-eq v5, v7, :cond_72

    .line 87
    .line 88
    if-eq v6, v7, :cond_72

    .line 89
    .line 90
    shl-int/lit8 p3, v5, 0x4

    .line 91
    .line 92
    add-int/2addr p3, v6

    .line 93
    invoke-virtual {v0, p3}, Le8/g;->z(I)V

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    add-int p3, p1, v4

    .line 101
    .line 102
    goto :goto_36

    .line 103
    :cond_66
    if-ne p1, v2, :cond_72

    .line 104
    .line 105
    if-eqz v1, :cond_72

    .line 106
    .line 107
    const/16 p1, 0x20

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Le8/g;->z(I)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 p3, p3, 0x1

    .line 113
    .line 114
    goto :goto_36

    .line 115
    :cond_72
    invoke-virtual {v0, p1}, Le8/g;->F(I)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    add-int/2addr p3, p1

    .line 123
    goto :goto_36

    .line 124
    :cond_7b
    iget-wide p0, v0, Le8/g;->b:J

    .line 125
    .line 126
    sget-object p2, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 127
    .line 128
    invoke-virtual {v0, p0, p1, p2}, Le8/g;->t(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :cond_84
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 138
    .line 139
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gt v1, v2, :cond_4f

    .line 12
    .line 13
    const/16 v2, 0x26

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-static {p0, v2, v1, v3}, Lk7/g;->A(Ljava/lang/CharSequence;CII)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v4, -0x1

    .line 21
    if-ne v2, v4, :cond_1a

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :cond_1a
    const/16 v5, 0x3d

    .line 28
    .line 29
    invoke-static {p0, v5, v1, v3}, Lk7/g;->A(Ljava/lang/CharSequence;CII)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 34
    .line 35
    if-eq v3, v4, :cond_3e

    .line 36
    .line 37
    if-le v3, v2, :cond_27

    .line 38
    .line 39
    goto :goto_3e

    .line 40
    :cond_27
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v5, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v5, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_4c

    .line 63
    :cond_3e
    :goto_3e
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v5, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :goto_4c
    add-int/lit8 v1, v2, 0x1

    .line 78
    .line 79
    goto :goto_6

    .line 80
    :cond_4f
    return-object v0
.end method


# virtual methods
.method public declared-synchronized c(Ljava/lang/String;)Lr7/f;
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "javaName"

    .line 3
    .line 4
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lr7/f;->d:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lr7/f;

    .line 14
    .line 15
    if-nez v1, :cond_50

    .line 16
    .line 17
    const-string v1, "SSL_"

    .line 18
    .line 19
    const-string v2, "this as java.lang.String).substring(startIndex)"

    .line 20
    .line 21
    const-string v3, "TLS_"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {p1, v3, v4}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x4

    .line 29
    if-eqz v5, :cond_2a

    .line 30
    .line 31
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v2, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_3d

    .line 43
    :cond_2a
    invoke-static {p1, v1, v4}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3c

    .line 48
    .line 49
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move-object v1, p1

    .line 62
    :goto_3d
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lr7/f;

    .line 67
    .line 68
    if-nez v1, :cond_4d

    .line 69
    .line 70
    new-instance v1, Lr7/f;

    .line 71
    .line 72
    invoke-direct {v1, p1}, Lr7/f;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_4d

    .line 76
    :catchall_4b
    move-exception p1

    .line 77
    goto :goto_52

    .line 78
    :cond_4d
    :goto_4d
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_4b

    .line 79
    .line 80
    .line 81
    :cond_50
    monitor-exit p0

    .line 82
    return-object v1

    .line 83
    :goto_52
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_4b

    .line 84
    throw p1
.end method
