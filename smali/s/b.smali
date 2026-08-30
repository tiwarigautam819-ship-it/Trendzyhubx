###### Class s.b (s.b)
.class public final Ls/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field public final synthetic a:Ls/e;


# direct methods
.method public constructor <init>(Ls/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls/b;->a:Ls/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Ls/b;->a:Ls/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls/j;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Ls/b;->a:Ls/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ls/j;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Ls/b;->a:Ls/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ls/e;->i(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Ls/b;->a:Ls/e;

    .line 2
    .line 3
    if-ne p0, p1, :cond_5

    .line 4
    .line 5
    goto :goto_19

    .line 6
    :cond_5
    instance-of v1, p1, Ljava/util/Set;

    .line 7
    .line 8
    if-eqz v1, :cond_1b

    .line 9
    .line 10
    check-cast p1, Ljava/util/Set;

    .line 11
    .line 12
    :try_start_b
    iget v1, v0, Ls/j;->c:I

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ne v1, v2, :cond_1b

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ls/e;->i(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_17} :catch_1b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_17} :catch_1b

    .line 24
    if-eqz p1, :cond_1b

    .line 25
    .line 26
    :goto_19
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :catch_1b
    :cond_1b
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public final hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Ls/b;->a:Ls/e;

    .line 2
    .line 3
    iget v1, v0, Ls/j;->c:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_8
    if-ltz v1, :cond_1a

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ls/j;->e(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-nez v4, :cond_12

    .line 16
    .line 17
    move v4, v2

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    :goto_16
    add-int/2addr v3, v4

    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    goto :goto_8

    .line 27
    :cond_1a
    return v3
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ls/b;->a:Ls/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls/j;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 4

    .line 1
    new-instance v0, Ls/a;

    .line 2
    .line 3
    iget-object v1, p0, Ls/b;->a:Ls/e;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ls/a;-><init>(Ls/e;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Ls/b;->a:Ls/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ls/j;->c(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_d

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ls/j;->f(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Ls/b;->a:Ls/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ls/e;->j(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Ls/b;->a:Ls/e;

    .line 2
    .line 3
    iget v1, v0, Ls/j;->c:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, -0x1

    .line 6
    .line 7
    :goto_6
    if-ltz v2, :cond_18

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Ls/j;->e(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_15

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ls/j;->f(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_15
    add-int/lit8 v2, v2, -0x1

    .line 23
    .line 24
    goto :goto_6

    .line 25
    :cond_18
    iget p1, v0, Ls/j;->c:I

    .line 26
    .line 27
    if-eq v1, p1, :cond_1e

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Ls/b;->a:Ls/e;

    .line 2
    .line 3
    iget v0, v0, Ls/j;->c:I

    .line 4
    .line 5
    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Ls/b;->a:Ls/e;

    iget v1, v0, Ls/j;->c:I

    .line 2
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_12

    .line 3
    invoke-virtual {v0, v3}, Ls/j;->e(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_12
    return-object v2
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    .line 4
    iget-object v0, p0, Ls/b;->a:Ls/e;

    iget v1, v0, Ls/j;->c:I

    .line 5
    array-length v2, p1

    if-ge v2, v1, :cond_15

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_15
    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_21

    .line 7
    invoke-virtual {v0, v2}, Ls/j;->e(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 8
    :cond_21
    array-length v0, p1

    if-le v0, v1, :cond_27

    const/4 v0, 0x0

    .line 9
    aput-object v0, p1, v1

    :cond_27
    return-object p1
.end method
