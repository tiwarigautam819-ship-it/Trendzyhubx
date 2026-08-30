###### Class com.engagelab.privates.common.handler.MTHandler (com.engagelab.privates.common.handler.MTHandler)
.class public Lcom/engagelab/privates/common/handler/MTHandler;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final DEFAULT_RELEASE_INTERVAL:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "MTHandler"

.field private static volatile instance:Lcom/engagelab/privates/common/handler/MTHandler;


# instance fields
.field private final handlerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/engagelab/privates/common/handler/CommonHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerThreadMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/engagelab/privates/common/handler/CommonHandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerThreadMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    return-void
.end method

.method public static getInstance()Lcom/engagelab/privates/common/handler/MTHandler;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/handler/MTHandler;->instance:Lcom/engagelab/privates/common/handler/MTHandler;

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    const-class v0, Lcom/engagelab/privates/common/handler/MTHandler;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/handler/MTHandler;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/engagelab/privates/common/handler/MTHandler;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/engagelab/privates/common/handler/MTHandler;->instance:Lcom/engagelab/privates/common/handler/MTHandler;

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    goto :goto_13

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    .line 19
    throw v1

    .line 20
    :cond_13
    :goto_13
    sget-object v0, Lcom/engagelab/privates/common/handler/MTHandler;->instance:Lcom/engagelab/privates/common/handler/MTHandler;

    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public buildHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/engagelab/privates/common/handler/CommonHandler;
    .registers 4

    const v0, 0x493e0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/engagelab/privates/common/handler/MTHandler;->buildHandler(Landroid/content/Context;Ljava/lang/String;I)Lcom/engagelab/privates/common/handler/CommonHandler;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized buildHandler(Landroid/content/Context;Ljava/lang/String;I)Lcom/engagelab/privates/common/handler/CommonHandler;
    .registers 12

    const-string v0, "buildHandler failed "

    const-string v1, "buildHandler\uff1a"

    const-string v2, "buildHandler\uff1a"

    monitor-enter p0

    const/4 v3, 0x0

    .line 2
    :try_start_8
    iget-object v4, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerThreadMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/engagelab/privates/common/handler/CommonHandlerThread;

    if-nez v4, :cond_1f

    .line 3
    new-instance v4, Lcom/engagelab/privates/common/handler/CommonHandlerThread;

    invoke-direct {v4, p2}, Lcom/engagelab/privates/common/handler/CommonHandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v5, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerThreadMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :catchall_1d
    move-exception p1

    goto :goto_91

    .line 5
    :cond_1f
    :goto_1f
    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    sget-object v6, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v5, v6, :cond_2a

    .line 6
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 7
    :cond_2a
    iget-object v5, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/engagelab/privates/common/handler/CommonHandler;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v6

    sget-object v7, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v6, v7, :cond_6e

    if-eqz v5, :cond_3f

    .line 9
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    :cond_3f
    new-instance v4, Lcom/engagelab/privates/common/handler/CommonHandlerThread;

    invoke-direct {v4, p2}, Lcom/engagelab/privates/common/handler/CommonHandlerThread;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 12
    iget-object v5, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerThreadMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v5, Lcom/engagelab/privates/common/handler/CommonHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6, p1, p3}, Lcom/engagelab/privates/common/handler/CommonHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;I)V

    .line 14
    iget-object v6, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catchall {:try_start_8 .. :try_end_5a} :catchall_1d

    :try_start_5a
    const-string v6, "MTHandler"
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_6c

    .line 15
    :try_start_5c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    :catchall_6c
    move-exception p1

    goto :goto_a8

    :cond_6e
    :goto_6e
    if-nez v5, :cond_8f

    .line 16
    new-instance v5, Lcom/engagelab/privates/common/handler/CommonHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v5, v2, p1, p3}, Lcom/engagelab/privates/common/handler/CommonHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;I)V

    .line 17
    iget-object p1, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catchall {:try_start_5c .. :try_end_7e} :catchall_1d

    :try_start_7e
    const-string p1, "MTHandler"
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_6c

    .line 18
    :try_start_80
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_80 .. :try_end_8f} :catchall_1d

    :cond_8f
    monitor-exit p0

    return-object v5

    .line 19
    :goto_91
    :try_start_91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MTHandler"

    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_91 .. :try_end_a6} :catchall_6c

    monitor-exit p0

    return-object v3

    :goto_a8
    :try_start_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_6c

    throw p1
.end method

.method public postMessageDelayed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;J)V
    .registers 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/handler/MTHandler;->buildHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/engagelab/privates/common/handler/CommonHandler;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p1, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p3, "sendMessageDelayed failed "

    .line 16
    .line 17
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p3, "MTHandler"

    .line 21
    .line 22
    invoke-static {p1, p2, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public releaseHandler(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string p1, "MTHandler"

    .line 2
    .line 3
    const-string v0, "releaseHandler:"

    .line 4
    .line 5
    :try_start_4
    iget-object v1, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_31

    .line 12
    .line 13
    iget-object v1, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/engagelab/privates/common/handler/CommonHandler;

    .line 20
    .line 21
    if-eqz v1, :cond_2c

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2c

    .line 43
    :catchall_2a
    move-exception p2

    .line 44
    goto :goto_4c

    .line 45
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_31
    iget-object v0, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerThreadMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    .line 52
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4b

    .line 57
    .line 58
    iget-object v0, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerThreadMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/engagelab/privates/common/handler/CommonHandlerThread;

    .line 65
    .line 66
    if-eqz v0, :cond_46

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 69
    .line 70
    .line 71
    :cond_46
    iget-object v0, p0, Lcom/engagelab/privates/common/handler/MTHandler;->handlerThreadMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_2a

    .line 74
    .line 75
    .line 76
    :cond_4b
    return-void

    .line 77
    :goto_4c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v1, "releaseHandler failed "

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p2, v0, p1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public removeMessages(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/handler/MTHandler;->buildHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/engagelab/privates/common/handler/CommonHandler;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p3, "removeMessages failed "

    .line 16
    .line 17
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p3, "MTHandler"

    .line 21
    .line 22
    invoke-static {p1, p2, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7
    .line 8
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    iput p3, v0, Landroid/os/Message;->what:I

    .line 11
    .line 12
    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/handler/MTHandler;->buildHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/engagelab/privates/common/handler/CommonHandler;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p3, "sendMessage failed "

    .line 30
    .line 31
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p3, "MTHandler"

    .line 35
    .line 36
    invoke-static {p1, p2, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public sendMessageDelayed(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;J)V
    .registers 9

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7
    .line 8
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    iput p3, v0, Landroid/os/Message;->what:I

    .line 11
    .line 12
    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/handler/MTHandler;->buildHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/engagelab/privates/common/handler/CommonHandler;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_15

    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    invoke-virtual {p1, v0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p3, "sendMessageDelayed failed "

    .line 30
    .line 31
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p3, "MTHandler"

    .line 35
    .line 36
    invoke-static {p1, p2, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
