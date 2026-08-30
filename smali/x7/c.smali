###### Class x7.c (x7.c)
.class public final Lx7/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Le8/u;


# instance fields
.field public final a:Le8/k;

.field public b:Z

.field public final synthetic c:Li5/a;


# direct methods
.method public constructor <init>(Li5/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx7/c;->c:Li5/a;

    .line 5
    .line 6
    new-instance v0, Le8/k;

    .line 7
    .line 8
    iget-object p1, p1, Li5/a;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Le8/h;

    .line 11
    .line 12
    invoke-interface {p1}, Le8/u;->b()Le8/y;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Le8/k;-><init>(Le8/y;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lx7/c;->a:Le8/k;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final b()Le8/y;
    .registers 2

    .line 1
    iget-object v0, p0, Lx7/c;->a:Le8/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized close()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lx7/c;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2a

    .line 3
    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    :try_start_8
    iput-boolean v0, p0, Lx7/c;->b:Z

    .line 10
    .line 11
    iget-object v0, p0, Lx7/c;->c:Li5/a;

    .line 12
    .line 13
    iget-object v0, v0, Li5/a;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Le8/h;

    .line 16
    .line 17
    const-string v1, "0\r\n\r\n"

    .line 18
    .line 19
    invoke-interface {v0, v1}, Le8/h;->m(Ljava/lang/String;)Le8/h;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lx7/c;->a:Le8/k;

    .line 23
    .line 24
    iget-object v1, v0, Le8/k;->e:Le8/y;

    .line 25
    .line 26
    sget-object v2, Le8/y;->d:Le8/x;

    .line 27
    .line 28
    iput-object v2, v0, Le8/k;->e:Le8/y;

    .line 29
    .line 30
    invoke-virtual {v1}, Le8/y;->a()Le8/y;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Le8/y;->b()Le8/y;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lx7/c;->c:Li5/a;

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    iput v1, v0, Li5/a;->a:I
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2a

    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_2a
    move-exception v0

    .line 44
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    .line 45
    throw v0
.end method

.method public final declared-synchronized flush()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lx7/c;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    .line 3
    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    iget-object v0, p0, Lx7/c;->c:Li5/a;

    .line 9
    .line 10
    iget-object v0, v0, Li5/a;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Le8/h;

    .line 13
    .line 14
    invoke-interface {v0}, Le8/h;->flush()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception v0

    .line 20
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    .line 21
    throw v0
.end method

.method public final n(JLe8/g;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lx7/c;->c:Li5/a;

    .line 2
    .line 3
    iget-object v0, v0, Li5/a;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Le8/h;

    .line 6
    .line 7
    iget-boolean v1, p0, Lx7/c;->b:Z

    .line 8
    .line 9
    if-nez v1, :cond_20

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    cmp-long v1, p1, v1

    .line 14
    .line 15
    if-nez v1, :cond_11

    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    invoke-interface {v0, p1, p2}, Le8/h;->d(J)Le8/h;

    .line 19
    .line 20
    .line 21
    const-string v1, "\r\n"

    .line 22
    .line 23
    invoke-interface {v0, v1}, Le8/h;->m(Ljava/lang/String;)Le8/h;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1, p2, p3}, Le8/u;->n(JLe8/g;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Le8/h;->m(Ljava/lang/String;)Le8/h;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string p2, "closed"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method
