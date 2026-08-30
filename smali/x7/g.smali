###### Class x7.g (x7.g)
.class public final Lx7/g;
.super Lx7/b;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public d:Z


# virtual methods
.method public final close()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lx7/b;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lx7/g;->d:Z

    .line 7
    .line 8
    if-nez v0, :cond_c

    .line 9
    .line 10
    invoke-virtual {p0}, Lx7/b;->a()V

    .line 11
    .line 12
    .line 13
    :cond_c
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lx7/b;->b:Z

    .line 15
    .line 16
    return-void
.end method

.method public final h(JLe8/g;)J
    .registers 6

    .line 1
    const-string p1, "sink"

    .line 2
    .line 3
    invoke-static {p1, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lx7/b;->b:Z

    .line 7
    .line 8
    if-nez p1, :cond_22

    .line 9
    .line 10
    iget-boolean p1, p0, Lx7/g;->d:Z

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    if-eqz p1, :cond_10

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_10
    const-wide/16 p1, 0x2000

    .line 18
    .line 19
    invoke-super {p0, p1, p2, p3}, Lx7/b;->h(JLe8/g;)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    cmp-long p3, p1, v0

    .line 24
    .line 25
    if-nez p3, :cond_21

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lx7/g;->d:Z

    .line 29
    .line 30
    invoke-virtual {p0}, Lx7/b;->a()V

    .line 31
    .line 32
    .line 33
    return-wide v0

    .line 34
    :cond_21
    return-wide p1

    .line 35
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string p2, "closed"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
