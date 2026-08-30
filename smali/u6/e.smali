###### Class u6.e (u6.e)
.class public final Lu6/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lu6/k;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lu6/k;

.field public final b:Lu6/i;


# direct methods
.method public constructor <init>(Lu6/i;Lu6/k;)V
    .registers 4

    .line 1
    const-string v0, "left"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lu6/e;->a:Lu6/k;

    .line 10
    .line 11
    iput-object p1, p0, Lu6/e;->b:Lu6/i;

    .line 12
    .line 13
    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lu6/e;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [Lu6/k;

    .line 6
    .line 7
    new-instance v2, Ld7/j;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lu6/d;

    .line 13
    .line 14
    invoke-direct {v3, v1, v2}, Lu6/d;-><init>([Lu6/k;Ld7/j;)V

    .line 15
    .line 16
    .line 17
    sget-object v4, Lr6/j;->a:Lr6/j;

    .line 18
    .line 19
    invoke-virtual {p0, v4, v3}, Lu6/e;->c(Ljava/lang/Object;Lc7/p;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget v2, v2, Ld7/j;->a:I

    .line 23
    .line 24
    if-ne v2, v0, :cond_1f

    .line 25
    .line 26
    new-instance v0, Lu6/b;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lu6/b;-><init>([Lu6/k;)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v1, "Check failed."

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method


# virtual methods
.method public final b()I
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    move-object v1, p0

    .line 3
    :goto_2
    iget-object v1, v1, Lu6/e;->a:Lu6/k;

    .line 4
    .line 5
    instance-of v2, v1, Lu6/e;

    .line 6
    .line 7
    if-eqz v2, :cond_b

    .line 8
    .line 9
    check-cast v1, Lu6/e;

    .line 10
    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :goto_c
    if-nez v1, :cond_f

    .line 14
    .line 15
    return v0

    .line 16
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_2
.end method

.method public final c(Ljava/lang/Object;Lc7/p;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lu6/e;->a:Lu6/k;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lu6/k;->c(Ljava/lang/Object;Lc7/p;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lu6/e;->b:Lu6/i;

    .line 8
    .line 9
    invoke-interface {p2, p1, v0}, Lc7/p;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    if-eq p0, p1, :cond_46

    .line 2
    .line 3
    instance-of v0, p1, Lu6/e;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_45

    .line 7
    .line 8
    check-cast p1, Lu6/e;

    .line 9
    .line 10
    invoke-virtual {p1}, Lu6/e;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Lu6/e;->b()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ne v0, v2, :cond_45

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    :goto_14
    iget-object v2, v0, Lu6/e;->b:Lu6/i;

    .line 22
    .line 23
    invoke-interface {v2}, Lu6/i;->getKey()Lu6/j;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p1, v3}, Lu6/e;->g(Lu6/j;)Lu6/i;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_26

    .line 36
    .line 37
    move p1, v1

    .line 38
    goto :goto_42

    .line 39
    :cond_26
    iget-object v0, v0, Lu6/e;->a:Lu6/k;

    .line 40
    .line 41
    instance-of v2, v0, Lu6/e;

    .line 42
    .line 43
    if-eqz v2, :cond_2f

    .line 44
    .line 45
    check-cast v0, Lu6/e;

    .line 46
    .line 47
    goto :goto_14

    .line 48
    :cond_2f
    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    .line 49
    .line 50
    invoke-static {v2, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    check-cast v0, Lu6/i;

    .line 54
    .line 55
    invoke-interface {v0}, Lu6/i;->getKey()Lu6/j;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1, v2}, Lu6/e;->g(Lu6/j;)Lu6/i;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, v0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    :goto_42
    if-eqz p1, :cond_45

    .line 68
    .line 69
    goto :goto_46

    .line 70
    :cond_45
    return v1

    .line 71
    :cond_46
    :goto_46
    const/4 p1, 0x1

    .line 72
    return p1
.end method

.method public final g(Lu6/j;)Lu6/i;
    .registers 4

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    :goto_6
    iget-object v1, v0, Lu6/e;->b:Lu6/i;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lu6/k;->g(Lu6/j;)Lu6/i;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_f

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_f
    iget-object v0, v0, Lu6/e;->a:Lu6/k;

    .line 17
    .line 18
    instance-of v1, v0, Lu6/e;

    .line 19
    .line 20
    if-eqz v1, :cond_18

    .line 21
    .line 22
    check-cast v0, Lu6/e;

    .line 23
    .line 24
    goto :goto_6

    .line 25
    :cond_18
    invoke-interface {v0, p1}, Lu6/k;->g(Lu6/j;)Lu6/i;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lu6/e;->a:Lu6/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lu6/e;->b:Lu6/i;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1
.end method

.method public final o(Lu6/j;)Lu6/k;
    .registers 5

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu6/e;->b:Lu6/i;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lu6/k;->g(Lu6/j;)Lu6/i;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lu6/e;->a:Lu6/k;

    .line 13
    .line 14
    if-eqz v1, :cond_10

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_10
    invoke-interface {v2, p1}, Lu6/k;->o(Lu6/j;)Lu6/k;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-ne p1, v2, :cond_17

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_17
    sget-object v1, Lu6/l;->a:Lu6/l;

    .line 25
    .line 26
    if-ne p1, v1, :cond_1c

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1c
    new-instance v1, Lu6/e;

    .line 30
    .line 31
    invoke-direct {v1, v0, p1}, Lu6/e;-><init>(Lu6/i;Lu6/k;)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method

.method public final s(Lu6/k;)Lu6/k;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lt4/b;->j(Lu6/k;Lu6/k;)Lu6/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    sget-object v2, Lu6/c;->c:Lu6/c;

    .line 11
    .line 12
    invoke-virtual {p0, v1, v2}, Lu6/e;->c(Ljava/lang/Object;Lc7/p;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x5d

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
