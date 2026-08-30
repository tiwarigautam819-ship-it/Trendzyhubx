###### Class s.g (s.g)
.class public final Ls/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public synthetic a:Z

.field public synthetic b:[J

.field public synthetic c:[Ljava/lang/Object;

.field public synthetic d:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    :goto_4
    const/16 v1, 0x20

    .line 6
    .line 7
    const/16 v2, 0x50

    .line 8
    .line 9
    if-ge v0, v1, :cond_15

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    shl-int/2addr v1, v0

    .line 13
    add-int/lit8 v1, v1, -0xc

    .line 14
    .line 15
    if-gt v2, v1, :cond_12

    .line 16
    .line 17
    move v2, v1

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_4

    .line 22
    :cond_15
    :goto_15
    div-int/lit8 v2, v2, 0x8

    .line 23
    .line 24
    new-array v0, v2, [J

    .line 25
    .line 26
    iput-object v0, p0, Ls/g;->b:[J

    .line 27
    .line 28
    new-array v0, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    iput-object v0, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Long;)V
    .registers 13

    .line 1
    iget v0, p0, Ls/g;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    iget-object v1, p0, Ls/g;->b:[J

    .line 6
    .line 7
    add-int/lit8 v2, v0, -0x1

    .line 8
    .line 9
    aget-wide v2, v1, v2

    .line 10
    .line 11
    cmp-long v1, p1, v2

    .line 12
    .line 13
    if-gtz v1, :cond_12

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Ls/g;->d(JLjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    iget-boolean v1, p0, Ls/g;->a:Z

    .line 20
    .line 21
    if-eqz v1, :cond_3c

    .line 22
    .line 23
    iget-object v1, p0, Ls/g;->b:[J

    .line 24
    .line 25
    array-length v2, v1

    .line 26
    if-lt v0, v2, :cond_3c

    .line 27
    .line 28
    iget-object v2, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    move v4, v3

    .line 32
    move v5, v4

    .line 33
    :goto_20
    if-ge v4, v0, :cond_38

    .line 34
    .line 35
    aget-object v6, v2, v4

    .line 36
    .line 37
    sget-object v7, Ls/h;->a:Ljava/lang/Object;

    .line 38
    .line 39
    if-eq v6, v7, :cond_35

    .line 40
    .line 41
    if-eq v4, v5, :cond_33

    .line 42
    .line 43
    aget-wide v7, v1, v4

    .line 44
    .line 45
    aput-wide v7, v1, v5

    .line 46
    .line 47
    aput-object v6, v2, v5

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    aput-object v6, v2, v4

    .line 51
    .line 52
    :cond_33
    add-int/lit8 v5, v5, 0x1

    .line 53
    .line 54
    :cond_35
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_20

    .line 57
    :cond_38
    iput-boolean v3, p0, Ls/g;->a:Z

    .line 58
    .line 59
    iput v5, p0, Ls/g;->d:I

    .line 60
    .line 61
    :cond_3c
    iget v0, p0, Ls/g;->d:I

    .line 62
    .line 63
    iget-object v1, p0, Ls/g;->b:[J

    .line 64
    .line 65
    array-length v1, v1

    .line 66
    const/4 v2, 0x1

    .line 67
    if-lt v0, v1, :cond_72

    .line 68
    .line 69
    add-int/lit8 v1, v0, 0x1

    .line 70
    .line 71
    mul-int/lit8 v1, v1, 0x8

    .line 72
    .line 73
    const/4 v3, 0x4

    .line 74
    :goto_49
    const/16 v4, 0x20

    .line 75
    .line 76
    if-ge v3, v4, :cond_58

    .line 77
    .line 78
    shl-int v4, v2, v3

    .line 79
    .line 80
    add-int/lit8 v4, v4, -0xc

    .line 81
    .line 82
    if-gt v1, v4, :cond_55

    .line 83
    .line 84
    move v1, v4

    .line 85
    goto :goto_58

    .line 86
    :cond_55
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_49

    .line 89
    :cond_58
    :goto_58
    div-int/lit8 v1, v1, 0x8

    .line 90
    .line 91
    iget-object v3, p0, Ls/g;->b:[J

    .line 92
    .line 93
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const-string v4, "copyOf(this, newSize)"

    .line 98
    .line 99
    invoke-static {v4, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iput-object v3, p0, Ls/g;->b:[J

    .line 103
    .line 104
    iget-object v3, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v4, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iput-object v1, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 114
    .line 115
    :cond_72
    iget-object v1, p0, Ls/g;->b:[J

    .line 116
    .line 117
    aput-wide p1, v1, v0

    .line 118
    .line 119
    iget-object p1, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 120
    .line 121
    aput-object p3, p1, v0

    .line 122
    .line 123
    add-int/2addr v0, v2

    .line 124
    iput v0, p0, Ls/g;->d:I

    .line 125
    .line 126
    return-void
.end method

.method public final b()Ls/g;
    .registers 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>"

    .line 6
    .line 7
    invoke-static {v1, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Ls/g;

    .line 11
    .line 12
    iget-object v1, p0, Ls/g;->b:[J

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, [J

    .line 19
    .line 20
    iput-object v1, v0, Ls/g;->b:[J

    .line 21
    .line 22
    iget-object v1, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, [Ljava/lang/Object;

    .line 29
    .line 30
    iput-object v1, v0, Ls/g;->c:[Ljava/lang/Object;

    .line 31
    .line 32
    return-object v0
.end method

.method public final c(J)Ljava/lang/Object;
    .registers 6

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ls/g;->b:[J

    .line 8
    .line 9
    iget v2, p0, Ls/g;->d:I

    .line 10
    .line 11
    invoke-static {v1, v2, p1, p2}, Lt/a;->b([JIJ)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ltz p1, :cond_1a

    .line 16
    .line 17
    iget-object p2, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 18
    .line 19
    aget-object p1, p2, p1

    .line 20
    .line 21
    sget-object p2, Ls/h;->a:Ljava/lang/Object;

    .line 22
    .line 23
    if-ne p1, p2, :cond_19

    .line 24
    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    return-object p1

    .line 27
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ls/g;->b()Ls/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(JLjava/lang/Object;)V
    .registers 14

    .line 1
    sget-object v0, Ls/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Ls/g;->b:[J

    .line 4
    .line 5
    iget v2, p0, Ls/g;->d:I

    .line 6
    .line 7
    invoke-static {v1, v2, p1, p2}, Lt/a;->b([JIJ)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ltz v1, :cond_11

    .line 12
    .line 13
    iget-object p1, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 14
    .line 15
    aput-object p3, p1, v1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    not-int v1, v1

    .line 19
    iget v2, p0, Ls/g;->d:I

    .line 20
    .line 21
    if-ge v1, v2, :cond_23

    .line 22
    .line 23
    iget-object v3, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 24
    .line 25
    aget-object v4, v3, v1

    .line 26
    .line 27
    if-ne v4, v0, :cond_23

    .line 28
    .line 29
    iget-object v0, p0, Ls/g;->b:[J

    .line 30
    .line 31
    aput-wide p1, v0, v1

    .line 32
    .line 33
    aput-object p3, v3, v1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    iget-boolean v3, p0, Ls/g;->a:Z

    .line 37
    .line 38
    if-eqz v3, :cond_52

    .line 39
    .line 40
    iget-object v3, p0, Ls/g;->b:[J

    .line 41
    .line 42
    array-length v4, v3

    .line 43
    if-lt v2, v4, :cond_52

    .line 44
    .line 45
    iget-object v1, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    move v5, v4

    .line 49
    move v6, v5

    .line 50
    :goto_31
    if-ge v5, v2, :cond_47

    .line 51
    .line 52
    aget-object v7, v1, v5

    .line 53
    .line 54
    if-eq v7, v0, :cond_44

    .line 55
    .line 56
    if-eq v5, v6, :cond_42

    .line 57
    .line 58
    aget-wide v8, v3, v5

    .line 59
    .line 60
    aput-wide v8, v3, v6

    .line 61
    .line 62
    aput-object v7, v1, v6

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    aput-object v7, v1, v5

    .line 66
    .line 67
    :cond_42
    add-int/lit8 v6, v6, 0x1

    .line 68
    .line 69
    :cond_44
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_31

    .line 72
    :cond_47
    iput-boolean v4, p0, Ls/g;->a:Z

    .line 73
    .line 74
    iput v6, p0, Ls/g;->d:I

    .line 75
    .line 76
    iget-object v0, p0, Ls/g;->b:[J

    .line 77
    .line 78
    invoke-static {v0, v6, p1, p2}, Lt/a;->b([JIJ)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    not-int v1, v0

    .line 83
    :cond_52
    iget v0, p0, Ls/g;->d:I

    .line 84
    .line 85
    iget-object v2, p0, Ls/g;->b:[J

    .line 86
    .line 87
    array-length v2, v2

    .line 88
    const/4 v3, 0x1

    .line 89
    if-lt v0, v2, :cond_87

    .line 90
    .line 91
    add-int/2addr v0, v3

    .line 92
    mul-int/lit8 v0, v0, 0x8

    .line 93
    .line 94
    const/4 v2, 0x4

    .line 95
    :goto_5e
    const/16 v4, 0x20

    .line 96
    .line 97
    if-ge v2, v4, :cond_6d

    .line 98
    .line 99
    shl-int v4, v3, v2

    .line 100
    .line 101
    add-int/lit8 v4, v4, -0xc

    .line 102
    .line 103
    if-gt v0, v4, :cond_6a

    .line 104
    .line 105
    move v0, v4

    .line 106
    goto :goto_6d

    .line 107
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    goto :goto_5e

    .line 110
    :cond_6d
    :goto_6d
    div-int/lit8 v0, v0, 0x8

    .line 111
    .line 112
    iget-object v2, p0, Ls/g;->b:[J

    .line 113
    .line 114
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const-string v4, "copyOf(this, newSize)"

    .line 119
    .line 120
    invoke-static {v4, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iput-object v2, p0, Ls/g;->b:[J

    .line 124
    .line 125
    iget-object v2, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v4, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iput-object v0, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 135
    .line 136
    :cond_87
    iget v0, p0, Ls/g;->d:I

    .line 137
    .line 138
    sub-int/2addr v0, v1

    .line 139
    if-eqz v0, :cond_9f

    .line 140
    .line 141
    iget-object v2, p0, Ls/g;->b:[J

    .line 142
    .line 143
    add-int/lit8 v4, v1, 0x1

    .line 144
    .line 145
    const-string v5, "<this>"

    .line 146
    .line 147
    invoke-static {v5, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 154
    .line 155
    iget v2, p0, Ls/g;->d:I

    .line 156
    .line 157
    invoke-static {v4, v1, v2, v0, v0}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_9f
    iget-object v0, p0, Ls/g;->b:[J

    .line 161
    .line 162
    aput-wide p1, v0, v1

    .line 163
    .line 164
    iget-object p1, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 165
    .line 166
    aput-object p3, p1, v1

    .line 167
    .line 168
    iget p1, p0, Ls/g;->d:I

    .line 169
    .line 170
    add-int/2addr p1, v3

    .line 171
    iput p1, p0, Ls/g;->d:I

    .line 172
    .line 173
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 16

    .line 1
    sget-object v0, Ls/h;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-boolean v1, p0, Ls/g;->a:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_29

    .line 8
    .line 9
    iget v1, p0, Ls/g;->d:I

    .line 10
    .line 11
    iget-object v4, p0, Ls/g;->b:[J

    .line 12
    .line 13
    iget-object v5, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 14
    .line 15
    move v6, v3

    .line 16
    move v7, v6

    .line 17
    :goto_10
    if-ge v6, v1, :cond_25

    .line 18
    .line 19
    aget-object v8, v5, v6

    .line 20
    .line 21
    if-eq v8, v0, :cond_22

    .line 22
    .line 23
    if-eq v6, v7, :cond_20

    .line 24
    .line 25
    aget-wide v9, v4, v6

    .line 26
    .line 27
    aput-wide v9, v4, v7

    .line 28
    .line 29
    aput-object v8, v5, v7

    .line 30
    .line 31
    aput-object v2, v5, v6

    .line 32
    .line 33
    :cond_20
    add-int/lit8 v7, v7, 0x1

    .line 34
    .line 35
    :cond_22
    add-int/lit8 v6, v6, 0x1

    .line 36
    .line 37
    goto :goto_10

    .line 38
    :cond_25
    iput-boolean v3, p0, Ls/g;->a:Z

    .line 39
    .line 40
    iput v7, p0, Ls/g;->d:I

    .line 41
    .line 42
    :cond_29
    iget v1, p0, Ls/g;->d:I

    .line 43
    .line 44
    if-gtz v1, :cond_30

    .line 45
    .line 46
    const-string v0, "{}"

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_30
    mul-int/lit8 v1, v1, 0x1c

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x7b

    .line 57
    .line 58
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Ls/g;->d:I

    .line 62
    .line 63
    move v5, v3

    .line 64
    :goto_3f
    if-ge v5, v1, :cond_d6

    .line 65
    .line 66
    if-lez v5, :cond_48

    .line 67
    .line 68
    const-string v6, ", "

    .line 69
    .line 70
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_48
    const-string v6, "Expected index to be within 0..size()-1, but was "

    .line 74
    .line 75
    if-ltz v5, :cond_c8

    .line 76
    .line 77
    iget v7, p0, Ls/g;->d:I

    .line 78
    .line 79
    if-ge v5, v7, :cond_c8

    .line 80
    .line 81
    iget-boolean v8, p0, Ls/g;->a:Z

    .line 82
    .line 83
    if-eqz v8, :cond_73

    .line 84
    .line 85
    iget-object v8, p0, Ls/g;->b:[J

    .line 86
    .line 87
    iget-object v9, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 88
    .line 89
    move v10, v3

    .line 90
    move v11, v10

    .line 91
    :goto_5a
    if-ge v10, v7, :cond_6f

    .line 92
    .line 93
    aget-object v12, v9, v10

    .line 94
    .line 95
    if-eq v12, v0, :cond_6c

    .line 96
    .line 97
    if-eq v10, v11, :cond_6a

    .line 98
    .line 99
    aget-wide v13, v8, v10

    .line 100
    .line 101
    aput-wide v13, v8, v11

    .line 102
    .line 103
    aput-object v12, v9, v11

    .line 104
    .line 105
    aput-object v2, v9, v10

    .line 106
    .line 107
    :cond_6a
    add-int/lit8 v11, v11, 0x1

    .line 108
    .line 109
    :cond_6c
    add-int/lit8 v10, v10, 0x1

    .line 110
    .line 111
    goto :goto_5a

    .line 112
    :cond_6f
    iput-boolean v3, p0, Ls/g;->a:Z

    .line 113
    .line 114
    iput v11, p0, Ls/g;->d:I

    .line 115
    .line 116
    :cond_73
    iget-object v7, p0, Ls/g;->b:[J

    .line 117
    .line 118
    aget-wide v8, v7, v5

    .line 119
    .line 120
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const/16 v7, 0x3d

    .line 124
    .line 125
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    if-ltz v5, :cond_ba

    .line 129
    .line 130
    iget v7, p0, Ls/g;->d:I

    .line 131
    .line 132
    if-ge v5, v7, :cond_ba

    .line 133
    .line 134
    iget-boolean v6, p0, Ls/g;->a:Z

    .line 135
    .line 136
    if-eqz v6, :cond_a8

    .line 137
    .line 138
    iget-object v6, p0, Ls/g;->b:[J

    .line 139
    .line 140
    iget-object v8, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 141
    .line 142
    move v9, v3

    .line 143
    move v10, v9

    .line 144
    :goto_8f
    if-ge v9, v7, :cond_a4

    .line 145
    .line 146
    aget-object v11, v8, v9

    .line 147
    .line 148
    if-eq v11, v0, :cond_a1

    .line 149
    .line 150
    if-eq v9, v10, :cond_9f

    .line 151
    .line 152
    aget-wide v12, v6, v9

    .line 153
    .line 154
    aput-wide v12, v6, v10

    .line 155
    .line 156
    aput-object v11, v8, v10

    .line 157
    .line 158
    aput-object v2, v8, v9

    .line 159
    .line 160
    :cond_9f
    add-int/lit8 v10, v10, 0x1

    .line 161
    .line 162
    :cond_a1
    add-int/lit8 v9, v9, 0x1

    .line 163
    .line 164
    goto :goto_8f

    .line 165
    :cond_a4
    iput-boolean v3, p0, Ls/g;->a:Z

    .line 166
    .line 167
    iput v10, p0, Ls/g;->d:I

    .line 168
    .line 169
    :cond_a8
    iget-object v6, p0, Ls/g;->c:[Ljava/lang/Object;

    .line 170
    .line 171
    aget-object v6, v6, v5

    .line 172
    .line 173
    if-eq v6, v4, :cond_b2

    .line 174
    .line 175
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    goto :goto_b7

    .line 179
    :cond_b2
    const-string v6, "(this Map)"

    .line 180
    .line 181
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    :goto_b7
    add-int/lit8 v5, v5, 0x1

    .line 185
    .line 186
    goto :goto_3f

    .line 187
    :cond_ba
    invoke-static {v5, v6}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v1

    .line 201
    :cond_c8
    invoke-static {v5, v6}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v1

    .line 215
    :cond_d6
    const/16 v0, 0x7d

    .line 216
    .line 217
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    .line 225
    .line 226
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    return-object v0
.end method
