###### Class e5.d (e5.d)
.class public final Le5/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Le5/f;
.implements Le5/g;


# instance fields
.field public final a:Le5/b;

.field public final b:Landroid/content/Context;

.field public final c:Lg5/a;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lg5/a;Ljava/util/concurrent/Executor;)V
    .registers 8

    .line 1
    new-instance v0, Le5/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1, p2}, Le5/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Le5/d;->a:Le5/b;

    .line 11
    .line 12
    iput-object p3, p0, Le5/d;->d:Ljava/util/Set;

    .line 13
    .line 14
    iput-object p5, p0, Le5/d;->e:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    iput-object p4, p0, Le5/d;->c:Lg5/a;

    .line 17
    .line 18
    iput-object p1, p0, Le5/d;->b:Landroid/content/Context;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    iget-object v2, p0, Le5/d;->a:Le5/b;

    .line 7
    .line 8
    invoke-virtual {v2}, Le5/b;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/google/firebase/messaging/b0;

    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/messaging/b0;->j(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1b

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/firebase/messaging/b0;->h()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    const/4 v0, 0x3

    .line 25
    return v0

    .line 26
    :catchall_19
    move-exception v0

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    monitor-exit p0

    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_19

    .line 32
    throw v0
.end method

.method public final b()Lp4/q;
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_d

    .line 6
    .line 7
    iget-object v0, p0, Le5/d;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lf0/c;->d(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x1

    .line 15
    :goto_e
    if-nez v0, :cond_17

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    invoke-static {v0}, Lj7/g;->l(Ljava/lang/Object;)Lp4/q;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_17
    new-instance v0, Le5/c;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1, p0}, Le5/c;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Le5/d;->e:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    invoke-static {v1, v0}, Lj7/g;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lp4/q;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public final c()V
    .registers 4

    .line 1
    iget-object v0, p0, Le5/d;->d:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-gtz v0, :cond_d

    .line 9
    .line 10
    invoke-static {v1}, Lj7/g;->l(Ljava/lang/Object;)Lp4/q;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v2, 0x18

    .line 17
    .line 18
    if-lt v0, v2, :cond_1a

    .line 19
    .line 20
    iget-object v0, p0, Le5/d;->b:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v0}, Lf0/c;->d(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x1

    .line 28
    :goto_1b
    if-nez v0, :cond_21

    .line 29
    .line 30
    invoke-static {v1}, Lj7/g;->l(Ljava/lang/Object;)Lp4/q;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_21
    new-instance v0, Le5/c;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {v0, v1, p0}, Le5/c;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Le5/d;->e:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    invoke-static {v1, v0}, Lj7/g;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lp4/q;

    .line 43
    .line 44
    .line 45
    return-void
.end method
