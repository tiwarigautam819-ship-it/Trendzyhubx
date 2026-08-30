###### Class y7.v (y7.v)
.class public final Ly7/v;
.super Le8/e;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic m:Ly7/w;


# direct methods
.method public constructor <init>(Ly7/w;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly7/v;->m:Ly7/w;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final j()V
    .registers 7

    .line 1
    iget-object v0, p0, Ly7/v;->m:Ly7/w;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ly7/w;->e(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ly7/v;->m:Ly7/w;

    .line 9
    .line 10
    iget-object v0, v0, Ly7/w;->b:Ly7/o;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_c
    iget-wide v1, v0, Ly7/o;->v:J

    .line 14
    .line 15
    iget-wide v3, v0, Ly7/o;->m:J
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_42

    .line 16
    .line 17
    cmp-long v1, v1, v3

    .line 18
    .line 19
    if-gez v1, :cond_16

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :cond_16
    const-wide/16 v1, 0x1

    .line 24
    .line 25
    add-long/2addr v3, v1

    .line 26
    :try_start_19
    iput-wide v3, v0, Ly7/o;->m:J

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    const v3, 0x3b9aca00

    .line 33
    .line 34
    .line 35
    int-to-long v3, v3

    .line 36
    add-long/2addr v1, v3

    .line 37
    iput-wide v1, v0, Ly7/o;->w:J
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_42

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    iget-object v1, v0, Ly7/o;->h:Lu7/c;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v3, v0, Ly7/o;->c:Ljava/lang/String;

    .line 48
    .line 49
    const-string v4, " ping"

    .line 50
    .line 51
    invoke-static {v2, v3, v4}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v3, Lu7/b;

    .line 56
    .line 57
    const/4 v4, 0x2

    .line 58
    invoke-direct {v3, v2, v0, v4}, Lu7/b;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .line 63
    invoke-virtual {v1, v3, v4, v5}, Lu7/c;->c(Lu7/a;J)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_42
    move-exception v1

    .line 68
    monitor-exit v0

    .line 69
    throw v1
.end method

.method public final k()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Le8/e;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/net/SocketTimeoutException;

    .line 9
    .line 10
    const-string v1, "timeout"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method
