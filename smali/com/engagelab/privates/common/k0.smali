###### Class com.engagelab.privates.common.k0 (com.engagelab.privates.common.k0)
.class public Lcom/engagelab/privates/common/k0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile b:Lcom/engagelab/privates/common/k0;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/engagelab/privates/common/k0;->a:I

    .line 6
    .line 7
    return-void
.end method

.method public static a()Lcom/engagelab/privates/common/k0;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/k0;->b:Lcom/engagelab/privates/common/k0;

    if-nez v0, :cond_13

    .line 2
    const-class v0, Lcom/engagelab/privates/common/k0;

    monitor-enter v0

    .line 3
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/k0;

    invoke-direct {v1}, Lcom/engagelab/privates/common/k0;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/k0;->b:Lcom/engagelab/privates/common/k0;

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
    sget-object v0, Lcom/engagelab/privates/common/k0;->b:Lcom/engagelab/privates/common/k0;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .registers 2

    .line 6
    invoke-static {p1}, Lcom/engagelab/privates/common/a1;->e(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/content/Context;I)Lcom/engagelab/privates/push/api/NotificationLayout;
    .registers 12

    const-string v0, "MTPushBusiness"

    const-string v1, "getNotificationLayout builderId:"

    const/4 v2, 0x0

    .line 7
    :try_start_5
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    return-object v2

    .line 9
    :cond_10
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_1c

    return-object v2

    :cond_1c
    const-string p1, "layout_id"

    .line 11
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v4, "icon_view_id"

    .line 12
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "icon_resource_id"

    .line 13
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "title_view_id"

    .line 14
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "content_view_id"

    .line 15
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "time_view_id"

    .line 16
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 17
    new-instance v8, Lcom/engagelab/privates/push/api/NotificationLayout;

    invoke-direct {v8}, Lcom/engagelab/privates/push/api/NotificationLayout;-><init>()V

    .line 18
    invoke-virtual {v8, p1}, Lcom/engagelab/privates/push/api/NotificationLayout;->setLayoutId(I)Lcom/engagelab/privates/push/api/NotificationLayout;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v4}, Lcom/engagelab/privates/push/api/NotificationLayout;->setIconViewId(I)Lcom/engagelab/privates/push/api/NotificationLayout;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v5}, Lcom/engagelab/privates/push/api/NotificationLayout;->setIconResourceId(I)Lcom/engagelab/privates/push/api/NotificationLayout;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v6}, Lcom/engagelab/privates/push/api/NotificationLayout;->setTitleViewId(I)Lcom/engagelab/privates/push/api/NotificationLayout;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v7}, Lcom/engagelab/privates/push/api/NotificationLayout;->setContentViewId(I)Lcom/engagelab/privates/push/api/NotificationLayout;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v3}, Lcom/engagelab/privates/push/api/NotificationLayout;->setTimeViewId(I)Lcom/engagelab/privates/push/api/NotificationLayout;

    move-result-object p1

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/NotificationLayout;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_5 .. :try_end_73} :catchall_74

    return-object p1

    :catchall_74
    move-exception p1

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " failed "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {p1, v3, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v2
.end method

.method public final a(Landroid/content/Context;IZ)V
    .registers 7

    const-string v0, "notification_state"

    .line 31
    :try_start_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    invoke-virtual {v1, v0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v2, 0xbbe

    .line 33
    invoke-static {p1, v2, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 34
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 35
    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "trigger_scene"

    .line 36
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    new-instance p2, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-direct {p2}, Lcom/engagelab/privates/core/api/MTReporter;-><init>()V

    const-string p3, "android_notification_state"

    .line 38
    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTReporter;->setType(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p2

    .line 39
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTReporter;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p2

    .line 40
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "protocol"

    .line 41
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0x8b9

    .line 42
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    const/16 p2, 0xed7

    .line 43
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_44

    return-void

    :catchall_44
    move-exception p1

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onNotificationState failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "MTPushBusiness"

    .line 45
    invoke-static {p1, p2, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 16

    const-string v1, "MTPushBusiness"

    if-nez p2, :cond_e

    :try_start_4
    const-string p1, "handleEventMatchNotification: bundle is null"

    .line 50
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_a
    move-exception v0

    move-object p1, v0

    goto/16 :goto_c0

    :cond_e
    const-string v0, "event_match_data"

    .line 51
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p1, "handleEventMatchNotification: event_match_data is empty"

    .line 53
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "match_results"

    .line 55
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_ba

    .line 56
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_ba

    :cond_35
    const/4 v0, 0x0

    .line 57
    :goto_36
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_9c

    .line 58
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_97

    const-string v3, "msgid"

    .line 59
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "event_name"

    .line 60
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "timestamp"

    .line 61
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v3, "platform"

    .line 62
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "msgtype"

    .line 63
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "appkey"

    .line 64
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "1"

    .line 65
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    move-object v4, p0

    move-object v5, p1

    .line 66
    invoke-virtual/range {v4 .. v12}, Lcom/engagelab/privates/common/k0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :cond_74
    move-object v5, p1

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEventMatchNotification: skip reporting for msgtype: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msgid: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (only process Notification messages)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :cond_97
    move-object v5, p1

    :goto_98
    add-int/lit8 v0, v0, 0x1

    move-object p1, v5

    goto :goto_36

    .line 68
    :cond_9c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleEventMatchNotification: processed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " match results"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_ba
    :goto_ba
    const-string p1, "handleEventMatchNotification: no match results"

    .line 69
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_bf} :catch_a

    return-void

    .line 70
    :goto_c0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "handleEventMatchNotification: error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string p7, "MTPushBusiness"

    const-string v0, "reportEventMatch: failed to parse platform to byte: "

    const-string v1, "reportEventMatch: reported event match for msgid: "

    const-string v2, "reportEventMatch: empty platform :"

    .line 71
    :try_start_8
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p7, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1e
    move-exception p1

    goto/16 :goto_b0

    .line 73
    :cond_21
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_1e

    .line 74
    :try_start_26
    invoke-static {p6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    if-eqz v3, :cond_34

    const-string v4, "sdk_type"

    .line 75
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_31} :catch_a0
    .catchall {:try_start_26 .. :try_end_31} :catchall_1e

    const-string p6, "third_msg_status"

    goto :goto_36

    .line 76
    :cond_34
    const-string p6, "msg_status"

    .line 77
    :goto_36
    :try_start_36
    const-string v0, "msg_id"

    .line 78
    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "result"

    const/16 v3, 0x44c

    .line 79
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "target_event_time"

    .line 80
    invoke-virtual {v2, v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "target_event"

    .line 81
    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    new-instance v0, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-direct {v0}, Lcom/engagelab/privates/core/api/MTReporter;-><init>()V

    .line 83
    invoke-virtual {v0, p8}, Lcom/engagelab/privates/core/api/MTReporter;->setAppkey(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p6}, Lcom/engagelab/privates/core/api/MTReporter;->setType(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v0

    .line 85
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/engagelab/privates/core/api/MTReporter;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v0

    .line 86
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "protocol"

    .line 87
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v0, 0x8b9

    .line 88
    invoke-static {p1, v0, v2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", event: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", timestamp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", appkey: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p7, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 90
    :catch_a0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p7, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_36 .. :try_end_af} :catchall_1e

    return-void

    .line 91
    :goto_b0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "reportEventMatch: error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p7, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/a1;->f(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;I)V
    .registers 8

    .line 11
    invoke-static {p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationState(Landroid/content/Context;)Z

    move-result v0

    .line 12
    iget v1, p0, Lcom/engagelab/privates/common/k0;->a:I

    const/4 v2, -0x1

    const-string v3, "notification state is "

    const-string v4, "MTPushBusiness"

    if-ne v1, v2, :cond_22

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput v0, p0, Lcom/engagelab/privates/common/k0;->a:I

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lcom/engagelab/privates/common/k0;->a(Landroid/content/Context;IZ)V

    return-void

    :cond_22
    if-ne v1, v0, :cond_40

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "no need update notification state lastNotificationState:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/engagelab/privates/common/k0;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",currentNotificationState:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iput v0, p0, Lcom/engagelab/privates/common/k0;->a:I

    .line 19
    invoke-virtual {p0, p1, p2, v0}, Lcom/engagelab/privates/common/k0;->a(Landroid/content/Context;IZ)V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonReceiver(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v1, "notification_state"

    .line 3
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onNotificationStatus(Landroid/content/Context;Z)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "processMainNotificationState failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MTPushBusiness"

    .line 6
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "id"

    .line 24
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetNotificationLayout builderId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTPushBusiness"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 26
    invoke-static {p1, p2, v0}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .registers 13

    const-string v0, "MTPushBusiness"

    const-string v1, "isNotificationShowTime currentHour:"

    const-string v2, "isNotificationShowTime showTime:"

    const/4 v3, 0x1

    .line 1
    :try_start_7
    invoke-static {p1}, Lcom/engagelab/privates/common/a1;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    return v3

    .line 3
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 5
    aget-object v4, p1, v2

    .line 6
    aget-object p1, p1, v3

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const-string v5, "\\^"

    .line 8
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x7

    .line 10
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xb

    .line 11
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",currentDay:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    array-length v1, v4

    move v7, v2

    :goto_5e
    if-ge v7, v1, :cond_99

    aget-char v8, v4, v7

    .line 14
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "settingDay:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    if-eq v6, v8, :cond_83

    goto :goto_99

    .line 16
    :cond_83
    aget-object v8, p1, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 17
    aget-object v9, p1, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_8f
    .catchall {:try_start_7 .. :try_end_8f} :catchall_97

    if-lt v5, v8, :cond_94

    if-gt v5, v9, :cond_94

    return v3

    :cond_94
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    :catchall_97
    move-exception p1

    goto :goto_9a

    :cond_99
    :goto_99
    return v2

    .line 18
    :goto_9a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isNotificationShowTime failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {p1, v1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v3
.end method

.method public d(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "notification_badge"

    .line 36
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "MTPushBusiness"

    if-gez p2, :cond_10

    const-string p1, "setNotificationBadge error: number count must >= 0"

    .line 37
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_10
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/a1;->b(Landroid/content/Context;I)V

    .line 39
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "huawei"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string v3, "honor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "setNotificationBadge not support "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_42
    invoke-static {p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->setHonorBadge(Landroid/content/Context;I)Z

    return-void

    .line 43
    :cond_46
    invoke-static {p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->setHuaweiBadgeNumber(Landroid/content/Context;I)V

    return-void
.end method

.method public d(Landroid/content/Context;)Z
    .registers 12

    const-string v0, ":"

    const-string v1, "MTPushBusiness"

    const-string v2, "isNotificationSilenceTime currentTime:"

    const-string v3, "isNotificationSilenceTime cacheSilenceTime:"

    const/4 v4, 0x0

    .line 1
    :try_start_9
    invoke-static {p1}, Lcom/engagelab/privates/common/a1;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    return v4

    .line 3
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "begin_hour"

    .line 5
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v5, "begin_minute"

    .line 6
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "end_hour"

    .line 7
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "end_minute"

    .line 8
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v8, 0xb

    .line 10
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xc

    .line 11
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 12
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", silenceTime:"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ge p1, v6, :cond_ab

    if-le v8, p1, :cond_91

    if-ge v8, v6, :cond_91

    const-string p1, "is notificationSilenceTime 1"

    .line 13
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_8e
    move-exception p1

    goto/16 :goto_111

    :cond_91
    if-ne v8, p1, :cond_9b

    if-lt v7, v5, :cond_9b

    const-string p1, "is notificationSilenceTime 2"

    .line 14
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_9b
    if-ne v8, v6, :cond_a5

    if-gt v7, v3, :cond_a5

    const-string p1, "is notificationSilenceTime 3"

    .line 15
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_a5
    const-string p1, "not notificationSilenceTime 1"

    .line 16
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_ab
    if-ne p1, v6, :cond_df

    if-lt v5, v3, :cond_cd

    if-eq v8, p1, :cond_b7

    const-string p1, "is notificationSilenceTime 4"

    .line 17
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b7
    if-lt v7, v5, :cond_bf

    const-string p1, "is notificationSilenceTime 5"

    .line 18
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_bf
    if-gt v7, v3, :cond_c7

    const-string p1, "is notificationSilenceTime 6"

    .line 19
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_c7
    const-string p1, "not notificationSilenceTime 2"

    .line 20
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_cd
    if-ne v8, p1, :cond_d9

    if-lt v7, v5, :cond_d9

    if-gt v7, v3, :cond_d9

    const-string p1, "is notificationSilenceTime 7"

    .line 21
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_d9
    const-string p1, "not notificationSilenceTime 3"

    .line 22
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_df
    if-le p1, v6, :cond_11b

    if-le v8, p1, :cond_ed

    const/16 v2, 0x17

    if-gt v8, v2, :cond_ed

    const-string p1, "is notificationSilenceTime 8"

    .line 23
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_ed
    if-ltz v8, :cond_f7

    if-ge v8, v6, :cond_f7

    const-string p1, "is notificationSilenceTime 9"

    .line 24
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_f7
    if-ne v8, p1, :cond_101

    if-lt v7, v5, :cond_101

    const-string p1, "is notificationSilenceTime 10"

    .line 25
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_101
    if-ne v8, v6, :cond_10b

    if-gt v7, v3, :cond_10b

    const-string p1, "is notificationSilenceTime 11"

    .line 26
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_10b
    const-string p1, "not notificationSilenceTime 4"

    .line 27
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_110
    .catchall {:try_start_9 .. :try_end_110} :catchall_8e

    return v4

    .line 28
    :goto_111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isNotificationSilenceTime failed "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    :cond_11b
    const-string p1, "not notificationSilenceTime 5"

    .line 31
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public e(Landroid/content/Context;)V
    .registers 8

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_20

    const-string v1, "itime"

    .line 6
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 9
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :catchall_20
    move-exception p1

    goto/16 :goto_df

    .line 10
    :cond_23
    :goto_23
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getGAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/DeviceUtil;->hasGAIDPermission(Landroid/content/Context;)Z

    move-result v3

    .line 12
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/DeviceUtil;->isAdTrackingEnabled(Landroid/content/Context;)Z

    move-result v4

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v4

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lang"

    .line 14
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_20

    const-string v1, "contry"

    .line 15
    :try_start_4d
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_20

    const-string v1, "carrier"

    .line 16
    :try_start_56
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_20

    const-string v1, "os_version"

    .line 17
    :try_start_5f
    invoke-static {}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getSystemVersionRelease()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_20

    const-string v1, "os_version_code"

    .line 18
    :try_start_68
    invoke-static {}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getSystemVersionSdkInt()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_20

    const-string v1, "model"

    .line 19
    :try_start_71
    invoke-static {}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_20

    const-string v1, "device_name"

    .line 20
    :try_start_7a
    invoke-static {}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getSystemDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_20

    const-string v1, "product"

    .line 21
    :try_start_83
    invoke-static {}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getProduct()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_20

    const-string v1, "manufacturer"

    .line 22
    :try_start_8c
    invoke-static {}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_20

    const-string v1, "time_zone"

    .line 23
    :try_start_95
    invoke-static {}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9c
    .catchall {:try_start_95 .. :try_end_9c} :catchall_20

    const-string v1, "time_zone_id"

    .line 24
    :try_start_9e
    invoke-static {}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getTimeZoneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_20

    const-string v1, "app_version"

    .line 25
    :try_start_a7
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_20

    const-string v1, "android_id"

    .line 26
    :try_start_b0
    invoke-static {p1}, Lcom/engagelab/privates/common/utils/DeviceUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gaid"

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-direct {v1}, Lcom/engagelab/privates/core/api/MTReporter;-><init>()V

    const-string v2, "oversea_info"

    .line 30
    invoke-virtual {v1, v2}, Lcom/engagelab/privates/core/api/MTReporter;->setType(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Lcom/engagelab/privates/core/api/MTReporter;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v0

    .line 32
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "protocol"

    .line 33
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v0, 0x8b9

    .line 34
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_de
    .catchall {:try_start_b0 .. :try_end_de} :catchall_20

    return-void

    .line 35
    :goto_df
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportSoverseaInfo failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MTPushBusiness"

    .line 36
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public e(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "notification_count"

    .line 1
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "MTPushBusiness"

    if-gtz p2, :cond_13

    const-string p1, "setNotificationCount error: count must > 0"

    .line 2
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNotificationCount "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/a1;->c(Landroid/content/Context;I)V

    return-void
.end method

.method public f(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/a1;->b(Landroid/content/Context;I)V

    .line 2
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "huawei"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "honor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setNotificationBadge not support "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MTPushBusiness"

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_35
    invoke-static {p1, v0}, Lcom/engagelab/privates/push/utils/NotificationUtil;->setHonorBadge(Landroid/content/Context;I)Z

    return-void

    .line 6
    :cond_39
    invoke-static {p1, v0}, Lcom/engagelab/privates/push/utils/NotificationUtil;->setHuaweiBadgeNumber(Landroid/content/Context;I)V

    return-void
.end method

.method public f(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 12

    const-string v0, "MTPushBusiness"

    const-string v1, "setNotificationLayout id:"

    .line 7
    :try_start_4
    const-class v2, Lcom/engagelab/privates/push/api/NotificationLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "id"

    .line 8
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "notification_layout"

    .line 9
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/push/api/NotificationLayout;

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getLayoutId()I

    move-result v1

    .line 12
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getIconViewId()I

    move-result v3

    .line 13
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getIconResourceId()I

    move-result v4

    .line 14
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getTitleViewId()I

    move-result v5

    .line 15
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getContentViewId()I

    move-result v6

    .line 16
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationLayout;->getTimeViewId()I

    move-result p2

    .line 17
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "layout_id"

    .line 18
    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "icon_view_id"

    .line 19
    invoke-virtual {v7, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "icon_resource_id"

    .line 20
    invoke-virtual {v7, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "title_view_id"

    .line 21
    invoke-virtual {v7, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "content_view_id"

    .line 22
    invoke-virtual {v7, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "time_view_id"

    .line 23
    invoke-virtual {v7, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, p2}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_73
    .catchall {:try_start_4 .. :try_end_73} :catchall_74

    return-void

    :catchall_74
    move-exception p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "setNotificationLayout failed "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public g(Landroid/content/Context;)V
    .registers 4

    const-string v0, "MTPushBusiness"

    const-string v1, "resetNotificationCount"

    .line 25
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 26
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/a1;->c(Landroid/content/Context;I)V

    return-void
.end method

.method public g(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "setNotificationShowTime startHour:"

    const-string v1, "setNotificationShowTime:"

    const-string v2, "MTPushBusiness"

    .line 1
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "day"

    .line 2
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 3
    array-length v3, v1

    if-nez v3, :cond_30

    const-string p2, "setNotificationShowTime weekDays.length is 0, can\'t show notification everyTime"

    .line 4
    invoke-static {v2, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    .line 5
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/a1;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_2d
    move-exception p1

    goto/16 :goto_d7

    :cond_30
    const-string v3, "begin_hour"

    .line 6
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "end_hour"

    .line 7
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",endHour:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",weekDays:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    array-length v4, v1

    const/4 v5, 0x0

    :goto_66
    if-ge v5, v4, :cond_74

    aget v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 11
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    :cond_74
    const-string v1, "_"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_84
    .catchall {:try_start_6 .. :try_end_84} :catchall_2d

    const-string p2, "([0-9]|1[0-9]|2[0-3])\\^([0-9]|1[0-9]|2[0-3])"

    .line 13
    :try_start_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "([0-6]{0,7})_(("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")|("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-)+("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "))"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 15
    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_c2

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/engagelab/privates/common/a1;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_c2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setNotificationShowTime invalid time format - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_86 .. :try_end_d6} :catchall_2d

    return-void

    .line 19
    :goto_d7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setNotificationPushTime failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {p1, p2, v2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public h(Landroid/content/Context;)V
    .registers 4

    const-string v0, "MTPushBusiness"

    const-string v1, "resetNotificationShowTime"

    .line 1
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 2
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/a1;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public h(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 14

    const-string v0, ":"

    const-string v1, "MTPushBusiness"

    const-string v2, "end_minute"

    const-string v3, "end_hour"

    const-string v4, "begin_minute"

    const-string v5, "begin_hour"

    const-string v6, "setNotificationSilenceTime:"

    .line 3
    :try_start_e
    invoke-virtual {p2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 4
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 5
    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 6
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {v0, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/engagelab/privates/common/a1;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_e .. :try_end_59} :catchall_5a

    return-void

    :catchall_5a
    move-exception p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setNotificationSilenceTime failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {p1, p2, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public i(Landroid/content/Context;)V
    .registers 4

    .line 1
    const-string v0, "MTPushBusiness"

    .line 2
    .line 3
    const-string v1, "resetNotificationSilenceTime"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/a1;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
