###### Class c6.b (c6.b)
.class public final Lc6/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lc6/a;

.field public final b:[I


# direct methods
.method public constructor <init>(Lc6/a;[I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p2

    .line 5
    if-eqz v0, :cond_2f

    .line 6
    .line 7
    iput-object p1, p0, Lc6/b;->a:Lc6/a;

    .line 8
    .line 9
    array-length p1, p2

    .line 10
    const/4 v0, 0x1

    .line 11
    if-le p1, v0, :cond_2c

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aget v2, p2, v1

    .line 15
    .line 16
    if-nez v2, :cond_2c

    .line 17
    .line 18
    :goto_11
    if-ge v0, p1, :cond_1a

    .line 19
    .line 20
    aget v2, p2, v0

    .line 21
    .line 22
    if-nez v2, :cond_1a

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_11

    .line 27
    :cond_1a
    if-ne v0, p1, :cond_23

    .line 28
    .line 29
    filled-new-array {v1}, [I

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lc6/b;->b:[I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    sub-int/2addr p1, v0

    .line 37
    new-array v2, p1, [I

    .line 38
    .line 39
    iput-object v2, p0, Lc6/b;->b:[I

    .line 40
    .line 41
    invoke-static {p2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2c
    iput-object p2, p0, Lc6/b;->b:[I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p1
.end method


# virtual methods
.method public final a(Lc6/b;)Lc6/b;
    .registers 10

    .line 1
    iget-object v0, p1, Lc6/b;->a:Lc6/a;

    .line 2
    .line 3
    iget-object v1, p0, Lc6/b;->a:Lc6/a;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_40

    .line 10
    .line 11
    iget-object v0, p0, Lc6/b;->b:[I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aget v3, v0, v2

    .line 15
    .line 16
    if-nez v3, :cond_12

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_12
    iget-object p1, p1, Lc6/b;->b:[I

    .line 20
    .line 21
    aget v3, p1, v2

    .line 22
    .line 23
    if-nez v3, :cond_19

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_19
    array-length v3, v0

    .line 27
    array-length v4, p1

    .line 28
    if-le v3, v4, :cond_1e

    .line 29
    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    move-object v7, v0

    .line 32
    move-object v0, p1

    .line 33
    move-object p1, v7

    .line 34
    :goto_21
    array-length v3, v0

    .line 35
    new-array v3, v3, [I

    .line 36
    .line 37
    array-length v4, v0

    .line 38
    array-length v5, p1

    .line 39
    sub-int/2addr v4, v5

    .line 40
    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    move v2, v4

    .line 44
    :goto_2b
    array-length v5, v0

    .line 45
    if-ge v2, v5, :cond_3a

    .line 46
    .line 47
    sub-int v5, v2, v4

    .line 48
    .line 49
    aget v5, p1, v5

    .line 50
    .line 51
    aget v6, v0, v2

    .line 52
    .line 53
    xor-int/2addr v5, v6

    .line 54
    aput v5, v3, v2

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_2b

    .line 59
    :cond_3a
    new-instance p1, Lc6/b;

    .line 60
    .line 61
    invoke-direct {p1, v1, v3}, Lc6/b;-><init>(Lc6/a;[I)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string v0, "GenericGFPolys do not have same GenericGF field"

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method public final b()I
    .registers 2

    .line 1
    iget-object v0, p0, Lc6/b;->b:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lc6/b;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-int/lit8 v1, v1, 0x8

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lc6/b;->b()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_f
    if-ltz v1, :cond_72

    .line 17
    .line 18
    iget-object v2, p0, Lc6/b;->b:[I

    .line 19
    .line 20
    array-length v3, v2

    .line 21
    const/4 v4, 0x1

    .line 22
    sub-int/2addr v3, v4

    .line 23
    sub-int/2addr v3, v1

    .line 24
    aget v2, v2, v3

    .line 25
    .line 26
    if-eqz v2, :cond_6f

    .line 27
    .line 28
    if-gez v2, :cond_24

    .line 29
    .line 30
    const-string v3, " - "

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    neg-int v2, v2

    .line 36
    goto :goto_2f

    .line 37
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-lez v3, :cond_2f

    .line 42
    .line 43
    const-string v3, " + "

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_2f
    :goto_2f
    if-eqz v1, :cond_33

    .line 49
    .line 50
    if-eq v2, v4, :cond_53

    .line 51
    .line 52
    :cond_33
    iget-object v3, p0, Lc6/b;->a:Lc6/a;

    .line 53
    .line 54
    if-eqz v2, :cond_66

    .line 55
    .line 56
    iget-object v3, v3, Lc6/a;->b:[I

    .line 57
    .line 58
    aget v2, v3, v2

    .line 59
    .line 60
    if-nez v2, :cond_43

    .line 61
    .line 62
    const/16 v2, 0x31

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_53

    .line 68
    :cond_43
    if-ne v2, v4, :cond_4b

    .line 69
    .line 70
    const/16 v2, 0x61

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_53

    .line 76
    :cond_4b
    const-string v3, "a^"

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_53
    :goto_53
    if-eqz v1, :cond_6f

    .line 85
    .line 86
    if-ne v1, v4, :cond_5d

    .line 87
    .line 88
    const/16 v2, 0x78

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_6f

    .line 94
    :cond_5d
    const-string v2, "x^"

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_6f

    .line 103
    :cond_66
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :cond_6f
    :goto_6f
    add-int/lit8 v1, v1, -0x1

    .line 113
    .line 114
    goto :goto_f

    .line 115
    :cond_72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method
