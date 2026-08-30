###### Class com.engagelab.privates.common.business.MTCommonBusiness (com.engagelab.privates.common.business.MTCommonBusiness)
.class public Lcom/engagelab/privates/common/business/MTCommonBusiness;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTCommonBusiness"

.field private static volatile instance:Lcom/engagelab/privates/common/business/MTCommonBusiness;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/engagelab/privates/common/business/MTCommonBusiness;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/business/MTCommonBusiness;->instance:Lcom/engagelab/privates/common/business/MTCommonBusiness;

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    const-class v0, Lcom/engagelab/privates/common/business/MTCommonBusiness;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/business/MTCommonBusiness;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/engagelab/privates/common/business/MTCommonBusiness;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/engagelab/privates/common/business/MTCommonBusiness;->instance:Lcom/engagelab/privates/common/business/MTCommonBusiness;

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
    sget-object v0, Lcom/engagelab/privates/common/business/MTCommonBusiness;->instance:Lcom/engagelab/privates/common/business/MTCommonBusiness;

    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/engagelab/privates/common/observer/MTObservable;->observeNameQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2a

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    new-instance v2, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "observer_name"

    .line 29
    .line 30
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/engagelab/privates/common/binder/MTMessenger;->getInstance()Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/16 v3, 0x65

    .line 38
    .line 39
    invoke-virtual {v1, p1, v3, v2}, Lcom/engagelab/privates/common/binder/MTMessenger;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    goto :goto_a

    .line 43
    :cond_2a
    :try_start_2a
    const-string v0, "com.engagelab.privates.collect.MTCollect"

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    instance-of v1, v0, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 54
    .line 55
    if-eqz v1, :cond_41

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v0, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 62
    .line 63
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_41

    .line 64
    .line 65
    .line 66
    :catchall_41
    :cond_41
    :try_start_41
    const-string v0, "com.engagelab.privates.geofence.MTGeofence"

    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    instance-of v1, v0, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 77
    .line 78
    if-eqz v1, :cond_58

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v0, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 85
    .line 86
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_58
    .catchall {:try_start_41 .. :try_end_58} :catchall_58

    .line 87
    .line 88
    .line 89
    :catchall_58
    :cond_58
    :try_start_58
    const-string v0, "cn.jiguang.privates.wake.MTWake"

    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    instance-of v1, v0, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 100
    .line 101
    if-eqz v1, :cond_6f

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast v0, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 108
    .line 109
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_6f
    .catchall {:try_start_58 .. :try_end_6f} :catchall_6f

    .line 110
    .line 111
    .line 112
    :catchall_6f
    :cond_6f
    return-void
.end method

.method public release(Landroid/content/Context;)V
    .registers 2

    .line 1
    return-void
.end method
