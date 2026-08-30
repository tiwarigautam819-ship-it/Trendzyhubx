###### Class com.engagelab.privates.common.a (com.engagelab.privates.common.a)
.class public Lcom/engagelab/privates/common/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile a:Lcom/engagelab/privates/common/a;


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

.method public static a()Lcom/engagelab/privates/common/a;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/a;->a:Lcom/engagelab/privates/common/a;

    if-nez v0, :cond_13

    .line 2
    const-class v0, Lcom/engagelab/privates/common/a;

    monitor-enter v0

    .line 3
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/a;

    invoke-direct {v1}, Lcom/engagelab/privates/common/a;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/a;->a:Lcom/engagelab/privates/common/a;

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
    sget-object v0, Lcom/engagelab/privates/common/a;->a:Lcom/engagelab/privates/common/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 8

    .line 6
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->f(Landroid/content/Context;)I

    move-result v0

    .line 7
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->k(Landroid/content/Context;)I

    move-result v1

    .line 8
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->l(Landroid/content/Context;)J

    move-result-wide v2

    .line 9
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "code"

    .line 10
    invoke-virtual {v4, v5, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "seed_id"

    .line 11
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "server_time"

    .line 12
    invoke-virtual {v4, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/16 v0, 0x836

    .line 13
    invoke-static {p1, v0, v4}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 11

    const-string v0, "cmd"

    const-string v1, "MTCoreBusiness"

    const-string v2, "protocol"

    const-string v3, "onCtrl "

    .line 14
    :try_start_8
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/core/api/MTProtocol;

    .line 15
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getRid()J

    .line 16
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getBody()[B

    move-result-object p2

    .line 17
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 19
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 20
    new-array v6, v6, [B

    .line 21
    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 22
    new-instance p2, Ljava/lang/String;

    sget-object v7, Lcom/engagelab/privates/common/constants/MTCommonConstants;->UTF_8:Ljava/lang/String;

    invoke-direct {p2, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 23
    new-instance v6, Lcom/engagelab/privates/core/api/Outputer;

    invoke-direct {v6}, Lcom/engagelab/privates/core/api/Outputer;-><init>()V

    const/4 v7, 0x0

    .line 24
    invoke-virtual {v6, v7}, Lcom/engagelab/privates/core/api/Outputer;->writeU16(I)V

    .line 25
    invoke-virtual {v6, v4, v5}, Lcom/engagelab/privates/core/api/Outputer;->writeU64(J)V

    const-string v7, ""

    .line 26
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/engagelab/privates/core/api/Outputer;->writeByteArrayIncludeLength([B)V

    .line 27
    new-instance v7, Lcom/engagelab/privates/core/api/MTProtocol;

    invoke-direct {v7}, Lcom/engagelab/privates/core/api/MTProtocol;-><init>()V

    .line 28
    invoke-virtual {v7, v4, v5}, Lcom/engagelab/privates/core/api/MTProtocol;->setRid(J)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object v4

    const/16 v5, 0x19

    .line 29
    invoke-virtual {v4, v5}, Lcom/engagelab/privates/core/api/MTProtocol;->setCommand(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object v4

    const/4 v5, 0x1

    .line 30
    invoke-virtual {v4, v5}, Lcom/engagelab/privates/core/api/MTProtocol;->setVersion(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object v4

    .line 31
    invoke-virtual {v6}, Lcom/engagelab/privates/core/api/Outputer;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/engagelab/privates/core/api/MTProtocol;->setBody([B)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object v4

    .line 32
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 33
    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v4, 0x8ae

    .line 34
    invoke-static {p1, v4, v5}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 35
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const-string v3, "content"

    .line 38
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 39
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 40
    invoke-virtual {v4, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p1, p2, v4}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    const/16 p2, 0x8bb

    .line 43
    invoke-static {p1, p2, v4}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_a4
    .catchall {:try_start_8 .. :try_end_a4} :catchall_a5

    return-void

    :catchall_a5
    move-exception p1

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onCtrl failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-static {p1, p2, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 9

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->i(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    move-result-wide v1

    .line 3
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "code"

    .line 6
    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "user_id"

    .line 7
    invoke-virtual {v5, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "registration_id"

    .line 8
    invoke-virtual {v5, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pwd"

    .line 9
    invoke-virtual {v5, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x835

    .line 10
    invoke-static {p1, v0, v5}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    const-string p1, "code"

    .line 11
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "seed_id"

    .line 12
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "server_time"

    .line 13
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 14
    invoke-static {p1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setLoginCode(I)V

    .line 15
    invoke-static {v0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setSeedId(I)V

    .line 16
    invoke-static {v1, v2}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setServerTime(J)V

    return-void
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 7

    .line 1
    const-string p1, "code"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-string v0, "user_id"

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-string v2, "registration_id"

    .line 14
    .line 15
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "pwd"

    .line 20
    .line 21
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setRegisterCode(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setUserId(J)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setRegistrationId(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setPassword(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
