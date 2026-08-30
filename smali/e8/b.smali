###### Class e8.b (e8.b)
.class public final Le8/b;
.super Ljava/lang/Thread;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Le8/b;->a:I

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 4

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Le8/b;->a:I

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Le8/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_38

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x13

    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 9
    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :goto_b
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_11
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 13
    .line 14
    .line 15
    goto :goto_b

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    goto :goto_13

    .line 18
    :catch_11
    :try_start_11
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_f

    .line 21
    throw v0

    .line 22
    :catch_15
    :cond_15
    :goto_15
    :pswitch_15
    :try_start_15
    sget-object v0, Le8/e;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1a} :catch_15

    .line 25
    .line 26
    .line 27
    :try_start_1a
    invoke-static {}, Lk2/e;->a()Le8/e;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Le8/e;->l:Le8/e;

    .line 32
    .line 33
    if-ne v1, v2, :cond_2b

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    sput-object v1, Le8/e;->l:Le8/e;
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_29

    .line 37
    .line 38
    :try_start_25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_29
    move-exception v1

    .line 43
    goto :goto_34

    .line 44
    :cond_2b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 45
    .line 46
    .line 47
    if-eqz v1, :cond_15

    .line 48
    .line 49
    invoke-virtual {v1}, Le8/e;->j()V

    .line 50
    .line 51
    .line 52
    goto :goto_15

    .line 53
    :goto_34
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 54
    .line 55
    .line 56
    throw v1
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_38} :catch_15

    .line 57
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method
