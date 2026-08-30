###### Class com.engagelab.privates.common.z0 (com.engagelab.privates.common.z0)
.class public Lcom/engagelab/privates/common/z0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile e:Lcom/engagelab/privates/common/z0;


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;


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
    iput-boolean v0, p0, Lcom/engagelab/privates/common/z0;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/engagelab/privates/common/z0;->c:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/engagelab/privates/common/z0;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static a()Lcom/engagelab/privates/common/z0;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/z0;->e:Lcom/engagelab/privates/common/z0;

    if-nez v0, :cond_13

    .line 2
    const-class v0, Lcom/engagelab/privates/common/z0;

    monitor-enter v0

    .line 3
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/z0;

    invoke-direct {v1}, Lcom/engagelab/privates/common/z0;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/z0;->e:Lcom/engagelab/privates/common/z0;

    .line 4
    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 5
    :cond_13
    :goto_13
    sget-object v0, Lcom/engagelab/privates/common/z0;->e:Lcom/engagelab/privates/common/z0;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    const-string v0, "com.engagelab.privates.push.oth.sound.OTHSound"

    .line 19
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 21
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/engagelab/privates/common/z0;->c:Z
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    const-string p1, "MTSoundBusiness"

    const-string v0, "not integrated OTHSound.aar"

    .line 23
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "on_tcp_connected init:"

    monitor-enter p0

    .line 6
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/engagelab/privates/common/z0;->b:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTSoundBusiness"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/engagelab/privates/common/z0;->d:Ljava/lang/String;

    if-nez v1, :cond_23

    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/z0;->d:Ljava/lang/String;

    goto :goto_2f

    :catchall_21
    move-exception p1

    goto :goto_4b

    .line 10
    :cond_23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/engagelab/privates/common/z0;->b:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/engagelab/privates/common/z0;->a:Landroid/os/Bundle;

    .line 13
    :cond_2f
    :goto_2f
    iget-boolean v0, p0, Lcom/engagelab/privates/common/z0;->b:Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_21

    if-eqz v0, :cond_35

    monitor-exit p0

    return-void

    .line 14
    :cond_35
    :try_start_35
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/z0;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_41

    .line 15
    iget-object v0, p0, Lcom/engagelab/privates/common/z0;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_41

    .line 16
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_41
    const/16 v0, 0xd48

    .line 17
    invoke-static {p1, v0, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/engagelab/privates/common/z0;->b:Z
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_21

    monitor-exit p0

    return-void

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_21

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "MTSoundBusiness"

    const-string v1, "setEnablePushTextToSpeech"

    .line 24
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "oth_sound_enable_set"

    .line 26
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    iget-boolean p2, p0, Lcom/engagelab/privates/common/z0;->b:Z

    if-eqz p2, :cond_22

    iget-boolean p2, p0, Lcom/engagelab/privates/common/z0;->c:Z

    if-eqz p2, :cond_22

    const/16 p2, 0xd49

    .line 28
    invoke-static {p1, p2, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_24

    :catchall_20
    move-exception p1

    goto :goto_26

    .line 29
    :cond_22
    iput-object v0, p0, Lcom/engagelab/privates/common/z0;->a:Landroid/os/Bundle;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_20

    :goto_24
    monitor-exit p0

    return-void

    :goto_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_20

    throw p1
.end method

.method public declared-synchronized b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0xd4a

    .line 3
    .line 4
    :try_start_3
    invoke-static {p1, v0, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    .line 11
    throw p1
.end method
