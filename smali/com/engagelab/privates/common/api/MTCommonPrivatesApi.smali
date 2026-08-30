###### Class com.engagelab.privates.common.api.MTCommonPrivatesApi (com.engagelab.privates.common.api.MTCommonPrivatesApi)
.class public Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final SDK_VERSION_CODE:I = 0x212

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "5.3.0"

.field private static final TAG:Ljava/lang/String; = "MTCommonPrivatesApi"


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

.method public static buildHandler(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/handler/MTHandler;->getInstance()Lcom/engagelab/privates/common/handler/MTHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/engagelab/privates/common/handler/MTHandler;->buildHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/engagelab/privates/common/handler/CommonHandler;

    return-void
.end method

.method public static buildHandler(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .line 2
    invoke-static {}, Lcom/engagelab/privates/common/handler/MTHandler;->getInstance()Lcom/engagelab/privates/common/handler/MTHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/engagelab/privates/common/handler/MTHandler;->buildHandler(Landroid/content/Context;Ljava/lang/String;I)Lcom/engagelab/privates/common/handler/CommonHandler;

    return-void
.end method

.method public static init(Landroid/content/Context;Z)V
    .registers 4

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTCommonPrivatesApi"

    .line 4
    .line 5
    const-string p1, "can\'t init with empty context"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1f

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1f

    .line 30
    .line 31
    goto :goto_3b

    .line 32
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->context:Landroid/content/Context;

    .line 37
    .line 38
    if-nez p1, :cond_2e

    .line 39
    .line 40
    sget-boolean p1, Lcom/engagelab/privates/common/global/MTGlobal;->isNeedRemoteProcess:Z

    .line 41
    .line 42
    if-eqz p1, :cond_2c

    .line 43
    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    const/4 p1, 0x0

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    :goto_2e
    const/4 p1, 0x1

    .line 48
    :goto_2f
    sput-boolean p1, Lcom/engagelab/privates/common/global/MTGlobal;->isNeedRemoteProcess:Z

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3c

    .line 59
    .line 60
    :goto_3b
    return-void

    .line 61
    :cond_3c
    sget-object p1, Lcom/engagelab/privates/common/MTCommon;->THREAD_COMMON:Ljava/lang/String;

    .line 62
    .line 63
    const/16 v0, 0x3e8

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-static {p0, p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    .registers 4

    .line 1
    const-string v0, "MTCommonPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "can\'t observer with empty context"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1a

    .line 20
    .line 21
    const-string p0, "can\'t observer in another process"

    .line 22
    .line 23
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0, p1}, Lcom/engagelab/privates/common/observer/MTObservable;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static postMessageDelayed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;J)V
    .registers 12

    .line 1
    const-string v0, "MTCommonPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "can\'t postMessageDelayed with empty context"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 16
    .line 17
    const-string p0, "can\'t postMessageDelayed with empty name"

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_30

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_30

    .line 42
    .line 43
    const-string p0, "can\'t postMessageDelayed in another process"

    .line 44
    .line 45
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    invoke-static {}, Lcom/engagelab/privates/common/handler/MTHandler;->getInstance()Lcom/engagelab/privates/common/handler/MTHandler;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v2, p0

    .line 54
    move-object v3, p1

    .line 55
    move-object v4, p2

    .line 56
    move-wide v5, p3

    .line 57
    invoke-virtual/range {v1 .. v6}, Lcom/engagelab/privates/common/handler/MTHandler;->postMessageDelayed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static releaseHandler(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/handler/MTHandler;->getInstance()Lcom/engagelab/privates/common/handler/MTHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/engagelab/privates/common/handler/MTHandler;->releaseHandler(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static removeMessages(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/handler/MTHandler;->getInstance()Lcom/engagelab/privates/common/handler/MTHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lcom/engagelab/privates/common/handler/MTHandler;->removeMessages(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6

    .line 1
    const-string v0, "MTCommonPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "can\'t sendMessage with empty context"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 16
    .line 17
    const-string p0, "can\'t sendMessage with empty name"

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_30

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_30

    .line 42
    .line 43
    const-string p0, "can\'t sendMessage in another process"

    .line 44
    .line 45
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    invoke-static {}, Lcom/engagelab/privates/common/handler/MTHandler;->getInstance()Lcom/engagelab/privates/common/handler/MTHandler;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/engagelab/privates/common/handler/MTHandler;->sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static sendMessageDelayed(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;J)V
    .registers 14

    .line 1
    const-string v0, "MTCommonPrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "can\'t sendMessageDelayed with empty context"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_16

    .line 16
    .line 17
    const-string p0, "can\'t sendMessageDelayed with empty name"

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_30

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_30

    .line 42
    .line 43
    const-string p0, "can\'t sendMessageDelayed in another process"

    .line 44
    .line 45
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    invoke-static {}, Lcom/engagelab/privates/common/handler/MTHandler;->getInstance()Lcom/engagelab/privates/common/handler/MTHandler;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v2, p0

    .line 54
    move-object v3, p1

    .line 55
    move v4, p2

    .line 56
    move-object v5, p3

    .line 57
    move-wide v6, p4

    .line 58
    invoke-virtual/range {v1 .. v7}, Lcom/engagelab/privates/common/handler/MTHandler;->sendMessageDelayed(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;J)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTCommonPrivatesApi"

    .line 4
    .line 5
    const-string p1, "can\'t sendMessageToMainProcess with empty context"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {}, Lcom/engagelab/privates/common/binder/MTMessenger;->getInstance()Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0, p1, p2}, Lcom/engagelab/privates/common/binder/MTMessenger;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTCommonPrivatesApi"

    .line 4
    .line 5
    const-string p1, "can\'t sendMessageToRemoteProcess with empty context"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-static {}, Lcom/engagelab/privates/common/binder/MTMessenger;->getInstance()Lcom/engagelab/privates/common/binder/MTMessenger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0, p1, p2}, Lcom/engagelab/privates/common/binder/MTMessenger;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
