###### Class com.engagelab.privates.common.observer.MTObserver (com.engagelab.privates.common.observer.MTObserver)
.class public abstract Lcom/engagelab/privates/common/observer/MTObserver;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


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


# virtual methods
.method public abstract dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
.end method

.method public getSdkFlag()S
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getSdkName()Ljava/lang/String;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getSdkPriority()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getThreadName()[Ljava/lang/String;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    return-object v0
.end method

.method public handleDelayMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    return-void
.end method

.method public handleMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    return-void
.end method

.method public isSdk()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract isSupport(I)Z
.end method
