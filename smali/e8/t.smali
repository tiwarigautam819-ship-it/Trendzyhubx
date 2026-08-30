###### Class e8.t (e8.t)
.class public final Le8/t;
.super Le8/j;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final transient e:[[B

.field public final transient f:[I


# direct methods
.method public constructor <init>([[B[I)V
    .registers 4

    .line 1
    sget-object v0, Le8/j;->d:Le8/j;

    .line 2
    .line 3
    iget-object v0, v0, Le8/j;->a:[B

    .line 4
    .line 5
    invoke-direct {p0, v0}, Le8/j;-><init>([B)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Le8/t;->e:[[B

    .line 9
    .line 10
    iput-object p2, p0, Le8/t;->f:[I

    .line 11
    .line 12
    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Le8/j;

    .line 2
    .line 3
    invoke-virtual {p0}, Le8/t;->j()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Le8/j;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 3

    .line 1
    iget-object v0, p0, Le8/t;->e:[[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iget-object v1, p0, Le8/t;->f:[I

    .line 7
    .line 8
    aget v0, v1, v0

    .line 9
    .line 10
    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Le8/j;

    .line 2
    .line 3
    invoke-virtual {p0}, Le8/t;->j()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Le8/j;-><init>([B)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Le8/j;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final c()[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Le8/t;->j()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(I)B
    .registers 11

    .line 1
    iget-object v0, p0, Le8/t;->e:[[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x1

    .line 5
    .line 6
    iget-object v2, p0, Le8/t;->f:[I

    .line 7
    .line 8
    aget v1, v2, v1

    .line 9
    .line 10
    int-to-long v3, v1

    .line 11
    int-to-long v5, p1

    .line 12
    const-wide/16 v7, 0x1

    .line 13
    .line 14
    invoke-static/range {v3 .. v8}, Li2/t;->c(JJJ)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lf8/b;->b(Le8/t;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_18

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    goto :goto_1c

    .line 25
    :cond_18
    add-int/lit8 v3, v1, -0x1

    .line 26
    .line 27
    aget v3, v2, v3

    .line 28
    .line 29
    :goto_1c
    array-length v4, v0

    .line 30
    add-int/2addr v4, v1

    .line 31
    aget v2, v2, v4

    .line 32
    .line 33
    aget-object v0, v0, v1

    .line 34
    .line 35
    sub-int/2addr p1, v3

    .line 36
    add-int/2addr p1, v2

    .line 37
    aget-byte p1, v0, p1

    .line 38
    .line 39
    return p1
.end method

.method public final e(I[BII)Z
    .registers 12

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-ltz p1, :cond_49

    .line 8
    .line 9
    invoke-virtual {p0}, Le8/t;->a()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v1, p4

    .line 14
    if-gt p1, v1, :cond_49

    .line 15
    .line 16
    if-ltz p3, :cond_49

    .line 17
    .line 18
    array-length v1, p2

    .line 19
    sub-int/2addr v1, p4

    .line 20
    if-le p3, v1, :cond_16

    .line 21
    .line 22
    goto :goto_49

    .line 23
    :cond_16
    add-int/2addr p4, p1

    .line 24
    invoke-static {p0, p1}, Lf8/b;->b(Le8/t;I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_1b
    if-ge p1, p4, :cond_47

    .line 29
    .line 30
    iget-object v2, p0, Le8/t;->f:[I

    .line 31
    .line 32
    if-nez v1, :cond_23

    .line 33
    .line 34
    move v3, v0

    .line 35
    goto :goto_27

    .line 36
    :cond_23
    add-int/lit8 v3, v1, -0x1

    .line 37
    .line 38
    aget v3, v2, v3

    .line 39
    .line 40
    :goto_27
    aget v4, v2, v1

    .line 41
    .line 42
    sub-int/2addr v4, v3

    .line 43
    iget-object v5, p0, Le8/t;->e:[[B

    .line 44
    .line 45
    array-length v6, v5

    .line 46
    add-int/2addr v6, v1

    .line 47
    aget v2, v2, v6

    .line 48
    .line 49
    add-int/2addr v4, v3

    .line 50
    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    sub-int/2addr v4, p1

    .line 55
    sub-int v3, p1, v3

    .line 56
    .line 57
    add-int/2addr v3, v2

    .line 58
    aget-object v2, v5, v1

    .line 59
    .line 60
    invoke-static {v3, p3, v4, v2, p2}, Li2/t;->b(III[B[B)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_42

    .line 65
    .line 66
    return v0

    .line 67
    :cond_42
    add-int/2addr p3, v4

    .line 68
    add-int/2addr p1, v4

    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_1b

    .line 72
    :cond_47
    const/4 p1, 0x1

    .line 73
    return p1

    .line 74
    :cond_49
    :goto_49
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    if-ne p1, p0, :cond_3

    .line 2
    .line 3
    goto :goto_1d

    .line 4
    :cond_3
    instance-of v0, p1, Le8/j;

    .line 5
    .line 6
    if-eqz v0, :cond_1f

    .line 7
    .line 8
    check-cast p1, Le8/j;

    .line 9
    .line 10
    invoke-virtual {p1}, Le8/j;->a()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Le8/t;->a()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne v0, v1, :cond_1f

    .line 19
    .line 20
    invoke-virtual {p0}, Le8/t;->a()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0, p1, v0}, Le8/t;->f(Le8/j;I)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1f

    .line 29
    .line 30
    :goto_1d
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public final f(Le8/j;I)Z
    .registers 12

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Le8/t;->a()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sub-int/2addr v0, p2

    .line 11
    const/4 v1, 0x0

    .line 12
    if-gez v0, :cond_e

    .line 13
    .line 14
    goto :goto_3a

    .line 15
    :cond_e
    invoke-static {p0, v1}, Lf8/b;->b(Le8/t;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    move v2, v1

    .line 20
    move v3, v2

    .line 21
    :goto_14
    if-ge v2, p2, :cond_40

    .line 22
    .line 23
    iget-object v4, p0, Le8/t;->f:[I

    .line 24
    .line 25
    if-nez v0, :cond_1c

    .line 26
    .line 27
    move v5, v1

    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    add-int/lit8 v5, v0, -0x1

    .line 30
    .line 31
    aget v5, v4, v5

    .line 32
    .line 33
    :goto_20
    aget v6, v4, v0

    .line 34
    .line 35
    sub-int/2addr v6, v5

    .line 36
    iget-object v7, p0, Le8/t;->e:[[B

    .line 37
    .line 38
    array-length v8, v7

    .line 39
    add-int/2addr v8, v0

    .line 40
    aget v4, v4, v8

    .line 41
    .line 42
    add-int/2addr v6, v5

    .line 43
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    sub-int/2addr v6, v2

    .line 48
    sub-int v5, v2, v5

    .line 49
    .line 50
    add-int/2addr v5, v4

    .line 51
    aget-object v4, v7, v0

    .line 52
    .line 53
    invoke-virtual {p1, v3, v4, v5, v6}, Le8/j;->e(I[BII)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_3b

    .line 58
    .line 59
    :goto_3a
    return v1

    .line 60
    :cond_3b
    add-int/2addr v3, v6

    .line 61
    add-int/2addr v2, v6

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_14

    .line 65
    :cond_40
    const/4 p1, 0x1

    .line 66
    return p1
.end method

.method public final g()Le8/j;
    .registers 3

    .line 1
    new-instance v0, Le8/j;

    .line 2
    .line 3
    invoke-virtual {p0}, Le8/t;->j()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Le8/j;-><init>([B)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Le8/j;->g()Le8/j;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final hashCode()I
    .registers 10

    .line 1
    iget v0, p0, Le8/j;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return v0

    .line 6
    :cond_5
    iget-object v0, p0, Le8/t;->e:[[B

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    move v4, v3

    .line 12
    move v3, v2

    .line 13
    :goto_c
    if-ge v2, v1, :cond_29

    .line 14
    .line 15
    add-int v5, v1, v2

    .line 16
    .line 17
    iget-object v6, p0, Le8/t;->f:[I

    .line 18
    .line 19
    aget v5, v6, v5

    .line 20
    .line 21
    aget v6, v6, v2

    .line 22
    .line 23
    aget-object v7, v0, v2

    .line 24
    .line 25
    sub-int v3, v6, v3

    .line 26
    .line 27
    add-int/2addr v3, v5

    .line 28
    :goto_1b
    if-ge v5, v3, :cond_25

    .line 29
    .line 30
    mul-int/lit8 v4, v4, 0x1f

    .line 31
    .line 32
    aget-byte v8, v7, v5

    .line 33
    .line 34
    add-int/2addr v4, v8

    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_1b

    .line 38
    :cond_25
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    move v3, v6

    .line 41
    goto :goto_c

    .line 42
    :cond_29
    iput v4, p0, Le8/j;->b:I

    .line 43
    .line 44
    return v4
.end method

.method public final i(Le8/g;I)V
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lf8/b;->b(Le8/t;I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    move v2, v0

    .line 7
    :goto_6
    if-ge v2, p2, :cond_45

    .line 8
    .line 9
    iget-object v3, p0, Le8/t;->f:[I

    .line 10
    .line 11
    if-nez v1, :cond_e

    .line 12
    .line 13
    move v4, v0

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    add-int/lit8 v4, v1, -0x1

    .line 16
    .line 17
    aget v4, v3, v4

    .line 18
    .line 19
    :goto_12
    aget v5, v3, v1

    .line 20
    .line 21
    sub-int/2addr v5, v4

    .line 22
    iget-object v6, p0, Le8/t;->e:[[B

    .line 23
    .line 24
    array-length v7, v6

    .line 25
    add-int/2addr v7, v1

    .line 26
    aget v3, v3, v7

    .line 27
    .line 28
    add-int/2addr v5, v4

    .line 29
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    sub-int/2addr v5, v2

    .line 34
    sub-int v4, v2, v4

    .line 35
    .line 36
    add-int/2addr v4, v3

    .line 37
    aget-object v3, v6, v1

    .line 38
    .line 39
    new-instance v6, Le8/r;

    .line 40
    .line 41
    add-int v7, v4, v5

    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    invoke-direct {v6, v3, v4, v7, v8}, Le8/r;-><init>([BIIZ)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p1, Le8/g;->a:Le8/r;

    .line 48
    .line 49
    if-nez v3, :cond_39

    .line 50
    .line 51
    iput-object v6, v6, Le8/r;->g:Le8/r;

    .line 52
    .line 53
    iput-object v6, v6, Le8/r;->f:Le8/r;

    .line 54
    .line 55
    iput-object v6, p1, Le8/g;->a:Le8/r;

    .line 56
    .line 57
    goto :goto_41

    .line 58
    :cond_39
    iget-object v3, v3, Le8/r;->g:Le8/r;

    .line 59
    .line 60
    invoke-static {v3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v6}, Le8/r;->b(Le8/r;)V

    .line 64
    .line 65
    .line 66
    :goto_41
    add-int/2addr v2, v5

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_6

    .line 70
    :cond_45
    iget-wide v0, p1, Le8/g;->b:J

    .line 71
    .line 72
    int-to-long v2, p2

    .line 73
    add-long/2addr v0, v2

    .line 74
    iput-wide v0, p1, Le8/g;->b:J

    .line 75
    .line 76
    return-void
.end method

.method public final j()[B
    .registers 11

    .line 1
    invoke-virtual {p0}, Le8/t;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iget-object v1, p0, Le8/t;->e:[[B

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    move v5, v4

    .line 13
    :goto_c
    if-ge v3, v2, :cond_24

    .line 14
    .line 15
    add-int v6, v2, v3

    .line 16
    .line 17
    iget-object v7, p0, Le8/t;->f:[I

    .line 18
    .line 19
    aget v6, v7, v6

    .line 20
    .line 21
    aget v7, v7, v3

    .line 22
    .line 23
    aget-object v8, v1, v3

    .line 24
    .line 25
    sub-int v4, v7, v4

    .line 26
    .line 27
    add-int v9, v6, v4

    .line 28
    .line 29
    invoke-static {v5, v6, v9, v8, v0}, Ls6/f;->j(III[B[B)V

    .line 30
    .line 31
    .line 32
    add-int/2addr v5, v4

    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    move v4, v7

    .line 36
    goto :goto_c

    .line 37
    :cond_24
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Le8/j;

    .line 2
    .line 3
    invoke-virtual {p0}, Le8/t;->j()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Le8/j;-><init>([B)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Le8/j;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
