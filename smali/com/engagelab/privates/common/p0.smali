###### Class com.engagelab.privates.common.p0 (com.engagelab.privates.common.p0)
.class public Lcom/engagelab/privates/common/p0;
.super Lcom/engagelab/privates/common/o0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile b:Lcom/engagelab/privates/common/p0;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/o0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b()Lcom/engagelab/privates/common/p0;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/p0;->b:Lcom/engagelab/privates/common/p0;

    if-nez v0, :cond_13

    .line 2
    const-class v0, Lcom/engagelab/privates/common/p0;

    monitor-enter v0

    .line 3
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/p0;

    invoke-direct {v1}, Lcom/engagelab/privates/common/p0;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/p0;->b:Lcom/engagelab/privates/common/p0;

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
    sget-object v0, Lcom/engagelab/privates/common/p0;->b:Lcom/engagelab/privates/common/p0;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    .line 28
    :try_start_0
    const-class p2, Lcom/engagelab/privates/push/api/CustomMessage;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "message"

    .line 29
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/push/api/CustomMessage;

    if-nez p2, :cond_14

    goto :goto_1a

    .line 30
    :cond_14
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonReceiver(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;

    move-result-object v0

    if-nez v0, :cond_1b

    :goto_1a
    return-void

    .line 31
    :cond_1b
    invoke-virtual {v0, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onCustomMessage(Landroid/content/Context;Lcom/engagelab/privates/push/api/CustomMessage;)V

    const/16 p2, 0xf9f

    .line 32
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception p1

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "processMainMessage failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "MTCustomBusiness"

    .line 34
    invoke-static {p1, p2, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "MTCustomBusiness"

    const-string v1, "message"

    .line 1
    :try_start_4
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    return-void

    .line 3
    :cond_f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "ad_id"

    .line 4
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string p1, "customMessage\'s messageId is null, can\'t callback this custom"

    .line 6
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_26
    move-exception p1

    goto :goto_75

    :cond_28
    const-string v3, "title"

    .line 7
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string p1, "customMessage\'s content is null, can\'t callback this custom"

    .line 10
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    const-string v5, "content_type"

    .line 11
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "extras"

    .line 12
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->convertJsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    .line 13
    new-instance v6, Lcom/engagelab/privates/push/api/CustomMessage;

    invoke-direct {v6}, Lcom/engagelab/privates/push/api/CustomMessage;-><init>()V

    .line 14
    invoke-virtual {v6, p2}, Lcom/engagelab/privates/push/api/CustomMessage;->setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;

    move-result-object p2

    .line 15
    invoke-virtual {p2, v3}, Lcom/engagelab/privates/push/api/CustomMessage;->setTitle(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;

    move-result-object p2

    .line 16
    invoke-virtual {p2, v4}, Lcom/engagelab/privates/push/api/CustomMessage;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;

    move-result-object p2

    .line 17
    invoke-virtual {p2, v5}, Lcom/engagelab/privates/push/api/CustomMessage;->setContentType(Ljava/lang/String;)Lcom/engagelab/privates/push/api/CustomMessage;

    move-result-object p2

    .line 18
    invoke-virtual {p2, v2}, Lcom/engagelab/privates/push/api/CustomMessage;->setExtras(Landroid/os/Bundle;)Lcom/engagelab/privates/push/api/CustomMessage;

    move-result-object p2

    .line 19
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 20
    invoke-virtual {v2, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0xbb9

    .line 21
    invoke-static {p1, p2, v2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_74
    .catchall {:try_start_4 .. :try_end_74} :catchall_26

    return-void

    .line 22
    :goto_75
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onMessage failed "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 8

    const-string p2, "MTCustomBusiness"

    .line 6
    :try_start_2
    const-class v0, Lcom/engagelab/privates/push/api/CustomMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "message"

    .line 7
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/engagelab/privates/push/api/CustomMessage;

    if-nez p3, :cond_16

    return-void

    :cond_16
    const-string v0, "onCustomMessage"

    .line 8
    invoke-static {p2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_46

    const-string v1, "msg_id"

    .line 10
    :try_start_22
    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/CustomMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/CustomMessage;->getPlatform()B

    move-result v1
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_46

    if-eqz v1, :cond_48

    const-string v1, "sdk_type"

    .line 12
    :try_start_31
    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/CustomMessage;->getPlatform()B

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_46

    const-string v1, "tmsg_id"

    .line 13
    :try_start_3a
    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/CustomMessage;->getPlatformMessageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_46

    const-string p3, "third_msg_status"

    const/16 v1, 0xc82

    goto :goto_4c

    :catchall_46
    move-exception p1

    goto :goto_85

    .line 14
    :cond_48
    const-string p3, "msg_status"

    const/16 v1, 0xc81

    .line 15
    :goto_4c
    :try_start_4c
    const-string v2, "result"

    const/16 v3, 0x454

    .line 16
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    new-instance v2, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-direct {v2}, Lcom/engagelab/privates/core/api/MTReporter;-><init>()V

    .line 18
    invoke-virtual {v2, p3}, Lcom/engagelab/privates/core/api/MTReporter;->setType(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p3

    .line 19
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/engagelab/privates/core/api/MTReporter;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p3

    .line 20
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "protocol"

    .line 21
    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p3, 0x8b9

    .line 22
    invoke-static {p1, p3, v2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 23
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V
    :try_end_78
    .catchall {:try_start_4c .. :try_end_78} :catchall_46

    const-string v2, "json"

    .line 24
    :try_start_7a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {p1, v1, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_46

    return-void

    .line 26
    :goto_85
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "processRemoteMessage failed "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {p1, p3, p2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
