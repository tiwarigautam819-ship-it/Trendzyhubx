###### Class x7.e (x7.e)
.class public final Lx7/e;
.super Lx7/b;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public d:J

.field public final synthetic e:Li5/a;


# direct methods
.method public constructor <init>(Li5/a;J)V
    .registers 6

    .line 1
    iput-object p1, p0, Lx7/e;->e:Li5/a;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lx7/b;-><init>(Li5/a;)V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Lx7/e;->d:J

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long p1, p2, v0

    .line 11
    .line 12
    if-nez p1, :cond_10

    .line 13
    .line 14
    invoke-virtual {p0}, Lx7/b;->a()V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 5

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
    iget-wide v0, p0, Lx7/e;->d:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_2c

    .line 13
    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    sget-object v1, Ls7/b;->a:[B

    .line 17
    .line 18
    const-string v1, "timeUnit"

    .line 19
    .line 20
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x64

    .line 24
    .line 25
    :try_start_18
    invoke-static {p0, v0}, Ls7/b;->t(Le8/w;I)Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_1d

    .line 29
    goto :goto_1e

    .line 30
    :catch_1d
    const/4 v0, 0x0

    .line 31
    :goto_1e
    if-nez v0, :cond_2c

    .line 32
    .line 33
    iget-object v0, p0, Lx7/e;->e:Li5/a;

    .line 34
    .line 35
    iget-object v0, v0, Li5/a;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lv7/l;

    .line 38
    .line 39
    invoke-virtual {v0}, Lv7/l;->l()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lx7/b;->a()V

    .line 43
    .line 44
    .line 45
    :cond_2c
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lx7/b;->b:Z

    .line 47
    .line 48
    return-void
.end method

.method public final h(JLe8/g;)J
    .registers 11

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
    if-nez p1, :cond_43

    .line 9
    .line 10
    iget-wide p1, p0, Lx7/e;->d:J

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v2, p1, v0

    .line 15
    .line 16
    const-wide/16 v3, -0x1

    .line 17
    .line 18
    if-nez v2, :cond_14

    .line 19
    .line 20
    return-wide v3

    .line 21
    :cond_14
    const-wide/16 v5, 0x2000

    .line 22
    .line 23
    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    invoke-super {p0, p1, p2, p3}, Lx7/b;->h(JLe8/g;)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    cmp-long p3, p1, v3

    .line 32
    .line 33
    if-eqz p3, :cond_2f

    .line 34
    .line 35
    iget-wide v2, p0, Lx7/e;->d:J

    .line 36
    .line 37
    sub-long/2addr v2, p1

    .line 38
    iput-wide v2, p0, Lx7/e;->d:J

    .line 39
    .line 40
    cmp-long p3, v2, v0

    .line 41
    .line 42
    if-nez p3, :cond_2e

    .line 43
    .line 44
    invoke-virtual {p0}, Lx7/b;->a()V

    .line 45
    .line 46
    .line 47
    :cond_2e
    return-wide p1

    .line 48
    :cond_2f
    iget-object p1, p0, Lx7/e;->e:Li5/a;

    .line 49
    .line 50
    iget-object p1, p1, Li5/a;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lv7/l;

    .line 53
    .line 54
    invoke-virtual {p1}, Lv7/l;->l()V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/net/ProtocolException;

    .line 58
    .line 59
    const-string p2, "unexpected end of stream"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lx7/b;->a()V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_43
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string p2, "closed"

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method
