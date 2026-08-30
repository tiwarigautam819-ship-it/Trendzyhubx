###### Class d1.d (d1.d)
.class public abstract Ld1/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Le5/e;

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Le5/e;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Le5/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ld1/d;->a:Le5/e;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    new-array v1, v0, [B

    .line 12
    .line 13
    fill-array-data v1, :array_4a

    .line 14
    .line 15
    .line 16
    sput-object v1, Ld1/d;->b:[B

    .line 17
    .line 18
    new-array v1, v0, [B

    .line 19
    .line 20
    fill-array-data v1, :array_50

    .line 21
    .line 22
    .line 23
    sput-object v1, Ld1/d;->c:[B

    .line 24
    .line 25
    new-array v1, v0, [B

    .line 26
    .line 27
    fill-array-data v1, :array_56

    .line 28
    .line 29
    .line 30
    sput-object v1, Ld1/d;->d:[B

    .line 31
    .line 32
    new-array v1, v0, [B

    .line 33
    .line 34
    fill-array-data v1, :array_5c

    .line 35
    .line 36
    .line 37
    sput-object v1, Ld1/d;->e:[B

    .line 38
    .line 39
    new-array v1, v0, [B

    .line 40
    .line 41
    fill-array-data v1, :array_62

    .line 42
    .line 43
    .line 44
    sput-object v1, Ld1/d;->f:[B

    .line 45
    .line 46
    new-array v1, v0, [B

    .line 47
    .line 48
    fill-array-data v1, :array_68

    .line 49
    .line 50
    .line 51
    sput-object v1, Ld1/d;->g:[B

    .line 52
    .line 53
    new-array v1, v0, [B

    .line 54
    .line 55
    fill-array-data v1, :array_6e

    .line 56
    .line 57
    .line 58
    sput-object v1, Ld1/d;->h:[B

    .line 59
    .line 60
    new-array v1, v0, [B

    .line 61
    .line 62
    fill-array-data v1, :array_74

    .line 63
    .line 64
    .line 65
    sput-object v1, Ld1/d;->i:[B

    .line 66
    .line 67
    new-array v0, v0, [B

    .line 68
    .line 69
    fill-array-data v0, :array_7a

    .line 70
    .line 71
    .line 72
    sput-object v0, Ld1/d;->j:[B

    .line 73
    .line 74
    return-void

    .line 75
    :array_4a
    .array-data 1
        0x70t
        0x72t
        0x6ft
        0x0t
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_50
    .array-data 1
        0x70t
        0x72t
        0x6dt
        0x0t
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_56
    .array-data 1
        0x30t
        0x31t
        0x35t
        0x0t
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_5c
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x0t
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_62
    .array-data 1
        0x30t
        0x30t
        0x39t
        0x0t
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_68
    .array-data 1
        0x30t
        0x30t
        0x35t
        0x0t
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_6e
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_74
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    :array_7a
    .array-data 1
        0x30t
        0x30t
        0x32t
        0x0t
    .end array-data
.end method

.method public static a([B)[B
    .registers 4

    .line 1
    new-instance v0, Ljava/util/zip/Deflater;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_b
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    .line 13
    .line 14
    invoke-direct {v2, v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1e

    .line 15
    .line 16
    .line 17
    :try_start_10
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_20

    .line 18
    .line 19
    .line 20
    :try_start_13
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1e

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :catchall_1e
    move-exception p0

    .line 32
    goto :goto_2a

    .line 33
    :catchall_20
    move-exception p0

    .line 34
    :try_start_21
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    .line 35
    .line 36
    .line 37
    goto :goto_29

    .line 38
    :catchall_25
    move-exception v1

    .line 39
    :try_start_26
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    throw p0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_1e

    .line 43
    :goto_2a
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public static b([Ld1/b;[B)[B
    .registers 13

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_4
    if-ge v2, v0, :cond_30

    .line 6
    .line 7
    aget-object v4, p0, v2

    .line 8
    .line 9
    iget-object v5, v4, Ld1/b;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, v4, Ld1/b;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, v5, v6}, Ld1/d;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    array-length v5, v5

    .line 24
    add-int/lit8 v5, v5, 0x10

    .line 25
    .line 26
    iget v6, v4, Ld1/b;->e:I

    .line 27
    .line 28
    mul-int/lit8 v6, v6, 0x2

    .line 29
    .line 30
    add-int/2addr v6, v5

    .line 31
    iget v5, v4, Ld1/b;->f:I

    .line 32
    .line 33
    add-int/2addr v6, v5

    .line 34
    iget v4, v4, Ld1/b;->g:I

    .line 35
    .line 36
    mul-int/lit8 v4, v4, 0x2

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x7

    .line 39
    .line 40
    and-int/lit8 v4, v4, -0x8

    .line 41
    .line 42
    div-int/lit8 v4, v4, 0x8

    .line 43
    .line 44
    add-int/2addr v4, v6

    .line 45
    add-int/2addr v3, v4

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_4

    .line 49
    :cond_30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 50
    .line 51
    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Ld1/d;->f:[B

    .line 55
    .line 56
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_69

    .line 61
    .line 62
    array-length v2, p0

    .line 63
    move v4, v1

    .line 64
    :goto_3f
    if-ge v4, v2, :cond_9e

    .line 65
    .line 66
    aget-object v5, p0, v4

    .line 67
    .line 68
    iget-object v6, v5, Ld1/b;->a:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v7, v5, Ld1/b;->b:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p1, v6, v7}, Ld1/d;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v0, v5, v6}, Ld1/d;->p(Ljava/io/ByteArrayOutputStream;Ld1/b;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v5}, Ld1/d;->r(Ljava/io/ByteArrayOutputStream;Ld1/b;)V

    .line 80
    .line 81
    .line 82
    iget-object v6, v5, Ld1/b;->h:[I

    .line 83
    .line 84
    array-length v7, v6

    .line 85
    move v8, v1

    .line 86
    move v9, v8

    .line 87
    :goto_56
    if-ge v8, v7, :cond_63

    .line 88
    .line 89
    aget v10, v6, v8

    .line 90
    .line 91
    sub-int v9, v10, v9

    .line 92
    .line 93
    invoke-static {v0, v9}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v8, v8, 0x1

    .line 97
    .line 98
    move v9, v10

    .line 99
    goto :goto_56

    .line 100
    :cond_63
    invoke-static {v0, v5}, Ld1/d;->q(Ljava/io/ByteArrayOutputStream;Ld1/b;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_3f

    .line 106
    :cond_69
    array-length v2, p0

    .line 107
    move v4, v1

    .line 108
    :goto_6b
    if-ge v4, v2, :cond_7d

    .line 109
    .line 110
    aget-object v5, p0, v4

    .line 111
    .line 112
    iget-object v6, v5, Ld1/b;->a:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v7, v5, Ld1/b;->b:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {p1, v6, v7}, Ld1/d;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {v0, v5, v6}, Ld1/d;->p(Ljava/io/ByteArrayOutputStream;Ld1/b;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    goto :goto_6b

    .line 126
    :cond_7d
    array-length p1, p0

    .line 127
    move v2, v1

    .line 128
    :goto_7f
    if-ge v2, p1, :cond_9e

    .line 129
    .line 130
    aget-object v4, p0, v2

    .line 131
    .line 132
    invoke-static {v0, v4}, Ld1/d;->r(Ljava/io/ByteArrayOutputStream;Ld1/b;)V

    .line 133
    .line 134
    .line 135
    iget-object v5, v4, Ld1/b;->h:[I

    .line 136
    .line 137
    array-length v6, v5

    .line 138
    move v7, v1

    .line 139
    move v8, v7

    .line 140
    :goto_8b
    if-ge v7, v6, :cond_98

    .line 141
    .line 142
    aget v9, v5, v7

    .line 143
    .line 144
    sub-int v8, v9, v8

    .line 145
    .line 146
    invoke-static {v0, v8}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v7, v7, 0x1

    .line 150
    .line 151
    move v8, v9

    .line 152
    goto :goto_8b

    .line 153
    :cond_98
    invoke-static {v0, v4}, Ld1/d;->q(Ljava/io/ByteArrayOutputStream;Ld1/b;)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto :goto_7f

    .line 159
    :cond_9e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-ne p0, v3, :cond_a9

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    return-object p0

    .line 170
    :cond_a9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string p1, "The bytes saved do not match expectation. actual="

    .line 173
    .line 174
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string p1, " expected="

    .line 185
    .line 186
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 197
    .line 198
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1
.end method

.method public static c(Ljava/io/File;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_25

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p0, :cond_f

    .line 14
    .line 15
    return v0

    .line 16
    :cond_f
    array-length v2, p0

    .line 17
    move v3, v0

    .line 18
    move v4, v1

    .line 19
    :goto_12
    if-ge v3, v2, :cond_24

    .line 20
    .line 21
    aget-object v5, p0, v3

    .line 22
    .line 23
    invoke-static {v5}, Ld1/d;->c(Ljava/io/File;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_20

    .line 28
    .line 29
    if-eqz v4, :cond_20

    .line 30
    .line 31
    move v4, v1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v4, v0

    .line 34
    :goto_21
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_12

    .line 37
    :cond_24
    return v4

    .line 38
    :cond_25
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    .line 41
    return v1
.end method

.method public static d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    sget-object v0, Ld1/d;->h:[B

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Ld1/d;->g:[B

    .line 8
    .line 9
    const-string v3, "!"

    .line 10
    .line 11
    const-string v4, ":"

    .line 12
    .line 13
    if-eqz v1, :cond_f

    .line 14
    .line 15
    goto :goto_15

    .line 16
    :cond_f
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_17

    .line 21
    .line 22
    :goto_15
    move-object v1, v4

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move-object v1, v3

    .line 25
    :goto_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-gtz v5, :cond_34

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_29

    .line 36
    .line 37
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_29
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_84

    .line 47
    .line 48
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_34
    const-string v5, "classes.dex"

    .line 54
    .line 55
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3d

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_3d
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_6e

    .line 67
    .line 68
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_4a

    .line 73
    .line 74
    goto :goto_6e

    .line 75
    :cond_4a
    const-string v1, ".apk"

    .line 76
    .line 77
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_53

    .line 82
    .line 83
    goto :goto_84

    .line 84
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_62

    .line 97
    .line 98
    goto :goto_68

    .line 99
    :cond_62
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_69

    .line 104
    .line 105
    :goto_68
    move-object v3, v4

    .line 106
    :cond_69
    invoke-static {v1, v3, p2}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_6e
    :goto_6e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_79

    .line 116
    .line 117
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :cond_79
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_84

    .line 127
    .line 128
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :cond_84
    :goto_84
    return-object p2
.end method

.method public static e(Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_7
    new-instance p1, Ljava/io/DataOutputStream;

    .line 9
    .line 10
    new-instance v1, Ljava/io/FileOutputStream;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_24

    .line 16
    .line 17
    .line 18
    :try_start_11
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 21
    .line 22
    .line 23
    :try_start_16
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_24

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_1a
    move-exception p0

    .line 28
    :try_start_1b
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    .line 29
    .line 30
    .line 31
    goto :goto_23

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    :try_start_20
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_23
    throw p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_24} :catch_24

    .line 37
    :catch_24
    return-void
.end method

.method public static f(Ljava/io/InputStream;I)[B
    .registers 5

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_3
    if-ge v1, p1, :cond_1b

    .line 5
    .line 6
    sub-int v2, p1, v1

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ltz v2, :cond_f

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    goto :goto_3

    .line 16
    :cond_f
    const-string p0, "Not enough bytes to read: "

    .line 17
    .line 18
    invoke-static {p1, p0}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1b
    return-object v0
.end method

.method public static g(Ljava/io/ByteArrayInputStream;I)[I
    .registers 7

    .line 1
    new-array v0, p1, [I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_4
    if-ge v1, p1, :cond_12

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-static {p0, v3}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    long-to-int v3, v3

    .line 13
    add-int/2addr v2, v3

    .line 14
    aput v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_4

    .line 19
    :cond_12
    return-object v0
.end method

.method public static h(Ljava/io/FileInputStream;II)[B
    .registers 11

    .line 1
    new-instance v0, Ljava/util/zip/Inflater;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_5
    new-array v1, p2, [B

    .line 7
    .line 8
    const/16 v2, 0x800

    .line 9
    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    move v5, v4

    .line 15
    :goto_e
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-nez v6, :cond_57

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-nez v6, :cond_57

    .line 26
    .line 27
    if-ge v4, p1, :cond_57

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ltz v6, :cond_3b

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3, v6}, Ljava/util/zip/Inflater;->setInput([BII)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_2e

    .line 36
    .line 37
    .line 38
    sub-int v7, p2, v5

    .line 39
    .line 40
    :try_start_27
    invoke-virtual {v0, v1, v5, v7}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 41
    .line 42
    .line 43
    move-result v7
    :try_end_2b
    .catch Ljava/util/zip/DataFormatException; {:try_start_27 .. :try_end_2b} :catch_30
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2e

    .line 44
    add-int/2addr v5, v7

    .line 45
    add-int/2addr v4, v6

    .line 46
    goto :goto_e

    .line 47
    :catchall_2e
    move-exception p0

    .line 48
    goto :goto_8a

    .line 49
    :catch_30
    move-exception p0

    .line 50
    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string p2, "Invalid zip data. Stream ended after $totalBytesRead bytes. Expected "

    .line 66
    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " bytes"

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_57
    if-ne v4, p1, :cond_6b

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    .line 91
    .line 92
    .line 93
    move-result p0
    :try_end_5d
    .catchall {:try_start_31 .. :try_end_5d} :catchall_2e

    .line 94
    if-eqz p0, :cond_63

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    :cond_63
    :try_start_63
    const-string p0, "Inflater did not finish"

    .line 101
    .line 102
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_6b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string p2, "Didn\'t read enough bytes during decompression. expected="

    .line 114
    .line 115
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, " actual="

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1
    :try_end_8a
    .catchall {:try_start_63 .. :try_end_8a} :catchall_2e

    .line 139
    :goto_8a
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 140
    .line 141
    .line 142
    throw p0
.end method

.method public static i(Ljava/io/FileInputStream;[B[B[Ld1/b;)[Ld1/b;
    .registers 10

    .line 1
    sget-object v0, Ld1/d;->i:[B

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "Unsupported meta version"

    .line 8
    .line 9
    const-string v3, "Content found after the end of file"

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    if-eqz v1, :cond_60

    .line 13
    .line 14
    sget-object v1, Ld1/d;->d:[B

    .line 15
    .line 16
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_58

    .line 21
    .line 22
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_52

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-static {p0, p1}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    long-to-int p1, p1

    .line 34
    invoke-static {p0, v4}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-static {p0, v4}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    long-to-int p2, v4

    .line 43
    long-to-int v0, v0

    .line 44
    invoke-static {p0, p2, v0}, Ld1/d;->h(Ljava/io/FileInputStream;II)[B

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-gtz p0, :cond_4c

    .line 53
    .line 54
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 55
    .line 56
    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 57
    .line 58
    .line 59
    :try_start_3a
    invoke-static {p0, p1, p3}, Ld1/d;->j(Ljava/io/ByteArrayInputStream;I[Ld1/b;)[Ld1/b;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_42

    .line 63
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :catchall_42
    move-exception p1

    .line 68
    :try_start_43
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    .line 69
    .line 70
    .line 71
    goto :goto_4b

    .line 72
    :catchall_47
    move-exception p0

    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :goto_4b
    throw p1

    .line 77
    :cond_4c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_58
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string p1, "Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_60
    sget-object v0, Ld1/d;->j:[B

    .line 98
    .line 99
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_9f

    .line 104
    .line 105
    const/4 p1, 0x2

    .line 106
    invoke-static {p0, p1}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    long-to-int p1, v0

    .line 111
    invoke-static {p0, v4}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    invoke-static {p0, v4}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    long-to-int v2, v4

    .line 120
    long-to-int v0, v0

    .line 121
    invoke-static {p0, v2, v0}, Ld1/d;->h(Ljava/io/FileInputStream;II)[B

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-gtz p0, :cond_99

    .line 130
    .line 131
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 132
    .line 133
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 134
    .line 135
    .line 136
    :try_start_87
    invoke-static {p0, p2, p1, p3}, Ld1/d;->k(Ljava/io/ByteArrayInputStream;[BI[Ld1/b;)[Ld1/b;

    .line 137
    .line 138
    .line 139
    move-result-object p1
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_8f

    .line 140
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 141
    .line 142
    .line 143
    return-object p1

    .line 144
    :catchall_8f
    move-exception p1

    .line 145
    :try_start_90
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    .line 146
    .line 147
    .line 148
    goto :goto_98

    .line 149
    :catchall_94
    move-exception p0

    .line 150
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    :goto_98
    throw p1

    .line 154
    :cond_99
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 155
    .line 156
    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    :cond_9f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0
.end method

.method public static j(Ljava/io/ByteArrayInputStream;I[Ld1/b;)[Ld1/b;
    .registers 11

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_a

    .line 7
    .line 8
    new-array p0, v1, [Ld1/b;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_a
    array-length v0, p2

    .line 12
    if-ne p1, v0, :cond_55

    .line 13
    .line 14
    new-array v0, p1, [Ljava/lang/String;

    .line 15
    .line 16
    new-array v2, p1, [I

    .line 17
    .line 18
    move v3, v1

    .line 19
    :goto_12
    if-ge v3, p1, :cond_31

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-static {p0, v4}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    long-to-int v5, v5

    .line 27
    invoke-static {p0, v4}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    long-to-int v4, v6

    .line 32
    aput v4, v2, v3

    .line 33
    .line 34
    new-instance v4, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p0, v5}, Ld1/d;->f(Ljava/io/InputStream;I)[B

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 41
    .line 42
    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 43
    .line 44
    .line 45
    aput-object v4, v0, v3

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_12

    .line 50
    :cond_31
    :goto_31
    if-ge v1, p1, :cond_54

    .line 51
    .line 52
    aget-object v3, p2, v1

    .line 53
    .line 54
    iget-object v4, v3, Ld1/b;->b:Ljava/lang/String;

    .line 55
    .line 56
    aget-object v5, v0, v1

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_4c

    .line 63
    .line 64
    aget v4, v2, v1

    .line 65
    .line 66
    iput v4, v3, Ld1/b;->e:I

    .line 67
    .line 68
    invoke-static {p0, v4}, Ld1/d;->g(Ljava/io/ByteArrayInputStream;I)[I

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iput-object v4, v3, Ld1/b;->h:[I

    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_31

    .line 77
    :cond_4c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string p1, "Order of dexfiles in metadata did not match baseline"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_54
    return-object p2

    .line 86
    :cond_55
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    const-string p1, "Mismatched number of dex files found in metadata"

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public static k(Ljava/io/ByteArrayInputStream;[BI[Ld1/b;)[Ld1/b;
    .registers 14

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_a

    .line 7
    .line 8
    new-array p0, v1, [Ld1/b;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_a
    array-length v0, p3

    .line 12
    if-ne p2, v0, :cond_83

    .line 13
    .line 14
    move v0, v1

    .line 15
    :goto_e
    if-ge v0, p2, :cond_82

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-static {p0, v2}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v2}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    long-to-int v3, v3

    .line 26
    new-instance v4, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p0, v3}, Ld1/d;->f(Ljava/io/InputStream;I)[B

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    invoke-static {p0, v3}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    invoke-static {p0, v2}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    long-to-int v2, v2

    .line 47
    array-length v3, p3

    .line 48
    const/4 v7, 0x0

    .line 49
    if-gtz v3, :cond_33

    .line 50
    .line 51
    goto :goto_5f

    .line 52
    :cond_33
    const-string v3, "!"

    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-gez v3, :cond_41

    .line 59
    .line 60
    const-string v3, ":"

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    :cond_41
    if-lez v3, :cond_4a

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move-object v3, v4

    .line 76
    :goto_4b
    move v8, v1

    .line 77
    :goto_4c
    array-length v9, p3

    .line 78
    if-ge v8, v9, :cond_5f

    .line 79
    .line 80
    aget-object v9, p3, v8

    .line 81
    .line 82
    iget-object v9, v9, Ld1/b;->b:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_5c

    .line 89
    .line 90
    aget-object v7, p3, v8

    .line 91
    .line 92
    goto :goto_5f

    .line 93
    :cond_5c
    add-int/lit8 v8, v8, 0x1

    .line 94
    .line 95
    goto :goto_4c

    .line 96
    :cond_5f
    :goto_5f
    if-eqz v7, :cond_76

    .line 97
    .line 98
    iput-wide v5, v7, Ld1/b;->d:J

    .line 99
    .line 100
    invoke-static {p0, v2}, Ld1/d;->g(Ljava/io/ByteArrayInputStream;I)[I

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    sget-object v4, Ld1/d;->h:[B

    .line 105
    .line 106
    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_73

    .line 111
    .line 112
    iput v2, v7, Ld1/b;->e:I

    .line 113
    .line 114
    iput-object v3, v7, Ld1/b;->h:[I

    .line 115
    .line 116
    :cond_73
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_e

    .line 119
    :cond_76
    const-string p0, "Missing profile key: "

    .line 120
    .line 121
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_82
    return-object p3

    .line 132
    :cond_83
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string p1, "Mismatched number of dex files found in metadata"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public static l(Ljava/io/FileInputStream;[BLjava/lang/String;)[Ld1/b;
    .registers 8

    .line 1
    sget-object v0, Ld1/d;->e:[B

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_42

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p0, p1}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    long-to-int p1, v0

    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-static {p0, v0}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {p0, v0}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    long-to-int v0, v3

    .line 25
    long-to-int v1, v1

    .line 26
    invoke-static {p0, v0, v1}, Ld1/d;->h(Ljava/io/FileInputStream;II)[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-gtz p0, :cond_3a

    .line 35
    .line 36
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 39
    .line 40
    .line 41
    :try_start_28
    invoke-static {p0, p2, p1}, Ld1/d;->n(Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)[Ld1/b;

    .line 42
    .line 43
    .line 44
    move-result-object p1
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_30

    .line 45
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    :try_start_31
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    .line 51
    .line 52
    .line 53
    goto :goto_39

    .line 54
    :catchall_35
    move-exception p0

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_39
    throw p1

    .line 59
    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p1, "Content found after the end of file"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p1, "Unsupported version"

    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public static m(Ljava/io/InputStream;I)J
    .registers 8

    .line 1
    invoke-static {p0, p1}, Ld1/d;->f(Ljava/io/InputStream;I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    if-ge v2, p1, :cond_15

    .line 9
    .line 10
    aget-byte v3, p0, v2

    .line 11
    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 13
    .line 14
    int-to-long v3, v3

    .line 15
    mul-int/lit8 v5, v2, 0x8

    .line 16
    .line 17
    shl-long/2addr v3, v5

    .line 18
    add-long/2addr v0, v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_7

    .line 22
    :cond_15
    return-wide v0
.end method

.method public static n(Ljava/io/ByteArrayInputStream;Ljava/lang/String;I)[Ld1/b;
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_e

    .line 11
    .line 12
    new-array v0, v3, [Ld1/b;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_e
    new-array v2, v1, [Ld1/b;

    .line 16
    .line 17
    move v4, v3

    .line 18
    :goto_11
    const/4 v5, 0x2

    .line 19
    if-ge v4, v1, :cond_50

    .line 20
    .line 21
    invoke-static {v0, v5}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    long-to-int v6, v6

    .line 26
    invoke-static {v0, v5}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    long-to-int v14, v7

    .line 31
    const/4 v5, 0x4

    .line 32
    invoke-static {v0, v5}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    invoke-static {v0, v5}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v12

    .line 40
    invoke-static {v0, v5}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v9

    .line 44
    new-instance v5, Ld1/b;

    .line 45
    .line 46
    new-instance v11, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v0, v6}, Ld1/d;->f(Ljava/io/InputStream;I)[B

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    invoke-direct {v11, v6, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 55
    .line 56
    .line 57
    long-to-int v15, v7

    .line 58
    long-to-int v6, v9

    .line 59
    new-array v7, v14, [I

    .line 60
    .line 61
    new-instance v18, Ljava/util/TreeMap;

    .line 62
    .line 63
    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V

    .line 64
    .line 65
    .line 66
    move-object/from16 v10, p1

    .line 67
    .line 68
    move-object v9, v5

    .line 69
    move/from16 v16, v6

    .line 70
    .line 71
    move-object/from16 v17, v7

    .line 72
    .line 73
    invoke-direct/range {v9 .. v18}, Ld1/b;-><init>(Ljava/lang/String;Ljava/lang/String;JIII[ILjava/util/TreeMap;)V

    .line 74
    .line 75
    .line 76
    aput-object v9, v2, v4

    .line 77
    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    goto :goto_11

    .line 81
    :cond_50
    move v4, v3

    .line 82
    :goto_51
    if-ge v4, v1, :cond_11c

    .line 83
    .line 84
    aget-object v6, v2, v4

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    iget v8, v6, Ld1/b;->f:I

    .line 91
    .line 92
    iget v9, v6, Ld1/b;->g:I

    .line 93
    .line 94
    iget-object v10, v6, Ld1/b;->i:Ljava/util/TreeMap;

    .line 95
    .line 96
    sub-int/2addr v7, v8

    .line 97
    move v8, v3

    .line 98
    :cond_61
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    const/4 v12, 0x7

    .line 103
    if-le v11, v7, :cond_b4

    .line 104
    .line 105
    invoke-static {v0, v5}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 106
    .line 107
    .line 108
    move-result-wide v13

    .line 109
    long-to-int v11, v13

    .line 110
    add-int/2addr v8, v11

    .line 111
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    const/4 v13, 0x1

    .line 116
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    invoke-virtual {v10, v11, v14}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v5}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 124
    .line 125
    .line 126
    move-result-wide v14

    .line 127
    long-to-int v11, v14

    .line 128
    :goto_7f
    if-lez v11, :cond_61

    .line 129
    .line 130
    invoke-static {v0, v5}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v13}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 134
    .line 135
    .line 136
    move-result-wide v14

    .line 137
    long-to-int v14, v14

    .line 138
    const/4 v15, 0x6

    .line 139
    if-ne v14, v15, :cond_90

    .line 140
    .line 141
    :cond_8c
    :goto_8c
    move v15, v3

    .line 142
    move/from16 v16, v4

    .line 143
    .line 144
    goto :goto_ae

    .line 145
    :cond_90
    if-ne v14, v12, :cond_93

    .line 146
    .line 147
    goto :goto_8c

    .line 148
    :cond_93
    :goto_93
    if-lez v14, :cond_8c

    .line 149
    .line 150
    invoke-static {v0, v13}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 151
    .line 152
    .line 153
    move v15, v3

    .line 154
    move/from16 v16, v4

    .line 155
    .line 156
    invoke-static {v0, v13}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    long-to-int v3, v3

    .line 161
    :goto_a0
    if-lez v3, :cond_a8

    .line 162
    .line 163
    invoke-static {v0, v5}, Ld1/d;->m(Ljava/io/InputStream;I)J

    .line 164
    .line 165
    .line 166
    add-int/lit8 v3, v3, -0x1

    .line 167
    .line 168
    goto :goto_a0

    .line 169
    :cond_a8
    add-int/lit8 v14, v14, -0x1

    .line 170
    .line 171
    move v3, v15

    .line 172
    move/from16 v4, v16

    .line 173
    .line 174
    goto :goto_93

    .line 175
    :goto_ae
    add-int/lit8 v11, v11, -0x1

    .line 176
    .line 177
    move v3, v15

    .line 178
    move/from16 v4, v16

    .line 179
    .line 180
    goto :goto_7f

    .line 181
    :cond_b4
    move v15, v3

    .line 182
    move/from16 v16, v4

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-ne v3, v7, :cond_114

    .line 189
    .line 190
    iget v3, v6, Ld1/b;->e:I

    .line 191
    .line 192
    invoke-static {v0, v3}, Ld1/d;->g(Ljava/io/ByteArrayInputStream;I)[I

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    iput-object v3, v6, Ld1/b;->h:[I

    .line 197
    .line 198
    mul-int/lit8 v3, v9, 0x2

    .line 199
    .line 200
    add-int/2addr v3, v12

    .line 201
    and-int/lit8 v3, v3, -0x8

    .line 202
    .line 203
    div-int/lit8 v3, v3, 0x8

    .line 204
    .line 205
    invoke-static {v0, v3}, Ld1/d;->f(Ljava/io/InputStream;I)[B

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    move v4, v15

    .line 214
    :goto_d5
    if-ge v4, v9, :cond_10f

    .line 215
    .line 216
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_df

    .line 221
    .line 222
    move v6, v5

    .line 223
    goto :goto_e0

    .line 224
    :cond_df
    move v6, v15

    .line 225
    :goto_e0
    add-int v7, v4, v9

    .line 226
    .line 227
    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-eqz v7, :cond_ea

    .line 232
    .line 233
    or-int/lit8 v6, v6, 0x4

    .line 234
    .line 235
    :cond_ea
    if-eqz v6, :cond_10c

    .line 236
    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    invoke-virtual {v10, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    check-cast v7, Ljava/lang/Integer;

    .line 246
    .line 247
    if-nez v7, :cond_fc

    .line 248
    .line 249
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    :cond_fc
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    or-int/2addr v6, v7

    .line 262
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-virtual {v10, v8, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    :cond_10c
    add-int/lit8 v4, v4, 0x1

    .line 270
    .line 271
    goto :goto_d5

    .line 272
    :cond_10f
    add-int/lit8 v4, v16, 0x1

    .line 273
    .line 274
    move v3, v15

    .line 275
    goto/16 :goto_51

    .line 276
    .line 277
    :cond_114
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 278
    .line 279
    const-string v1, "Read too much data during profile line parse"

    .line 280
    .line 281
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw v0

    .line 285
    :cond_11c
    return-object v2
.end method

.method public static o(Ljava/io/ByteArrayOutputStream;[B[Ld1/b;)Z
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Ld1/d;->d:[B

    .line 8
    .line 9
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x4

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x1

    .line 16
    if-eqz v4, :cond_267

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v8, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 30
    .line 31
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .line 33
    .line 34
    :try_start_21
    array-length v10, v2

    .line 35
    invoke-static {v9, v10}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 36
    .line 37
    .line 38
    const/4 v10, 0x2

    .line 39
    move v11, v6

    .line 40
    move v12, v10

    .line 41
    :goto_28
    array-length v13, v2

    .line 42
    if-ge v11, v13, :cond_61

    .line 43
    .line 44
    aget-object v13, v2, v11

    .line 45
    .line 46
    iget-wide v14, v13, Ld1/b;->c:J

    .line 47
    .line 48
    invoke-static {v9, v14, v15, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 49
    .line 50
    .line 51
    iget-wide v14, v13, Ld1/b;->d:J

    .line 52
    .line 53
    invoke-static {v9, v14, v15, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 54
    .line 55
    .line 56
    iget v14, v13, Ld1/b;->g:I

    .line 57
    .line 58
    int-to-long v14, v14

    .line 59
    invoke-static {v9, v14, v15, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 60
    .line 61
    .line 62
    iget-object v14, v13, Ld1/b;->a:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v13, v13, Ld1/b;->b:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v3, v14, v13}, Ld1/d;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    add-int/lit8 v12, v12, 0xe

    .line 71
    .line 72
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    .line 74
    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    array-length v15, v15

    .line 79
    invoke-static {v9, v15}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 80
    .line 81
    .line 82
    add-int/2addr v12, v15

    .line 83
    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    invoke-virtual {v9, v13}, Ljava/io/OutputStream;->write([B)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v11, v11, 0x1

    .line 91
    .line 92
    goto :goto_28

    .line 93
    :goto_5c
    move-object v1, v0

    .line 94
    goto/16 :goto_25e

    .line 95
    .line 96
    :catchall_5f
    move-exception v0

    .line 97
    goto :goto_5c

    .line 98
    :cond_61
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    array-length v11, v3
    :try_end_66
    .catchall {:try_start_21 .. :try_end_66} :catchall_5f

    .line 103
    const-string v13, ", does not match actual size "

    .line 104
    .line 105
    const-string v14, "Expected size "

    .line 106
    .line 107
    if-ne v12, v11, :cond_242

    .line 108
    .line 109
    :try_start_6c
    new-instance v11, Ld1/l;

    .line 110
    .line 111
    invoke-direct {v11, v7, v3, v6}, Ld1/l;-><init>(I[BZ)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_5f

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 121
    .line 122
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .line 124
    .line 125
    move v9, v6

    .line 126
    move v11, v9

    .line 127
    :goto_7e
    :try_start_7e
    array-length v12, v2

    .line 128
    if-ge v9, v12, :cond_b4

    .line 129
    .line 130
    aget-object v12, v2, v9

    .line 131
    .line 132
    invoke-static {v3, v9}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 133
    .line 134
    .line 135
    add-int/lit8 v11, v11, 0x4

    .line 136
    .line 137
    iget v15, v12, Ld1/b;->e:I

    .line 138
    .line 139
    invoke-static {v3, v15}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 140
    .line 141
    .line 142
    iget v15, v12, Ld1/b;->e:I

    .line 143
    .line 144
    mul-int/2addr v15, v10

    .line 145
    add-int/2addr v11, v15

    .line 146
    iget-object v12, v12, Ld1/b;->h:[I

    .line 147
    .line 148
    array-length v15, v12

    .line 149
    move/from16 v16, v6

    .line 150
    .line 151
    move/from16 p1, v10

    .line 152
    .line 153
    move/from16 v10, v16

    .line 154
    .line 155
    :goto_9a
    if-ge v10, v15, :cond_a9

    .line 156
    .line 157
    aget v17, v12, v10

    .line 158
    .line 159
    sub-int v6, v17, v16

    .line 160
    .line 161
    invoke-static {v3, v6}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 162
    .line 163
    .line 164
    add-int/lit8 v10, v10, 0x1

    .line 165
    .line 166
    move/from16 v16, v17

    .line 167
    .line 168
    const/4 v6, 0x0

    .line 169
    goto :goto_9a

    .line 170
    :cond_a9
    add-int/lit8 v9, v9, 0x1

    .line 171
    .line 172
    move/from16 v10, p1

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    goto :goto_7e

    .line 176
    :goto_af
    move-object v1, v0

    .line 177
    goto/16 :goto_239

    .line 178
    .line 179
    :catchall_b2
    move-exception v0

    .line 180
    goto :goto_af

    .line 181
    :cond_b4
    move/from16 p1, v10

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    array-length v9, v6

    .line 188
    if-ne v11, v9, :cond_21d

    .line 189
    .line 190
    new-instance v9, Ld1/l;

    .line 191
    .line 192
    invoke-direct {v9, v4, v6, v7}, Ld1/l;-><init>(I[BZ)V
    :try_end_c2
    .catchall {:try_start_7e .. :try_end_c2} :catchall_b2

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 202
    .line 203
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    .line 205
    .line 206
    const/4 v4, 0x0

    .line 207
    const/4 v6, 0x0

    .line 208
    :goto_cf
    :try_start_cf
    array-length v9, v2

    .line 209
    if-ge v4, v9, :cond_14f

    .line 210
    .line 211
    aget-object v9, v2, v4

    .line 212
    .line 213
    iget-object v10, v9, Ld1/b;->i:Ljava/util/TreeMap;

    .line 214
    .line 215
    invoke-virtual {v10}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    const/4 v11, 0x0

    .line 224
    :goto_df
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    if-eqz v12, :cond_f7

    .line 229
    .line 230
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    check-cast v12, Ljava/util/Map$Entry;

    .line 235
    .line 236
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    check-cast v12, Ljava/lang/Integer;

    .line 241
    .line 242
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    or-int/2addr v11, v12

    .line 247
    goto :goto_df

    .line 248
    :cond_f7
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 249
    .line 250
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_fc
    .catchall {:try_start_cf .. :try_end_fc} :catchall_135

    .line 251
    .line 252
    .line 253
    :try_start_fc
    invoke-static {v10, v9}, Ld1/d;->q(Ljava/io/ByteArrayOutputStream;Ld1/b;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 257
    .line 258
    .line 259
    move-result-object v12
    :try_end_103
    .catchall {:try_start_fc .. :try_end_103} :catchall_144

    .line 260
    :try_start_103
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 261
    .line 262
    .line 263
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 264
    .line 265
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_10b
    .catchall {:try_start_103 .. :try_end_10b} :catchall_135

    .line 266
    .line 267
    .line 268
    :try_start_10b
    invoke-static {v10, v9}, Ld1/d;->r(Ljava/io/ByteArrayOutputStream;Ld1/b;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 272
    .line 273
    .line 274
    move-result-object v9
    :try_end_112
    .catchall {:try_start_10b .. :try_end_112} :catchall_139

    .line 275
    :try_start_112
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 276
    .line 277
    .line 278
    invoke-static {v3, v4}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 279
    .line 280
    .line 281
    array-length v10, v12

    .line 282
    add-int/lit8 v10, v10, 0x2

    .line 283
    .line 284
    array-length v15, v9

    .line 285
    add-int/2addr v10, v15

    .line 286
    add-int/lit8 v6, v6, 0x6

    .line 287
    .line 288
    move-object/from16 v16, v8

    .line 289
    .line 290
    int-to-long v7, v10

    .line 291
    invoke-static {v3, v7, v8, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 292
    .line 293
    .line 294
    invoke-static {v3, v11}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v12}, Ljava/io/OutputStream;->write([B)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_12e
    .catchall {:try_start_112 .. :try_end_12e} :catchall_135

    .line 301
    .line 302
    .line 303
    add-int/2addr v6, v10

    .line 304
    add-int/lit8 v4, v4, 0x1

    .line 305
    .line 306
    move-object/from16 v8, v16

    .line 307
    .line 308
    const/4 v7, 0x1

    .line 309
    goto :goto_cf

    .line 310
    :catchall_135
    move-exception v0

    .line 311
    move-object v1, v0

    .line 312
    goto/16 :goto_214

    .line 313
    .line 314
    :catchall_139
    move-exception v0

    .line 315
    move-object v1, v0

    .line 316
    :try_start_13b
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13e
    .catchall {:try_start_13b .. :try_end_13e} :catchall_13f

    .line 317
    .line 318
    .line 319
    goto :goto_143

    .line 320
    :catchall_13f
    move-exception v0

    .line 321
    :try_start_140
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 322
    .line 323
    .line 324
    :goto_143
    throw v1
    :try_end_144
    .catchall {:try_start_140 .. :try_end_144} :catchall_135

    .line 325
    :catchall_144
    move-exception v0

    .line 326
    move-object v1, v0

    .line 327
    :try_start_146
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_149
    .catchall {:try_start_146 .. :try_end_149} :catchall_14a

    .line 328
    .line 329
    .line 330
    goto :goto_14e

    .line 331
    :catchall_14a
    move-exception v0

    .line 332
    :try_start_14b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 333
    .line 334
    .line 335
    :goto_14e
    throw v1

    .line 336
    :cond_14f
    move-object/from16 v16, v8

    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    array-length v4, v2

    .line 343
    if-ne v6, v4, :cond_1f8

    .line 344
    .line 345
    new-instance v4, Ld1/l;

    .line 346
    .line 347
    const/4 v15, 0x1

    .line 348
    invoke-direct {v4, v5, v2, v15}, Ld1/l;-><init>(I[BZ)V
    :try_end_15e
    .catchall {:try_start_14b .. :try_end_15e} :catchall_135

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    int-to-long v2, v5

    .line 358
    add-long/2addr v2, v2

    .line 359
    const-wide/16 v6, 0x4

    .line 360
    .line 361
    add-long/2addr v2, v6

    .line 362
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    mul-int/lit8 v4, v4, 0x10

    .line 367
    .line 368
    int-to-long v6, v4

    .line 369
    add-long/2addr v2, v6

    .line 370
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    int-to-long v6, v4

    .line 375
    invoke-static {v0, v6, v7, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 376
    .line 377
    .line 378
    const/4 v4, 0x0

    .line 379
    :goto_17a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    if-ge v4, v6, :cond_1e0

    .line 384
    .line 385
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    check-cast v6, Ld1/l;

    .line 390
    .line 391
    iget v7, v6, Ld1/l;->a:I

    .line 392
    .line 393
    iget-object v8, v6, Ld1/l;->b:[B

    .line 394
    .line 395
    const/4 v9, 0x1

    .line 396
    if-eq v7, v9, :cond_1a7

    .line 397
    .line 398
    const/4 v9, 0x2

    .line 399
    if-eq v7, v9, :cond_1a4

    .line 400
    .line 401
    const/4 v9, 0x3

    .line 402
    if-eq v7, v9, :cond_1a1

    .line 403
    .line 404
    const/4 v9, 0x4

    .line 405
    if-eq v7, v9, :cond_19e

    .line 406
    .line 407
    const/4 v9, 0x5

    .line 408
    if-ne v7, v9, :cond_19c

    .line 409
    .line 410
    const-wide/16 v9, 0x4

    .line 411
    .line 412
    goto :goto_1a9

    .line 413
    :cond_19c
    const/4 v0, 0x0

    .line 414
    throw v0

    .line 415
    :cond_19e
    const-wide/16 v9, 0x3

    .line 416
    .line 417
    goto :goto_1a9

    .line 418
    :cond_1a1
    const-wide/16 v9, 0x2

    .line 419
    .line 420
    goto :goto_1a9

    .line 421
    :cond_1a4
    const-wide/16 v9, 0x1

    .line 422
    .line 423
    goto :goto_1a9

    .line 424
    :cond_1a7
    const-wide/16 v9, 0x0

    .line 425
    .line 426
    :goto_1a9
    invoke-static {v0, v9, v10, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 427
    .line 428
    .line 429
    invoke-static {v0, v2, v3, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 430
    .line 431
    .line 432
    iget-boolean v6, v6, Ld1/l;->c:Z

    .line 433
    .line 434
    if-eqz v6, :cond_1ca

    .line 435
    .line 436
    array-length v6, v8

    .line 437
    int-to-long v6, v6

    .line 438
    invoke-static {v8}, Ld1/d;->a([B)[B

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    move-object/from16 v9, v16

    .line 443
    .line 444
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    array-length v10, v8

    .line 448
    int-to-long v10, v10

    .line 449
    invoke-static {v0, v10, v11, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 450
    .line 451
    .line 452
    invoke-static {v0, v6, v7, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 453
    .line 454
    .line 455
    array-length v6, v8

    .line 456
    :goto_1c7
    int-to-long v6, v6

    .line 457
    add-long/2addr v2, v6

    .line 458
    goto :goto_1db

    .line 459
    :cond_1ca
    move-object/from16 v9, v16

    .line 460
    .line 461
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    array-length v6, v8

    .line 465
    int-to-long v6, v6

    .line 466
    invoke-static {v0, v6, v7, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 467
    .line 468
    .line 469
    const-wide/16 v6, 0x0

    .line 470
    .line 471
    invoke-static {v0, v6, v7, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 472
    .line 473
    .line 474
    array-length v6, v8

    .line 475
    goto :goto_1c7

    .line 476
    :goto_1db
    add-int/lit8 v4, v4, 0x1

    .line 477
    .line 478
    move-object/from16 v16, v9

    .line 479
    .line 480
    goto :goto_17a

    .line 481
    :cond_1e0
    move-object/from16 v9, v16

    .line 482
    .line 483
    const/4 v6, 0x0

    .line 484
    :goto_1e3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-ge v6, v1, :cond_1f5

    .line 489
    .line 490
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    check-cast v1, [B

    .line 495
    .line 496
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 497
    .line 498
    .line 499
    add-int/lit8 v6, v6, 0x1

    .line 500
    .line 501
    goto :goto_1e3

    .line 502
    :cond_1f5
    const/4 v15, 0x1

    .line 503
    goto/16 :goto_391

    .line 504
    .line 505
    :cond_1f8
    :try_start_1f8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    array-length v1, v2

    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 528
    .line 529
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    throw v1
    :try_end_214
    .catchall {:try_start_1f8 .. :try_end_214} :catchall_135

    .line 533
    :goto_214
    :try_start_214
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_217
    .catchall {:try_start_214 .. :try_end_217} :catchall_218

    .line 534
    .line 535
    .line 536
    goto :goto_21c

    .line 537
    :catchall_218
    move-exception v0

    .line 538
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 539
    .line 540
    .line 541
    :goto_21c
    throw v1

    .line 542
    :cond_21d
    :try_start_21d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    array-length v1, v6

    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 565
    .line 566
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    throw v1
    :try_end_239
    .catchall {:try_start_21d .. :try_end_239} :catchall_b2

    .line 570
    :goto_239
    :try_start_239
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23c
    .catchall {:try_start_239 .. :try_end_23c} :catchall_23d

    .line 571
    .line 572
    .line 573
    goto :goto_241

    .line 574
    :catchall_23d
    move-exception v0

    .line 575
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 576
    .line 577
    .line 578
    :goto_241
    throw v1

    .line 579
    :cond_242
    :try_start_242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    array-length v1, v3

    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 602
    .line 603
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    throw v1
    :try_end_25e
    .catchall {:try_start_242 .. :try_end_25e} :catchall_5f

    .line 607
    :goto_25e
    :try_start_25e
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_261
    .catchall {:try_start_25e .. :try_end_261} :catchall_262

    .line 608
    .line 609
    .line 610
    goto :goto_266

    .line 611
    :catchall_262
    move-exception v0

    .line 612
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 613
    .line 614
    .line 615
    :goto_266
    throw v1

    .line 616
    :cond_267
    sget-object v3, Ld1/d;->e:[B

    .line 617
    .line 618
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 619
    .line 620
    .line 621
    move-result v4

    .line 622
    if-eqz v4, :cond_28b

    .line 623
    .line 624
    invoke-static {v2, v3}, Ld1/d;->b([Ld1/b;[B)[B

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    array-length v2, v2

    .line 629
    int-to-long v2, v2

    .line 630
    const/4 v15, 0x1

    .line 631
    invoke-static {v0, v2, v3, v15}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 632
    .line 633
    .line 634
    array-length v2, v1

    .line 635
    int-to-long v2, v2

    .line 636
    invoke-static {v0, v2, v3, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 637
    .line 638
    .line 639
    invoke-static {v1}, Ld1/d;->a([B)[B

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    array-length v2, v1

    .line 644
    int-to-long v2, v2

    .line 645
    invoke-static {v0, v2, v3, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 649
    .line 650
    .line 651
    return v15

    .line 652
    :cond_28b
    const/4 v15, 0x1

    .line 653
    sget-object v3, Ld1/d;->g:[B

    .line 654
    .line 655
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 656
    .line 657
    .line 658
    move-result v4

    .line 659
    if-eqz v4, :cond_301

    .line 660
    .line 661
    array-length v1, v2

    .line 662
    int-to-long v6, v1

    .line 663
    invoke-static {v0, v6, v7, v15}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 664
    .line 665
    .line 666
    array-length v1, v2

    .line 667
    const/4 v4, 0x0

    .line 668
    :goto_29b
    if-ge v4, v1, :cond_1f5

    .line 669
    .line 670
    aget-object v6, v2, v4

    .line 671
    .line 672
    iget-object v7, v6, Ld1/b;->i:Ljava/util/TreeMap;

    .line 673
    .line 674
    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    .line 675
    .line 676
    .line 677
    move-result v7

    .line 678
    mul-int/2addr v7, v5

    .line 679
    iget-object v8, v6, Ld1/b;->a:Ljava/lang/String;

    .line 680
    .line 681
    iget-object v9, v6, Ld1/b;->b:Ljava/lang/String;

    .line 682
    .line 683
    invoke-static {v3, v8, v9}, Ld1/d;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v8

    .line 687
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 688
    .line 689
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 690
    .line 691
    .line 692
    move-result-object v10

    .line 693
    array-length v10, v10

    .line 694
    invoke-static {v0, v10}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 695
    .line 696
    .line 697
    iget-object v10, v6, Ld1/b;->h:[I

    .line 698
    .line 699
    array-length v10, v10

    .line 700
    invoke-static {v0, v10}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 701
    .line 702
    .line 703
    int-to-long v10, v7

    .line 704
    invoke-static {v0, v10, v11, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 705
    .line 706
    .line 707
    iget-wide v10, v6, Ld1/b;->c:J

    .line 708
    .line 709
    invoke-static {v0, v10, v11, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 713
    .line 714
    .line 715
    move-result-object v7

    .line 716
    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write([B)V

    .line 717
    .line 718
    .line 719
    iget-object v7, v6, Ld1/b;->i:Ljava/util/TreeMap;

    .line 720
    .line 721
    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 722
    .line 723
    .line 724
    move-result-object v7

    .line 725
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 726
    .line 727
    .line 728
    move-result-object v7

    .line 729
    :goto_2d8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 730
    .line 731
    .line 732
    move-result v8

    .line 733
    if-eqz v8, :cond_2f0

    .line 734
    .line 735
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v8

    .line 739
    check-cast v8, Ljava/lang/Integer;

    .line 740
    .line 741
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 742
    .line 743
    .line 744
    move-result v8

    .line 745
    invoke-static {v0, v8}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 746
    .line 747
    .line 748
    const/4 v8, 0x0

    .line 749
    invoke-static {v0, v8}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 750
    .line 751
    .line 752
    goto :goto_2d8

    .line 753
    :cond_2f0
    iget-object v6, v6, Ld1/b;->h:[I

    .line 754
    .line 755
    array-length v7, v6

    .line 756
    const/4 v8, 0x0

    .line 757
    :goto_2f4
    if-ge v8, v7, :cond_2fe

    .line 758
    .line 759
    aget v9, v6, v8

    .line 760
    .line 761
    invoke-static {v0, v9}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 762
    .line 763
    .line 764
    add-int/lit8 v8, v8, 0x1

    .line 765
    .line 766
    goto :goto_2f4

    .line 767
    :cond_2fe
    add-int/lit8 v4, v4, 0x1

    .line 768
    .line 769
    goto :goto_29b

    .line 770
    :cond_301
    sget-object v3, Ld1/d;->f:[B

    .line 771
    .line 772
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 773
    .line 774
    .line 775
    move-result v4

    .line 776
    if-eqz v4, :cond_325

    .line 777
    .line 778
    invoke-static {v2, v3}, Ld1/d;->b([Ld1/b;[B)[B

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    array-length v2, v2

    .line 783
    int-to-long v2, v2

    .line 784
    const/4 v15, 0x1

    .line 785
    invoke-static {v0, v2, v3, v15}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 786
    .line 787
    .line 788
    array-length v2, v1

    .line 789
    int-to-long v2, v2

    .line 790
    invoke-static {v0, v2, v3, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 791
    .line 792
    .line 793
    invoke-static {v1}, Ld1/d;->a([B)[B

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    array-length v2, v1

    .line 798
    int-to-long v2, v2

    .line 799
    invoke-static {v0, v2, v3, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 803
    .line 804
    .line 805
    return v15

    .line 806
    :cond_325
    sget-object v3, Ld1/d;->h:[B

    .line 807
    .line 808
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 809
    .line 810
    .line 811
    move-result v1

    .line 812
    if-eqz v1, :cond_392

    .line 813
    .line 814
    array-length v1, v2

    .line 815
    invoke-static {v0, v1}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 816
    .line 817
    .line 818
    array-length v1, v2

    .line 819
    const/4 v8, 0x0

    .line 820
    :goto_333
    if-ge v8, v1, :cond_1f5

    .line 821
    .line 822
    aget-object v4, v2, v8

    .line 823
    .line 824
    iget-object v6, v4, Ld1/b;->a:Ljava/lang/String;

    .line 825
    .line 826
    iget-object v7, v4, Ld1/b;->i:Ljava/util/TreeMap;

    .line 827
    .line 828
    iget-object v9, v4, Ld1/b;->b:Ljava/lang/String;

    .line 829
    .line 830
    invoke-static {v3, v6, v9}, Ld1/d;->d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v6

    .line 834
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 835
    .line 836
    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 837
    .line 838
    .line 839
    move-result-object v10

    .line 840
    array-length v10, v10

    .line 841
    invoke-static {v0, v10}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    .line 845
    .line 846
    .line 847
    move-result v10

    .line 848
    invoke-static {v0, v10}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 849
    .line 850
    .line 851
    iget-object v10, v4, Ld1/b;->h:[I

    .line 852
    .line 853
    array-length v10, v10

    .line 854
    invoke-static {v0, v10}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 855
    .line 856
    .line 857
    iget-wide v10, v4, Ld1/b;->c:J

    .line 858
    .line 859
    invoke-static {v0, v10, v11, v5}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 863
    .line 864
    .line 865
    move-result-object v6

    .line 866
    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 870
    .line 871
    .line 872
    move-result-object v6

    .line 873
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 874
    .line 875
    .line 876
    move-result-object v6

    .line 877
    :goto_36c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 878
    .line 879
    .line 880
    move-result v7

    .line 881
    if-eqz v7, :cond_380

    .line 882
    .line 883
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v7

    .line 887
    check-cast v7, Ljava/lang/Integer;

    .line 888
    .line 889
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 890
    .line 891
    .line 892
    move-result v7

    .line 893
    invoke-static {v0, v7}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 894
    .line 895
    .line 896
    goto :goto_36c

    .line 897
    :cond_380
    iget-object v4, v4, Ld1/b;->h:[I

    .line 898
    .line 899
    array-length v6, v4

    .line 900
    const/4 v7, 0x0

    .line 901
    :goto_384
    if-ge v7, v6, :cond_38e

    .line 902
    .line 903
    aget v9, v4, v7

    .line 904
    .line 905
    invoke-static {v0, v9}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 906
    .line 907
    .line 908
    add-int/lit8 v7, v7, 0x1

    .line 909
    .line 910
    goto :goto_384

    .line 911
    :cond_38e
    add-int/lit8 v8, v8, 0x1

    .line 912
    .line 913
    goto :goto_333

    .line 914
    :goto_391
    return v15

    .line 915
    :cond_392
    const/16 v18, 0x0

    .line 916
    .line 917
    return v18
.end method

.method public static p(Ljava/io/ByteArrayOutputStream;Ld1/b;Ljava/lang/String;)V
    .registers 7

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v1, v1

    .line 8
    invoke-static {p0, v1}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 9
    .line 10
    .line 11
    iget v1, p1, Ld1/b;->e:I

    .line 12
    .line 13
    invoke-static {p0, v1}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 14
    .line 15
    .line 16
    iget v1, p1, Ld1/b;->f:I

    .line 17
    .line 18
    int-to-long v1, v1

    .line 19
    const/4 v3, 0x4

    .line 20
    invoke-static {p0, v1, v2, v3}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 21
    .line 22
    .line 23
    iget-wide v1, p1, Ld1/b;->c:J

    .line 24
    .line 25
    invoke-static {p0, v1, v2, v3}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 26
    .line 27
    .line 28
    iget p1, p1, Ld1/b;->g:I

    .line 29
    .line 30
    int-to-long v1, p1

    .line 31
    invoke-static {p0, v1, v2, v3}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static q(Ljava/io/ByteArrayOutputStream;Ld1/b;)V
    .registers 10

    .line 1
    iget v0, p1, Ld1/b;->g:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x7

    .line 6
    .line 7
    and-int/lit8 v0, v0, -0x8

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0x8

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    iget-object v1, p1, Ld1/b;->i:Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_5b

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    and-int/lit8 v4, v2, 0x2

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    if-eqz v4, :cond_47

    .line 59
    .line 60
    div-int/lit8 v4, v3, 0x8

    .line 61
    .line 62
    aget-byte v6, v0, v4

    .line 63
    .line 64
    rem-int/lit8 v7, v3, 0x8

    .line 65
    .line 66
    shl-int v7, v5, v7

    .line 67
    .line 68
    or-int/2addr v6, v7

    .line 69
    int-to-byte v6, v6

    .line 70
    aput-byte v6, v0, v4

    .line 71
    .line 72
    :cond_47
    and-int/lit8 v2, v2, 0x4

    .line 73
    .line 74
    if-eqz v2, :cond_16

    .line 75
    .line 76
    iget v2, p1, Ld1/b;->g:I

    .line 77
    .line 78
    add-int/2addr v3, v2

    .line 79
    div-int/lit8 v2, v3, 0x8

    .line 80
    .line 81
    aget-byte v4, v0, v2

    .line 82
    .line 83
    rem-int/lit8 v3, v3, 0x8

    .line 84
    .line 85
    shl-int v3, v5, v3

    .line 86
    .line 87
    or-int/2addr v3, v4

    .line 88
    int-to-byte v3, v3

    .line 89
    aput-byte v3, v0, v2

    .line 90
    .line 91
    goto :goto_16

    .line 92
    :cond_5b
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static r(Ljava/io/ByteArrayOutputStream;Ld1/b;)V
    .registers 6

    .line 1
    iget-object p1, p1, Ld1/b;->i:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_3b

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    and-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    if-nez v2, :cond_31

    .line 48
    .line 49
    goto :goto_c

    .line 50
    :cond_31
    sub-int v1, v3, v1

    .line 51
    .line 52
    invoke-static {p0, v1}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0}, Ld1/d;->u(Ljava/io/ByteArrayOutputStream;I)V

    .line 56
    .line 57
    .line 58
    move v1, v3

    .line 59
    goto :goto_c

    .line 60
    :cond_3b
    return-void
.end method

.method public static s(Landroid/content/Context;Ljava/util/concurrent/Executor;Ld1/c;Z)V
    .registers 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v0, Ljava/io/File;

    .line 22
    .line 23
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v8, 0x7

    .line 37
    const/4 v9, 0x0

    .line 38
    :try_start_25
    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v10
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_29} :catch_29b

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    const-string v3, "ProfileInstaller"

    .line 47
    .line 48
    const/4 v12, 0x0

    .line 49
    if-nez p3, :cond_8c

    .line 50
    .line 51
    new-instance v0, Ljava/io/File;

    .line 52
    .line 53
    const-string v7, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 54
    .line 55
    invoke-direct {v0, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_41

    .line 63
    .line 64
    :catch_3f
    move v0, v9

    .line 65
    goto :goto_6f

    .line 66
    :cond_41
    :try_start_41
    new-instance v7, Ljava/io/DataInputStream;

    .line 67
    .line 68
    new-instance v14, Ljava/io/FileInputStream;

    .line 69
    .line 70
    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v7, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4b} :catch_3f

    .line 74
    .line 75
    .line 76
    :try_start_4b
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    .line 77
    .line 78
    .line 79
    move-result-wide v14
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_64

    .line 80
    :try_start_4f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_3f

    .line 81
    .line 82
    .line 83
    move-wide/from16 v16, v14

    .line 84
    .line 85
    iget-wide v13, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 86
    .line 87
    cmp-long v0, v16, v13

    .line 88
    .line 89
    if-nez v0, :cond_5c

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move v0, v9

    .line 94
    :goto_5d
    if-eqz v0, :cond_6f

    .line 95
    .line 96
    const/4 v7, 0x2

    .line 97
    invoke-interface {v5, v7, v12}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_6f

    .line 101
    :catchall_64
    move-exception v0

    .line 102
    move-object v13, v0

    .line 103
    :try_start_66
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    .line 104
    .line 105
    .line 106
    goto :goto_6e

    .line 107
    :catchall_6a
    move-exception v0

    .line 108
    :try_start_6b
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_6e
    throw v13
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6f} :catch_3f

    .line 112
    :cond_6f
    :goto_6f
    if-nez v0, :cond_72

    .line 113
    .line 114
    goto :goto_8c

    .line 115
    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v2, "Skipping profile installation for "

    .line 118
    .line 119
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v9}, Ld1/k;->c(Landroid/content/Context;Z)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_29a

    .line 140
    .line 141
    :cond_8c
    :goto_8c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v7, "Installing profile for "

    .line 144
    .line 145
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 163
    .line 164
    new-instance v7, Ljava/io/File;

    .line 165
    .line 166
    new-instance v3, Ljava/io/File;

    .line 167
    .line 168
    const-string v13, "/data/misc/profiles/cur/0"

    .line 169
    .line 170
    invoke-direct {v3, v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v2, "primary.prof"

    .line 174
    .line 175
    invoke-direct {v7, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance v2, Ld1/a;

    .line 179
    .line 180
    const-string v13, "dexopt/baseline.prof"

    .line 181
    .line 182
    move-object v3, v4

    .line 183
    move-object/from16 v4, p1

    .line 184
    .line 185
    invoke-direct/range {v2 .. v7}, Ld1/a;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Ld1/c;Ljava/lang/String;Ljava/io/File;)V

    .line 186
    .line 187
    .line 188
    iget-object v4, v2, Ld1/a;->c:[B

    .line 189
    .line 190
    if-nez v4, :cond_ca

    .line 191
    .line 192
    const/4 v3, 0x3

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v2, v3, v0}, Ld1/a;->b(ILjava/io/Serializable;)V

    .line 198
    .line 199
    .line 200
    :goto_c7
    const/4 v7, 0x1

    .line 201
    goto/16 :goto_28f

    .line 202
    .line 203
    :cond_ca
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    const/4 v6, 0x4

    .line 208
    if-eqz v0, :cond_dd

    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_db

    .line 215
    .line 216
    invoke-virtual {v2, v6, v12}, Ld1/a;->b(ILjava/io/Serializable;)V

    .line 217
    .line 218
    .line 219
    goto :goto_c7

    .line 220
    :cond_db
    :goto_db
    const/4 v7, 0x1

    .line 221
    goto :goto_e1

    .line 222
    :cond_dd
    :try_start_dd
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_28b

    .line 223
    .line 224
    .line 225
    goto :goto_db

    .line 226
    :goto_e1
    iput-boolean v7, v2, Ld1/a;->f:Z

    .line 227
    .line 228
    const/4 v7, 0x6

    .line 229
    :try_start_e4
    invoke-virtual {v2, v3, v13}, Ld1/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 230
    .line 231
    .line 232
    move-result-object v0
    :try_end_e8
    .catch Ljava/io/FileNotFoundException; {:try_start_e4 .. :try_end_e8} :catch_ef
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e8} :catch_ea

    .line 233
    move-object v13, v0

    .line 234
    goto :goto_f4

    .line 235
    :catch_ea
    move-exception v0

    .line 236
    invoke-interface {v5, v8, v0}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto :goto_f3

    .line 240
    :catch_ef
    move-exception v0

    .line 241
    invoke-interface {v5, v7, v0}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    :goto_f3
    move-object v13, v12

    .line 245
    :goto_f4
    const-string v14, "Invalid magic"

    .line 246
    .line 247
    sget-object v15, Ld1/d;->b:[B

    .line 248
    .line 249
    const/16 v7, 0x8

    .line 250
    .line 251
    if-eqz v13, :cond_143

    .line 252
    .line 253
    :try_start_fc
    invoke-static {v13, v6}, Ld1/d;->f(Ljava/io/InputStream;I)[B

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_120

    .line 262
    .line 263
    invoke-static {v13, v6}, Ld1/d;->f(Ljava/io/InputStream;I)[B

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-object v9, v2, Ld1/a;->e:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v13, v0, v9}, Ld1/d;->l(Ljava/io/FileInputStream;[BLjava/lang/String;)[Ld1/b;

    .line 270
    .line 271
    .line 272
    move-result-object v9
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_110} :catch_11e
    .catch Ljava/lang/IllegalStateException; {:try_start_fc .. :try_end_110} :catch_11c
    .catchall {:try_start_fc .. :try_end_110} :catchall_119

    .line 273
    :try_start_110
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_114

    .line 274
    .line 275
    .line 276
    goto :goto_137

    .line 277
    :catch_114
    move-exception v0

    .line 278
    invoke-interface {v5, v8, v0}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    goto :goto_137

    .line 282
    :catchall_119
    move-exception v0

    .line 283
    move-object v1, v0

    .line 284
    goto :goto_13a

    .line 285
    :catch_11c
    move-exception v0

    .line 286
    goto :goto_126

    .line 287
    :catch_11e
    move-exception v0

    .line 288
    goto :goto_132

    .line 289
    :cond_120
    :try_start_120
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 290
    .line 291
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v0
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_126} :catch_11e
    .catch Ljava/lang/IllegalStateException; {:try_start_120 .. :try_end_126} :catch_11c
    .catchall {:try_start_120 .. :try_end_126} :catchall_119

    .line 295
    :goto_126
    :try_start_126
    invoke-interface {v5, v7, v0}, Ld1/c;->i(ILjava/lang/Object;)V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_119

    .line 296
    .line 297
    .line 298
    :goto_129
    :try_start_129
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_12d

    .line 299
    .line 300
    .line 301
    goto :goto_136

    .line 302
    :catch_12d
    move-exception v0

    .line 303
    invoke-interface {v5, v8, v0}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto :goto_136

    .line 307
    :goto_132
    :try_start_132
    invoke-interface {v5, v8, v0}, Ld1/c;->i(ILjava/lang/Object;)V
    :try_end_135
    .catchall {:try_start_132 .. :try_end_135} :catchall_119

    .line 308
    .line 309
    .line 310
    goto :goto_129

    .line 311
    :goto_136
    move-object v9, v12

    .line 312
    :goto_137
    iput-object v9, v2, Ld1/a;->g:[Ld1/b;

    .line 313
    .line 314
    goto :goto_143

    .line 315
    :goto_13a
    :try_start_13a
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13d} :catch_13e

    .line 316
    .line 317
    .line 318
    goto :goto_142

    .line 319
    :catch_13e
    move-exception v0

    .line 320
    invoke-interface {v5, v8, v0}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    :goto_142
    throw v1

    .line 324
    :cond_143
    :goto_143
    iget-object v0, v2, Ld1/a;->g:[Ld1/b;

    .line 325
    .line 326
    if-eqz v0, :cond_1b2

    .line 327
    .line 328
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 329
    .line 330
    const/16 v13, 0x18

    .line 331
    .line 332
    if-lt v9, v13, :cond_1b2

    .line 333
    .line 334
    const/16 v8, 0x22

    .line 335
    .line 336
    if-le v9, v8, :cond_153

    .line 337
    .line 338
    goto/16 :goto_1b2

    .line 339
    .line 340
    :cond_153
    if-eq v9, v13, :cond_15d

    .line 341
    .line 342
    const/16 v8, 0x19

    .line 343
    .line 344
    if-eq v9, v8, :cond_15d

    .line 345
    .line 346
    packed-switch v9, :pswitch_data_2a6

    .line 347
    .line 348
    .line 349
    goto :goto_1b2

    .line 350
    :cond_15d
    :pswitch_15d
    :try_start_15d
    const-string v8, "dexopt/baseline.profm"

    .line 351
    .line 352
    invoke-virtual {v2, v3, v8}, Ld1/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 353
    .line 354
    .line 355
    move-result-object v3
    :try_end_163
    .catch Ljava/io/FileNotFoundException; {:try_start_15d .. :try_end_163} :catch_185
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_163} :catch_182
    .catch Ljava/lang/IllegalStateException; {:try_start_15d .. :try_end_163} :catch_180

    .line 356
    if-eqz v3, :cond_199

    .line 357
    .line 358
    :try_start_165
    sget-object v8, Ld1/d;->c:[B

    .line 359
    .line 360
    invoke-static {v3, v6}, Ld1/d;->f(Ljava/io/InputStream;I)[B

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    if-eqz v8, :cond_18a

    .line 369
    .line 370
    invoke-static {v3, v6}, Ld1/d;->f(Ljava/io/InputStream;I)[B

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    invoke-static {v3, v6, v4, v0}, Ld1/d;->i(Ljava/io/FileInputStream;[B[B[Ld1/b;)[Ld1/b;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    iput-object v0, v2, Ld1/a;->g:[Ld1/b;
    :try_end_17b
    .catchall {:try_start_165 .. :try_end_17b} :catchall_187

    .line 379
    .line 380
    :try_start_17b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_17e
    .catch Ljava/io/FileNotFoundException; {:try_start_17b .. :try_end_17e} :catch_185
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_17e} :catch_182
    .catch Ljava/lang/IllegalStateException; {:try_start_17b .. :try_end_17e} :catch_180

    .line 381
    .line 382
    .line 383
    move-object v0, v2

    .line 384
    goto :goto_1af

    .line 385
    :catch_180
    move-exception v0

    .line 386
    goto :goto_19f

    .line 387
    :catch_182
    move-exception v0

    .line 388
    const/4 v3, 0x7

    .line 389
    goto :goto_1a5

    .line 390
    :catch_185
    move-exception v0

    .line 391
    goto :goto_1a9

    .line 392
    :catchall_187
    move-exception v0

    .line 393
    move-object v4, v0

    .line 394
    goto :goto_190

    .line 395
    :cond_18a
    :try_start_18a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 396
    .line 397
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v0
    :try_end_190
    .catchall {:try_start_18a .. :try_end_190} :catchall_187

    .line 401
    :goto_190
    :try_start_190
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_193
    .catchall {:try_start_190 .. :try_end_193} :catchall_194

    .line 402
    .line 403
    .line 404
    goto :goto_198

    .line 405
    :catchall_194
    move-exception v0

    .line 406
    :try_start_195
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 407
    .line 408
    .line 409
    :goto_198
    throw v4

    .line 410
    :cond_199
    if-eqz v3, :cond_1ae

    .line 411
    .line 412
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_19e
    .catch Ljava/io/FileNotFoundException; {:try_start_195 .. :try_end_19e} :catch_185
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_19e} :catch_182
    .catch Ljava/lang/IllegalStateException; {:try_start_195 .. :try_end_19e} :catch_180

    .line 413
    .line 414
    .line 415
    goto :goto_1ae

    .line 416
    :goto_19f
    iput-object v12, v2, Ld1/a;->g:[Ld1/b;

    .line 417
    .line 418
    invoke-interface {v5, v7, v0}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    goto :goto_1ae

    .line 422
    :goto_1a5
    invoke-interface {v5, v3, v0}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    goto :goto_1ae

    .line 426
    :goto_1a9
    const/16 v3, 0x9

    .line 427
    .line 428
    invoke-interface {v5, v3, v0}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    :cond_1ae
    :goto_1ae
    move-object v0, v12

    .line 432
    :goto_1af
    if-eqz v0, :cond_1b2

    .line 433
    .line 434
    move-object v2, v0

    .line 435
    :cond_1b2
    :goto_1b2
    iget-object v3, v2, Ld1/a;->b:Ld1/c;

    .line 436
    .line 437
    iget-object v0, v2, Ld1/a;->g:[Ld1/b;

    .line 438
    .line 439
    iget-object v4, v2, Ld1/a;->c:[B

    .line 440
    .line 441
    const-string v5, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    .line 442
    .line 443
    if-eqz v0, :cond_209

    .line 444
    .line 445
    if-nez v4, :cond_1bf

    .line 446
    .line 447
    goto :goto_209

    .line 448
    :cond_1bf
    iget-boolean v6, v2, Ld1/a;->f:Z

    .line 449
    .line 450
    if-eqz v6, :cond_203

    .line 451
    .line 452
    :try_start_1c3
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 453
    .line 454
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c8} :catch_1e0
    .catch Ljava/lang/IllegalStateException; {:try_start_1c3 .. :try_end_1c8} :catch_1de

    .line 455
    .line 456
    .line 457
    :try_start_1c8
    invoke-virtual {v6, v15}, Ljava/io/OutputStream;->write([B)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write([B)V

    .line 461
    .line 462
    .line 463
    invoke-static {v6, v4, v0}, Ld1/d;->o(Ljava/io/ByteArrayOutputStream;[B[Ld1/b;)Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-nez v0, :cond_1e6

    .line 468
    .line 469
    const/4 v0, 0x5

    .line 470
    invoke-interface {v3, v0, v12}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    iput-object v12, v2, Ld1/a;->g:[Ld1/b;
    :try_end_1da
    .catchall {:try_start_1c8 .. :try_end_1da} :catchall_1e3

    .line 474
    .line 475
    :try_start_1da
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1dd} :catch_1e0
    .catch Ljava/lang/IllegalStateException; {:try_start_1da .. :try_end_1dd} :catch_1de

    .line 476
    .line 477
    .line 478
    goto :goto_209

    .line 479
    :catch_1de
    move-exception v0

    .line 480
    goto :goto_1f9

    .line 481
    :catch_1e0
    move-exception v0

    .line 482
    const/4 v4, 0x7

    .line 483
    goto :goto_1fd

    .line 484
    :catchall_1e3
    move-exception v0

    .line 485
    move-object v4, v0

    .line 486
    goto :goto_1f0

    .line 487
    :cond_1e6
    :try_start_1e6
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    iput-object v0, v2, Ld1/a;->h:[B
    :try_end_1ec
    .catchall {:try_start_1e6 .. :try_end_1ec} :catchall_1e3

    .line 492
    .line 493
    :try_start_1ec
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1ef
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1ef} :catch_1e0
    .catch Ljava/lang/IllegalStateException; {:try_start_1ec .. :try_end_1ef} :catch_1de

    .line 494
    .line 495
    .line 496
    goto :goto_200

    .line 497
    :goto_1f0
    :try_start_1f0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1f3
    .catchall {:try_start_1f0 .. :try_end_1f3} :catchall_1f4

    .line 498
    .line 499
    .line 500
    goto :goto_1f8

    .line 501
    :catchall_1f4
    move-exception v0

    .line 502
    :try_start_1f5
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 503
    .line 504
    .line 505
    :goto_1f8
    throw v4
    :try_end_1f9
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_1f9} :catch_1e0
    .catch Ljava/lang/IllegalStateException; {:try_start_1f5 .. :try_end_1f9} :catch_1de

    .line 506
    :goto_1f9
    invoke-interface {v3, v7, v0}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    goto :goto_200

    .line 510
    :goto_1fd
    invoke-interface {v3, v4, v0}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    :goto_200
    iput-object v12, v2, Ld1/a;->g:[Ld1/b;

    .line 514
    .line 515
    goto :goto_209

    .line 516
    :cond_203
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 517
    .line 518
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    throw v0

    .line 522
    :cond_209
    :goto_209
    iget-object v0, v2, Ld1/a;->h:[B

    .line 523
    .line 524
    if-nez v0, :cond_211

    .line 525
    .line 526
    const/4 v0, 0x0

    .line 527
    const/4 v7, 0x1

    .line 528
    goto/16 :goto_279

    .line 529
    .line 530
    :cond_211
    iget-boolean v3, v2, Ld1/a;->f:Z

    .line 531
    .line 532
    if-eqz v3, :cond_285

    .line 533
    .line 534
    :try_start_215
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 535
    .line 536
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_21a
    .catch Ljava/io/FileNotFoundException; {:try_start_215 .. :try_end_21a} :catch_269
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_21a} :catch_266
    .catchall {:try_start_215 .. :try_end_21a} :catchall_240

    .line 537
    .line 538
    .line 539
    :try_start_21a
    new-instance v4, Ljava/io/FileOutputStream;

    .line 540
    .line 541
    iget-object v0, v2, Ld1/a;->d:Ljava/io/File;

    .line 542
    .line 543
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_221
    .catchall {:try_start_21a .. :try_end_221} :catchall_25a

    .line 544
    .line 545
    .line 546
    const/16 v0, 0x200

    .line 547
    .line 548
    :try_start_223
    new-array v0, v0, [B

    .line 549
    .line 550
    :goto_225
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 551
    .line 552
    .line 553
    move-result v5

    .line 554
    if-lez v5, :cond_230

    .line 555
    .line 556
    const/4 v6, 0x0

    .line 557
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_22f
    .catchall {:try_start_223 .. :try_end_22f} :catchall_24e

    .line 558
    .line 559
    .line 560
    goto :goto_225

    .line 561
    :cond_230
    const/4 v7, 0x1

    .line 562
    :try_start_231
    invoke-virtual {v2, v7, v12}, Ld1/a;->b(ILjava/io/Serializable;)V
    :try_end_234
    .catchall {:try_start_231 .. :try_end_234} :catchall_24b

    .line 563
    .line 564
    .line 565
    :try_start_234
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_237
    .catchall {:try_start_234 .. :try_end_237} :catchall_248

    .line 566
    .line 567
    .line 568
    :try_start_237
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_23a
    .catch Ljava/io/FileNotFoundException; {:try_start_237 .. :try_end_23a} :catch_245
    .catch Ljava/io/IOException; {:try_start_237 .. :try_end_23a} :catch_242
    .catchall {:try_start_237 .. :try_end_23a} :catchall_240

    .line 569
    .line 570
    .line 571
    iput-object v12, v2, Ld1/a;->h:[B

    .line 572
    .line 573
    iput-object v12, v2, Ld1/a;->g:[Ld1/b;

    .line 574
    .line 575
    move v0, v7

    .line 576
    goto :goto_279

    .line 577
    :catchall_240
    move-exception v0

    .line 578
    goto :goto_280

    .line 579
    :catch_242
    move-exception v0

    .line 580
    :goto_243
    const/4 v3, 0x7

    .line 581
    goto :goto_26c

    .line 582
    :catch_245
    move-exception v0

    .line 583
    :goto_246
    const/4 v3, 0x6

    .line 584
    goto :goto_274

    .line 585
    :catchall_248
    move-exception v0

    .line 586
    :goto_249
    move-object v4, v0

    .line 587
    goto :goto_25d

    .line 588
    :catchall_24b
    move-exception v0

    .line 589
    :goto_24c
    move-object v5, v0

    .line 590
    goto :goto_251

    .line 591
    :catchall_24e
    move-exception v0

    .line 592
    const/4 v7, 0x1

    .line 593
    goto :goto_24c

    .line 594
    :goto_251
    :try_start_251
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_254
    .catchall {:try_start_251 .. :try_end_254} :catchall_255

    .line 595
    .line 596
    .line 597
    goto :goto_259

    .line 598
    :catchall_255
    move-exception v0

    .line 599
    :try_start_256
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 600
    .line 601
    .line 602
    :goto_259
    throw v5
    :try_end_25a
    .catchall {:try_start_256 .. :try_end_25a} :catchall_248

    .line 603
    :catchall_25a
    move-exception v0

    .line 604
    const/4 v7, 0x1

    .line 605
    goto :goto_249

    .line 606
    :goto_25d
    :try_start_25d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_260
    .catchall {:try_start_25d .. :try_end_260} :catchall_261

    .line 607
    .line 608
    .line 609
    goto :goto_265

    .line 610
    :catchall_261
    move-exception v0

    .line 611
    :try_start_262
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 612
    .line 613
    .line 614
    :goto_265
    throw v4
    :try_end_266
    .catch Ljava/io/FileNotFoundException; {:try_start_262 .. :try_end_266} :catch_245
    .catch Ljava/io/IOException; {:try_start_262 .. :try_end_266} :catch_242
    .catchall {:try_start_262 .. :try_end_266} :catchall_240

    .line 615
    :catch_266
    move-exception v0

    .line 616
    const/4 v7, 0x1

    .line 617
    goto :goto_243

    .line 618
    :catch_269
    move-exception v0

    .line 619
    const/4 v7, 0x1

    .line 620
    goto :goto_246

    .line 621
    :goto_26c
    :try_start_26c
    invoke-virtual {v2, v3, v0}, Ld1/a;->b(ILjava/io/Serializable;)V
    :try_end_26f
    .catchall {:try_start_26c .. :try_end_26f} :catchall_240

    .line 622
    .line 623
    .line 624
    :goto_26f
    iput-object v12, v2, Ld1/a;->h:[B

    .line 625
    .line 626
    iput-object v12, v2, Ld1/a;->g:[Ld1/b;

    .line 627
    .line 628
    goto :goto_278

    .line 629
    :goto_274
    :try_start_274
    invoke-virtual {v2, v3, v0}, Ld1/a;->b(ILjava/io/Serializable;)V
    :try_end_277
    .catchall {:try_start_274 .. :try_end_277} :catchall_240

    .line 630
    .line 631
    .line 632
    goto :goto_26f

    .line 633
    :goto_278
    const/4 v0, 0x0

    .line 634
    :goto_279
    if-eqz v0, :cond_27e

    .line 635
    .line 636
    invoke-static {v10, v11}, Ld1/d;->e(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 637
    .line 638
    .line 639
    :cond_27e
    move v6, v0

    .line 640
    goto :goto_290

    .line 641
    :goto_280
    iput-object v12, v2, Ld1/a;->h:[B

    .line 642
    .line 643
    iput-object v12, v2, Ld1/a;->g:[Ld1/b;

    .line 644
    .line 645
    throw v0

    .line 646
    :cond_285
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 647
    .line 648
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    throw v0

    .line 652
    :catch_28b
    const/4 v7, 0x1

    .line 653
    invoke-virtual {v2, v6, v12}, Ld1/a;->b(ILjava/io/Serializable;)V

    .line 654
    .line 655
    .line 656
    :goto_28f
    const/4 v6, 0x0

    .line 657
    :goto_290
    if-eqz v6, :cond_296

    .line 658
    .line 659
    if-eqz p3, :cond_296

    .line 660
    .line 661
    move v9, v7

    .line 662
    goto :goto_297

    .line 663
    :cond_296
    const/4 v9, 0x0

    .line 664
    :goto_297
    invoke-static {v1, v9}, Ld1/k;->c(Landroid/content/Context;Z)V

    .line 665
    .line 666
    .line 667
    :goto_29a
    return-void

    .line 668
    :catch_29b
    move-exception v0

    .line 669
    const/4 v3, 0x7

    .line 670
    invoke-interface {v5, v3, v0}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    const/4 v6, 0x0

    .line 674
    invoke-static {v1, v6}, Ld1/k;->c(Landroid/content/Context;Z)V

    .line 675
    .line 676
    .line 677
    return-void

    .line 678
    nop

    .line 679
    :pswitch_data_2a6
    .packed-switch 0x1f
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
        :pswitch_15d
    .end packed-switch
.end method

.method public static t(Ljava/io/ByteArrayOutputStream;JI)V
    .registers 10

    .line 1
    new-array v0, p3, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_3
    if-ge v1, p3, :cond_13

    .line 5
    .line 6
    mul-int/lit8 v2, v1, 0x8

    .line 7
    .line 8
    shr-long v2, p1, v2

    .line 9
    .line 10
    const-wide/16 v4, 0xff

    .line 11
    .line 12
    and-long/2addr v2, v4

    .line 13
    long-to-int v2, v2

    .line 14
    int-to-byte v2, v2

    .line 15
    aput-byte v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_13
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static u(Ljava/io/ByteArrayOutputStream;I)V
    .registers 4

    .line 1
    int-to-long v0, p1

    .line 2
    const/4 p1, 0x2

    .line 3
    invoke-static {p0, v0, v1, p1}, Ld1/d;->t(Ljava/io/ByteArrayOutputStream;JI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
