###### Class com.engagelab.privates.core.api.Outputer (com.engagelab.privates.core.api.Outputer)
.class public Lcom/engagelab/privates/core/api/Outputer;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private array:[B

.field private pos:I

.field private saved_pos:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x20

    .line 5
    invoke-direct {p0, v0}, Lcom/engagelab/privates/core/api/Outputer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/engagelab/privates/core/api/Outputer;->saved_pos:I

    return-void
.end method

.method private check(JI)V
    .registers 4

    .line 1
    return-void
.end method

.method private need(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 5
    .line 6
    sub-int/2addr v1, v2

    .line 7
    if-lt v1, p1, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    array-length v1, v0

    .line 11
    mul-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    add-int/2addr p1, v2

    .line 14
    if-ge v1, p1, :cond_10

    .line 15
    .line 16
    move v1, p1

    .line 17
    :cond_10
    new-array p1, v1, [B

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public current()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 2
    .line 3
    return v0
.end method

.method public jump(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 2
    .line 3
    if-gt p1, v0, :cond_7

    .line 4
    .line 5
    iput p1, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "cannot jump past end of data"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public restore()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/engagelab/privates/core/api/Outputer;->saved_pos:I

    .line 2
    .line 3
    if-ltz v0, :cond_a

    .line 4
    .line 5
    iput v0, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/engagelab/privates/core/api/Outputer;->saved_pos:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "no previous state"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public save()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 2
    .line 3
    iput v0, p0, Lcom/engagelab/privates/core/api/Outputer;->saved_pos:I

    .line 4
    .line 5
    return-void
.end method

.method public toByteArray()[B
    .registers 5

    .line 1
    iget v0, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    iget-object v2, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public writeByteArray([B)V
    .registers 4

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArray([BII)V

    return-void
.end method

.method public writeByteArray([BII)V
    .registers 6

    .line 1
    invoke-direct {p0, p3}, Lcom/engagelab/privates/core/api/Outputer;->need(I)V

    .line 2
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    iget v1, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p1, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    return-void
.end method

.method public writeByteArrayIncludeLength([B)V
    .registers 4

    .line 1
    array-length v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/core/api/Outputer;->writeU16(I)V

    .line 3
    .line 4
    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1, v0}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArray([BII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public writeCountedString([B)V
    .registers 6

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0xff

    .line 3
    .line 4
    if-gt v0, v1, :cond_1e

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/engagelab/privates/core/api/Outputer;->need(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    .line 13
    .line 14
    iget v2, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 15
    .line 16
    add-int/lit8 v3, v2, 0x1

    .line 17
    .line 18
    iput v3, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 19
    .line 20
    array-length v3, p1

    .line 21
    and-int/2addr v1, v3

    .line 22
    int-to-byte v1, v1

    .line 23
    aput-byte v1, v0, v2

    .line 24
    .line 25
    array-length v0, p1

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, p1, v1, v0}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArray([BII)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "Invalid counted string"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public writeU16(I)V
    .registers 7

    .line 1
    int-to-long v0, p1

    .line 2
    const/16 v2, 0x10

    .line 3
    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/engagelab/privates/core/api/Outputer;->check(JI)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-direct {p0, v0}, Lcom/engagelab/privates/core/api/Outputer;->need(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    .line 12
    .line 13
    iget v2, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 14
    .line 15
    add-int/lit8 v3, v2, 0x1

    .line 16
    .line 17
    iput v3, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 18
    .line 19
    ushr-int/lit8 v4, p1, 0x8

    .line 20
    .line 21
    and-int/lit16 v4, v4, 0xff

    .line 22
    .line 23
    int-to-byte v4, v4

    .line 24
    aput-byte v4, v1, v2

    .line 25
    .line 26
    add-int/2addr v2, v0

    .line 27
    iput v2, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 28
    .line 29
    and-int/lit16 p1, p1, 0xff

    .line 30
    .line 31
    int-to-byte p1, p1

    .line 32
    aput-byte p1, v1, v3

    .line 33
    .line 34
    return-void
.end method

.method public writeU16At(II)V
    .registers 6

    .line 1
    int-to-long v0, p1

    .line 2
    const/16 v2, 0x10

    .line 3
    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/engagelab/privates/core/api/Outputer;->check(JI)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x2

    .line 10
    .line 11
    if-gt p2, v0, :cond_1d

    .line 12
    .line 13
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    .line 14
    .line 15
    add-int/lit8 v1, p2, 0x1

    .line 16
    .line 17
    ushr-int/lit8 v2, p1, 0x8

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    int-to-byte v2, v2

    .line 22
    aput-byte v2, v0, p2

    .line 23
    .line 24
    and-int/lit16 p1, p1, 0xff

    .line 25
    .line 26
    int-to-byte p1, p1

    .line 27
    aput-byte p1, v0, v1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p2, "cannot write past end of data"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public writeU32(J)V
    .registers 13

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/engagelab/privates/core/api/Outputer;->check(JI)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-direct {p0, v0}, Lcom/engagelab/privates/core/api/Outputer;->need(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    .line 11
    .line 12
    iget v2, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 13
    .line 14
    add-int/lit8 v3, v2, 0x1

    .line 15
    .line 16
    iput v3, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 17
    .line 18
    const/16 v4, 0x18

    .line 19
    .line 20
    ushr-long v4, p1, v4

    .line 21
    .line 22
    const-wide/16 v6, 0xff

    .line 23
    .line 24
    and-long/2addr v4, v6

    .line 25
    long-to-int v4, v4

    .line 26
    int-to-byte v4, v4

    .line 27
    aput-byte v4, v1, v2

    .line 28
    .line 29
    add-int/lit8 v4, v2, 0x2

    .line 30
    .line 31
    iput v4, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 32
    .line 33
    const/16 v5, 0x10

    .line 34
    .line 35
    ushr-long v8, p1, v5

    .line 36
    .line 37
    and-long/2addr v8, v6

    .line 38
    long-to-int v5, v8

    .line 39
    int-to-byte v5, v5

    .line 40
    aput-byte v5, v1, v3

    .line 41
    .line 42
    add-int/lit8 v3, v2, 0x3

    .line 43
    .line 44
    iput v3, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 45
    .line 46
    const/16 v5, 0x8

    .line 47
    .line 48
    ushr-long v8, p1, v5

    .line 49
    .line 50
    and-long/2addr v8, v6

    .line 51
    long-to-int v5, v8

    .line 52
    int-to-byte v5, v5

    .line 53
    aput-byte v5, v1, v4

    .line 54
    .line 55
    add-int/2addr v2, v0

    .line 56
    iput v2, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 57
    .line 58
    and-long/2addr p1, v6

    .line 59
    long-to-int p1, p1

    .line 60
    int-to-byte p1, p1

    .line 61
    aput-byte p1, v1, v3

    .line 62
    .line 63
    return-void
.end method

.method public writeU32At(JI)V
    .registers 12

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/engagelab/privates/core/api/Outputer;->check(JI)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x4

    .line 9
    .line 10
    if-gt p3, v0, :cond_36

    .line 11
    .line 12
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    .line 13
    .line 14
    add-int/lit8 v1, p3, 0x1

    .line 15
    .line 16
    const/16 v2, 0x18

    .line 17
    .line 18
    ushr-long v2, p1, v2

    .line 19
    .line 20
    const-wide/16 v4, 0xff

    .line 21
    .line 22
    and-long/2addr v2, v4

    .line 23
    long-to-int v2, v2

    .line 24
    int-to-byte v2, v2

    .line 25
    aput-byte v2, v0, p3

    .line 26
    .line 27
    add-int/lit8 v2, p3, 0x2

    .line 28
    .line 29
    const/16 v3, 0x10

    .line 30
    .line 31
    ushr-long v6, p1, v3

    .line 32
    .line 33
    and-long/2addr v6, v4

    .line 34
    long-to-int v3, v6

    .line 35
    int-to-byte v3, v3

    .line 36
    aput-byte v3, v0, v1

    .line 37
    .line 38
    add-int/lit8 p3, p3, 0x3

    .line 39
    .line 40
    const/16 v1, 0x8

    .line 41
    .line 42
    ushr-long v6, p1, v1

    .line 43
    .line 44
    and-long/2addr v6, v4

    .line 45
    long-to-int v1, v6

    .line 46
    int-to-byte v1, v1

    .line 47
    aput-byte v1, v0, v2

    .line 48
    .line 49
    and-long/2addr p1, v4

    .line 50
    long-to-int p1, p1

    .line 51
    int-to-byte p1, p1

    .line 52
    aput-byte p1, v0, p3

    .line 53
    .line 54
    return-void

    .line 55
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p2, "cannot write past end of data"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public writeU64(J)V
    .registers 13

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/engagelab/privates/core/api/Outputer;->need(I)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    .line 7
    .line 8
    iget v2, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    .line 12
    iput v3, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 13
    .line 14
    const/16 v4, 0x38

    .line 15
    .line 16
    ushr-long v4, p1, v4

    .line 17
    .line 18
    const-wide/16 v6, 0xff

    .line 19
    .line 20
    and-long/2addr v4, v6

    .line 21
    long-to-int v4, v4

    .line 22
    int-to-byte v4, v4

    .line 23
    aput-byte v4, v1, v2

    .line 24
    .line 25
    add-int/lit8 v4, v2, 0x2

    .line 26
    .line 27
    iput v4, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 28
    .line 29
    const/16 v5, 0x30

    .line 30
    .line 31
    ushr-long v8, p1, v5

    .line 32
    .line 33
    and-long/2addr v8, v6

    .line 34
    long-to-int v5, v8

    .line 35
    int-to-byte v5, v5

    .line 36
    aput-byte v5, v1, v3

    .line 37
    .line 38
    add-int/lit8 v3, v2, 0x3

    .line 39
    .line 40
    iput v3, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 41
    .line 42
    const/16 v5, 0x28

    .line 43
    .line 44
    ushr-long v8, p1, v5

    .line 45
    .line 46
    and-long/2addr v8, v6

    .line 47
    long-to-int v5, v8

    .line 48
    int-to-byte v5, v5

    .line 49
    aput-byte v5, v1, v4

    .line 50
    .line 51
    add-int/lit8 v4, v2, 0x4

    .line 52
    .line 53
    iput v4, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 54
    .line 55
    const/16 v5, 0x20

    .line 56
    .line 57
    ushr-long v8, p1, v5

    .line 58
    .line 59
    and-long/2addr v8, v6

    .line 60
    long-to-int v5, v8

    .line 61
    int-to-byte v5, v5

    .line 62
    aput-byte v5, v1, v3

    .line 63
    .line 64
    add-int/lit8 v3, v2, 0x5

    .line 65
    .line 66
    iput v3, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 67
    .line 68
    const/16 v5, 0x18

    .line 69
    .line 70
    ushr-long v8, p1, v5

    .line 71
    .line 72
    and-long/2addr v8, v6

    .line 73
    long-to-int v5, v8

    .line 74
    int-to-byte v5, v5

    .line 75
    aput-byte v5, v1, v4

    .line 76
    .line 77
    add-int/lit8 v4, v2, 0x6

    .line 78
    .line 79
    iput v4, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 80
    .line 81
    const/16 v5, 0x10

    .line 82
    .line 83
    ushr-long v8, p1, v5

    .line 84
    .line 85
    and-long/2addr v8, v6

    .line 86
    long-to-int v5, v8

    .line 87
    int-to-byte v5, v5

    .line 88
    aput-byte v5, v1, v3

    .line 89
    .line 90
    add-int/lit8 v3, v2, 0x7

    .line 91
    .line 92
    iput v3, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 93
    .line 94
    ushr-long v8, p1, v0

    .line 95
    .line 96
    and-long/2addr v8, v6

    .line 97
    long-to-int v5, v8

    .line 98
    int-to-byte v5, v5

    .line 99
    aput-byte v5, v1, v4

    .line 100
    .line 101
    add-int/2addr v2, v0

    .line 102
    iput v2, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 103
    .line 104
    and-long/2addr p1, v6

    .line 105
    long-to-int p1, p1

    .line 106
    int-to-byte p1, p1

    .line 107
    aput-byte p1, v1, v3

    .line 108
    .line 109
    return-void
.end method

.method public writeU64At(JI)V
    .registers 13

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/engagelab/privates/core/api/Outputer;->check(JI)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    if-gt p3, v0, :cond_61

    .line 12
    .line 13
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    .line 14
    .line 15
    add-int/lit8 v2, p3, 0x1

    .line 16
    .line 17
    const/16 v3, 0x38

    .line 18
    .line 19
    ushr-long v3, p1, v3

    .line 20
    .line 21
    const-wide/16 v5, 0xff

    .line 22
    .line 23
    and-long/2addr v3, v5

    .line 24
    long-to-int v3, v3

    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v0, p3

    .line 27
    .line 28
    add-int/lit8 v3, p3, 0x2

    .line 29
    .line 30
    const/16 v4, 0x30

    .line 31
    .line 32
    ushr-long v7, p1, v4

    .line 33
    .line 34
    and-long/2addr v7, v5

    .line 35
    long-to-int v4, v7

    .line 36
    int-to-byte v4, v4

    .line 37
    aput-byte v4, v0, v2

    .line 38
    .line 39
    add-int/lit8 v2, p3, 0x3

    .line 40
    .line 41
    const/16 v4, 0x28

    .line 42
    .line 43
    ushr-long v7, p1, v4

    .line 44
    .line 45
    and-long/2addr v7, v5

    .line 46
    long-to-int v4, v7

    .line 47
    int-to-byte v4, v4

    .line 48
    aput-byte v4, v0, v3

    .line 49
    .line 50
    add-int/lit8 v3, p3, 0x4

    .line 51
    .line 52
    const/16 v4, 0x20

    .line 53
    .line 54
    ushr-long v7, p1, v4

    .line 55
    .line 56
    and-long/2addr v7, v5

    .line 57
    long-to-int v4, v7

    .line 58
    int-to-byte v4, v4

    .line 59
    aput-byte v4, v0, v2

    .line 60
    .line 61
    add-int/lit8 v2, p3, 0x5

    .line 62
    .line 63
    const/16 v4, 0x18

    .line 64
    .line 65
    ushr-long v7, p1, v4

    .line 66
    .line 67
    and-long/2addr v7, v5

    .line 68
    long-to-int v4, v7

    .line 69
    int-to-byte v4, v4

    .line 70
    aput-byte v4, v0, v3

    .line 71
    .line 72
    add-int/lit8 v3, p3, 0x6

    .line 73
    .line 74
    const/16 v4, 0x10

    .line 75
    .line 76
    ushr-long v7, p1, v4

    .line 77
    .line 78
    and-long/2addr v7, v5

    .line 79
    long-to-int v4, v7

    .line 80
    int-to-byte v4, v4

    .line 81
    aput-byte v4, v0, v2

    .line 82
    .line 83
    add-int/lit8 p3, p3, 0x7

    .line 84
    .line 85
    ushr-long v1, p1, v1

    .line 86
    .line 87
    and-long/2addr v1, v5

    .line 88
    long-to-int v1, v1

    .line 89
    int-to-byte v1, v1

    .line 90
    aput-byte v1, v0, v3

    .line 91
    .line 92
    and-long/2addr p1, v5

    .line 93
    long-to-int p1, p1

    .line 94
    int-to-byte p1, p1

    .line 95
    aput-byte p1, v0, p3

    .line 96
    .line 97
    return-void

    .line 98
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string p2, "cannot write past end of data"

    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public writeU8(I)V
    .registers 5

    .line 1
    int-to-long v0, p1

    .line 2
    const/16 v2, 0x8

    .line 3
    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/engagelab/privates/core/api/Outputer;->check(JI)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Lcom/engagelab/privates/core/api/Outputer;->need(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    .line 12
    .line 13
    iget v1, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 14
    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    iput v2, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 18
    .line 19
    and-int/lit16 p1, p1, 0xff

    .line 20
    .line 21
    int-to-byte p1, p1

    .line 22
    aput-byte p1, v0, v1

    .line 23
    .line 24
    return-void
.end method

.method public writeU8At(II)V
    .registers 6

    .line 1
    int-to-long v0, p1

    .line 2
    const/16 v2, 0x8

    .line 3
    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/engagelab/privates/core/api/Outputer;->check(JI)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/engagelab/privates/core/api/Outputer;->pos:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    if-gt p2, v0, :cond_14

    .line 12
    .line 13
    iget-object v0, p0, Lcom/engagelab/privates/core/api/Outputer;->array:[B

    .line 14
    .line 15
    and-int/lit16 p1, p1, 0xff

    .line 16
    .line 17
    int-to-byte p1, p1

    .line 18
    aput-byte p1, v0, p2

    .line 19
    .line 20
    return-void

    .line 21
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p2, "cannot write past end of data"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method
