###### Class s.k (s.k)
.class public final Ls/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public synthetic a:[I

.field public synthetic b:[Ljava/lang/Object;

.field public synthetic c:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    move v1, v0

    .line 6
    :goto_5
    const/16 v2, 0x20

    .line 7
    .line 8
    const/16 v3, 0x28

    .line 9
    .line 10
    if-ge v1, v2, :cond_16

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    shl-int/2addr v2, v1

    .line 14
    add-int/lit8 v2, v2, -0xc

    .line 15
    .line 16
    if-gt v3, v2, :cond_13

    .line 17
    .line 18
    move v3, v2

    .line 19
    goto :goto_16

    .line 20
    :cond_13
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_5

    .line 23
    :cond_16
    :goto_16
    div-int/2addr v3, v0

    .line 24
    new-array v0, v3, [I

    .line 25
    .line 26
    iput-object v0, p0, Ls/k;->a:[I

    .line 27
    .line 28
    new-array v0, v3, [Ljava/lang/Object;

    .line 29
    .line 30
    iput-object v0, p0, Ls/k;->b:[Ljava/lang/Object;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 9

    .line 1
    iget v0, p0, Ls/k;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-object v1, p0, Ls/k;->a:[I

    .line 6
    .line 7
    add-int/lit8 v2, v0, -0x1

    .line 8
    .line 9
    aget v1, v1, v2

    .line 10
    .line 11
    if-gt p1, v1, :cond_10

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Ls/k;->c(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    iget-object v1, p0, Ls/k;->a:[I

    .line 18
    .line 19
    array-length v1, v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-lt v0, v1, :cond_43

    .line 22
    .line 23
    add-int/lit8 v1, v0, 0x1

    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    mul-int/2addr v1, v3

    .line 27
    move v4, v3

    .line 28
    :goto_1b
    const/16 v5, 0x20

    .line 29
    .line 30
    if-ge v4, v5, :cond_2a

    .line 31
    .line 32
    shl-int v5, v2, v4

    .line 33
    .line 34
    add-int/lit8 v5, v5, -0xc

    .line 35
    .line 36
    if-gt v1, v5, :cond_27

    .line 37
    .line 38
    move v1, v5

    .line 39
    goto :goto_2a

    .line 40
    :cond_27
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_1b

    .line 43
    :cond_2a
    :goto_2a
    div-int/2addr v1, v3

    .line 44
    iget-object v3, p0, Ls/k;->a:[I

    .line 45
    .line 46
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "copyOf(this, newSize)"

    .line 51
    .line 52
    invoke-static {v4, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-object v3, p0, Ls/k;->a:[I

    .line 56
    .line 57
    iget-object v3, p0, Ls/k;->b:[Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v4, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Ls/k;->b:[Ljava/lang/Object;

    .line 67
    .line 68
    :cond_43
    iget-object v1, p0, Ls/k;->a:[I

    .line 69
    .line 70
    aput p1, v1, v0

    .line 71
    .line 72
    iget-object p1, p0, Ls/k;->b:[Ljava/lang/Object;

    .line 73
    .line 74
    aput-object p2, p1, v0

    .line 75
    .line 76
    add-int/2addr v0, v2

    .line 77
    iput v0, p0, Ls/k;->c:I

    .line 78
    .line 79
    return-void
.end method

.method public final b()Ls/k;
    .registers 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>"

    .line 6
    .line 7
    invoke-static {v1, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Ls/k;

    .line 11
    .line 12
    iget-object v1, p0, Ls/k;->a:[I

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, [I

    .line 19
    .line 20
    iput-object v1, v0, Ls/k;->a:[I

    .line 21
    .line 22
    iget-object v1, p0, Ls/k;->b:[Ljava/lang/Object;

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
    iput-object v1, v0, Ls/k;->b:[Ljava/lang/Object;

    .line 31
    .line 32
    return-object v0
.end method

.method public final c(ILjava/lang/Object;)V
    .registers 9

    .line 1
    iget-object v0, p0, Ls/k;->a:[I

    .line 2
    .line 3
    iget v1, p0, Ls/k;->c:I

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, Lt/a;->a(II[I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_f

    .line 10
    .line 11
    iget-object p1, p0, Ls/k;->b:[Ljava/lang/Object;

    .line 12
    .line 13
    aput-object p2, p1, v0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    not-int v0, v0

    .line 17
    iget v1, p0, Ls/k;->c:I

    .line 18
    .line 19
    if-ge v0, v1, :cond_23

    .line 20
    .line 21
    iget-object v2, p0, Ls/k;->b:[Ljava/lang/Object;

    .line 22
    .line 23
    aget-object v3, v2, v0

    .line 24
    .line 25
    sget-object v4, Ls/h;->b:Ljava/lang/Object;

    .line 26
    .line 27
    if-ne v3, v4, :cond_23

    .line 28
    .line 29
    iget-object v1, p0, Ls/k;->a:[I

    .line 30
    .line 31
    aput p1, v1, v0

    .line 32
    .line 33
    aput-object p2, v2, v0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    iget-object v2, p0, Ls/k;->a:[I

    .line 37
    .line 38
    array-length v2, v2

    .line 39
    const/4 v3, 0x1

    .line 40
    if-lt v1, v2, :cond_55

    .line 41
    .line 42
    add-int/2addr v1, v3

    .line 43
    const/4 v2, 0x4

    .line 44
    mul-int/2addr v1, v2

    .line 45
    move v4, v2

    .line 46
    :goto_2d
    const/16 v5, 0x20

    .line 47
    .line 48
    if-ge v4, v5, :cond_3c

    .line 49
    .line 50
    shl-int v5, v3, v4

    .line 51
    .line 52
    add-int/lit8 v5, v5, -0xc

    .line 53
    .line 54
    if-gt v1, v5, :cond_39

    .line 55
    .line 56
    move v1, v5

    .line 57
    goto :goto_3c

    .line 58
    :cond_39
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_2d

    .line 61
    :cond_3c
    :goto_3c
    div-int/2addr v1, v2

    .line 62
    iget-object v2, p0, Ls/k;->a:[I

    .line 63
    .line 64
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v4, "copyOf(this, newSize)"

    .line 69
    .line 70
    invoke-static {v4, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Ls/k;->a:[I

    .line 74
    .line 75
    iget-object v2, p0, Ls/k;->b:[Ljava/lang/Object;

    .line 76
    .line 77
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v4, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Ls/k;->b:[Ljava/lang/Object;

    .line 85
    .line 86
    :cond_55
    iget v1, p0, Ls/k;->c:I

    .line 87
    .line 88
    sub-int v2, v1, v0

    .line 89
    .line 90
    if-eqz v2, :cond_69

    .line 91
    .line 92
    iget-object v2, p0, Ls/k;->a:[I

    .line 93
    .line 94
    add-int/lit8 v4, v0, 0x1

    .line 95
    .line 96
    invoke-static {v4, v0, v1, v2, v2}, Ls6/f;->k(III[I[I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Ls/k;->b:[Ljava/lang/Object;

    .line 100
    .line 101
    iget v2, p0, Ls/k;->c:I

    .line 102
    .line 103
    invoke-static {v4, v0, v2, v1, v1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_69
    iget-object v1, p0, Ls/k;->a:[I

    .line 107
    .line 108
    aput p1, v1, v0

    .line 109
    .line 110
    iget-object p1, p0, Ls/k;->b:[Ljava/lang/Object;

    .line 111
    .line 112
    aput-object p2, p1, v0

    .line 113
    .line 114
    iget p1, p0, Ls/k;->c:I

    .line 115
    .line 116
    add-int/2addr p1, v3

    .line 117
    iput p1, p0, Ls/k;->c:I

    .line 118
    .line 119
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ls/k;->b()Ls/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Ls/k;->c:I

    .line 2
    .line 3
    if-gtz v0, :cond_7

    .line 4
    .line 5
    const-string v0, "{}"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x1c

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x7b

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v0, p0, Ls/k;->c:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_16
    if-ge v2, v0, :cond_3d

    .line 24
    .line 25
    if-lez v2, :cond_1f

    .line 26
    .line 27
    const-string v3, ", "

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_1f
    iget-object v3, p0, Ls/k;->a:[I

    .line 33
    .line 34
    aget v3, v3, v2

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v3, 0x3d

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Ls/k;->b:[Ljava/lang/Object;

    .line 45
    .line 46
    aget-object v3, v3, v2

    .line 47
    .line 48
    if-eq v3, p0, :cond_35

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    goto :goto_3a

    .line 54
    :cond_35
    const-string v3, "(this Map)"

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_16

    .line 62
    :cond_3d
    const/16 v0, 0x7d

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "buffer.toString()"

    .line 72
    .line 73
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method
