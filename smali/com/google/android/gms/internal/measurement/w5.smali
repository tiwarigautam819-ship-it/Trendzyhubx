###### Class com.google.android.gms.internal.measurement.w5 (com.google.android.gms.internal.measurement.w5)
.class public abstract Lcom/google/android/gms/internal/measurement/w5;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public static a(I[BIILcom/google/android/gms/internal/measurement/j6;Lcom/google/android/gms/internal/measurement/m5;)I
    .registers 8

    .line 1
    check-cast p4, Lcom/google/android/gms/internal/measurement/c6;

    .line 2
    .line 3
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget v0, p5, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 8
    .line 9
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/c6;->c(I)V

    .line 10
    .line 11
    .line 12
    :goto_b
    if-ge p2, p3, :cond_1f

    .line 13
    .line 14
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p5, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 19
    .line 20
    if-ne p0, v1, :cond_1f

    .line 21
    .line 22
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iget v0, p5, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 27
    .line 28
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/c6;->c(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_b

    .line 32
    :cond_1f
    return p2
.end method

.method public static b(I[BIILcom/google/android/gms/internal/measurement/c7;Lcom/google/android/gms/internal/measurement/m5;)I
    .registers 15

    .line 1
    ushr-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 4
    .line 5
    if-eqz v0, :cond_b5

    .line 6
    .line 7
    and-int/lit8 v0, p0, 0x7

    .line 8
    .line 9
    if-eqz v0, :cond_a5

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_96

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v0, v3, :cond_6d

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-eq v0, v3, :cond_2a

    .line 19
    .line 20
    const/4 p3, 0x5

    .line 21
    if-ne v0, p3, :cond_24

    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/w5;->k([BI)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/c7;->c(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p2, 0x4

    .line 35
    .line 36
    return p2

    .line 37
    :cond_24
    new-instance p0, Lcom/google/android/gms/internal/measurement/i6;

    .line 38
    .line 39
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/c7;->e()Lcom/google/android/gms/internal/measurement/c7;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    and-int/lit8 v0, p0, -0x8

    .line 48
    .line 49
    or-int/lit8 v0, v0, 0x4

    .line 50
    .line 51
    iget v1, p5, Lcom/google/android/gms/internal/measurement/m5;->d:I

    .line 52
    .line 53
    add-int/2addr v1, v2

    .line 54
    iput v1, p5, Lcom/google/android/gms/internal/measurement/m5;->d:I

    .line 55
    .line 56
    const/16 v3, 0x64

    .line 57
    .line 58
    if-ge v1, v3, :cond_65

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    :goto_3c
    if-ge p2, p3, :cond_51

    .line 62
    .line 63
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    iget v3, p5, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 68
    .line 69
    if-eq v3, v0, :cond_4f

    .line 70
    .line 71
    move-object v4, p1

    .line 72
    move v6, p3

    .line 73
    move-object v8, p5

    .line 74
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/w5;->b(I[BIILcom/google/android/gms/internal/measurement/c7;Lcom/google/android/gms/internal/measurement/m5;)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    move v1, v3

    .line 79
    goto :goto_3c

    .line 80
    :cond_4f
    move v1, v3

    .line 81
    move p2, v5

    .line 82
    :cond_51
    move v6, p3

    .line 83
    move-object v8, p5

    .line 84
    iget p1, v8, Lcom/google/android/gms/internal/measurement/m5;->d:I

    .line 85
    .line 86
    sub-int/2addr p1, v2

    .line 87
    iput p1, v8, Lcom/google/android/gms/internal/measurement/m5;->d:I

    .line 88
    .line 89
    if-gt p2, v6, :cond_60

    .line 90
    .line 91
    if-ne v1, v0, :cond_60

    .line 92
    .line 93
    invoke-virtual {p4, p0, v7}, Lcom/google/android/gms/internal/measurement/c7;->c(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return p2

    .line 97
    :cond_60
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->c()Lcom/google/android/gms/internal/measurement/i6;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    throw p0

    .line 102
    :cond_65
    new-instance p0, Lcom/google/android/gms/internal/measurement/i6;

    .line 103
    .line 104
    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 105
    .line 106
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_6d
    move-object v4, p1

    .line 111
    move-object v8, p5

    .line 112
    invoke-static {v4, p2, v8}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iget p2, v8, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 117
    .line 118
    if-ltz p2, :cond_91

    .line 119
    .line 120
    array-length p3, v4

    .line 121
    sub-int/2addr p3, p1

    .line 122
    if-gt p2, p3, :cond_8c

    .line 123
    .line 124
    if-nez p2, :cond_83

    .line 125
    .line 126
    sget-object p3, Lcom/google/android/gms/internal/measurement/p5;->c:Lcom/google/android/gms/internal/measurement/p5;

    .line 127
    .line 128
    invoke-virtual {p4, p0, p3}, Lcom/google/android/gms/internal/measurement/c7;->c(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto :goto_8a

    .line 132
    :cond_83
    invoke-static {v4, p1, p2}, Lcom/google/android/gms/internal/measurement/p5;->c([BII)Lcom/google/android/gms/internal/measurement/p5;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    invoke-virtual {p4, p0, p3}, Lcom/google/android/gms/internal/measurement/c7;->c(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :goto_8a
    add-int/2addr p1, p2

    .line 140
    return p1

    .line 141
    :cond_8c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    throw p0

    .line 146
    :cond_91
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->b()Lcom/google/android/gms/internal/measurement/i6;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    throw p0

    .line 151
    :cond_96
    move-object v4, p1

    .line 152
    invoke-static {v4, p2}, Lcom/google/android/gms/internal/measurement/w5;->n([BI)J

    .line 153
    .line 154
    .line 155
    move-result-wide v0

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/c7;->c(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    add-int/lit8 p2, p2, 0x8

    .line 164
    .line 165
    return p2

    .line 166
    :cond_a5
    move-object v4, p1

    .line 167
    move-object v8, p5

    .line 168
    invoke-static {v4, p2, v8}, Lcom/google/android/gms/internal/measurement/w5;->m([BILcom/google/android/gms/internal/measurement/m5;)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    iget-wide p2, v8, Lcom/google/android/gms/internal/measurement/m5;->b:J

    .line 173
    .line 174
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/measurement/c7;->c(ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    return p1

    .line 182
    :cond_b5
    new-instance p0, Lcom/google/android/gms/internal/measurement/i6;

    .line 183
    .line 184
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p0
.end method

.method public static c(I[BILcom/google/android/gms/internal/measurement/m5;)I
    .registers 6

    .line 1
    and-int/lit8 p0, p0, 0x7f

    .line 2
    .line 3
    add-int/lit8 v0, p2, 0x1

    .line 4
    .line 5
    aget-byte v1, p1, p2

    .line 6
    .line 7
    if-ltz v1, :cond_e

    .line 8
    .line 9
    shl-int/lit8 p1, v1, 0x7

    .line 10
    .line 11
    or-int/2addr p0, p1

    .line 12
    iput p0, p3, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 13
    .line 14
    return v0

    .line 15
    :cond_e
    and-int/lit8 v1, v1, 0x7f

    .line 16
    .line 17
    shl-int/lit8 v1, v1, 0x7

    .line 18
    .line 19
    or-int/2addr p0, v1

    .line 20
    add-int/lit8 v1, p2, 0x2

    .line 21
    .line 22
    aget-byte v0, p1, v0

    .line 23
    .line 24
    if-ltz v0, :cond_1f

    .line 25
    .line 26
    shl-int/lit8 p1, v0, 0xe

    .line 27
    .line 28
    or-int/2addr p0, p1

    .line 29
    iput p0, p3, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1f
    and-int/lit8 v0, v0, 0x7f

    .line 33
    .line 34
    shl-int/lit8 v0, v0, 0xe

    .line 35
    .line 36
    or-int/2addr p0, v0

    .line 37
    add-int/lit8 v0, p2, 0x3

    .line 38
    .line 39
    aget-byte v1, p1, v1

    .line 40
    .line 41
    if-ltz v1, :cond_30

    .line 42
    .line 43
    shl-int/lit8 p1, v1, 0x15

    .line 44
    .line 45
    or-int/2addr p0, p1

    .line 46
    iput p0, p3, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 47
    .line 48
    return v0

    .line 49
    :cond_30
    and-int/lit8 v1, v1, 0x7f

    .line 50
    .line 51
    shl-int/lit8 v1, v1, 0x15

    .line 52
    .line 53
    or-int/2addr p0, v1

    .line 54
    add-int/lit8 p2, p2, 0x4

    .line 55
    .line 56
    aget-byte v0, p1, v0

    .line 57
    .line 58
    if-ltz v0, :cond_41

    .line 59
    .line 60
    shl-int/lit8 p1, v0, 0x1c

    .line 61
    .line 62
    or-int/2addr p0, p1

    .line 63
    iput p0, p3, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 64
    .line 65
    return p2

    .line 66
    :cond_41
    and-int/lit8 v0, v0, 0x7f

    .line 67
    .line 68
    shl-int/lit8 v0, v0, 0x1c

    .line 69
    .line 70
    or-int/2addr p0, v0

    .line 71
    :goto_46
    add-int/lit8 v0, p2, 0x1

    .line 72
    .line 73
    aget-byte p2, p1, p2

    .line 74
    .line 75
    if-ltz p2, :cond_4f

    .line 76
    .line 77
    iput p0, p3, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 78
    .line 79
    return v0

    .line 80
    :cond_4f
    move p2, v0

    .line 81
    goto :goto_46
.end method

.method public static d(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;[BIIILcom/google/android/gms/internal/measurement/m5;)I
    .registers 10

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/u6;

    .line 2
    .line 3
    iget v0, p6, Lcom/google/android/gms/internal/measurement/m5;->d:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iput v0, p6, Lcom/google/android/gms/internal/measurement/m5;->d:I

    .line 8
    .line 9
    const/16 v1, 0x64

    .line 10
    .line 11
    if-ge v0, v1, :cond_1c

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    move-object p1, p0

    .line 15
    move-object p0, v2

    .line 16
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/internal/measurement/u6;->j(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/m5;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    iget p2, p6, Lcom/google/android/gms/internal/measurement/m5;->d:I

    .line 21
    .line 22
    add-int/lit8 p2, p2, -0x1

    .line 23
    .line 24
    iput p2, p6, Lcom/google/android/gms/internal/measurement/m5;->d:I

    .line 25
    .line 26
    iput-object p1, p6, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    .line 27
    .line 28
    return p0

    .line 29
    :cond_1c
    new-instance p0, Lcom/google/android/gms/internal/measurement/i6;

    .line 30
    .line 31
    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public static e(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;[BIILcom/google/android/gms/internal/measurement/m5;)I
    .registers 12

    .line 1
    add-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    aget-byte p3, p2, p3

    .line 4
    .line 5
    if-gez p3, :cond_c

    .line 6
    .line 7
    invoke-static {p3, p2, v0, p5}, Lcom/google/android/gms/internal/measurement/w5;->c(I[BILcom/google/android/gms/internal/measurement/m5;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget p3, p5, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 12
    .line 13
    :cond_c
    move v3, v0

    .line 14
    if-ltz p3, :cond_36

    .line 15
    .line 16
    sub-int/2addr p4, v3

    .line 17
    if-gt p3, p4, :cond_36

    .line 18
    .line 19
    iget p4, p5, Lcom/google/android/gms/internal/measurement/m5;->d:I

    .line 20
    .line 21
    add-int/lit8 p4, p4, 0x1

    .line 22
    .line 23
    iput p4, p5, Lcom/google/android/gms/internal/measurement/m5;->d:I

    .line 24
    .line 25
    const/16 v0, 0x64

    .line 26
    .line 27
    if-ge p4, v0, :cond_2e

    .line 28
    .line 29
    add-int v4, v3, p3

    .line 30
    .line 31
    move-object v1, p0

    .line 32
    move-object v0, p1

    .line 33
    move-object v2, p2

    .line 34
    move-object v5, p5

    .line 35
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/b7;->g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/m5;)V

    .line 36
    .line 37
    .line 38
    iget p0, v5, Lcom/google/android/gms/internal/measurement/m5;->d:I

    .line 39
    .line 40
    add-int/lit8 p0, p0, -0x1

    .line 41
    .line 42
    iput p0, v5, Lcom/google/android/gms/internal/measurement/m5;->d:I

    .line 43
    .line 44
    iput-object v1, v5, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    .line 45
    .line 46
    return v4

    .line 47
    :cond_2e
    new-instance p0, Lcom/google/android/gms/internal/measurement/i6;

    .line 48
    .line 49
    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_36
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    throw p0
.end method

.method public static f([BILcom/google/android/gms/internal/measurement/m5;)I
    .registers 5

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 6
    .line 7
    if-ltz v0, :cond_20

    .line 8
    .line 9
    array-length v1, p0

    .line 10
    sub-int/2addr v1, p1

    .line 11
    if-gt v0, v1, :cond_1b

    .line 12
    .line 13
    if-nez v0, :cond_13

    .line 14
    .line 15
    sget-object p0, Lcom/google/android/gms/internal/measurement/p5;->c:Lcom/google/android/gms/internal/measurement/p5;

    .line 16
    .line 17
    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    .line 18
    .line 19
    return p1

    .line 20
    :cond_13
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/p5;->c([BII)Lcom/google/android/gms/internal/measurement/p5;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    .line 25
    .line 26
    add-int/2addr p1, v0

    .line 27
    return p1

    .line 28
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->d()Lcom/google/android/gms/internal/measurement/i6;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    throw p0

    .line 33
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/i6;->b()Lcom/google/android/gms/internal/measurement/i6;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0
.end method

.method public static g(Lcom/google/android/gms/internal/measurement/i;Lcom/google/android/gms/internal/measurement/p;Lcom/google/firebase/messaging/y;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;
    .registers 6

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/i;->zzc(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_23

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/i;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/j;

    .line 14
    .line 15
    if-eqz v0, :cond_17

    .line 16
    .line 17
    check-cast p0, Lcom/google/android/gms/internal/measurement/j;

    .line 18
    .line 19
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/j;->e(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string p2, " is not a function"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_23
    const-string v0, "hasOwnProperty"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_4e

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/internal/measurement/p4;->g(ILjava/lang/String;Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/google/android/gms/internal/measurement/n;

    .line 54
    .line 55
    iget-object p3, p2, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p3, Lcom/google/android/gms/internal/measurement/y4;

    .line 58
    .line 59
    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/i;->zzc(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_4b

    .line 72
    .line 73
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/f;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_4b
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->t:Lcom/google/android/gms/internal/measurement/f;

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string p2, "Object has no function "

    .line 82
    .line 83
    invoke-static {p2, p1}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public static h()Lcom/google/android/gms/internal/measurement/t5;
    .registers 13

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/w5;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Lcom/google/android/gms/internal/measurement/t5;

    .line 8
    .line 9
    invoke-virtual {v2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_4c

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_26

    .line 28
    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_26
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, ".BlazeGenerated"

    .line 60
    .line 61
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, "Loader"

    .line 68
    .line 69
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_4e

    .line 77
    :cond_4c
    const-string v0, "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader"

    .line 78
    .line 79
    :goto_4e
    const/4 v3, 0x1

    .line 80
    const/4 v4, 0x0

    .line 81
    :try_start_50
    invoke-static {v0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object v0
    :try_end_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_50 .. :try_end_54} :catch_80

    .line 85
    :try_start_54
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, La1/a;->o(Ljava/lang/Object;)V
    :try_end_5f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_54 .. :try_end_5f} :catch_66
    .catch Ljava/lang/InstantiationException; {:try_start_54 .. :try_end_5f} :catch_64
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_5f} :catch_62
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_54 .. :try_end_5f} :catch_60
    .catch Ljava/lang/ClassNotFoundException; {:try_start_54 .. :try_end_5f} :catch_80

    .line 94
    .line 95
    .line 96
    throw v4

    .line 97
    :catch_60
    move-exception v0

    .line 98
    goto :goto_68

    .line 99
    :catch_62
    move-exception v0

    .line 100
    goto :goto_6e

    .line 101
    :catch_64
    move-exception v0

    .line 102
    goto :goto_74

    .line 103
    :catch_66
    move-exception v0

    .line 104
    goto :goto_7a

    .line 105
    :goto_68
    :try_start_68
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw v1

    .line 111
    :goto_6e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw v1

    .line 117
    :goto_74
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw v1

    .line 123
    :goto_7a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw v1
    :try_end_80
    .catch Ljava/lang/ClassNotFoundException; {:try_start_68 .. :try_end_80} :catch_80

    .line 129
    :catch_80
    const/4 v1, 0x0

    .line 130
    :try_start_81
    new-array v0, v1, [Lcom/google/android/gms/internal/measurement/w5;

    .line 131
    .line 132
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v5
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_105

    .line 140
    new-instance v6, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    :goto_90
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_d6

    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-ne v0, v3, :cond_a3

    .line 156
    .line 157
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lcom/google/android/gms/internal/measurement/t5;

    .line 162
    .line 163
    return-object v0

    .line 164
    :cond_a3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_aa

    .line 169
    .line 170
    return-object v4

    .line 171
    :cond_aa
    :try_start_aa
    const-string v0, "combine"

    .line 172
    .line 173
    new-array v5, v3, [Ljava/lang/Class;

    .line 174
    .line 175
    const-class v7, Ljava/util/Collection;

    .line 176
    .line 177
    aput-object v7, v5, v1

    .line 178
    .line 179
    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    new-array v2, v3, [Ljava/lang/Object;

    .line 184
    .line 185
    aput-object v6, v2, v1

    .line 186
    .line 187
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lcom/google/android/gms/internal/measurement/t5;
    :try_end_c0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_aa .. :try_end_c0} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_aa .. :try_end_c0} :catch_c8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_aa .. :try_end_c0} :catch_c1

    .line 192
    .line 193
    return-object v0

    .line 194
    :catch_c1
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 196
    .line 197
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    throw v1

    .line 201
    :catch_c8
    move-exception v0

    .line 202
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 203
    .line 204
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 205
    .line 206
    .line 207
    throw v1

    .line 208
    :catch_cf
    move-exception v0

    .line 209
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 210
    .line 211
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    throw v1

    .line 215
    :cond_d6
    :try_start_d6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0
    :try_end_da
    .catch Ljava/util/ServiceConfigurationError; {:try_start_d6 .. :try_end_da} :catch_e5

    .line 219
    if-nez v0, :cond_dd

    .line 220
    .line 221
    throw v4

    .line 222
    :cond_dd
    :try_start_dd
    new-instance v0, Ljava/lang/ClassCastException;

    .line 223
    .line 224
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 225
    .line 226
    .line 227
    throw v0
    :try_end_e3
    .catch Ljava/util/ServiceConfigurationError; {:try_start_dd .. :try_end_e3} :catch_e5

    .line 228
    :goto_e3
    move-object v12, v0

    .line 229
    goto :goto_e7

    .line 230
    :catch_e5
    move-exception v0

    .line 231
    goto :goto_e3

    .line 232
    :goto_e7
    const-class v0, Lcom/google/android/gms/internal/measurement/q5;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 243
    .line 244
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const-string v9, "Unable to load "

    .line 249
    .line 250
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    const-string v9, "com.google.protobuf.GeneratedExtensionRegistryLoader"

    .line 255
    .line 256
    const-string v10, "load"

    .line 257
    .line 258
    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    .line 260
    .line 261
    goto :goto_90

    .line 262
    :catchall_105
    move-exception v0

    .line 263
    new-instance v1, Ljava/util/ServiceConfigurationError;

    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    .line 271
    .line 272
    throw v1
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q6;
    .registers 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/q6;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/measurement/q6;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2f

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/q6;->a:Z

    .line 12
    .line 13
    if-nez v0, :cond_23

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1a

    .line 20
    .line 21
    new-instance p0, Lcom/google/android/gms/internal/measurement/q6;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q6;-><init>()V

    .line 24
    .line 25
    .line 26
    goto :goto_23

    .line 27
    :cond_1a
    new-instance v0, Lcom/google/android/gms/internal/measurement/q6;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    iput-boolean p0, v0, Lcom/google/android/gms/internal/measurement/q6;->a:Z

    .line 34
    .line 35
    move-object p0, v0

    .line 36
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/q6;->b()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2f

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/q6;->putAll(Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    :cond_2f
    return-object p0
.end method

.method public static j(Lcom/google/android/gms/internal/measurement/b7;I[BIILcom/google/android/gms/internal/measurement/j6;Lcom/google/android/gms/internal/measurement/m5;)I
    .registers 14

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/b7;->zza()Lcom/google/android/gms/internal/measurement/z5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p6

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/w5;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;[BIILcom/google/android/gms/internal/measurement/m5;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/b7;->c(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :goto_15
    if-ge p0, v4, :cond_39

    .line 23
    .line 24
    move-object v6, v5

    .line 25
    move v5, v4

    .line 26
    invoke-static {v2, p0, v6}, Lcom/google/android/gms/internal/measurement/w5;->l([BILcom/google/android/gms/internal/measurement/m5;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iget p2, v6, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 31
    .line 32
    if-ne p1, p2, :cond_39

    .line 33
    .line 34
    move-object v3, v2

    .line 35
    move-object v2, v1

    .line 36
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/b7;->zza()Lcom/google/android/gms/internal/measurement/z5;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/w5;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/b7;[BIILcom/google/android/gms/internal/measurement/m5;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    move-object p2, v1

    .line 45
    move-object v1, v2

    .line 46
    move-object v2, v3

    .line 47
    move v4, v5

    .line 48
    move-object v5, v6

    .line 49
    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/measurement/b7;->c(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, v5, Lcom/google/android/gms/internal/measurement/m5;->c:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_15

    .line 58
    :cond_39
    return p0
.end method

.method public static k([BI)I
    .registers 4

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p1, 0x2

    .line 15
    .line 16
    aget-byte v1, p0, v1

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 21
    .line 22
    or-int/2addr v0, v1

    .line 23
    add-int/lit8 p1, p1, 0x3

    .line 24
    .line 25
    aget-byte p0, p0, p1

    .line 26
    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 28
    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 30
    .line 31
    or-int/2addr p0, v0

    .line 32
    return p0
.end method

.method public static l([BILcom/google/android/gms/internal/measurement/m5;)I
    .registers 4

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    aget-byte p1, p0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_9

    .line 6
    .line 7
    iput p1, p2, Lcom/google/android/gms/internal/measurement/m5;->a:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_9
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/measurement/w5;->c(I[BILcom/google/android/gms/internal/measurement/m5;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static m([BILcom/google/android/gms/internal/measurement/m5;)I
    .registers 12

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    aget-byte v1, p0, p1

    .line 4
    .line 5
    int-to-long v1, v1

    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v3, v1, v3

    .line 9
    .line 10
    if-ltz v3, :cond_e

    .line 11
    .line 12
    iput-wide v1, p2, Lcom/google/android/gms/internal/measurement/m5;->b:J

    .line 13
    .line 14
    return v0

    .line 15
    :cond_e
    const-wide/16 v3, 0x7f

    .line 16
    .line 17
    and-long/2addr v1, v3

    .line 18
    add-int/lit8 p1, p1, 0x2

    .line 19
    .line 20
    aget-byte v0, p0, v0

    .line 21
    .line 22
    and-int/lit8 v3, v0, 0x7f

    .line 23
    .line 24
    int-to-long v3, v3

    .line 25
    const/4 v5, 0x7

    .line 26
    shl-long/2addr v3, v5

    .line 27
    or-long/2addr v1, v3

    .line 28
    move v3, v5

    .line 29
    :goto_1c
    if-gez v0, :cond_2c

    .line 30
    .line 31
    add-int/lit8 v0, p1, 0x1

    .line 32
    .line 33
    aget-byte p1, p0, p1

    .line 34
    .line 35
    add-int/2addr v3, v5

    .line 36
    and-int/lit8 v4, p1, 0x7f

    .line 37
    .line 38
    int-to-long v6, v4

    .line 39
    shl-long/2addr v6, v3

    .line 40
    or-long/2addr v1, v6

    .line 41
    move v8, v0

    .line 42
    move v0, p1

    .line 43
    move p1, v8

    .line 44
    goto :goto_1c

    .line 45
    :cond_2c
    iput-wide v1, p2, Lcom/google/android/gms/internal/measurement/m5;->b:J

    .line 46
    .line 47
    return p1
.end method

.method public static n([BI)J
    .registers 9

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide/16 v2, 0xff

    .line 5
    .line 6
    and-long/2addr v0, v2

    .line 7
    add-int/lit8 v4, p1, 0x1

    .line 8
    .line 9
    aget-byte v4, p0, v4

    .line 10
    .line 11
    int-to-long v4, v4

    .line 12
    and-long/2addr v4, v2

    .line 13
    const/16 v6, 0x8

    .line 14
    .line 15
    shl-long/2addr v4, v6

    .line 16
    or-long/2addr v0, v4

    .line 17
    add-int/lit8 v4, p1, 0x2

    .line 18
    .line 19
    aget-byte v4, p0, v4

    .line 20
    .line 21
    int-to-long v4, v4

    .line 22
    and-long/2addr v4, v2

    .line 23
    const/16 v6, 0x10

    .line 24
    .line 25
    shl-long/2addr v4, v6

    .line 26
    or-long/2addr v0, v4

    .line 27
    add-int/lit8 v4, p1, 0x3

    .line 28
    .line 29
    aget-byte v4, p0, v4

    .line 30
    .line 31
    int-to-long v4, v4

    .line 32
    and-long/2addr v4, v2

    .line 33
    const/16 v6, 0x18

    .line 34
    .line 35
    shl-long/2addr v4, v6

    .line 36
    or-long/2addr v0, v4

    .line 37
    add-int/lit8 v4, p1, 0x4

    .line 38
    .line 39
    aget-byte v4, p0, v4

    .line 40
    .line 41
    int-to-long v4, v4

    .line 42
    and-long/2addr v4, v2

    .line 43
    const/16 v6, 0x20

    .line 44
    .line 45
    shl-long/2addr v4, v6

    .line 46
    or-long/2addr v0, v4

    .line 47
    add-int/lit8 v4, p1, 0x5

    .line 48
    .line 49
    aget-byte v4, p0, v4

    .line 50
    .line 51
    int-to-long v4, v4

    .line 52
    and-long/2addr v4, v2

    .line 53
    const/16 v6, 0x28

    .line 54
    .line 55
    shl-long/2addr v4, v6

    .line 56
    or-long/2addr v0, v4

    .line 57
    add-int/lit8 v4, p1, 0x6

    .line 58
    .line 59
    aget-byte v4, p0, v4

    .line 60
    .line 61
    int-to-long v4, v4

    .line 62
    and-long/2addr v4, v2

    .line 63
    const/16 v6, 0x30

    .line 64
    .line 65
    shl-long/2addr v4, v6

    .line 66
    or-long/2addr v0, v4

    .line 67
    add-int/lit8 p1, p1, 0x7

    .line 68
    .line 69
    aget-byte p0, p0, p1

    .line 70
    .line 71
    int-to-long p0, p0

    .line 72
    and-long/2addr p0, v2

    .line 73
    const/16 v2, 0x38

    .line 74
    .line 75
    shl-long/2addr p0, v2

    .line 76
    or-long/2addr p0, v0

    .line 77
    return-wide p0
.end method
