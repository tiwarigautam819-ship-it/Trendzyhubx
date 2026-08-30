###### Class h6.a (h6.a)
.class public final Lh6/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:[Lg/j;

.field public b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(II)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array v0, p1, [Lg/j;

    .line 5
    .line 6
    iput-object v0, p0, Lh6/a;->a:[Lg/j;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_8
    if-ge v0, p1, :cond_1d

    .line 10
    .line 11
    iget-object v1, p0, Lh6/a;->a:[Lg/j;

    .line 12
    .line 13
    new-instance v2, Lg/j;

    .line 14
    .line 15
    add-int/lit8 v3, p2, 0x4

    .line 16
    .line 17
    mul-int/lit8 v3, v3, 0x11

    .line 18
    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v2, v3, v4}, Lg/j;-><init>(II)V

    .line 23
    .line 24
    .line 25
    aput-object v2, v1, v0

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_8

    .line 30
    :cond_1d
    mul-int/lit8 p2, p2, 0x11

    .line 31
    .line 32
    iput p2, p0, Lh6/a;->d:I

    .line 33
    .line 34
    iput p1, p0, Lh6/a;->c:I

    .line 35
    .line 36
    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lh6/a;->b:I

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a()Lg/j;
    .registers 3

    .line 1
    iget-object v0, p0, Lh6/a;->a:[Lg/j;

    .line 2
    .line 3
    iget v1, p0, Lh6/a;->b:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    return-object v0
.end method

.method public final b(II)[[B
    .registers 14

    .line 1
    iget v0, p0, Lh6/a;->c:I

    .line 2
    .line 3
    mul-int v1, v0, p2

    .line 4
    .line 5
    iget v2, p0, Lh6/a;->d:I

    .line 6
    .line 7
    mul-int/2addr v2, p1

    .line 8
    const/4 v3, 0x2

    .line 9
    new-array v3, v3, [I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput v2, v3, v4

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput v1, v3, v2

    .line 16
    .line 17
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, [[B

    .line 24
    .line 25
    mul-int/2addr v0, p2

    .line 26
    move v3, v2

    .line 27
    :goto_1a
    if-ge v3, v0, :cond_3e

    .line 28
    .line 29
    sub-int v5, v0, v3

    .line 30
    .line 31
    sub-int/2addr v5, v4

    .line 32
    iget-object v6, p0, Lh6/a;->a:[Lg/j;

    .line 33
    .line 34
    div-int v7, v3, p2

    .line 35
    .line 36
    aget-object v6, v6, v7

    .line 37
    .line 38
    iget-object v6, v6, Lg/j;->b:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v6, [B

    .line 41
    .line 42
    array-length v7, v6

    .line 43
    mul-int/2addr v7, p1

    .line 44
    new-array v8, v7, [B

    .line 45
    .line 46
    move v9, v2

    .line 47
    :goto_2e
    if-ge v9, v7, :cond_39

    .line 48
    .line 49
    div-int v10, v9, p1

    .line 50
    .line 51
    aget-byte v10, v6, v10

    .line 52
    .line 53
    aput-byte v10, v8, v9

    .line 54
    .line 55
    add-int/lit8 v9, v9, 0x1

    .line 56
    .line 57
    goto :goto_2e

    .line 58
    :cond_39
    aput-object v8, v1, v5

    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_1a

    .line 63
    :cond_3e
    return-object v1
.end method
