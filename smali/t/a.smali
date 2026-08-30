###### Class t.a (t.a)
.class public abstract Lt/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:[I

.field public static final b:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    sput-object v1, Lt/a;->a:[I

    .line 5
    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    sput-object v0, Lt/a;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(II[I)I
    .registers 6

    .line 1
    const-string v0, "array"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 p0, p0, -0x1

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_8
    if-gt v0, p0, :cond_1b

    .line 10
    .line 11
    add-int v1, v0, p0

    .line 12
    .line 13
    ushr-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    aget v2, p2, v1

    .line 16
    .line 17
    if-ge v2, p1, :cond_15

    .line 18
    .line 19
    add-int/lit8 v0, v1, 0x1

    .line 20
    .line 21
    goto :goto_8

    .line 22
    :cond_15
    if-le v2, p1, :cond_1a

    .line 23
    .line 24
    add-int/lit8 p0, v1, -0x1

    .line 25
    .line 26
    goto :goto_8

    .line 27
    :cond_1a
    return v1

    .line 28
    :cond_1b
    not-int p0, v0

    .line 29
    return p0
.end method

.method public static final b([JIJ)I
    .registers 8

    .line 1
    const-string v0, "array"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_8
    if-gt v0, p1, :cond_1d

    .line 10
    .line 11
    add-int v1, v0, p1

    .line 12
    .line 13
    ushr-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    aget-wide v2, p0, v1

    .line 16
    .line 17
    cmp-long v2, v2, p2

    .line 18
    .line 19
    if-gez v2, :cond_17

    .line 20
    .line 21
    add-int/lit8 v0, v1, 0x1

    .line 22
    .line 23
    goto :goto_8

    .line 24
    :cond_17
    if-lez v2, :cond_1c

    .line 25
    .line 26
    add-int/lit8 p1, v1, -0x1

    .line 27
    .line 28
    goto :goto_8

    .line 29
    :cond_1c
    return v1

    .line 30
    :cond_1d
    not-int p0, v0

    .line 31
    return p0
.end method
