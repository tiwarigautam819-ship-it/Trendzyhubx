###### Class com.engagelab.privates.common.m0 (com.engagelab.privates.common.m0)
.class public Lcom/engagelab/privates/common/m0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile b:Lcom/engagelab/privates/common/m0;


# instance fields
.field public a:Z


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

.method public static a()Lcom/engagelab/privates/common/m0;
    .registers 2

    .line 5
    sget-object v0, Lcom/engagelab/privates/common/m0;->b:Lcom/engagelab/privates/common/m0;

    if-nez v0, :cond_13

    .line 6
    const-class v0, Lcom/engagelab/privates/common/m0;

    monitor-enter v0

    .line 7
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/m0;

    invoke-direct {v1}, Lcom/engagelab/privates/common/m0;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/m0;->b:Lcom/engagelab/privates/common/m0;

    .line 8
    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 9
    :cond_13
    :goto_13
    sget-object v0, Lcom/engagelab/privates/common/m0;->b:Lcom/engagelab/privates/common/m0;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    const-string v0, " init:"

    monitor-enter p0

    .line 1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/engagelab/privates/common/m0;->a:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTInAppBusiness"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/engagelab/privates/common/m0;->a:Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_24

    if-eqz v0, :cond_1c

    monitor-exit p0

    return-void

    .line 3
    :cond_1c
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/m0;->b(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/engagelab/privates/common/m0;->a:Z
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    monitor-enter p0

    const/16 v0, 0xed3

    .line 10
    :try_start_3
    invoke-static {p1, v0, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final b(Landroid/content/Context;)V
    .registers 4

    .line 1
    :try_start_0
    const-class v0, Lcom/engagelab/privates/inapp/MTInApp;

    .line 2
    .line 3
    sget-object v1, Lcom/engagelab/privates/inapp/MTInApp;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_e
    const-string p1, "MTInAppBusiness"

    .line 16
    .line 17
    const-string v0, "not integrated OTHSound.aar"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
