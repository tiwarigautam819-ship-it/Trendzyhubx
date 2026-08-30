###### Class p4.n (p4.n)
.class public final Lp4/n;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lp4/o;
.implements Lp4/f;
.implements Lp4/e;
.implements Lp4/c;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lp4/c;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lp4/n;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp4/n;->c:Ljava/lang/Object;

    iput-object p1, p0, Lp4/n;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lp4/n;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lp4/d;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lp4/n;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp4/n;->c:Ljava/lang/Object;

    iput-object p1, p0, Lp4/n;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lp4/n;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lp4/e;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lp4/n;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp4/n;->c:Ljava/lang/Object;

    iput-object p1, p0, Lp4/n;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lp4/n;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lp4/f;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lp4/n;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp4/n;->c:Ljava/lang/Object;

    iput-object p1, p0, Lp4/n;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lp4/n;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lp4/h;Lp4/q;)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lp4/n;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/n;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lp4/n;->c:Ljava/lang/Object;

    iput-object p3, p0, Lp4/n;->d:Ljava/lang/Object;

    return-void
.end method

.method private final c(Lp4/i;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lp4/n;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_12

    .line 5
    iget-object v0, p0, Lp4/n;->b:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    new-instance v1, Ls4/b;

    .line 8
    .line 9
    const/16 v2, 0x9

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v1, p0, p1, v2, v3}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    .line 21
    throw p1
.end method

.method private final d(Lp4/i;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lp4/i;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_22

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lp4/q;

    .line 9
    .line 10
    iget-boolean v0, v0, Lp4/q;->d:Z

    .line 11
    .line 12
    if-nez v0, :cond_22

    .line 13
    .line 14
    iget-object v0, p0, Lp4/n;->c:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_1f

    .line 18
    iget-object v0, p0, Lp4/n;->b:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    new-instance v1, Ls4/b;

    .line 21
    .line 22
    const/16 v2, 0xa

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v1, p0, p1, v2, v3}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    .line 34
    throw p1

    .line 35
    :cond_22
    return-void
.end method

.method private final e(Lp4/i;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lp4/i;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1b

    .line 6
    .line 7
    iget-object v0, p0, Lp4/n;->c:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_18

    .line 11
    iget-object v0, p0, Lp4/n;->b:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    new-instance v1, Ls4/b;

    .line 14
    .line 15
    const/16 v2, 0xb

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, p0, p1, v2, v3}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    .line 27
    throw p1

    .line 28
    :cond_1b
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lp4/n;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/q;

    .line 4
    .line 5
    invoke-virtual {v0}, Lp4/q;->n()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Lp4/i;)V
    .registers 5

    .line 1
    iget v0, p0, Lp4/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3a

    .line 4
    .line 5
    .line 6
    new-instance v0, Ls4/b;

    .line 7
    .line 8
    const/16 v1, 0xc

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, p0, p1, v1, v2}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lp4/n;->b:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    invoke-direct {p0, p1}, Lp4/n;->e(Lp4/i;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_17
    invoke-direct {p0, p1}, Lp4/n;->d(Lp4/i;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1b
    invoke-direct {p0, p1}, Lp4/n;->c(Lp4/i;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1f
    check-cast p1, Lp4/q;

    .line 33
    .line 34
    iget-boolean p1, p1, Lp4/q;->d:Z

    .line 35
    .line 36
    if-eqz p1, :cond_39

    .line 37
    .line 38
    iget-object p1, p0, Lp4/n;->c:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter p1

    .line 41
    :try_start_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_36

    .line 42
    iget-object p1, p0, Lp4/n;->b:Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    new-instance v0, Landroidx/fragment/app/p;

    .line 45
    .line 46
    const/16 v1, 0xb

    .line 47
    .line 48
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/p;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_39

    .line 55
    :catchall_36
    move-exception v0

    .line 56
    :try_start_37
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .line 57
    throw v0

    .line 58
    :cond_39
    :goto_39
    return-void

    .line 59
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
    .end packed-switch
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lp4/n;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/q;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lp4/q;->l(Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lp4/n;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp4/q;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lp4/q;->m(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
