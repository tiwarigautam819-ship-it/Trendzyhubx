###### Class com.engagelab.privates.common.business.lifecycle.MTLifecycleBusiness (com.engagelab.privates.common.business.lifecycle.MTLifecycleBusiness)
.class public Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTLifecycleBusiness"

.field private static volatile instance:Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;


# instance fields
.field private activityFlag:I

.field private init:Z

.field private lifecycleListener:Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleListener;

.field private startServiceFlag:Z


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
    iput-boolean v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->init:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->activityFlag:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->startServiceFlag:Z

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->instance:Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    const-class v0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->instance:Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;

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
    sget-object v0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->instance:Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;

    .line 21
    .line 22
    return-object v0
.end method

.method private startCommonService(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_7

    .line 6
    .line 7
    goto :goto_1a

    .line 8
    :cond_7
    iget-boolean v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->startServiceFlag:Z

    .line 9
    .line 10
    if-eqz v0, :cond_c

    .line 11
    .line 12
    goto :goto_1a

    .line 13
    :cond_c
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->isNeedRemoteProcess:Z

    .line 14
    .line 15
    if-nez v0, :cond_11

    .line 16
    .line 17
    goto :goto_1a

    .line 18
    :cond_11
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->startServiceFlag:Z

    .line 20
    .line 21
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonService(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonService;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1b

    .line 26
    .line 27
    :goto_1a
    return-void

    .line 28
    :cond_1b
    new-instance v1, Landroid/content/Intent;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->init:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->init:Z

    .line 8
    .line 9
    new-instance v0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleListener;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleListener;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->lifecycleListener:Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleListener;

    .line 15
    .line 16
    check-cast p1, Landroid/app/Application;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onActivityResumed(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    const-string p1, "activity"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setCurrentActivityName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onMainLifecycleState(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->setLifecycleState(Z)V

    .line 8
    .line 9
    .line 10
    const-string v1, "MTLifecycleBusiness"

    .line 11
    .line 12
    if-eqz v0, :cond_3e

    .line 13
    .line 14
    iget v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->activityFlag:I

    .line 15
    .line 16
    if-nez v0, :cond_37

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->startCommonService(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "toForeground currentActivity:"

    .line 24
    .line 25
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getCurrentActivityName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/16 v0, 0x3ed

    .line 43
    .line 44
    invoke-static {p1, v0, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->isNeedRemoteProcess:Z

    .line 48
    .line 49
    if-eqz v0, :cond_37

    .line 50
    .line 51
    const/16 v0, 0x7cb

    .line 52
    .line 53
    invoke-static {p1, v0, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    :cond_37
    iget p1, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->activityFlag:I

    .line 57
    .line 58
    add-int/lit8 p1, p1, 0x1

    .line 59
    .line 60
    iput p1, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->activityFlag:I

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3e
    iget v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->activityFlag:I

    .line 64
    .line 65
    if-lez v0, :cond_46

    .line 66
    .line 67
    add-int/lit8 v0, v0, -0x1

    .line 68
    .line 69
    iput v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->activityFlag:I

    .line 70
    .line 71
    :cond_46
    iget v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->activityFlag:I

    .line 72
    .line 73
    if-nez v0, :cond_6d

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "toBackground currentActivity:"

    .line 78
    .line 79
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getCurrentActivityName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/16 v0, 0x3ee

    .line 97
    .line 98
    invoke-static {p1, v0, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->isNeedRemoteProcess:Z

    .line 102
    .line 103
    if-eqz v0, :cond_6d

    .line 104
    .line 105
    const/16 v0, 0x7ca

    .line 106
    .line 107
    invoke-static {p1, v0, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    :cond_6d
    return-void
.end method

.method public onRemoteLifecycleState(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    if-nez p2, :cond_3

    .line 2
    .line 3
    return-void

    .line 4
    :cond_3
    const-string p1, "activity"

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "state"

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setCurrentActivityName(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/engagelab/privates/common/global/MTGlobal;->setLifecycleState(Z)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getLifecycleState()Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_23

    .line 32
    .line 33
    const-string p2, "toForeground"

    .line 34
    .line 35
    goto :goto_25

    .line 36
    :cond_23
    const-string p2, "toBackground"

    .line 37
    .line 38
    :goto_25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, " currentActivity:"

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getCurrentActivityName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "MTLifecycleBusiness"

    .line 58
    .line 59
    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public release(Landroid/content/Context;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/app/Application;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->lifecycleListener:Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleListener;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
