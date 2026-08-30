###### Class com.google.android.gms.internal.measurement.h7 (com.google.android.gms.internal.measurement.h7)
.class public abstract Lcom/google/android/gms/internal/measurement/h7;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/a6;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/f7;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/f7;->d:Z

    .line 6
    .line 7
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/a6;

    .line 8
    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/a6;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/measurement/h7;->a:Lcom/google/android/gms/internal/measurement/a6;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v2, v0, :cond_13

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x80

    .line 14
    .line 15
    if-ge v3, v4, :cond_13

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_6

    .line 20
    :cond_13
    move v3, v0

    .line 21
    :goto_14
    if-ge v2, v0, :cond_59

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/16 v5, 0x800

    .line 28
    .line 29
    if-ge v4, v5, :cond_26

    .line 30
    .line 31
    rsub-int/lit8 v4, v4, 0x7f

    .line 32
    .line 33
    ushr-int/lit8 v4, v4, 0x1f

    .line 34
    .line 35
    add-int/2addr v3, v4

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_14

    .line 39
    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    :goto_2a
    if-ge v2, v4, :cond_58

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-ge v6, v5, :cond_38

    .line 50
    .line 51
    rsub-int/lit8 v6, v6, 0x7f

    .line 52
    .line 53
    ushr-int/lit8 v6, v6, 0x1f

    .line 54
    .line 55
    add-int/2addr v1, v6

    .line 56
    goto :goto_55

    .line 57
    :cond_38
    add-int/lit8 v1, v1, 0x2

    .line 58
    .line 59
    const v7, 0xd800

    .line 60
    .line 61
    .line 62
    if-gt v7, v6, :cond_55

    .line 63
    .line 64
    const v7, 0xdfff

    .line 65
    .line 66
    .line 67
    if-gt v6, v7, :cond_55

    .line 68
    .line 69
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    const/high16 v7, 0x10000

    .line 74
    .line 75
    if-lt v6, v7, :cond_4f

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_55

    .line 80
    :cond_4f
    new-instance p0, Lcom/google/android/gms/internal/measurement/i7;

    .line 81
    .line 82
    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/internal/measurement/i7;-><init>(II)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_2a

    .line 89
    :cond_58
    add-int/2addr v3, v1

    .line 90
    :cond_59
    if-lt v3, v0, :cond_5c

    .line 91
    .line 92
    return v3

    .line 93
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    int-to-long v0, v3

    .line 96
    const-wide v2, 0x100000000L

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    add-long/2addr v0, v2

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v3, "UTF-8 length does not fit in int: "

    .line 105
    .line 106
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0
.end method

.method public static b(Ljava/lang/String;[BII)I
    .registers 11

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/h7;->a:Lcom/google/android/gms/internal/measurement/a6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/2addr p3, p2

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    const/16 v2, 0x80

    .line 13
    .line 14
    if-ge v1, v0, :cond_1f

    .line 15
    .line 16
    add-int v3, v1, p2

    .line 17
    .line 18
    if-ge v3, p3, :cond_1f

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v4, v2, :cond_1f

    .line 25
    .line 26
    int-to-byte v2, v4

    .line 27
    aput-byte v2, p1, v3

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_b

    .line 32
    :cond_1f
    if-ne v1, v0, :cond_23

    .line 33
    .line 34
    add-int/2addr p2, v0

    .line 35
    return p2

    .line 36
    :cond_23
    add-int/2addr p2, v1

    .line 37
    :goto_24
    if-ge v1, v0, :cond_ff

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ge v3, v2, :cond_36

    .line 44
    .line 45
    if-ge p2, p3, :cond_36

    .line 46
    .line 47
    add-int/lit8 v4, p2, 0x1

    .line 48
    .line 49
    int-to-byte v3, v3

    .line 50
    aput-byte v3, p1, p2

    .line 51
    .line 52
    move p2, v4

    .line 53
    goto/16 :goto_ba

    .line 54
    .line 55
    :cond_36
    const/16 v4, 0x800

    .line 56
    .line 57
    if-ge v3, v4, :cond_50

    .line 58
    .line 59
    add-int/lit8 v4, p3, -0x2

    .line 60
    .line 61
    if-gt p2, v4, :cond_50

    .line 62
    .line 63
    add-int/lit8 v4, p2, 0x1

    .line 64
    .line 65
    ushr-int/lit8 v5, v3, 0x6

    .line 66
    .line 67
    or-int/lit16 v5, v5, 0x3c0

    .line 68
    .line 69
    int-to-byte v5, v5

    .line 70
    aput-byte v5, p1, p2

    .line 71
    .line 72
    add-int/lit8 p2, p2, 0x2

    .line 73
    .line 74
    and-int/lit8 v3, v3, 0x3f

    .line 75
    .line 76
    or-int/2addr v3, v2

    .line 77
    int-to-byte v3, v3

    .line 78
    aput-byte v3, p1, v4

    .line 79
    .line 80
    goto :goto_ba

    .line 81
    :cond_50
    const v4, 0xdfff

    .line 82
    .line 83
    .line 84
    const v5, 0xd800

    .line 85
    .line 86
    .line 87
    if-lt v3, v5, :cond_5a

    .line 88
    .line 89
    if-ge v4, v3, :cond_7a

    .line 90
    .line 91
    :cond_5a
    add-int/lit8 v6, p3, -0x3

    .line 92
    .line 93
    if-gt p2, v6, :cond_7a

    .line 94
    .line 95
    add-int/lit8 v4, p2, 0x1

    .line 96
    .line 97
    ushr-int/lit8 v5, v3, 0xc

    .line 98
    .line 99
    or-int/lit16 v5, v5, 0x1e0

    .line 100
    .line 101
    int-to-byte v5, v5

    .line 102
    aput-byte v5, p1, p2

    .line 103
    .line 104
    add-int/lit8 v5, p2, 0x2

    .line 105
    .line 106
    ushr-int/lit8 v6, v3, 0x6

    .line 107
    .line 108
    and-int/lit8 v6, v6, 0x3f

    .line 109
    .line 110
    or-int/2addr v6, v2

    .line 111
    int-to-byte v6, v6

    .line 112
    aput-byte v6, p1, v4

    .line 113
    .line 114
    add-int/lit8 p2, p2, 0x3

    .line 115
    .line 116
    and-int/lit8 v3, v3, 0x3f

    .line 117
    .line 118
    or-int/2addr v3, v2

    .line 119
    int-to-byte v3, v3

    .line 120
    aput-byte v3, p1, v5

    .line 121
    .line 122
    goto :goto_ba

    .line 123
    :cond_7a
    add-int/lit8 v6, p3, -0x4

    .line 124
    .line 125
    if-gt p2, v6, :cond_c7

    .line 126
    .line 127
    add-int/lit8 v4, v1, 0x1

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eq v4, v5, :cond_bf

    .line 134
    .line 135
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_be

    .line 144
    .line 145
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    add-int/lit8 v3, p2, 0x1

    .line 150
    .line 151
    ushr-int/lit8 v5, v1, 0x12

    .line 152
    .line 153
    or-int/lit16 v5, v5, 0xf0

    .line 154
    .line 155
    int-to-byte v5, v5

    .line 156
    aput-byte v5, p1, p2

    .line 157
    .line 158
    add-int/lit8 v5, p2, 0x2

    .line 159
    .line 160
    ushr-int/lit8 v6, v1, 0xc

    .line 161
    .line 162
    and-int/lit8 v6, v6, 0x3f

    .line 163
    .line 164
    or-int/2addr v6, v2

    .line 165
    int-to-byte v6, v6

    .line 166
    aput-byte v6, p1, v3

    .line 167
    .line 168
    add-int/lit8 v3, p2, 0x3

    .line 169
    .line 170
    ushr-int/lit8 v6, v1, 0x6

    .line 171
    .line 172
    and-int/lit8 v6, v6, 0x3f

    .line 173
    .line 174
    or-int/2addr v6, v2

    .line 175
    int-to-byte v6, v6

    .line 176
    aput-byte v6, p1, v5

    .line 177
    .line 178
    add-int/lit8 p2, p2, 0x4

    .line 179
    .line 180
    and-int/lit8 v1, v1, 0x3f

    .line 181
    .line 182
    or-int/2addr v1, v2

    .line 183
    int-to-byte v1, v1

    .line 184
    aput-byte v1, p1, v3

    .line 185
    .line 186
    move v1, v4

    .line 187
    :goto_ba
    add-int/lit8 v1, v1, 0x1

    .line 188
    .line 189
    goto/16 :goto_24

    .line 190
    .line 191
    :cond_be
    move v1, v4

    .line 192
    :cond_bf
    new-instance p0, Lcom/google/android/gms/internal/measurement/i7;

    .line 193
    .line 194
    add-int/lit8 v1, v1, -0x1

    .line 195
    .line 196
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/i7;-><init>(II)V

    .line 197
    .line 198
    .line 199
    throw p0

    .line 200
    :cond_c7
    if-gt v5, v3, :cond_e3

    .line 201
    .line 202
    if-gt v3, v4, :cond_e3

    .line 203
    .line 204
    add-int/lit8 p1, v1, 0x1

    .line 205
    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result p3

    .line 210
    if-eq p1, p3, :cond_dd

    .line 211
    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    invoke-static {v3, p0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    if-nez p0, :cond_e3

    .line 221
    .line 222
    :cond_dd
    new-instance p0, Lcom/google/android/gms/internal/measurement/i7;

    .line 223
    .line 224
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/i7;-><init>(II)V

    .line 225
    .line 226
    .line 227
    throw p0

    .line 228
    :cond_e3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 229
    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string p3, "Failed writing "

    .line 233
    .line 234
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string p3, " at index "

    .line 241
    .line 242
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw p0

    .line 256
    :cond_ff
    return p2
.end method

.method public static synthetic c([BII)I
    .registers 8

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    aget-byte v0, p0, v0

    .line 4
    .line 5
    sub-int/2addr p2, p1

    .line 6
    const/16 v1, -0xc

    .line 7
    .line 8
    if-eqz p2, :cond_35

    .line 9
    .line 10
    const/16 v2, -0x41

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq p2, v3, :cond_2a

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-ne p2, v4, :cond_24

    .line 17
    .line 18
    aget-byte p2, p0, p1

    .line 19
    .line 20
    add-int/2addr p1, v3

    .line 21
    aget-byte p0, p0, p1

    .line 22
    .line 23
    if-gt v0, v1, :cond_37

    .line 24
    .line 25
    if-gt p2, v2, :cond_37

    .line 26
    .line 27
    if-le p0, v2, :cond_1d

    .line 28
    .line 29
    goto :goto_37

    .line 30
    :cond_1d
    shl-int/lit8 p1, p2, 0x8

    .line 31
    .line 32
    xor-int/2addr p1, v0

    .line 33
    shl-int/lit8 p0, p0, 0x10

    .line 34
    .line 35
    xor-int/2addr p0, p1

    .line 36
    return p0

    .line 37
    :cond_24
    new-instance p0, Ljava/lang/AssertionError;

    .line 38
    .line 39
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_2a
    aget-byte p0, p0, p1

    .line 44
    .line 45
    if-gt v0, v1, :cond_37

    .line 46
    .line 47
    if-le p0, v2, :cond_31

    .line 48
    .line 49
    goto :goto_37

    .line 50
    :cond_31
    shl-int/lit8 p0, p0, 0x8

    .line 51
    .line 52
    xor-int/2addr p0, v0

    .line 53
    return p0

    .line 54
    :cond_35
    if-le v0, v1, :cond_39

    .line 55
    .line 56
    :cond_37
    :goto_37
    const/4 p0, -0x1

    .line 57
    return p0

    .line 58
    :cond_39
    return v0
.end method

.method public static d([BII)Z
    .registers 11

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/h7;->a:Lcom/google/android/gms/internal/measurement/a6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :goto_5
    if-ge p1, p2, :cond_e

    .line 7
    .line 8
    aget-byte v0, p0, p1

    .line 9
    .line 10
    if-ltz v0, :cond_e

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    goto :goto_5

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    if-lt p1, p2, :cond_14

    .line 17
    .line 18
    :goto_11
    move v2, v0

    .line 19
    goto/16 :goto_7e

    .line 20
    .line 21
    :cond_14
    :goto_14
    if-lt p1, p2, :cond_17

    .line 22
    .line 23
    goto :goto_11

    .line 24
    :cond_17
    add-int/lit8 v1, p1, 0x1

    .line 25
    .line 26
    aget-byte v2, p0, p1

    .line 27
    .line 28
    if-gez v2, :cond_83

    .line 29
    .line 30
    const/16 v3, -0x20

    .line 31
    .line 32
    const/4 v4, -0x1

    .line 33
    const/16 v5, -0x41

    .line 34
    .line 35
    if-ge v2, v3, :cond_33

    .line 36
    .line 37
    if-lt v1, p2, :cond_27

    .line 38
    .line 39
    goto :goto_7e

    .line 40
    :cond_27
    const/16 v3, -0x3e

    .line 41
    .line 42
    if-lt v2, v3, :cond_31

    .line 43
    .line 44
    add-int/lit8 p1, p1, 0x2

    .line 45
    .line 46
    aget-byte v1, p0, v1

    .line 47
    .line 48
    if-le v1, v5, :cond_14

    .line 49
    .line 50
    :cond_31
    :goto_31
    move v2, v4

    .line 51
    goto :goto_7e

    .line 52
    :cond_33
    const/16 v6, -0x10

    .line 53
    .line 54
    if-ge v2, v6, :cond_59

    .line 55
    .line 56
    add-int/lit8 v6, p2, -0x1

    .line 57
    .line 58
    if-lt v1, v6, :cond_40

    .line 59
    .line 60
    invoke-static {p0, v1, p2}, Lcom/google/android/gms/internal/measurement/h7;->c([BII)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    goto :goto_7e

    .line 65
    :cond_40
    add-int/lit8 v6, p1, 0x2

    .line 66
    .line 67
    aget-byte v1, p0, v1

    .line 68
    .line 69
    if-gt v1, v5, :cond_31

    .line 70
    .line 71
    const/16 v7, -0x60

    .line 72
    .line 73
    if-ne v2, v3, :cond_4c

    .line 74
    .line 75
    if-lt v1, v7, :cond_31

    .line 76
    .line 77
    :cond_4c
    const/16 v3, -0x13

    .line 78
    .line 79
    if-ne v2, v3, :cond_52

    .line 80
    .line 81
    if-ge v1, v7, :cond_31

    .line 82
    .line 83
    :cond_52
    add-int/lit8 p1, p1, 0x3

    .line 84
    .line 85
    aget-byte v1, p0, v6

    .line 86
    .line 87
    if-le v1, v5, :cond_14

    .line 88
    .line 89
    goto :goto_31

    .line 90
    :cond_59
    add-int/lit8 v3, p2, -0x2

    .line 91
    .line 92
    if-lt v1, v3, :cond_62

    .line 93
    .line 94
    invoke-static {p0, v1, p2}, Lcom/google/android/gms/internal/measurement/h7;->c([BII)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    goto :goto_7e

    .line 99
    :cond_62
    add-int/lit8 v3, p1, 0x2

    .line 100
    .line 101
    aget-byte v1, p0, v1

    .line 102
    .line 103
    if-gt v1, v5, :cond_31

    .line 104
    .line 105
    shl-int/lit8 v2, v2, 0x1c

    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x70

    .line 108
    .line 109
    add-int/2addr v1, v2

    .line 110
    shr-int/lit8 v1, v1, 0x1e

    .line 111
    .line 112
    if-nez v1, :cond_31

    .line 113
    .line 114
    add-int/lit8 v1, p1, 0x3

    .line 115
    .line 116
    aget-byte v2, p0, v3

    .line 117
    .line 118
    if-gt v2, v5, :cond_31

    .line 119
    .line 120
    add-int/lit8 p1, p1, 0x4

    .line 121
    .line 122
    aget-byte v1, p0, v1

    .line 123
    .line 124
    if-le v1, v5, :cond_14

    .line 125
    .line 126
    goto :goto_31

    .line 127
    :goto_7e
    if-nez v2, :cond_82

    .line 128
    .line 129
    const/4 p0, 0x1

    .line 130
    return p0

    .line 131
    :cond_82
    return v0

    .line 132
    :cond_83
    move p1, v1

    .line 133
    goto :goto_14
.end method
