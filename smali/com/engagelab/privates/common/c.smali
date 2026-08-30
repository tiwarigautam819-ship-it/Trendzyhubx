###### Class com.engagelab.privates.common.c (com.engagelab.privates.common.c)
.class public Lcom/engagelab/privates/common/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile b:Lcom/engagelab/privates/common/c;


# instance fields
.field public a:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/engagelab/privates/common/c;->a:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public static a()Lcom/engagelab/privates/common/c;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/c;->b:Lcom/engagelab/privates/common/c;

    if-nez v0, :cond_19

    .line 2
    const-class v0, Lcom/engagelab/privates/common/c;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/engagelab/privates/common/c;->b:Lcom/engagelab/privates/common/c;

    if-nez v1, :cond_15

    .line 4
    new-instance v1, Lcom/engagelab/privates/common/c;

    invoke-direct {v1}, Lcom/engagelab/privates/common/c;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/c;->b:Lcom/engagelab/privates/common/c;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 5
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 6
    :cond_19
    :goto_19
    sget-object v0, Lcom/engagelab/privates/common/c;->b:Lcom/engagelab/privates/common/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 7

    if-nez p2, :cond_4

    goto/16 :goto_18a

    .line 7
    :cond_4
    const-string v0, "config_app_key"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "MTConfigBusiness"

    if-eqz v1, :cond_59

    .line 8
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "app_key:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mAppKey:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/engagelab/privates/common/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {v0}, Lcom/engagelab/privates/common/global/MTGlobal;->setAppKey(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/engagelab/privates/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 14
    iput-object v0, p0, Lcom/engagelab/privates/common/c;->a:Ljava/lang/String;

    const-string v0, "stop and start connect"

    .line 15
    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbb1

    const/4 v1, 0x0

    .line 16
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    const/16 v0, 0xbb2

    .line 17
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 18
    :cond_59
    const-string p1, "config_app_channel"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 19
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app_channel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 22
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setAppChannel(Ljava/lang/String;)V

    .line 23
    :cond_7f
    const-string p1, "config_app_site_name"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 24
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app_site_name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 27
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setAppSiteName(Ljava/lang/String;)V

    .line 28
    :cond_a5
    const-string p1, "config_is_ssl"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 29
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "is_ssl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setTcpSSL(Z)V

    .line 32
    :cond_c5
    const-string p1, "config_enable_udp"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 33
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enable_udp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setUdpEnable(Z)V

    .line 36
    :cond_e5
    const-string p1, "config_debug_mode"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 37
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 38
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->setDebugMode(Z)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "debug_mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_105
    const-string p1, "config_device_migration"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 41
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 42
    invoke-static {p1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setResetOnDeviceChangeEnabled(Z)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "device_migration:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_125
    const-string p1, "config_log_collection_on"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 45
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 46
    invoke-static {p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->setLogCacheEnabled(Z)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "log_collection_on:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_145
    const-string p1, "config_log_collection_capacity"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 49
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    .line 50
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->setMaxTotalSize(J)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "log_collection_capacity:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_166
    const-string p1, "config_service_node"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18a

    .line 53
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;->valueOf(Ljava/lang/String;)Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    move-result-object p2

    .line 55
    invoke-static {p2}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setServiceNode(Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;)V

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "service_node:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18a
    :goto_18a
    return-void
.end method
