###### Class com.engagelab.privates.common.component.MTCommonService (com.engagelab.privates.common.component.MTCommonService)
.class public Lcom/engagelab/privates/common/component/MTCommonService;
.super Landroid/app/Service;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTCommonService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private initLog()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->initLogCache(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/engagelab/privates/common/log/MTLogConfigHelper;->updateLogCtrlConfig(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/engagelab/privates/common/log/MTCommonLog;->isProcessTypeSet()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_18

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->setProcessType(Z)V

    .line 23
    .line 24
    .line 25
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/engagelab/privates/common/log/MTLogConfigHelper;->sendReport(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/binder/MTMessenger;->getInstance()Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/engagelab/privates/common/binder/MTMessenger;->getBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final onCreate()V
    .registers 3

    .line 1
    const-string v0, "MTCommonService"

    .line 2
    .line 3
    const-string v1, "onService create"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/engagelab/privates/common/binder/MTMessenger;->getInstance()Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/common/binder/MTMessenger;->initOnRemoteProcess(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/engagelab/privates/common/component/MTCommonService;->initLog()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onDestroy()V
    .registers 3

    .line 1
    const-string v0, "MTCommonService"

    .line 2
    .line 3
    const-string v1, "onService destroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 1
    const/4 p1, 0x2

    .line 2
    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
