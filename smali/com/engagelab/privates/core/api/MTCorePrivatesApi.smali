###### Class com.engagelab.privates.core.api.MTCorePrivatesApi (com.engagelab.privates.core.api.MTCorePrivatesApi)
.class public Lcom/engagelab/privates/core/api/MTCorePrivatesApi;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final SDK_VERSION_CODE:I = 0x212

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "5.3.0"

.field private static final TAG:Ljava/lang/String; = "MTCorePrivatesApi"


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

.method public static configAppChannel(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "MTCorePrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "configAppChannel context can\'t be null, please check it"

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
    const-string p0, "configAppChannel appChannel can\'t be empty, please check it"

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
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2b

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2b

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2b
    new-instance v0, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "config_app_channel"

    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x8ba

    .line 55
    .line 56
    invoke-static {p0, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setAppChannel(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static configAppKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "MTCorePrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "configAppKey context can\'t be null, please check it"

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
    const-string p0, "configAppKey appKey can\'t be empty, please check it"

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
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2b

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2b

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2b
    new-instance v0, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "config_app_key"

    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x8ba

    .line 55
    .line 56
    invoke-static {p0, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setAppKey(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p0, ""

    .line 63
    .line 64
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setRegistrationId(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v0, 0x0

    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setUserId(J)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setPassword(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p0, -0x1

    .line 76
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setLoginCode(I)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setRegisterCode(I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static configAppSiteName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "MTCorePrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "configAppSiteName context can\'t be null, please check it"

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
    const-string p0, "configAppSiteName appSiteName can\'t be empty, please check it"

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
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2b

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2b

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2b
    new-instance v0, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "config_app_site_name"

    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x8ba

    .line 55
    .line 56
    invoke-static {p0, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setAppSiteName(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static configConnectRetryCount(Landroid/content/Context;I)V
    .registers 3

    .line 1
    if-nez p0, :cond_6

    .line 2
    .line 3
    invoke-static {p1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setConnectRetryCount(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1b

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_1b

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-static {p1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setConnectRetryCount(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static configDebugMode(Landroid/content/Context;Z)V
    .registers 4

    .line 1
    if-nez p0, :cond_6

    .line 2
    .line 3
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setDebugMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1b

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1b

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    new-instance v0, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "config_debug_mode"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x8ba

    .line 39
    .line 40
    invoke-static {p0, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setDebugMode(Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static configHeartbeatInterval(Landroid/content/Context;J)V
    .registers 4

    .line 1
    if-nez p0, :cond_6

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setHeartbeatInterval(J)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1b

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_1b

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-static {p1, p2}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setHeartbeatInterval(J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static configSM4(Landroid/content/Context;)V
    .registers 2

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTCorePrivatesApi"

    .line 4
    .line 5
    const-string v0, "configSM4 context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

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
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1f

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    const/4 p0, 0x2

    .line 33
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->setEncryptType(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static configWakeAndBeWake(Landroid/content/Context;Z)V
    .registers 3

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTCorePrivatesApi"

    .line 4
    .line 5
    const-string p1, "configWakeAndBeWake context can\'t be null, please check it"

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
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1f

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    invoke-static {p1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setWakeAndBeWakeState(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static getLoginCode(Landroid/content/Context;)I
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_b

    .line 3
    .line 4
    const-string p0, "MTCorePrivatesApi"

    .line 5
    .line 6
    const-string v1, "getLoginCode context can\'t be null, please check it"

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1a

    .line 21
    .line 22
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getLoginCode(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2d

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->f(Landroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_2d
    return v0
.end method

.method public static getPassword(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_c

    .line 4
    .line 5
    const-string p0, "MTCorePrivatesApi"

    .line 6
    .line 7
    const-string v1, "getPassword context can\'t be null, please check it"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1b

    .line 22
    .line 23
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2e

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_2e
    return-object v0
.end method

.method public static getRegisterCode(Landroid/content/Context;)I
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_b

    .line 3
    .line 4
    const-string p0, "MTCorePrivatesApi"

    .line 5
    .line 6
    const-string v1, "getRegisterCode context can\'t be null, please check it"

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1a

    .line 21
    .line 22
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getRegisterCode(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2d

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->i(Landroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_2d
    return v0
.end method

.method public static getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_c

    .line 4
    .line 5
    const-string p0, "MTCorePrivatesApi"

    .line 6
    .line 7
    const-string v1, "getRegistrationId context can\'t be null, please check it"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1b

    .line 22
    .line 23
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2e

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_2e
    return-object v0
.end method

.method public static getSeedId(Landroid/content/Context;)I
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_b

    .line 3
    .line 4
    const-string p0, "MTCorePrivatesApi"

    .line 5
    .line 6
    const-string v1, "getSeedId context can\'t be null, please check it"

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1a

    .line 21
    .line 22
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getSeedId(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2d

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->k(Landroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_2d
    return v0
.end method

.method public static getServerTime(Landroid/content/Context;)J
    .registers 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_c

    .line 4
    .line 5
    const-string p0, "MTCorePrivatesApi"

    .line 6
    .line 7
    const-string v2, "getServerTime context can\'t be null, please check it"

    .line 8
    .line 9
    invoke-static {p0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1b

    .line 22
    .line 23
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getServerTime(Landroid/content/Context;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    return-wide v0

    .line 28
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2d

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->l(Landroid/content/Context;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    :cond_2d
    return-wide v0
.end method

.method public static getUserId(Landroid/content/Context;)J
    .registers 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_c

    .line 4
    .line 5
    const-string p0, "MTCorePrivatesApi"

    .line 6
    .line 7
    const-string v2, "getUserId context can\'t be null, please check it"

    .line 8
    .line 9
    invoke-static {p0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1b

    .line 22
    .line 23
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getUserId(Landroid/content/Context;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    return-wide v0

    .line 28
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2d

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    :cond_2d
    return-wide v0
.end method

.method public static isConnectContinue(Landroid/content/Context;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_b

    .line 3
    .line 4
    const-string p0, "MTCorePrivatesApi"

    .line 5
    .line 6
    const-string v1, "isConnectContinue context can\'t be null, please check it"

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_20

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_20

    .line 31
    .line 32
    return v0

    .line 33
    :cond_20
    invoke-static {}, Lcom/engagelab/privates/common/observer/MTObservable;->getInstance()Lcom/engagelab/privates/common/observer/MTObservable;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p0, p0, Lcom/engagelab/privates/common/observer/MTObservable;->observeNameQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_49

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/String;

    .line 54
    .line 55
    const-string v2, "com.engagelab.privates.push.MTPush"

    .line 56
    .line 57
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/4 v3, 0x1

    .line 62
    if-eqz v2, :cond_40

    .line 63
    .line 64
    return v3

    .line 65
    :cond_40
    const-string v2, "com.engagelab.privates.message.MTMessage"

    .line 66
    .line 67
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2a

    .line 72
    .line 73
    return v3

    .line 74
    :cond_49
    return v0
.end method

.method public static setEnableResetOnDeviceChange(Landroid/content/Context;Z)V
    .registers 4

    .line 1
    if-nez p0, :cond_a

    .line 2
    .line 3
    const-string p0, "MTCorePrivatesApi"

    .line 4
    .line 5
    const-string p1, "setEnableResetOnDeviceChange context can\'t be null, please check it"

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
    return-void

    .line 32
    :cond_1f
    new-instance v0, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "config_device_migration"

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const/16 v1, 0x8ba

    .line 43
    .line 44
    invoke-static {p0, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setResetOnDeviceChangeEnabled(Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static setEnableUdp(Landroid/content/Context;Z)V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_ENGAGELAB:Z

    .line 2
    .line 3
    if-eqz v0, :cond_16

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "config_enable_udp"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x8ba

    .line 16
    .line 17
    invoke-static {p0, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setUdpEnable(Z)V

    .line 21
    .line 22
    .line 23
    :cond_16
    return-void
.end method

.method public static setLCCapacity(Landroid/content/Context;I)V
    .registers 5

    .line 1
    const-string v0, "MTCorePrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "setLCCapacity context can\'t be null, please check it"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    const/4 v1, 0x5

    .line 12
    if-ge p1, v1, :cond_13

    .line 13
    .line 14
    const-string p0, "setLCCapacity capacity must be at least 5M, please check it"

    .line 15
    .line 16
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_28

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_28

    .line 39
    .line 40
    return-void

    .line 41
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "setLCCapacity: "

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v1, "config_log_collection_capacity"

    .line 64
    .line 65
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    const/16 v1, 0x8ba

    .line 69
    .line 70
    invoke-static {p0, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    int-to-long p0, p1

    .line 74
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->setMaxTotalSize(J)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static setLCOn(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    const-string v0, "MTCorePrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "setLCOn context can\'t be null, please check it"

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
    if-nez v1, :cond_1f

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1f

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "setLCOn: "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v1, "config_log_collection_on"

    .line 55
    .line 56
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x8ba

    .line 60
    .line 61
    invoke-static {p0, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->setLogCacheEnabled(Z)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static setReportCacheFileMaximum(I)V
    .registers 1

    .line 1
    if-ltz p0, :cond_4

    .line 2
    .line 3
    sput p0, Lcom/engagelab/privates/common/p;->d:I

    .line 4
    .line 5
    :cond_4
    return-void
.end method

.method public static setTcpSSl(Landroid/content/Context;Z)V
    .registers 4

    .line 3
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_ENGAGELAB:Z

    if-eqz v0, :cond_16

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "config_is_ssl"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x8ba

    .line 6
    invoke-static {p0, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 7
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setTcpSSL(Z)V

    :cond_16
    return-void
.end method

.method public static setTcpSSl(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_ENGAGELAB:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->setTcpSSL(Z)V

    :cond_7
    return-void
.end method

.method public static setWakeAndBeWakeEnable(Landroid/content/Context;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/engagelab/privates/core/api/MTCorePrivatesApi;->configWakeAndBeWake(Landroid/content/Context;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static testConfigGoogle(Landroid/content/Context;Z)V
    .registers 4

    .line 1
    const-string v0, "MTCorePrivatesApi"

    .line 2
    .line 3
    if-nez p0, :cond_a

    .line 4
    .line 5
    const-string p0, "testConfigGoogle context can\'t be null, please check it"

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
    if-nez v1, :cond_1f

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1f

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    const-string p0, "testConfigGoogle, Can only be used in the debugging version, please do not call the release version"

    .line 33
    .line 34
    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-nez p1, :cond_2c

    .line 38
    .line 39
    const-string p0, "CN"

    .line 40
    .line 41
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->setCountryCode(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2c
    const-string p0, "US"

    .line 46
    .line 47
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->setCountryCode(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
