###### Class j0.z0 (j0.z0)
.class public Lj0/z0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final b:Lj0/b1;


# instance fields
.field public final a:Lj0/b1;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_c

    .line 6
    .line 7
    new-instance v0, Lj0/s0;

    .line 8
    .line 9
    invoke-direct {v0}, Lj0/s0;-><init>()V

    .line 10
    .line 11
    .line 12
    goto :goto_1b

    .line 13
    :cond_c
    const/16 v1, 0x1d

    .line 14
    .line 15
    if-lt v0, v1, :cond_16

    .line 16
    .line 17
    new-instance v0, Lj0/r0;

    .line 18
    .line 19
    invoke-direct {v0}, Lj0/r0;-><init>()V

    .line 20
    .line 21
    .line 22
    goto :goto_1b

    .line 23
    :cond_16
    new-instance v0, Lj0/q0;

    .line 24
    .line 25
    invoke-direct {v0}, Lj0/q0;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_1b
    invoke-virtual {v0}, Lj0/t0;->b()Lj0/b1;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lj0/b1;->a:Lj0/z0;

    .line 33
    .line 34
    invoke-virtual {v0}, Lj0/z0;->a()Lj0/b1;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lj0/b1;->a:Lj0/z0;

    .line 39
    .line 40
    invoke-virtual {v0}, Lj0/z0;->b()Lj0/b1;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v0, v0, Lj0/b1;->a:Lj0/z0;

    .line 45
    .line 46
    invoke-virtual {v0}, Lj0/z0;->c()Lj0/b1;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lj0/z0;->b:Lj0/b1;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Lj0/b1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj0/z0;->a:Lj0/b1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lj0/b1;
    .registers 2

    .line 1
    iget-object v0, p0, Lj0/z0;->a:Lj0/b1;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lj0/b1;
    .registers 2

    .line 1
    iget-object v0, p0, Lj0/z0;->a:Lj0/b1;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lj0/b1;
    .registers 2

    .line 1
    iget-object v0, p0, Lj0/z0;->a:Lj0/b1;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .registers 2

    .line 1
    return-void
.end method

.method public e()Lj0/h;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lj0/z0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lj0/z0;

    .line 12
    .line 13
    invoke-virtual {p0}, Lj0/z0;->n()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lj0/z0;->n()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_4b

    .line 22
    .line 23
    invoke-virtual {p0}, Lj0/z0;->m()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lj0/z0;->m()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v1, v3, :cond_4b

    .line 32
    .line 33
    invoke-virtual {p0}, Lj0/z0;->j()Lc0/c;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lj0/z0;->j()Lc0/c;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_4b

    .line 46
    .line 47
    invoke-virtual {p0}, Lj0/z0;->h()Lc0/c;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lj0/z0;->h()Lc0/c;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4b

    .line 60
    .line 61
    invoke-virtual {p0}, Lj0/z0;->e()Lj0/h;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lj0/z0;->e()Lj0/h;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4b

    .line 74
    .line 75
    return v0

    .line 76
    :cond_4b
    return v2
.end method

.method public f(I)Lc0/c;
    .registers 2

    .line 1
    sget-object p1, Lc0/c;->e:Lc0/c;

    .line 2
    .line 3
    return-object p1
.end method

.method public g()Lc0/c;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lj0/z0;->j()Lc0/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h()Lc0/c;
    .registers 2

    .line 1
    sget-object v0, Lc0/c;->e:Lc0/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .line 1
    invoke-virtual {p0}, Lj0/z0;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lj0/z0;->m()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lj0/z0;->j()Lc0/c;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lj0/z0;->h()Lc0/c;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lj0/z0;->e()Lj0/h;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x5

    .line 30
    new-array v5, v5, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    aput-object v0, v5, v6

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    aput-object v1, v5, v0

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    aput-object v2, v5, v0

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    aput-object v3, v5, v0

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    aput-object v4, v5, v0

    .line 46
    .line 47
    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    return v0
.end method

.method public i()Lc0/c;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lj0/z0;->j()Lc0/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public j()Lc0/c;
    .registers 2

    .line 1
    sget-object v0, Lc0/c;->e:Lc0/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Lc0/c;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lj0/z0;->j()Lc0/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l(IIII)Lj0/b1;
    .registers 5

    .line 1
    sget-object p1, Lj0/z0;->b:Lj0/b1;

    .line 2
    .line 3
    return-object p1
.end method

.method public m()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public n()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public o([Lc0/c;)V
    .registers 2

    .line 1
    return-void
.end method

.method public p(Lj0/b1;)V
    .registers 2

    .line 1
    return-void
.end method

.method public q(Lc0/c;)V
    .registers 2

    .line 1
    return-void
.end method
