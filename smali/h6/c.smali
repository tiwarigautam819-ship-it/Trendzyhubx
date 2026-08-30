###### Class h6.c (h6.c)
.class public abstract Lh6/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_4c

    .line 6
    .line 7
    .line 8
    sput-object v1, Lh6/c;->a:[B

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_60

    .line 13
    .line 14
    .line 15
    sput-object v0, Lh6/c;->b:[B

    .line 16
    .line 17
    const/16 v0, 0x80

    .line 18
    .line 19
    new-array v1, v0, [B

    .line 20
    .line 21
    sput-object v1, Lh6/c;->c:[B

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    sput-object v0, Lh6/c;->d:[B

    .line 26
    .line 27
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    sput-object v0, Lh6/c;->e:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    move v2, v1

    .line 37
    :goto_24
    sget-object v3, Lh6/c;->a:[B

    .line 38
    .line 39
    array-length v4, v3

    .line 40
    if-ge v2, v4, :cond_35

    .line 41
    .line 42
    aget-byte v3, v3, v2

    .line 43
    .line 44
    if-lez v3, :cond_32

    .line 45
    .line 46
    sget-object v4, Lh6/c;->c:[B

    .line 47
    .line 48
    int-to-byte v5, v2

    .line 49
    aput-byte v5, v4, v3

    .line 50
    .line 51
    :cond_32
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_24

    .line 54
    :cond_35
    sget-object v2, Lh6/c;->d:[B

    .line 55
    .line 56
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 57
    .line 58
    .line 59
    :goto_3a
    sget-object v0, Lh6/c;->b:[B

    .line 60
    .line 61
    array-length v2, v0

    .line 62
    if-ge v1, v2, :cond_4b

    .line 63
    .line 64
    aget-byte v0, v0, v1

    .line 65
    .line 66
    if-lez v0, :cond_48

    .line 67
    .line 68
    sget-object v2, Lh6/c;->d:[B

    .line 69
    .line 70
    int-to-byte v3, v1

    .line 71
    aput-byte v3, v2, v0

    .line 72
    .line 73
    :cond_48
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_3a

    .line 76
    :cond_4b
    return-void

    .line 77
    :array_4c
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    nop

    .line 97
    :array_60
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method public static a([BIILjava/lang/StringBuilder;)V
    .registers 15

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_b

    .line 3
    .line 4
    if-nez p2, :cond_b

    .line 5
    .line 6
    const/16 p2, 0x391

    .line 7
    .line 8
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    goto :goto_1a

    .line 12
    :cond_b
    rem-int/lit8 p2, p1, 0x6

    .line 13
    .line 14
    if-nez p2, :cond_15

    .line 15
    .line 16
    const/16 p2, 0x39c

    .line 17
    .line 18
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    goto :goto_1a

    .line 22
    :cond_15
    const/16 p2, 0x385

    .line 23
    .line 24
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :goto_1a
    const/4 p2, 0x0

    .line 28
    const/4 v0, 0x6

    .line 29
    if-lt p1, v0, :cond_57

    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    new-array v2, v1, [C

    .line 33
    .line 34
    move v3, p2

    .line 35
    :goto_22
    sub-int v4, p1, v3

    .line 36
    .line 37
    if-lt v4, v0, :cond_56

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    move v6, p2

    .line 42
    :goto_29
    if-ge v6, v0, :cond_39

    .line 43
    .line 44
    const/16 v7, 0x8

    .line 45
    .line 46
    shl-long/2addr v4, v7

    .line 47
    add-int v7, v3, v6

    .line 48
    .line 49
    aget-byte v7, p0, v7

    .line 50
    .line 51
    and-int/lit16 v7, v7, 0xff

    .line 52
    .line 53
    int-to-long v7, v7

    .line 54
    add-long/2addr v4, v7

    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_29

    .line 58
    :cond_39
    move v6, p2

    .line 59
    :goto_3a
    if-ge v6, v1, :cond_48

    .line 60
    .line 61
    const-wide/16 v7, 0x384

    .line 62
    .line 63
    rem-long v9, v4, v7

    .line 64
    .line 65
    long-to-int v9, v9

    .line 66
    int-to-char v9, v9

    .line 67
    aput-char v9, v2, v6

    .line 68
    .line 69
    div-long/2addr v4, v7

    .line 70
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_3a

    .line 73
    :cond_48
    const/4 v4, 0x4

    .line 74
    :goto_49
    if-ltz v4, :cond_53

    .line 75
    .line 76
    aget-char v5, v2, v4

    .line 77
    .line 78
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    add-int/lit8 v4, v4, -0x1

    .line 82
    .line 83
    goto :goto_49

    .line 84
    :cond_53
    add-int/lit8 v3, v3, 0x6

    .line 85
    .line 86
    goto :goto_22

    .line 87
    :cond_56
    move p2, v3

    .line 88
    :cond_57
    :goto_57
    if-ge p2, p1, :cond_64

    .line 89
    .line 90
    aget-byte v0, p0, p2

    .line 91
    .line 92
    and-int/lit16 v0, v0, 0xff

    .line 93
    .line 94
    int-to-char v0, v0

    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    add-int/lit8 p2, p2, 0x1

    .line 99
    .line 100
    goto :goto_57

    .line 101
    :cond_64
    return-void
.end method

.method public static b(IILjava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    div-int/lit8 v1, p1, 0x3

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, 0x384

    .line 11
    .line 12
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_17
    if-ge v4, p1, :cond_69

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 27
    .line 28
    .line 29
    const/16 v5, 0x2c

    .line 30
    .line 31
    sub-int v6, p1, v4

    .line 32
    .line 33
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v7, "1"

    .line 40
    .line 41
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    add-int v7, p0, v4

    .line 45
    .line 46
    add-int v8, v7, v5

    .line 47
    .line 48
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    new-instance v7, Ljava/math/BigInteger;

    .line 60
    .line 61
    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_3f
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    int-to-char v6, v6

    .line 73
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_3f

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    add-int/lit8 v6, v6, -0x1

    .line 91
    .line 92
    :goto_5b
    if-ltz v6, :cond_67

    .line 93
    .line 94
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    add-int/lit8 v6, v6, -0x1

    .line 102
    .line 103
    goto :goto_5b

    .line 104
    :cond_67
    add-int/2addr v4, v5

    .line 105
    goto :goto_17

    .line 106
    :cond_69
    return-void
.end method

.method public static c(Ljava/lang/String;IILjava/lang/StringBuilder;I)I
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    move/from16 v5, p4

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    :cond_e
    :goto_e
    add-int v7, p1, v6

    .line 16
    .line 17
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    sget-object v9, Lh6/c;->c:[B

    .line 22
    .line 23
    const/4 v10, -0x1

    .line 24
    const/16 v13, 0x1b

    .line 25
    .line 26
    const/16 v14, 0x1c

    .line 27
    .line 28
    sget-object v15, Lh6/c;->d:[B

    .line 29
    .line 30
    const/16 v4, 0x1d

    .line 31
    .line 32
    const/4 v11, 0x2

    .line 33
    const/4 v12, 0x1

    .line 34
    if-eqz v5, :cond_b0

    .line 35
    .line 36
    if-eq v5, v12, :cond_75

    .line 37
    .line 38
    if-eq v5, v11, :cond_38

    .line 39
    .line 40
    aget-byte v7, v15, v8

    .line 41
    .line 42
    if-eq v7, v10, :cond_33

    .line 43
    .line 44
    aget-byte v7, v15, v8

    .line 45
    .line 46
    int-to-char v7, v7

    .line 47
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto/16 :goto_e2

    .line 51
    .line 52
    :cond_33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :goto_36
    const/4 v5, 0x0

    .line 56
    goto :goto_e

    .line 57
    :cond_38
    aget-byte v9, v9, v8

    .line 58
    .line 59
    if-eq v9, v10, :cond_42

    .line 60
    .line 61
    int-to-char v7, v9

    .line 62
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto/16 :goto_e2

    .line 66
    .line 67
    :cond_42
    invoke-static {v8}, Lh6/c;->e(C)Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_4c

    .line 72
    .line 73
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    goto :goto_36

    .line 77
    :cond_4c
    invoke-static {v8}, Lh6/c;->d(C)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_57

    .line 82
    .line 83
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :goto_55
    move v5, v12

    .line 87
    goto :goto_e

    .line 88
    :cond_57
    add-int/lit8 v7, v7, 0x1

    .line 89
    .line 90
    if-ge v7, v1, :cond_6a

    .line 91
    .line 92
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    aget-byte v7, v15, v7

    .line 97
    .line 98
    if-eq v7, v10, :cond_6a

    .line 99
    .line 100
    const/16 v4, 0x19

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/4 v5, 0x3

    .line 106
    goto :goto_e

    .line 107
    :cond_6a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    aget-byte v7, v15, v8

    .line 111
    .line 112
    int-to-char v7, v7

    .line 113
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto/16 :goto_e2

    .line 117
    .line 118
    :cond_75
    invoke-static {v8}, Lh6/c;->d(C)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_8c

    .line 123
    .line 124
    const/16 v7, 0x20

    .line 125
    .line 126
    if-ne v8, v7, :cond_85

    .line 127
    .line 128
    const/16 v7, 0x1a

    .line 129
    .line 130
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    goto :goto_e2

    .line 134
    :cond_85
    add-int/lit8 v8, v8, -0x61

    .line 135
    .line 136
    int-to-char v7, v8

    .line 137
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    goto :goto_e2

    .line 141
    :cond_8c
    invoke-static {v8}, Lh6/c;->e(C)Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_9c

    .line 146
    .line 147
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    add-int/lit8 v8, v8, -0x41

    .line 151
    .line 152
    int-to-char v7, v8

    .line 153
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    goto :goto_e2

    .line 157
    :cond_9c
    aget-byte v7, v9, v8

    .line 158
    .line 159
    if-eq v7, v10, :cond_a6

    .line 160
    .line 161
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    :goto_a3
    move v5, v11

    .line 165
    goto/16 :goto_e

    .line 166
    .line 167
    :cond_a6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    aget-byte v7, v15, v8

    .line 171
    .line 172
    int-to-char v7, v7

    .line 173
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    goto :goto_e2

    .line 177
    :cond_b0
    invoke-static {v8}, Lh6/c;->e(C)Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-eqz v7, :cond_c7

    .line 182
    .line 183
    const/16 v7, 0x20

    .line 184
    .line 185
    if-ne v8, v7, :cond_c0

    .line 186
    .line 187
    const/16 v7, 0x1a

    .line 188
    .line 189
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    goto :goto_e2

    .line 193
    :cond_c0
    add-int/lit8 v8, v8, -0x41

    .line 194
    .line 195
    int-to-char v7, v8

    .line 196
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    goto :goto_e2

    .line 200
    :cond_c7
    invoke-static {v8}, Lh6/c;->d(C)Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-eqz v7, :cond_d1

    .line 205
    .line 206
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    goto :goto_55

    .line 210
    :cond_d1
    aget-byte v7, v9, v8

    .line 211
    .line 212
    if-eq v7, v10, :cond_d9

    .line 213
    .line 214
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    goto :goto_a3

    .line 218
    :cond_d9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    aget-byte v7, v15, v8

    .line 222
    .line 223
    int-to-char v7, v7

    .line 224
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    :goto_e2
    add-int/lit8 v6, v6, 0x1

    .line 228
    .line 229
    if-lt v6, v1, :cond_e

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    const/4 v1, 0x0

    .line 236
    const/16 v16, 0x0

    .line 237
    .line 238
    :goto_ed
    if-ge v1, v0, :cond_10a

    .line 239
    .line 240
    rem-int/lit8 v6, v1, 0x2

    .line 241
    .line 242
    if-eqz v6, :cond_102

    .line 243
    .line 244
    mul-int/lit8 v16, v16, 0x1e

    .line 245
    .line 246
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    add-int v6, v6, v16

    .line 251
    .line 252
    int-to-char v6, v6

    .line 253
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    :goto_ff
    move/from16 v16, v6

    .line 257
    .line 258
    goto :goto_107

    .line 259
    :cond_102
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    goto :goto_ff

    .line 264
    :goto_107
    add-int/lit8 v1, v1, 0x1

    .line 265
    .line 266
    goto :goto_ed

    .line 267
    :cond_10a
    rem-int/2addr v0, v11

    .line 268
    if-eqz v0, :cond_115

    .line 269
    .line 270
    mul-int/lit8 v16, v16, 0x1e

    .line 271
    .line 272
    add-int/lit8 v0, v16, 0x1d

    .line 273
    .line 274
    int-to-char v0, v0

    .line 275
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    :cond_115
    return v5
.end method

.method public static d(C)Z
    .registers 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_f

    .line 4
    .line 5
    const/16 v0, 0x61

    .line 6
    .line 7
    if-lt p0, v0, :cond_d

    .line 8
    .line 9
    const/16 v0, 0x7a

    .line 10
    .line 11
    if-gt p0, v0, :cond_d

    .line 12
    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_f
    :goto_f
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static e(C)Z
    .registers 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_f

    .line 4
    .line 5
    const/16 v0, 0x41

    .line 6
    .line 7
    if-lt p0, v0, :cond_d

    .line 8
    .line 9
    const/16 v0, 0x5a

    .line 10
    .line 11
    if-gt p0, v0, :cond_d

    .line 12
    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_f
    :goto_f
    const/4 p0, 0x1

    .line 17
    return p0
.end method
