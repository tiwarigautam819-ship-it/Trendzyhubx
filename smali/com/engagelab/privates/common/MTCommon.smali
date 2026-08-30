###### Class com.engagelab.privates.common.MTCommon (com.engagelab.privates.common.MTCommon)
.class public Lcom/engagelab/privates/common/MTCommon;
.super Lcom/engagelab/privates/common/observer/MTObserver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final THREAD_COMMON:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/engagelab/privates/common/constants/MTCommonConstants;->getLogTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "COMMON"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/engagelab/privates/common/MTCommon;->THREAD_COMMON:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/observer/MTObserver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/MTCommon;->THREAD_COMMON:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getThreadName()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/MTCommon;->THREAD_COMMON:Ljava/lang/String;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public handleDelayMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    const/16 p3, 0x3e8

    .line 2
    .line 3
    if-eq p2, p3, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {}, Lcom/engagelab/privates/common/binder/MTMessenger;->getInstance()Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/binder/MTMessenger;->initOnMainProcess(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public handleMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-eq p2, v0, :cond_44

    .line 4
    .line 5
    const/16 v0, 0x3f5

    .line 6
    .line 7
    if-eq p2, v0, :cond_3c

    .line 8
    .line 9
    const/16 v0, 0x3fb

    .line 10
    .line 11
    if-eq p2, v0, :cond_38

    .line 12
    .line 13
    const/16 v0, 0x3ef

    .line 14
    .line 15
    if-eq p2, v0, :cond_30

    .line 16
    .line 17
    const/16 v0, 0x3f0

    .line 18
    .line 19
    if-eq p2, v0, :cond_28

    .line 20
    .line 21
    packed-switch p2, :pswitch_data_4c

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_18
    invoke-static {}, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->getInstance()Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->onRemoteNetworkState(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_20
    invoke-static {}, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->getInstance()Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->onRemoteLifecycleState(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_28
    invoke-static {}, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->getInstance()Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->onMainLifecycleState(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    invoke-static {}, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->getInstance()Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/business/network/MTNetworkBusiness;->onMainNetworkState(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_38
    invoke-static {p1, p3}, Lcom/engagelab/privates/common/log/MTLogConfigHelper;->updateLogCacheConfigMain(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3c
    invoke-static {}, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->getInstance()Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2, p1, p3}, Lcom/engagelab/privates/common/business/lifecycle/MTLifecycleBusiness;->onActivityResumed(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_44
    invoke-static {}, Lcom/engagelab/privates/common/binder/MTMessenger;->getInstance()Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/common/binder/MTMessenger;->initOnMainProcess(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_data_4c
    .packed-switch 0x7ca
        :pswitch_20
        :pswitch_20
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public isSupport(I)Z
    .registers 3

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-eq p1, v0, :cond_19

    .line 4
    .line 5
    const/16 v0, 0x3f5

    .line 6
    .line 7
    if-eq p1, v0, :cond_19

    .line 8
    .line 9
    const/16 v0, 0x3fb

    .line 10
    .line 11
    if-eq p1, v0, :cond_19

    .line 12
    .line 13
    const/16 v0, 0x3ef

    .line 14
    .line 15
    if-eq p1, v0, :cond_19

    .line 16
    .line 17
    const/16 v0, 0x3f0

    .line 18
    .line 19
    if-eq p1, v0, :cond_19

    .line 20
    .line 21
    packed-switch p1, :pswitch_data_1c

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_19
    :pswitch_19
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    nop

    .line 29
    :pswitch_data_1c
    .packed-switch 0x7ca
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method
