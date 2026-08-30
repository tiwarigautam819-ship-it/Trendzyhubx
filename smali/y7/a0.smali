###### Class y7.a0 (y7.a0)
.class public final Ly7/a0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:I

.field public final b:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Ly7/a0;->b:[I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    .line 1
    iget v0, p0, Ly7/a0;->a:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    iget-object v0, p0, Ly7/a0;->b:[I

    .line 8
    .line 9
    const/4 v1, 0x7

    .line 10
    aget v0, v0, v1

    .line 11
    .line 12
    return v0

    .line 13
    :cond_c
    const v0, 0xffff

    .line 14
    .line 15
    .line 16
    return v0
.end method

.method public final b(Ly7/a0;)V
    .registers 7

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_7
    const/16 v2, 0xa

    .line 9
    .line 10
    if-ge v1, v2, :cond_21

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    shl-int v3, v2, v1

    .line 14
    .line 15
    iget v4, p1, Ly7/a0;->a:I

    .line 16
    .line 17
    and-int/2addr v3, v4

    .line 18
    if-eqz v3, :cond_14

    .line 19
    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v2, v0

    .line 22
    :goto_15
    if-eqz v2, :cond_1e

    .line 23
    .line 24
    iget-object v2, p1, Ly7/a0;->b:[I

    .line 25
    .line 26
    aget v2, v2, v1

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2}, Ly7/a0;->c(II)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_7

    .line 34
    :cond_21
    return-void
.end method

.method public final c(II)V
    .registers 6

    .line 1
    if-ltz p1, :cond_11

    .line 2
    .line 3
    iget-object v0, p0, Ly7/a0;->b:[I

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lt p1, v1, :cond_8

    .line 7
    .line 8
    goto :goto_11

    .line 9
    :cond_8
    const/4 v1, 0x1

    .line 10
    shl-int/2addr v1, p1

    .line 11
    iget v2, p0, Ly7/a0;->a:I

    .line 12
    .line 13
    or-int/2addr v1, v2

    .line 14
    iput v1, p0, Ly7/a0;->a:I

    .line 15
    .line 16
    aput p2, v0, p1

    .line 17
    .line 18
    :cond_11
    :goto_11
    return-void
.end method
