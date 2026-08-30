###### Class p0.q (p0.q)
.class public final Lp0/q;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lp0/j;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lg0/e;

.field public final c:Lo3/a;

.field public final d:Ljava/lang/Object;

.field public e:Landroid/os/Handler;

.field public f:Ljava/util/concurrent/ThreadPoolExecutor;

.field public g:Ljava/util/concurrent/ThreadPoolExecutor;

.field public h:Lx2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg0/e;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp0/q;->d:Ljava/lang/Object;

    .line 10
    .line 11
    const-string v0, "Context cannot be null"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lb2/k;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lp0/q;->a:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lp0/q;->b:Lg0/e;

    .line 23
    .line 24
    sget-object p1, Lp0/r;->d:Lo3/a;

    .line 25
    .line 26
    iput-object p1, p0, Lp0/q;->c:Lo3/a;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lx2/a;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lp0/q;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iput-object p1, p0, Lp0/q;->h:Lx2/a;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 7
    invoke-virtual {p0}, Lp0/q;->c()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception p1

    .line 12
    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    .line 13
    throw p1
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Lp0/q;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    iput-object v1, p0, Lp0/q;->h:Lx2/a;

    .line 6
    .line 7
    iget-object v2, p0, Lp0/q;->e:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v2, :cond_11

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    goto :goto_11

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    goto :goto_20

    .line 18
    :cond_11
    :goto_11
    iput-object v1, p0, Lp0/q;->e:Landroid/os/Handler;

    .line 19
    .line 20
    iget-object v2, p0, Lp0/q;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 21
    .line 22
    if-eqz v2, :cond_1a

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 25
    .line 26
    .line 27
    :cond_1a
    iput-object v1, p0, Lp0/q;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 28
    .line 29
    iput-object v1, p0, Lp0/q;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_f

    .line 34
    throw v1
.end method

.method public final c()V
    .registers 11

    .line 1
    iget-object v1, p0, Lp0/q;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_3
    iget-object v0, p0, Lp0/q;->h:Lx2/a;

    .line 5
    .line 6
    if-nez v0, :cond_b

    .line 7
    .line 8
    monitor-exit v1

    .line 9
    return-void

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    goto :goto_3c

    .line 12
    :cond_b
    iget-object v0, p0, Lp0/q;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 13
    .line 14
    if-nez v0, :cond_2e

    .line 15
    .line 16
    const-string v0, "emojiCompat"

    .line 17
    .line 18
    new-instance v9, Lp0/a;

    .line 19
    .line 20
    invoke-direct {v9, v0}, Lp0/a;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 24
    .line 25
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 28
    .line 29
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    const-wide/16 v5, 0xf

    .line 35
    .line 36
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lp0/q;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 44
    .line 45
    iput-object v2, p0, Lp0/q;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    .line 47
    :cond_2e
    iget-object v0, p0, Lp0/q;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 48
    .line 49
    new-instance v2, La2/g;

    .line 50
    .line 51
    const/16 v3, 0xc

    .line 52
    .line 53
    invoke-direct {v2, v3, p0}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_9

    .line 62
    throw v0
.end method

.method public final d()Lg0/j;
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lp0/q;->c:Lo3/a;

    .line 2
    .line 3
    iget-object v1, p0, Lp0/q;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lp0/q;->b:Lg0/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    new-array v3, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v2, v3, v4

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    aget-object v0, v3, v4

    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Lg0/d;->a(Landroid/content/Context;Ljava/util/List;)Lg/j;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_24} :catch_50

    .line 37
    iget v1, v0, Lg/j;->a:I

    .line 38
    .line 39
    if-nez v1, :cond_42

    .line 40
    .line 41
    iget-object v0, v0, Lg/j;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, [Lg0/j;

    .line 50
    .line 51
    if-eqz v0, :cond_3a

    .line 52
    .line 53
    array-length v1, v0

    .line 54
    if-eqz v1, :cond_3a

    .line 55
    .line 56
    aget-object v0, v0, v4

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_3a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 60
    .line 61
    const-string v1, "fetchFonts failed (empty result)"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_42
    new-instance v0, Ljava/lang/RuntimeException;

    .line 68
    .line 69
    const-string v2, "fetchFonts failed ("

    .line 70
    .line 71
    const-string v3, ")"

    .line 72
    .line 73
    invoke-static {v1, v2, v3}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :catch_50
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    .line 83
    .line 84
    const-string v2, "provider not found"

    .line 85
    .line 86
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v1
.end method
