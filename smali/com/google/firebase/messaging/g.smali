###### Class com.google.firebase.messaging.g (com.google.firebase.messaging.g)
.class public abstract Lcom/google/firebase/messaging/g;
.super Landroid/app/Service;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field static final MESSAGE_TIMEOUT_S:J = 0x14L

.field private static final TAG:Ljava/lang/String; = "EnhancedIntentService"


# instance fields
.field private binder:Landroid/os/Binder;

.field final executor:Ljava/util/concurrent/ExecutorService;

.field private lastStartId:I

.field private final lock:Ljava/lang/Object;

.field private runningTasks:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v7, Lc4/a;

    .line 5
    .line 6
    const-string v0, "Firebase-Messaging-Intent-Handle"

    .line 7
    .line 8
    invoke-direct {v7, v0}, Lc4/a;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 12
    .line 13
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 16
    .line 17
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const-wide/16 v3, 0x3c

    .line 22
    .line 23
    move v2, v1

    .line 24
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/google/firebase/messaging/g;->executor:Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/Object;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/firebase/messaging/g;->lock:Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/google/firebase/messaging/g;->runningTasks:I

    .line 45
    .line 46
    return-void
.end method

.method public static access$000(Lcom/google/firebase/messaging/g;Landroid/content/Intent;)Lp4/i;
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/g;->handleIntentOnMainThread(Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-static {p0}, Lj7/g;->l(Ljava/lang/Object;)Lp4/q;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_c
    new-instance v0, Lp4/j;

    .line 14
    .line 15
    invoke-direct {v0}, Lp4/j;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/firebase/messaging/g;->executor:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    new-instance v2, Landroidx/fragment/app/e;

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-direct {v2, p0, p1, v0, v3}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Lp4/j;->a:Lp4/q;

    .line 30
    .line 31
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/firebase/messaging/k0;->b(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    :cond_5
    iget-object p1, p0, Lcom/google/firebase/messaging/g;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_8
    iget v0, p0, Lcom/google/firebase/messaging/g;->runningTasks:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Lcom/google/firebase/messaging/g;->runningTasks:I

    .line 14
    .line 15
    if-nez v0, :cond_18

    .line 16
    .line 17
    iget v0, p0, Lcom/google/firebase/messaging/g;->lastStartId:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/g;->stopSelfResultHook(I)Z

    .line 20
    .line 21
    .line 22
    goto :goto_18

    .line 23
    :catchall_16
    move-exception v0

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    :goto_18
    monitor-exit p1

    .line 26
    return-void

    .line 27
    :goto_1a
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_16

    .line 28
    throw v0
.end method

.method public abstract getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public handleIntentOnMainThread(Landroid/content/Intent;)Z
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string p1, "EnhancedIntentService"

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_14

    .line 10
    .line 11
    const-string p1, "EnhancedIntentService"

    .line 12
    .line 13
    const-string v0, "Service received bind request"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto :goto_14

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    goto :goto_29

    .line 21
    :cond_14
    :goto_14
    iget-object p1, p0, Lcom/google/firebase/messaging/g;->binder:Landroid/os/Binder;

    .line 22
    .line 23
    if-nez p1, :cond_25

    .line 24
    .line 25
    new-instance p1, Lcom/google/firebase/messaging/l0;

    .line 26
    .line 27
    new-instance v0, Lo5/c;

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    invoke-direct {v0, v1, p0}, Lo5/c;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Lcom/google/firebase/messaging/l0;-><init>(Lo5/c;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/firebase/messaging/g;->binder:Landroid/os/Binder;

    .line 37
    .line 38
    :cond_25
    iget-object p1, p0, Lcom/google/firebase/messaging/g;->binder:Landroid/os/Binder;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_12

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-object p1

    .line 42
    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_12

    .line 43
    throw p1
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/g;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    .line 1
    iget-object p2, p0, Lcom/google/firebase/messaging/g;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_3
    iput p3, p0, Lcom/google/firebase/messaging/g;->lastStartId:I

    .line 5
    .line 6
    iget p3, p0, Lcom/google/firebase/messaging/g;->runningTasks:I

    .line 7
    .line 8
    add-int/lit8 p3, p3, 0x1

    .line 9
    .line 10
    iput p3, p0, Lcom/google/firebase/messaging/g;->runningTasks:I

    .line 11
    .line 12
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_4f

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/g;->getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 p3, 0x2

    .line 18
    if-nez p2, :cond_17

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    return p3

    .line 24
    :cond_17
    invoke-virtual {p0, p2}, Lcom/google/firebase/messaging/g;->handleIntentOnMainThread(Landroid/content/Intent;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_23

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-static {p2}, Lj7/g;->l(Ljava/lang/Object;)Lp4/q;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    goto :goto_35

    .line 36
    :cond_23
    new-instance v0, Lp4/j;

    .line 37
    .line 38
    invoke-direct {v0}, Lp4/j;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/firebase/messaging/g;->executor:Ljava/util/concurrent/ExecutorService;

    .line 42
    .line 43
    new-instance v2, Landroidx/fragment/app/e;

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    invoke-direct {v2, p0, p2, v0, v3}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, v0, Lp4/j;->a:Lp4/q;

    .line 53
    .line 54
    :goto_35
    invoke-virtual {p2}, Lp4/q;->f()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3f

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    return p3

    .line 64
    :cond_3f
    new-instance p3, Lc1/c;

    .line 65
    .line 66
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lb2/d;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-direct {v0, p0, v1, p1}, Lb2/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p3, v0}, Lp4/q;->a(Ljava/util/concurrent/Executor;Lp4/d;)Lp4/q;

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x3

    .line 79
    return p1

    .line 80
    :catchall_4f
    move-exception p1

    .line 81
    :try_start_50
    monitor-exit p2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    .line 82
    throw p1
.end method

.method public stopSelfResultHook(I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
