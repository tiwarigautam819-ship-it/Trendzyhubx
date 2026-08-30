###### Class com.engagelab.privates.common.binder.MTMessenger (com.engagelab.privates.common.binder.MTMessenger)
.class public Lcom/engagelab/privates/common/binder/MTMessenger;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTMessenger"

.field private static volatile instance:Lcom/engagelab/privates/common/binder/MTMessenger;


# instance fields
.field private isInitOnMainProcess:Z

.field private final mainMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mainMessenger:Landroid/os/Messenger;

.field private final remoteMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private remoteMessenger:Landroid/os/Messenger;

.field private serviceFlag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->serviceFlag:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->isInitOnMainProcess:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 22
    .line 23
    return-void
.end method

.method public static getInstance()Lcom/engagelab/privates/common/binder/MTMessenger;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/binder/MTMessenger;->instance:Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    const-class v0, Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/engagelab/privates/common/binder/MTMessenger;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/engagelab/privates/common/binder/MTMessenger;->instance:Lcom/engagelab/privates/common/binder/MTMessenger;

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
    sget-object v0, Lcom/engagelab/privates/common/binder/MTMessenger;->instance:Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 21
    .line 22
    return-object v0
.end method

.method private initConfig(Landroid/content/Context;)Z
    .registers 9

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "MTMessenger"

    .line 10
    .line 11
    if-eqz v1, :cond_11

    .line 12
    .line 13
    const-string v1, "appKey is empty, please check it"

    .line 14
    .line 15
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppProcess(Landroid/content/Context;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppVersionCode(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v6, "appVersionCode:"

    .line 37
    .line 38
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ", appVersionName:"

    .line 45
    .line 46
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, ", appKey:"

    .line 53
    .line 54
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, ", appChannel:"

    .line 61
    .line 62
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, ", appProcess:"

    .line 69
    .line 70
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string p1, "SDK_VERSION_NAME:5.3.0, SDK_VERSION_CODE:530"

    .line 84
    .line 85
    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/4 p1, 0x1

    .line 89
    return p1
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessenger:Landroid/os/Messenger;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    const-string v0, "MTMessenger"

    .line 6
    .line 7
    const-string v1, "getBinder null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public initMainMessenger(Landroid/os/Messenger;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 2
    .line 3
    goto :goto_22

    .line 4
    :cond_3
    :try_start_3
    iput-object p1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessenger:Landroid/os/Messenger;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_22

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/os/Message;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessenger:Landroid/os/Messenger;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_20

    .line 30
    .line 31
    .line 32
    goto :goto_b

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    :goto_22
    return-void

    .line 36
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "initMainMessenger failed "

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "MTMessenger"

    .line 44
    .line 45
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public initOnMainProcess(Landroid/content/Context;)V
    .registers 7

    .line 1
    const-string v0, "MTMessenger"

    .line 2
    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessenger:Landroid/os/Messenger;

    .line 4
    .line 5
    if-nez v1, :cond_40

    .line 6
    .line 7
    const-string v1, "init common version:5.3.0"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/engagelab/privates/common/binder/MTMessenger;->initConfig(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_13

    .line 17
    .line 18
    goto/16 :goto_84

    .line 19
    .line 20
    :cond_13
    new-instance v1, Landroid/os/Messenger;

    .line 21
    .line 22
    new-instance v2, Lcom/engagelab/privates/common/binder/MainMessengerHandler;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v2, p1, v3}, Lcom/engagelab/privates/common/binder/MainMessengerHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessenger:Landroid/os/Messenger;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_40

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/os/Message;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessenger:Landroid/os/Messenger;

    .line 55
    .line 56
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 60
    .line 61
    .line 62
    goto :goto_29

    .line 63
    :catchall_3e
    move-exception p1

    .line 64
    goto :goto_85

    .line 65
    :cond_40
    sget-boolean v1, Lcom/engagelab/privates/common/global/MTGlobal;->isNeedRemoteProcess:Z

    .line 66
    .line 67
    if-nez v1, :cond_45

    .line 68
    .line 69
    goto :goto_84

    .line 70
    :cond_45
    iget-boolean v1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->serviceFlag:Z

    .line 71
    .line 72
    if-eqz v1, :cond_4a

    .line 73
    .line 74
    goto :goto_84

    .line 75
    :cond_4a
    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->serviceFlag:Z

    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->isInitOnMainProcess:Z

    .line 79
    .line 80
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonService(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonService;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-nez v2, :cond_5b

    .line 85
    .line 86
    const-string p1, "MTCommonService is null, please create new Service extends MTCommonService"

    .line 87
    .line 88
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_5b
    new-instance v2, Lcom/engagelab/privates/common/binder/MTMessengerConnection;

    .line 93
    .line 94
    invoke-direct {v2, p1}, Lcom/engagelab/privates/common/binder/MTMessengerConnection;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonService(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonService;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-nez v3, :cond_6c

    .line 102
    .line 103
    const-string p1, "initOnMainProcess error, there are no service extends MTCommonService"

    .line 104
    .line 105
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_6c
    new-instance v4, Landroid/content/Intent;

    .line 110
    .line 111
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v4, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v4, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 122
    .line 123
    .line 124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    const/16 v2, 0x1a

    .line 127
    .line 128
    if-ge v1, v2, :cond_84

    .line 129
    .line 130
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_84
    .catchall {:try_start_2 .. :try_end_84} :catchall_3e

    .line 131
    .line 132
    .line 133
    :cond_84
    :goto_84
    return-void

    .line 134
    :goto_85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v2, "initOnMainProcess failed "

    .line 137
    .line 138
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1, v1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public initOnRemoteProcess(Landroid/content/Context;)V
    .registers 6

    .line 1
    const-string v0, "MTMessenger"

    .line 2
    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessenger:Landroid/os/Messenger;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    goto :goto_43

    .line 8
    :cond_7
    const/4 v1, 0x1

    .line 9
    sput-boolean v1, Lcom/engagelab/privates/common/global/MTGlobal;->isNeedRemoteProcess:Z

    .line 10
    .line 11
    const-string v1, "init common version:5.3.0"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/engagelab/privates/common/binder/MTMessenger;->initConfig(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_16

    .line 21
    .line 22
    goto :goto_43

    .line 23
    :cond_16
    new-instance v1, Landroid/os/Messenger;

    .line 24
    .line 25
    new-instance v2, Lcom/engagelab/privates/common/binder/RemoteMessengerHandler;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v2, p1, v3}, Lcom/engagelab/privates/common/binder/RemoteMessengerHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessenger:Landroid/os/Messenger;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_43

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/os/Message;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessenger:Landroid/os/Messenger;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_40
    .catchall {:try_start_2 .. :try_end_40} :catchall_41

    .line 63
    .line 64
    .line 65
    goto :goto_2c

    .line 66
    :catchall_41
    move-exception p1

    .line 67
    goto :goto_44

    .line 68
    :cond_43
    :goto_43
    return-void

    .line 69
    :goto_44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "initOnRemoteProcess failed "

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public onServiceConnected(Landroid/content/Context;Landroid/os/IBinder;)V
    .registers 7

    .line 1
    const-string v0, "onServiceConnected"

    .line 2
    .line 3
    const-string v1, "MTMessenger"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->serviceFlag:Z

    .line 10
    .line 11
    invoke-static {}, Lcom/engagelab/privates/common/business/MTCommonBusiness;->getInstance()Lcom/engagelab/privates/common/business/MTCommonBusiness;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/common/business/MTCommonBusiness;->init(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/os/Messenger;

    .line 19
    .line 20
    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessenger:Landroid/os/Messenger;

    .line 24
    .line 25
    :try_start_18
    iget-object p2, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :cond_1e
    :goto_1e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3b

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/os/Message;

    .line 42
    .line 43
    iget v2, v0, Landroid/os/Message;->what:I

    .line 44
    .line 45
    const/16 v3, 0x65

    .line 46
    .line 47
    if-ne v3, v2, :cond_1e

    .line 48
    .line 49
    iget-object v2, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessenger:Landroid/os/Messenger;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 55
    .line 56
    .line 57
    goto :goto_1e

    .line 58
    :catchall_39
    move-exception p2

    .line 59
    goto :goto_56

    .line 60
    :cond_3b
    iget-object p2, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_60

    .line 71
    .line 72
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/os/Message;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessenger:Landroid/os/Messenger;

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_55
    .catchall {:try_start_18 .. :try_end_55} :catchall_39

    .line 84
    .line 85
    .line 86
    goto :goto_41

    .line 87
    :goto_56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, "sendMessageToRemoteProcess failed "

    .line 90
    .line 91
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p2, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_60
    const/16 p2, 0x3e9

    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, p2, v0}, Lcom/engagelab/privates/common/binder/MTMessenger;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    const/16 p2, 0x7cf

    .line 104
    .line 105
    invoke-virtual {p0, p1, p2, v0}, Lcom/engagelab/privates/common/binder/MTMessenger;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    const/16 p2, 0x7c9

    .line 109
    .line 110
    invoke-virtual {p0, p1, p2, v0}, Lcom/engagelab/privates/common/binder/MTMessenger;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/Context;)V
    .registers 10

    .line 1
    const-string v0, "onServiceDisconnected"

    .line 2
    .line 3
    const-string v1, "MTMessenger"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->serviceFlag:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessenger:Landroid/os/Messenger;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessenger:Landroid/os/Messenger;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->isInitOnMainProcess:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2d

    .line 29
    .line 30
    const-string v0, "onServiceDisconnected retry init"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v3, Lcom/engagelab/privates/common/MTCommon;->THREAD_COMMON:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const-wide/16 v6, 0xbb8

    .line 39
    .line 40
    const/16 v4, 0x3e8

    .line 41
    .line 42
    move-object v2, p1

    .line 43
    invoke-static/range {v2 .. v7}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageDelayed(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;J)V

    .line 44
    .line 45
    .line 46
    :cond_2d
    return-void
.end method

.method public sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6

    .line 1
    const-string v0, "MTMessenger"

    .line 2
    .line 3
    :try_start_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput p2, v1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    invoke-virtual {v1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessenger:Landroid/os/Messenger;

    .line 13
    .line 14
    if-nez p2, :cond_25

    .line 15
    .line 16
    iget-object p2, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->isInitOnMainProcess:Z

    .line 22
    .line 23
    if-eqz p2, :cond_49

    .line 24
    .line 25
    sget-object p2, Lcom/engagelab/privates/common/MTCommon;->THREAD_COMMON:Ljava/lang/String;

    .line 26
    .line 27
    const/16 p3, 0x3e8

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p1, p2, p3, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    goto :goto_29

    .line 36
    :catch_23
    move-exception p1

    .line 37
    goto :goto_34

    .line 38
    :cond_25
    invoke-virtual {p2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_28} :catch_23
    .catchall {:try_start_2 .. :try_end_28} :catchall_21

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p3, "sendMessageToMainProcess failed "

    .line 45
    .line 46
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_49

    .line 53
    :goto_34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p3, "sendMessageToMainProcess DeadObjectException "

    .line 56
    .line 57
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_49
    :goto_49
    return-void
.end method

.method public sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6

    .line 1
    const-string v0, "MTMessenger"

    .line 2
    .line 3
    :try_start_2
    sget-boolean v1, Lcom/engagelab/privates/common/global/MTGlobal;->isNeedRemoteProcess:Z

    .line 4
    .line 5
    if-nez v1, :cond_7

    .line 6
    .line 7
    goto :goto_4d

    .line 8
    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput p2, v1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    invoke-virtual {v1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1f

    .line 22
    .line 23
    iget-object p1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->mainMessenger:Landroid/os/Messenger;

    .line 24
    .line 25
    iput-object p1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 26
    .line 27
    goto :goto_1f

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    goto :goto_2d

    .line 30
    :catch_1d
    move-exception p1

    .line 31
    goto :goto_38

    .line 32
    :cond_1f
    :goto_1f
    iget-object p1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessenger:Landroid/os/Messenger;

    .line 33
    .line 34
    if-nez p1, :cond_29

    .line 35
    .line 36
    iget-object p1, p0, Lcom/engagelab/privates/common/binder/MTMessenger;->remoteMessageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_29
    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2c
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2c} :catch_1d
    .catchall {:try_start_2 .. :try_end_2c} :catchall_1b

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :goto_2d
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p3, "sendMessageToRemoteProcess failed "

    .line 49
    .line 50
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_4d

    .line 57
    :goto_38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string p3, "sendMessageToRemoteProcess DeadObjectException "

    .line 60
    .line 61
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_4d
    return-void
.end method
