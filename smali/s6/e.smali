###### Class s6.e (s6.e)
.class public final Ls6/e;
.super Ljava/util/AbstractList;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/List;
.implements Le7/b;


# static fields
.field public static final d:[Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v0, Ls6/e;->d:[Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ls6/e;->d:[Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/Collection;)V
    .registers 7

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    :goto_7
    if-ge p1, v1, :cond_1a

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1a

    .line 15
    .line 16
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v2, p1

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    goto :goto_7

    .line 27
    :cond_1a
    iget p1, p0, Ls6/e;->a:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1d
    if-ge v1, p1, :cond_30

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_30

    .line 37
    .line 38
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    aput-object v3, v2, v1

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_1d

    .line 49
    :cond_30
    iget p1, p0, Ls6/e;->c:I

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    add-int/2addr p2, p1

    .line 56
    iput p2, p0, Ls6/e;->c:I

    .line 57
    .line 58
    return-void
.end method

.method public final add(ILjava/lang/Object;)V
    .registers 10

    .line 1
    iget v0, p0, Ls6/e;->c:I

    if-ltz p1, :cond_9c

    if-gt p1, v0, :cond_9c

    if-ne p1, v0, :cond_c

    .line 2
    invoke-virtual {p0, p2}, Ls6/e;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_c
    if-nez p1, :cond_12

    .line 3
    invoke-virtual {p0, p2}, Ls6/e;->addFirst(Ljava/lang/Object;)V

    return-void

    :cond_12
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0, v0}, Ls6/e;->b(I)V

    .line 5
    iget v0, p0, Ls6/e;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ls6/e;->d(I)I

    move-result v0

    .line 6
    iget v2, p0, Ls6/e;->c:I

    add-int/lit8 v3, v2, 0x1

    shr-int/2addr v3, v1

    const/4 v4, 0x0

    if-ge p1, v3, :cond_6d

    .line 7
    const-string p1, "<this>"

    if-nez v0, :cond_30

    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    invoke-static {p1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    array-length v0, v0

    :cond_30
    sub-int/2addr v0, v1

    .line 9
    iget v2, p0, Ls6/e;->a:I

    if-nez v2, :cond_3d

    .line 10
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    invoke-static {p1, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    array-length p1, v2

    sub-int/2addr p1, v1

    goto :goto_3f

    :cond_3d
    add-int/lit8 p1, v2, -0x1

    .line 12
    :goto_3f
    iget v2, p0, Ls6/e;->a:I

    if-lt v0, v2, :cond_51

    .line 13
    iget-object v3, p0, Ls6/e;->b:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, p1

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 14
    invoke-static {v2, v4, v5, v3, v3}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_66

    .line 15
    :cond_51
    iget-object v3, p0, Ls6/e;->b:[Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    array-length v6, v3

    invoke-static {v5, v2, v6, v3, v3}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 16
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length v3, v2

    sub-int/2addr v3, v1

    aget-object v5, v2, v4

    aput-object v5, v2, v3

    add-int/lit8 v3, v0, 0x1

    .line 17
    invoke-static {v4, v1, v3, v2, v2}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 18
    :goto_66
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 19
    iput p1, p0, Ls6/e;->a:I

    goto :goto_96

    .line 20
    :cond_6d
    iget p1, p0, Ls6/e;->a:I

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Ls6/e;->d(I)I

    move-result p1

    if-ge v0, p1, :cond_7e

    .line 21
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3, v0, p1, v2, v2}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_92

    .line 22
    :cond_7e
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    invoke-static {v1, v4, p1, v2, v2}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aput-object v2, p1, v4

    add-int/lit8 v2, v0, 0x1

    .line 24
    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {v2, v0, v3, p1, p1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 25
    :goto_92
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 26
    :goto_96
    iget p1, p0, Ls6/e;->c:I

    add-int/2addr p1, v1

    .line 27
    iput p1, p0, Ls6/e;->c:I

    return-void

    .line 28
    :cond_9c
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    .line 29
    invoke-static {p1, v0, v1, v2}, Lq2/x;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Ls6/e;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 11

    const-string v0, "elements"

    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    iget v0, p0, Ls6/e;->c:I

    if-ltz p1, :cond_d8

    if-gt p1, v0, :cond_d8

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    return v1

    .line 3
    :cond_13
    iget v0, p0, Ls6/e;->c:I

    if-ne p1, v0, :cond_1c

    .line 4
    invoke-virtual {p0, p2}, Ls6/e;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 5
    :cond_1c
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ls6/e;->b(I)V

    .line 6
    iget v0, p0, Ls6/e;->a:I

    .line 7
    iget v2, p0, Ls6/e;->c:I

    add-int/2addr v0, v2

    .line 8
    invoke-virtual {p0, v0}, Ls6/e;->d(I)I

    move-result v0

    .line 9
    iget v2, p0, Ls6/e;->a:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Ls6/e;->d(I)I

    move-result v2

    .line 10
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    .line 11
    iget v4, p0, Ls6/e;->c:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_92

    .line 12
    iget p1, p0, Ls6/e;->a:I

    sub-int v0, p1, v3

    if-lt v2, p1, :cond_69

    if-ltz v0, :cond_4d

    .line 13
    iget-object v1, p0, Ls6/e;->b:[Ljava/lang/Object;

    invoke-static {v0, p1, v2, v1, v1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_85

    .line 14
    :cond_4d
    iget-object v4, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length v6, v4

    add-int/2addr v0, v6

    sub-int v6, v2, p1

    .line 15
    array-length v7, v4

    sub-int/2addr v7, v0

    if-lt v7, v6, :cond_5b

    .line 16
    invoke-static {v0, p1, v2, v4, v4}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_85

    :cond_5b
    add-int v6, p1, v7

    .line 17
    invoke-static {v0, p1, v6, v4, v4}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    iget v4, p0, Ls6/e;->a:I

    add-int/2addr v4, v7

    invoke-static {v1, v4, v2, p1, p1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_85

    .line 19
    :cond_69
    iget-object v4, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v0, p1, v6, v4, v4}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    if-lt v3, v2, :cond_79

    .line 20
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {v4, v1, v2, p1, p1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_85

    .line 21
    :cond_79
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {v4, v1, v3, p1, p1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    invoke-static {v1, v3, v2, p1, p1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 23
    :goto_85
    iput v0, p0, Ls6/e;->a:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_8e

    .line 24
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v2, p1

    .line 25
    :cond_8e
    invoke-virtual {p0, v2, p2}, Ls6/e;->a(ILjava/util/Collection;)V

    return v5

    :cond_92
    add-int p1, v2, v3

    if-ge v2, v0, :cond_b6

    add-int/2addr v3, v0

    .line 26
    iget-object v4, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length v6, v4

    if-gt v3, v6, :cond_a0

    .line 27
    invoke-static {p1, v2, v0, v4, v4}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_d4

    .line 28
    :cond_a0
    array-length v6, v4

    if-lt p1, v6, :cond_a9

    .line 29
    array-length v1, v4

    sub-int/2addr p1, v1

    invoke-static {p1, v2, v0, v4, v4}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_d4

    .line 30
    :cond_a9
    array-length v6, v4

    sub-int/2addr v3, v6

    sub-int v3, v0, v3

    .line 31
    invoke-static {v1, v3, v0, v4, v4}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    invoke-static {p1, v2, v3, v0, v0}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_d4

    .line 33
    :cond_b6
    iget-object v4, p0, Ls6/e;->b:[Ljava/lang/Object;

    invoke-static {v3, v1, v0, v4, v4}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length v4, v0

    if-lt p1, v4, :cond_c7

    .line 35
    array-length v1, v0

    sub-int/2addr p1, v1

    array-length v1, v0

    invoke-static {p1, v2, v1, v0, v0}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_d4

    .line 36
    :cond_c7
    array-length v4, v0

    sub-int/2addr v4, v3

    array-length v6, v0

    invoke-static {v1, v4, v6, v0, v0}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {p1, v2, v1, v0, v0}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 38
    :goto_d4
    invoke-virtual {p0, v2, p2}, Ls6/e;->a(ILjava/util/Collection;)V

    return v5

    .line 39
    :cond_d8
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    .line 40
    invoke-static {p1, v0, v1, v2}, Lq2/x;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 4

    const-string v0, "elements"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_d
    iget v0, p0, Ls6/e;->c:I

    .line 50
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ls6/e;->b(I)V

    .line 51
    iget v0, p0, Ls6/e;->a:I

    .line 52
    iget v1, p0, Ls6/e;->c:I

    add-int/2addr v0, v1

    .line 53
    invoke-virtual {p0, v0}, Ls6/e;->d(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ls6/e;->a(ILjava/util/Collection;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget v0, p0, Ls6/e;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ls6/e;->b(I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Ls6/e;->a:I

    .line 9
    .line 10
    if-nez v0, :cond_13

    .line 11
    .line 12
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 13
    .line 14
    const-string v1, "<this>"

    .line 15
    .line 16
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    array-length v0, v0

    .line 20
    :cond_13
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    iput v0, p0, Ls6/e;->a:I

    .line 23
    .line 24
    iget-object v1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 25
    .line 26
    aput-object p1, v1, v0

    .line 27
    .line 28
    iget p1, p0, Ls6/e;->c:I

    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    iput p1, p0, Ls6/e;->c:I

    .line 33
    .line 34
    return-void
.end method

.method public final addLast(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget v0, p0, Ls6/e;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ls6/e;->b(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v1, p0, Ls6/e;->a:I

    .line 11
    .line 12
    iget v2, p0, Ls6/e;->c:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    invoke-virtual {p0, v1}, Ls6/e;->d(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    aput-object p1, v0, v1

    .line 20
    .line 21
    iget p1, p0, Ls6/e;->c:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    iput p1, p0, Ls6/e;->c:I

    .line 26
    .line 27
    return-void
.end method

.method public final b(I)V
    .registers 6

    .line 1
    if-ltz p1, :cond_44

    .line 2
    .line 3
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-gt p1, v1, :cond_8

    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    sget-object v1, Ls6/e;->d:[Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_16

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    if-ge p1, v0, :cond_11

    .line 16
    .line 17
    move p1, v0

    .line 18
    :cond_11
    new-array p1, p1, [Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    array-length v1, v0

    .line 24
    shr-int/lit8 v2, v1, 0x1

    .line 25
    .line 26
    add-int/2addr v1, v2

    .line 27
    sub-int v2, v1, p1

    .line 28
    .line 29
    if-gez v2, :cond_1f

    .line 30
    .line 31
    move v1, p1

    .line 32
    :cond_1f
    const v2, 0x7ffffff7

    .line 33
    .line 34
    .line 35
    sub-int v3, v1, v2

    .line 36
    .line 37
    if-lez v3, :cond_2d

    .line 38
    .line 39
    if-le p1, v2, :cond_2c

    .line 40
    .line 41
    const v1, 0x7fffffff

    .line 42
    .line 43
    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v1, v2

    .line 46
    :cond_2d
    :goto_2d
    new-array p1, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    iget v1, p0, Ls6/e;->a:I

    .line 49
    .line 50
    array-length v2, v0

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {v3, v1, v2, v0, p1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 56
    .line 57
    array-length v1, v0

    .line 58
    iget v2, p0, Ls6/e;->a:I

    .line 59
    .line 60
    sub-int/2addr v1, v2

    .line 61
    invoke-static {v1, v3, v2, v0, p1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput v3, p0, Ls6/e;->a:I

    .line 65
    .line 66
    iput-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 67
    .line 68
    return-void

    .line 69
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v0, "Deque is too big."

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public final c(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    array-length v0, v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_e

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_e
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    return p1
.end method

.method public final clear()V
    .registers 6

    .line 1
    iget v0, p0, Ls6/e;->a:I

    .line 2
    .line 3
    iget v1, p0, Ls6/e;->c:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0, v0}, Ls6/e;->d(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Ls6/e;->a:I

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-ge v1, v0, :cond_14

    .line 14
    .line 15
    iget-object v3, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {v3, v1, v0}, Ls6/f;->n([Ljava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    goto :goto_27

    .line 21
    :cond_14
    invoke-virtual {p0}, Ls6/e;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_27

    .line 26
    .line 27
    iget-object v1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 28
    .line 29
    iget v3, p0, Ls6/e;->a:I

    .line 30
    .line 31
    array-length v4, v1

    .line 32
    invoke-static {v1, v3, v4}, Ls6/f;->n([Ljava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v1, v2, v0}, Ls6/f;->n([Ljava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    :cond_27
    :goto_27
    iput v2, p0, Ls6/e;->a:I

    .line 41
    .line 42
    iput v2, p0, Ls6/e;->c:I

    .line 43
    .line 44
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Ls6/e;->indexOf(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_9

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public final d(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lt p1, v1, :cond_7

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    sub-int/2addr p1, v0

    .line 8
    :cond_7
    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Ls6/e;->c:I

    .line 2
    .line 3
    if-ltz p1, :cond_12

    .line 4
    .line 5
    if-ge p1, v0, :cond_12

    .line 6
    .line 7
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v1, p0, Ls6/e;->a:I

    .line 10
    .line 11
    add-int/2addr v1, p1

    .line 12
    invoke-virtual {p0, v1}, Ls6/e;->d(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    aget-object p1, v0, p1

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_12
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 20
    .line 21
    const-string v2, "index: "

    .line 22
    .line 23
    const-string v3, ", size: "

    .line 24
    .line 25
    invoke-static {p1, v0, v2, v3}, Lq2/x;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 6

    .line 1
    iget v0, p0, Ls6/e;->a:I

    .line 2
    .line 3
    iget v1, p0, Ls6/e;->c:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0, v0}, Ls6/e;->d(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Ls6/e;->a:I

    .line 11
    .line 12
    if-ge v1, v0, :cond_20

    .line 13
    .line 14
    :goto_d
    if-ge v1, v0, :cond_4e

    .line 15
    .line 16
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    invoke-static {p1, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1d

    .line 25
    .line 26
    iget p1, p0, Ls6/e;->a:I

    .line 27
    .line 28
    :goto_1b
    sub-int/2addr v1, p1

    .line 29
    return v1

    .line 30
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_d

    .line 33
    :cond_20
    if-lt v1, v0, :cond_4e

    .line 34
    .line 35
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 36
    .line 37
    array-length v2, v2

    .line 38
    :goto_25
    if-ge v1, v2, :cond_37

    .line 39
    .line 40
    iget-object v3, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 41
    .line 42
    aget-object v3, v3, v1

    .line 43
    .line 44
    invoke-static {p1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_34

    .line 49
    .line 50
    iget p1, p0, Ls6/e;->a:I

    .line 51
    .line 52
    goto :goto_1b

    .line 53
    :cond_34
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_25

    .line 56
    :cond_37
    const/4 v1, 0x0

    .line 57
    :goto_38
    if-ge v1, v0, :cond_4e

    .line 58
    .line 59
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 60
    .line 61
    aget-object v2, v2, v1

    .line 62
    .line 63
    invoke-static {p1, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_4b

    .line 68
    .line 69
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 70
    .line 71
    array-length p1, p1

    .line 72
    add-int/2addr v1, p1

    .line 73
    iget p1, p0, Ls6/e;->a:I

    .line 74
    .line 75
    goto :goto_1b

    .line 76
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_38

    .line 79
    :cond_4e
    const/4 p1, -0x1

    .line 80
    return p1
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget v0, p0, Ls6/e;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 6

    .line 1
    iget v0, p0, Ls6/e;->a:I

    .line 2
    .line 3
    iget v1, p0, Ls6/e;->c:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0, v0}, Ls6/e;->d(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Ls6/e;->a:I

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    if-ge v1, v0, :cond_25

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    if-gt v1, v0, :cond_5f

    .line 18
    .line 19
    :goto_12
    iget-object v3, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v3, v3, v0

    .line 22
    .line 23
    invoke-static {p1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_20

    .line 28
    .line 29
    iget p1, p0, Ls6/e;->a:I

    .line 30
    .line 31
    :goto_1e
    sub-int/2addr v0, p1

    .line 32
    return v0

    .line 33
    :cond_20
    if-eq v0, v1, :cond_5f

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    goto :goto_12

    .line 38
    :cond_25
    if-le v1, v0, :cond_5f

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    :goto_29
    if-ge v2, v0, :cond_3f

    .line 43
    .line 44
    iget-object v1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 45
    .line 46
    aget-object v1, v1, v0

    .line 47
    .line 48
    invoke-static {p1, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3c

    .line 53
    .line 54
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 55
    .line 56
    array-length p1, p1

    .line 57
    add-int/2addr v0, p1

    .line 58
    iget p1, p0, Ls6/e;->a:I

    .line 59
    .line 60
    goto :goto_1e

    .line 61
    :cond_3c
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    goto :goto_29

    .line 64
    :cond_3f
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 65
    .line 66
    const-string v1, "<this>"

    .line 67
    .line 68
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    array-length v0, v0

    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 73
    .line 74
    iget v1, p0, Ls6/e;->a:I

    .line 75
    .line 76
    if-gt v1, v0, :cond_5f

    .line 77
    .line 78
    :goto_4d
    iget-object v3, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 79
    .line 80
    aget-object v3, v3, v0

    .line 81
    .line 82
    invoke-static {p1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_5a

    .line 87
    .line 88
    iget p1, p0, Ls6/e;->a:I

    .line 89
    .line 90
    goto :goto_1e

    .line 91
    :cond_5a
    if-eq v0, v1, :cond_5f

    .line 92
    .line 93
    add-int/lit8 v0, v0, -0x1

    .line 94
    .line 95
    goto :goto_4d

    .line 96
    :cond_5f
    return v2
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 10

    .line 1
    iget v0, p0, Ls6/e;->c:I

    if-ltz p1, :cond_8c

    if-ge p1, v0, :cond_8c

    .line 2
    invoke-static {p0}, Ls6/h;->j(Ljava/util/List;)I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 3
    invoke-virtual {p0}, Ls6/e;->removeLast()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_11
    if-nez p1, :cond_18

    .line 4
    invoke-virtual {p0}, Ls6/e;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_18
    iget v0, p0, Ls6/e;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ls6/e;->d(I)I

    move-result v0

    .line 6
    iget-object v1, p0, Ls6/e;->b:[Ljava/lang/Object;

    aget-object v2, v1, v0

    .line 7
    iget v3, p0, Ls6/e;->c:I

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ge p1, v3, :cond_56

    .line 8
    iget p1, p0, Ls6/e;->a:I

    if-lt v0, p1, :cond_35

    add-int/lit8 v3, p1, 0x1

    .line 9
    invoke-static {v3, p1, v0, v1, v1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_49

    .line 10
    :cond_35
    invoke-static {v4, v6, v0, v1, v1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length v0, p1

    sub-int/2addr v0, v4

    aget-object v0, p1, v0

    aput-object v0, p1, v6

    .line 12
    iget v0, p0, Ls6/e;->a:I

    add-int/lit8 v1, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v4

    invoke-static {v1, v0, v3, p1, p1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 13
    :goto_49
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    iget v0, p0, Ls6/e;->a:I

    aput-object v5, p1, v0

    .line 14
    invoke-virtual {p0, v0}, Ls6/e;->c(I)I

    move-result p1

    iput p1, p0, Ls6/e;->a:I

    goto :goto_86

    .line 15
    :cond_56
    iget p1, p0, Ls6/e;->a:I

    invoke-static {p0}, Ls6/h;->j(Ljava/util/List;)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ls6/e;->d(I)I

    move-result p1

    if-gt v0, p1, :cond_6d

    .line 16
    iget-object v1, p0, Ls6/e;->b:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v6, p1, 0x1

    invoke-static {v0, v3, v6, v1, v1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_82

    .line 17
    :cond_6d
    iget-object v1, p0, Ls6/e;->b:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    array-length v7, v1

    invoke-static {v0, v3, v7, v1, v1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length v1, v0

    sub-int/2addr v1, v4

    aget-object v3, v0, v6

    aput-object v3, v0, v1

    add-int/lit8 v1, p1, 0x1

    .line 19
    invoke-static {v6, v4, v1, v0, v0}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 20
    :goto_82
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    aput-object v5, v0, p1

    .line 21
    :goto_86
    iget p1, p0, Ls6/e;->c:I

    sub-int/2addr p1, v4

    .line 22
    iput p1, p0, Ls6/e;->c:I

    return-object v2

    .line 23
    :cond_8c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "index: "

    const-string v3, ", size: "

    .line 24
    invoke-static {p1, v0, v2, v3}, Lq2/x;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    .line 32
    invoke-virtual {p0, p1}, Ls6/e;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    return p1

    .line 33
    :cond_9
    invoke-virtual {p0, p1}, Ls6/e;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 12

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ls6/e;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_8e

    .line 12
    .line 13
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    if-nez v0, :cond_13

    .line 17
    .line 18
    goto/16 :goto_8e

    .line 19
    .line 20
    :cond_13
    iget v0, p0, Ls6/e;->a:I

    .line 21
    .line 22
    iget v2, p0, Ls6/e;->c:I

    .line 23
    .line 24
    add-int/2addr v0, v2

    .line 25
    invoke-virtual {p0, v0}, Ls6/e;->d(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v2, p0, Ls6/e;->a:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-ge v2, v0, :cond_40

    .line 33
    .line 34
    move v4, v2

    .line 35
    :goto_22
    if-ge v2, v0, :cond_3a

    .line 36
    .line 37
    iget-object v5, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 38
    .line 39
    aget-object v5, v5, v2

    .line 40
    .line 41
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-nez v6, :cond_36

    .line 46
    .line 47
    iget-object v6, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 48
    .line 49
    add-int/lit8 v7, v4, 0x1

    .line 50
    .line 51
    aput-object v5, v6, v4

    .line 52
    .line 53
    move v4, v7

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v1, v3

    .line 56
    :goto_37
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_22

    .line 59
    :cond_3a
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {p1, v4, v0}, Ls6/f;->n([Ljava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    goto :goto_81

    .line 65
    :cond_40
    iget-object v4, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 66
    .line 67
    array-length v4, v4

    .line 68
    move v6, v1

    .line 69
    move v5, v2

    .line 70
    :goto_45
    const/4 v7, 0x0

    .line 71
    if-ge v2, v4, :cond_60

    .line 72
    .line 73
    iget-object v8, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 74
    .line 75
    aget-object v9, v8, v2

    .line 76
    .line 77
    aput-object v7, v8, v2

    .line 78
    .line 79
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-nez v7, :cond_5c

    .line 84
    .line 85
    iget-object v7, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 86
    .line 87
    add-int/lit8 v8, v5, 0x1

    .line 88
    .line 89
    aput-object v9, v7, v5

    .line 90
    .line 91
    move v5, v8

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move v6, v3

    .line 94
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_45

    .line 97
    :cond_60
    invoke-virtual {p0, v5}, Ls6/e;->d(I)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    move v4, v2

    .line 102
    :goto_65
    if-ge v1, v0, :cond_80

    .line 103
    .line 104
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 105
    .line 106
    aget-object v5, v2, v1

    .line 107
    .line 108
    aput-object v7, v2, v1

    .line 109
    .line 110
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_7c

    .line 115
    .line 116
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v5, v2, v4

    .line 119
    .line 120
    invoke-virtual {p0, v4}, Ls6/e;->c(I)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    goto :goto_7d

    .line 125
    :cond_7c
    move v6, v3

    .line 126
    :goto_7d
    add-int/lit8 v1, v1, 0x1

    .line 127
    .line 128
    goto :goto_65

    .line 129
    :cond_80
    move v1, v6

    .line 130
    :goto_81
    if-eqz v1, :cond_8e

    .line 131
    .line 132
    iget p1, p0, Ls6/e;->a:I

    .line 133
    .line 134
    sub-int/2addr v4, p1

    .line 135
    if-gez v4, :cond_8c

    .line 136
    .line 137
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 138
    .line 139
    array-length p1, p1

    .line 140
    add-int/2addr v4, p1

    .line 141
    :cond_8c
    iput v4, p0, Ls6/e;->c:I

    .line 142
    .line 143
    :cond_8e
    :goto_8e
    return v1
.end method

.method public final removeFirst()Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ls6/e;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1c

    .line 6
    .line 7
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v1, p0, Ls6/e;->a:I

    .line 10
    .line 11
    aget-object v2, v0, v1

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v3, v0, v1

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ls6/e;->c(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Ls6/e;->a:I

    .line 21
    .line 22
    iget v0, p0, Ls6/e;->c:I

    .line 23
    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    iput v0, p0, Ls6/e;->c:I

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 30
    .line 31
    const-string v1, "ArrayDeque is empty."

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public final removeLast()Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ls6/e;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1f

    .line 6
    .line 7
    iget v0, p0, Ls6/e;->a:I

    .line 8
    .line 9
    invoke-static {p0}, Ls6/h;->j(Ljava/util/List;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0, v1}, Ls6/e;->d(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v2, v1, v0

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v3, v1, v0

    .line 24
    .line 25
    iget v0, p0, Ls6/e;->c:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    iput v0, p0, Ls6/e;->c:I

    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_1f
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 33
    .line 34
    const-string v1, "ArrayDeque is empty."

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 12

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ls6/e;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_8e

    .line 12
    .line 13
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    if-nez v0, :cond_13

    .line 17
    .line 18
    goto/16 :goto_8e

    .line 19
    .line 20
    :cond_13
    iget v0, p0, Ls6/e;->a:I

    .line 21
    .line 22
    iget v2, p0, Ls6/e;->c:I

    .line 23
    .line 24
    add-int/2addr v0, v2

    .line 25
    invoke-virtual {p0, v0}, Ls6/e;->d(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v2, p0, Ls6/e;->a:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-ge v2, v0, :cond_40

    .line 33
    .line 34
    move v4, v2

    .line 35
    :goto_22
    if-ge v2, v0, :cond_3a

    .line 36
    .line 37
    iget-object v5, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 38
    .line 39
    aget-object v5, v5, v2

    .line 40
    .line 41
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_36

    .line 46
    .line 47
    iget-object v6, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 48
    .line 49
    add-int/lit8 v7, v4, 0x1

    .line 50
    .line 51
    aput-object v5, v6, v4

    .line 52
    .line 53
    move v4, v7

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v1, v3

    .line 56
    :goto_37
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_22

    .line 59
    :cond_3a
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {p1, v4, v0}, Ls6/f;->n([Ljava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    goto :goto_81

    .line 65
    :cond_40
    iget-object v4, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 66
    .line 67
    array-length v4, v4

    .line 68
    move v6, v1

    .line 69
    move v5, v2

    .line 70
    :goto_45
    const/4 v7, 0x0

    .line 71
    if-ge v2, v4, :cond_60

    .line 72
    .line 73
    iget-object v8, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 74
    .line 75
    aget-object v9, v8, v2

    .line 76
    .line 77
    aput-object v7, v8, v2

    .line 78
    .line 79
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_5c

    .line 84
    .line 85
    iget-object v7, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 86
    .line 87
    add-int/lit8 v8, v5, 0x1

    .line 88
    .line 89
    aput-object v9, v7, v5

    .line 90
    .line 91
    move v5, v8

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move v6, v3

    .line 94
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_45

    .line 97
    :cond_60
    invoke-virtual {p0, v5}, Ls6/e;->d(I)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    move v4, v2

    .line 102
    :goto_65
    if-ge v1, v0, :cond_80

    .line 103
    .line 104
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 105
    .line 106
    aget-object v5, v2, v1

    .line 107
    .line 108
    aput-object v7, v2, v1

    .line 109
    .line 110
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_7c

    .line 115
    .line 116
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v5, v2, v4

    .line 119
    .line 120
    invoke-virtual {p0, v4}, Ls6/e;->c(I)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    goto :goto_7d

    .line 125
    :cond_7c
    move v6, v3

    .line 126
    :goto_7d
    add-int/lit8 v1, v1, 0x1

    .line 127
    .line 128
    goto :goto_65

    .line 129
    :cond_80
    move v1, v6

    .line 130
    :goto_81
    if-eqz v1, :cond_8e

    .line 131
    .line 132
    iget p1, p0, Ls6/e;->a:I

    .line 133
    .line 134
    sub-int/2addr v4, p1

    .line 135
    if-gez v4, :cond_8c

    .line 136
    .line 137
    iget-object p1, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 138
    .line 139
    array-length p1, p1

    .line 140
    add-int/2addr v4, p1

    .line 141
    :cond_8c
    iput v4, p0, Ls6/e;->c:I

    .line 142
    .line 143
    :cond_8e
    :goto_8e
    return v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Ls6/e;->c:I

    .line 2
    .line 3
    if-ltz p1, :cond_14

    .line 4
    .line 5
    if-ge p1, v0, :cond_14

    .line 6
    .line 7
    iget v0, p0, Ls6/e;->a:I

    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    invoke-virtual {p0, v0}, Ls6/e;->d(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Ls6/e;->b:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v1, v0, p1

    .line 17
    .line 18
    aput-object p2, v0, p1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_14
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 22
    .line 23
    const-string v1, "index: "

    .line 24
    .line 25
    const-string v2, ", size: "

    .line 26
    .line 27
    invoke-static {p1, v0, v1, v2}, Lq2/x;->e(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p2
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Ls6/e;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Ls6/e;->c:I

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ls6/e;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7

    const-string v0, "array"

    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    array-length v0, p1

    .line 4
    iget v1, p0, Ls6/e;->c:I

    if-lt v0, v1, :cond_b

    goto :goto_1e

    .line 5
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>"

    invoke-static {v0, p1}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, [Ljava/lang/Object;

    .line 6
    :goto_1e
    iget v0, p0, Ls6/e;->a:I

    .line 7
    iget v1, p0, Ls6/e;->c:I

    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0, v0}, Ls6/e;->d(I)I

    move-result v0

    .line 9
    iget v1, p0, Ls6/e;->a:I

    if-ge v1, v0, :cond_32

    .line 10
    iget-object v2, p0, Ls6/e;->b:[Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v1, v0, v3, v2, p1}, Ls6/f;->m(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4a

    .line 11
    :cond_32
    invoke-virtual {p0}, Ls6/e;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 12
    iget-object v1, p0, Ls6/e;->b:[Ljava/lang/Object;

    iget v2, p0, Ls6/e;->a:I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v4, v2, v3, v1, p1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 13
    iget-object v1, p0, Ls6/e;->b:[Ljava/lang/Object;

    array-length v2, v1

    iget v3, p0, Ls6/e;->a:I

    sub-int/2addr v2, v3

    invoke-static {v2, v4, v0, v1, p1}, Ls6/f;->l(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 14
    :cond_4a
    :goto_4a
    iget v0, p0, Ls6/e;->c:I

    .line 15
    array-length v1, p1

    if-ge v0, v1, :cond_52

    const/4 v1, 0x0

    .line 16
    aput-object v1, p1, v0

    :cond_52
    return-object p1
.end method
