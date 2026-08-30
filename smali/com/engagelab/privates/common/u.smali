###### Class com.engagelab.privates.common.u (com.engagelab.privates.common.u)
.class public Lcom/engagelab/privates/common/u;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/engagelab/privates/common/f0$d;


# static fields
.field public static volatile j:Lcom/engagelab/privates/common/u;


# instance fields
.field public a:Lcom/engagelab/privates/common/f0;

.field public b:Lcom/engagelab/privates/common/a0;

.field public c:Lcom/engagelab/privates/push/api/InAppMessage;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:I

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/engagelab/privates/common/a0;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/engagelab/privates/common/a0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/u;->b:Lcom/engagelab/privates/common/a0;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/engagelab/privates/common/u;->h:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/engagelab/privates/common/u;->i:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic a(Lcom/engagelab/privates/common/u;)I
    .registers 1

    .line 3
    iget p0, p0, Lcom/engagelab/privates/common/u;->g:I

    return p0
.end method

.method public static synthetic a(Lcom/engagelab/privates/common/u;I)I
    .registers 2

    .line 4
    iput p1, p0, Lcom/engagelab/privates/common/u;->g:I

    return p1
.end method

.method public static a()Lcom/engagelab/privates/common/u;
    .registers 2

    .line 5
    sget-object v0, Lcom/engagelab/privates/common/u;->j:Lcom/engagelab/privates/common/u;

    if-nez v0, :cond_19

    .line 6
    const-class v0, Lcom/engagelab/privates/common/u;

    monitor-enter v0

    .line 7
    :try_start_7
    sget-object v1, Lcom/engagelab/privates/common/u;->j:Lcom/engagelab/privates/common/u;

    if-nez v1, :cond_15

    .line 8
    new-instance v1, Lcom/engagelab/privates/common/u;

    invoke-direct {v1}, Lcom/engagelab/privates/common/u;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/u;->j:Lcom/engagelab/privates/common/u;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 9
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 10
    :cond_19
    :goto_19
    sget-object v0, Lcom/engagelab/privates/common/u;->j:Lcom/engagelab/privates/common/u;

    return-object v0
.end method

.method public static a(I)Z
    .registers 2

    .line 2
    const/16 v0, 0xa

    if-eq v0, p0, :cond_1f

    const/16 v0, 0xb

    if-eq v0, p0, :cond_1f

    const/16 v0, 0x14

    if-eq v0, p0, :cond_1f

    const/16 v0, 0x15

    if-eq v0, p0, :cond_1f

    const/16 v0, 0x1f

    if-eq v0, p0, :cond_1f

    const/16 v0, 0x1e

    if-eq v0, p0, :cond_1f

    const/16 v0, 0x28

    if-ne v0, p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/engagelab/privates/common/u;)Lcom/engagelab/privates/common/f0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    return-object p0
.end method

.method public static h(Landroid/content/Context;)V
    .registers 3

    .line 1
    const/16 v0, 0x1387

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkAllowToShowOnMainProcess lifecycleState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/engagelab/privates/common/u;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTInAppManager"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-boolean v0, p0, Lcom/engagelab/privates/common/u;->d:Z

    if-eqz v0, :cond_3c

    .line 61
    invoke-virtual {p0}, Lcom/engagelab/privates/common/u;->b()Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "no message is showing,start to handle cache message"

    .line 62
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/engagelab/privates/common/u;->e:Ljava/lang/String;

    const-string v2, "target"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1384    # 7.001E-42f

    .line 65
    invoke-static {p1, v1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :cond_36
    const-string p1, "inapp message is showing,do nothing "

    .line 66
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3c
    const-string p1, "current in background,do nothing"

    .line 67
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .registers 5

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v1}, Lcom/engagelab/privates/push/api/InAppMessage;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    return-void
.end method

.method public a(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 7

    const/16 v0, 0x3f5

    const-string v1, "activity"

    const-string v2, "MTInAppManager"

    if-eq p2, v0, :cond_98

    const/16 v0, 0x3f6

    if-eq p2, v0, :cond_90

    const/16 v0, 0x3f9

    if-eq p2, v0, :cond_98

    const/16 v0, 0x3fa

    if-eq p2, v0, :cond_90

    const/16 v0, 0xce8

    if-eq p2, v0, :cond_8c

    const-string v0, "message"

    const-class v1, Lcom/engagelab/privates/push/api/InAppMessage;

    packed-switch p2, :pswitch_data_ac

    goto :goto_49

    .line 85
    :pswitch_20
    :try_start_20
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/engagelab/privates/push/api/InAppMessage;

    if-nez p3, :cond_37

    const-string p1, "message null"

    .line 87
    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_35
    move-exception p1

    goto :goto_a1

    .line 88
    :cond_37
    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string p1, "is Notification"

    .line 89
    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_43
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonReceiver(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;

    move-result-object v0

    if-nez v0, :cond_4a

    :goto_49
    return-void

    :cond_4a
    const/16 v1, 0xfa8

    if-ne v1, p2, :cond_52

    .line 91
    invoke-virtual {v0, p1, p3}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onInAppMessageClick(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V

    return-void

    .line 92
    :cond_52
    invoke-virtual {v0, p1, p3}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onInAppMessageShow(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V

    return-void

    .line 93
    :pswitch_56
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->c(Landroid/content/Context;)V

    return-void

    .line 94
    :pswitch_5a
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->j(Landroid/content/Context;)V

    return-void

    .line 95
    :pswitch_5e
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/push/api/InAppMessage;

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V

    return-void

    .line 98
    :pswitch_6f
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->f(Landroid/content/Context;)V

    return-void

    .line 99
    :pswitch_73
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->i(Landroid/content/Context;)V

    return-void

    .line 100
    :pswitch_77
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/push/api/InAppMessage;

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/u;->d(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V

    return-void

    .line 103
    :pswitch_88
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;)V

    return-void

    .line 104
    :cond_8c
    invoke-virtual {p0, p1, p3}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    .line 105
    :cond_90
    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_98
    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_20 .. :try_end_a0} :catchall_35

    return-void

    .line 107
    :goto_a1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "processMainMessage failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-static {p1, p2, v2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    :pswitch_data_ac
    .packed-switch 0xfa0
        :pswitch_88
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "reportCode code:"

    .line 47
    :try_start_2
    iget-object v1, p0, Lcom/engagelab/privates/common/u;->i:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_5e

    if-eqz v1, :cond_29

    const-string p1, "MTInAppManager"

    .line 48
    :try_start_c
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", messageID:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", is Notification"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msg_id"

    .line 50
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "result"

    .line 51
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    new-instance p2, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-direct {p2}, Lcom/engagelab/privates/core/api/MTReporter;-><init>()V

    const-string p3, "msg_status"

    .line 53
    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTReporter;->setType(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p2

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTReporter;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p2

    .line 55
    invoke-virtual {p2, p4}, Lcom/engagelab/privates/core/api/MTReporter;->setAppkey(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p2

    .line 56
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "protocol"

    .line 57
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0x8b9

    .line 58
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_5e
    .catchall {:try_start_c .. :try_end_5e} :catchall_5e

    :catchall_5e
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 16

    const-string v1, "MTInAppManager"

    if-nez p2, :cond_e

    :try_start_4
    const-string p1, "handleEventMatchNotification: bundle is null"

    .line 113
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_a
    move-exception v0

    move-object p1, v0

    goto/16 :goto_c0

    :cond_e
    const-string v0, "event_match_data"

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 115
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p1, "handleEventMatchNotification: event_match_data is empty"

    .line 116
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "match_results"

    .line 118
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_ba

    .line 119
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_ba

    :cond_35
    const/4 v0, 0x0

    .line 120
    :goto_36
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_9c

    .line 121
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_97

    const-string v3, "msgid"

    .line 122
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "event_name"

    .line 123
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "timestamp"

    .line 124
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v3, "platform"

    .line 125
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "msgtype"

    .line 126
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "appkey"

    .line 127
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "2"

    .line 128
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    move-object v4, p0

    move-object v5, p1

    .line 129
    invoke-virtual/range {v4 .. v12}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :cond_74
    move-object v5, p1

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEventMatchNotification: skip reporting for msgtype: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msgid: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (only process InApp messages)"

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

    .line 131
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

    .line 132
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_bf} :catch_a

    return-void

    .line 133
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

.method public a(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    .line 1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V
    .registers 4

    const-string p2, "MTInAppManager"

    const-string p3, "inapp dismiss"

    .line 11
    invoke-static {p2, p3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/x;->a(Landroid/content/Context;J)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->f(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V
    .registers 6

    if-eqz p1, :cond_5b

    if-eqz p2, :cond_5b

    .line 37
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    if-nez v0, :cond_9

    goto :goto_5b

    .line 38
    :cond_9
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/engagelab/privates/common/u;->b()Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    if-eqz v1, :cond_5b

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inapp cancel, cancel_messageId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MTInAppManager"

    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v1}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 42
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getAppkey()Ljava/lang/String;

    move-result-object p2

    const v1, 0x9aa1f5

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->f(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/x;->a(Landroid/content/Context;J)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .line 68
    const-string v0, "MTInAppManager"

    const-string v1, "find message messageId="

    const-string v2, "find message="

    :try_start_6
    invoke-static {}, Lcom/engagelab/privates/common/w;->d()Lcom/engagelab/privates/common/w;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/engagelab/privates/common/w;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object p2

    if-nez p2, :cond_18

    const-string p1, "no message,not need to show"

    .line 69
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_16
    move-exception p1

    goto :goto_62

    .line 70
    :cond_18
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification()Z

    move-result v3

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/engagelab/privates/common/u;->a(ZLjava/lang/String;)V

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/z;->d(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object p2

    if-nez p2, :cond_52

    const/16 p2, 0xfa6

    const/4 v1, 0x0

    .line 74
    invoke-static {p1, p2, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    .line 75
    :cond_52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 76
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0xfa1

    .line 77
    invoke-static {p1, p2, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_61
    .catchall {:try_start_6 .. :try_end_61} :catchall_16

    return-void

    .line 78
    :goto_62
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "handleMessageOnRemoteProcess throwable="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const v0, 0x9a9a24

    .line 83
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string p6, "MTInAppManager"

    const-string p7, "reportEventMatch: reported event match for msgid: "

    .line 134
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msg_id"

    .line 135
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "result"

    const v2, 0x9aa5d8

    .line 136
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "target_event_time"

    .line 137
    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "target_event"

    .line 138
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    new-instance v1, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-direct {v1}, Lcom/engagelab/privates/core/api/MTReporter;-><init>()V

    .line 140
    invoke-virtual {v1, p8}, Lcom/engagelab/privates/core/api/MTReporter;->setAppkey(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v1

    const-string v2, "msg_status"

    .line 141
    invoke-virtual {v1, v2}, Lcom/engagelab/privates/core/api/MTReporter;->setType(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v1

    .line 142
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/engagelab/privates/core/api/MTReporter;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v0

    .line 143
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "protocol"

    .line 144
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v0, 0x8b9

    .line 145
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", event: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", timestamp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", appkey: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_4 .. :try_end_6d} :catchall_6e

    return-void

    :catchall_6e
    move-exception p1

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "reportEventMatch: error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 6

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onForegroundStateChange isForeground="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " currentActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTInAppManager"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/engagelab/privates/common/u;->g:I

    .line 17
    iput-boolean p2, p0, Lcom/engagelab/privates/common/u;->d:Z

    const/16 p2, 0x1385

    const/4 v0, 0x0

    .line 18
    invoke-static {p1, p2, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->e(Landroid/content/Context;)V

    .line 20
    iget-object p2, p0, Lcom/engagelab/privates/common/u;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 21
    iput-object p3, p0, Lcom/engagelab/privates/common/u;->e:Ljava/lang/String;

    const-wide/16 p2, -0x1

    .line 22
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/x;->a(Landroid/content/Context;J)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->f(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 9

    .line 25
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4d

    aget-object v2, p2, v1

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_4a

    .line 27
    :cond_d
    invoke-static {}, Lcom/engagelab/privates/common/w;->d()Lcom/engagelab/privates/common/w;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/engagelab/privates/common/w;->d(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    move-result-object v3

    .line 28
    invoke-static {}, Lcom/engagelab/privates/common/w;->d()Lcom/engagelab/privates/common/w;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/engagelab/privates/common/w;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 29
    array-length v4, p2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_26

    const/4 v2, 0x1

    .line 30
    aget-object v2, p2, v2

    :cond_26
    if-eqz v3, :cond_4a

    .line 31
    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/InAppMessage;->getAppkey()Ljava/lang/String;

    move-result-object v3

    const v4, 0x9aa1f5

    invoke-virtual {p0, p1, v4, v2, v3}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 32
    :cond_33
    new-instance v3, Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-direct {v3}, Lcom/engagelab/privates/push/api/InAppMessage;-><init>()V

    .line 33
    invoke-virtual {v3, v2}, Lcom/engagelab/privates/push/api/InAppMessage;->setMessageId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/InAppMessage;

    .line 34
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "message"

    .line 35
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v3, 0xfa4

    .line 36
    invoke-static {p1, v3, v2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4d
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/engagelab/privates/common/u;->d:Z

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_1f

    .line 79
    iget-object p1, p0, Lcom/engagelab/privates/common/u;->i:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 80
    iget-object p1, p0, Lcom/engagelab/privates/common/u;->i:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_f
    iget-object p1, p0, Lcom/engagelab/privates/common/u;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x32

    if-le p1, p2, :cond_1f

    .line 82
    iget-object p1, p0, Lcom/engagelab/privates/common/u;->i:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public final b(Landroid/content/Context;)J
    .registers 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDelayTime mInAppMessage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTInAppManager"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getDelayTime mInAppMessageId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    if-eqz v0, :cond_4a

    .line 5
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_43

    .line 6
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->getInterval()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/z;->a(Landroid/content/Context;J)J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_43
    iget-object p1, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getDelay()J

    move-result-wide v0

    return-wide v0

    :cond_4a
    const-string p1, "getDelayTime default 0"

    .line 8
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    packed-switch p2, :pswitch_data_36

    return-void

    .line 61
    :pswitch_4
    :try_start_4
    invoke-static {}, Lcom/engagelab/privates/common/w;->d()Lcom/engagelab/privates/common/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/engagelab/privates/common/w;->b()V

    return-void

    :catchall_c
    move-exception p1

    goto :goto_28

    .line 62
    :pswitch_e
    invoke-static {}, Lcom/engagelab/privates/common/w;->d()Lcom/engagelab/privates/common/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/engagelab/privates/common/w;->c()V

    return-void

    .line 63
    :pswitch_16
    invoke-static {}, Lcom/engagelab/privates/common/w;->d()Lcom/engagelab/privates/common/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/engagelab/privates/common/w;->e()V

    return-void

    :pswitch_1e
    const-string p2, "target"

    .line 64
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_c

    return-void

    .line 66
    :goto_28
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "processRemoteMessage failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "MTInAppManager"

    .line 67
    invoke-static {p1, p2, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1384
        :pswitch_1e
        :pswitch_16
        :pswitch_e
        :pswitch_4
    .end packed-switch
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 12

    const-string v0, "html"

    const-string v1, "type"

    const-string v2, "appkey"

    const-string v3, "MTInAppManager"

    const-string v4, "parseInApp not support type="

    :try_start_a
    const-string v5, "message"

    .line 17
    invoke-virtual {p2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "message_id"

    .line 18
    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 19
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_35

    const-string v8, "extra"

    .line 22
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_35

    .line 23
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_35

    :catchall_32
    move-exception p1

    goto/16 :goto_12f

    :cond_35
    :goto_35
    const-string v2, "is_notification"

    const/4 v8, 0x0

    .line 24
    invoke-virtual {p2, v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 25
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v2, v8}, Lcom/engagelab/privates/common/u;->a(ZLjava/lang/String;)V

    const-string v2, "msg_id"

    .line 26
    invoke-virtual {p2, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 28
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v5}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "missing params type"

    .line 29
    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_5b
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 31
    invoke-static {v1}, Lcom/engagelab/privates/common/u;->a(I)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 32
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v5}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7c
    const-string v2, "banner"

    .line 34
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_82
    .catchall {:try_start_a .. :try_end_82} :catchall_32

    const-string v4, "parseInApp image value is null"

    const-string v8, "image"

    if-eqz v2, :cond_a1

    const/16 v2, 0xb

    if-ne v2, v1, :cond_a1

    .line 35
    :try_start_8c
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 37
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v5}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {v3, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a1
    const-string v2, "full"

    .line 39
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    const/16 v2, 0x1f

    if-eq v2, v1, :cond_b1

    const/16 v2, 0x1e

    if-ne v2, v1, :cond_c6

    .line 40
    :cond_b1
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 42
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v5}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {v3, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c6
    const-string v2, "interstitial"

    .line 44
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e7

    const/16 v2, 0x15

    if-ne v2, v1, :cond_e7

    .line 45
    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 47
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v5}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {v3, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_e7
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10e

    const/16 v2, 0x28

    if-ne v2, v1, :cond_10e

    .line 50
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "content"

    .line 51
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 53
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v5}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "parseInApp content value is null"

    .line 54
    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_10e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "msg_time"

    .line 56
    invoke-virtual {p2, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    invoke-static {}, Lcom/engagelab/privates/common/w;->d()Lcom/engagelab/privates/common/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/engagelab/privates/common/w;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 58
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const v0, 0x9a9a25

    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xfa0

    const/4 v0, 0x0

    .line 59
    invoke-static {p1, p2, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_12e
    .catchall {:try_start_8c .. :try_end_12e} :catchall_32

    return-void

    .line 60
    :goto_12f
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onMessage failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V
    .registers 6

    const-string v0, "handleCancelMessage  msgId="

    const-string v1, "MTInAppManager"

    .line 14
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x9aa1f5

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;I)V
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception p1

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "handleCancelMessage  throwable="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_31

    .line 9
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->b:Lcom/engagelab/privates/common/a0;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    if-nez v1, :cond_b

    goto :goto_31

    .line 10
    :cond_b
    invoke-virtual {v0, p2}, Lcom/engagelab/privates/common/a0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/engagelab/privates/common/u;->b:Lcom/engagelab/privates/common/a0;

    iget-object v1, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    invoke-virtual {v0, v1}, Lcom/engagelab/privates/common/a0;->a(Lcom/engagelab/privates/common/f0;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onActivityDestroy] dismiss showing   inapp, activityName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MTInAppManager"

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->f(Landroid/content/Context;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public b()Z
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->b:Lcom/engagelab/privates/common/a0;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    invoke-virtual {v0, v1}, Lcom/engagelab/privates/common/a0;->b(Lcom/engagelab/privates/common/f0;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/content/Context;)V
    .registers 5

    const-string v0, "MTInAppManager"

    :try_start_2
    const-string v1, "handleMessageFailed"

    .line 10
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->g(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception p1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessageFailed  throwable="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    const-string v0, "protocol"

    .line 14
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1e

    .line 16
    :cond_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "ids"

    .line 17
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    const-string v0, ","

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "revokeMessage failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MTInAppManager"

    .line 22
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V
    .registers 12

    const-string v1, "MTInAppManager"

    :try_start_2
    const-string v0, "handleShowSuccess"

    .line 1
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x9a9e08

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->getType()I

    move-result v0

    const/16 v2, 0x1e

    if-ne v2, v0, :cond_26

    .line 4
    sget-object v4, Lcom/engagelab/privates/inapp/MTInApp;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const-wide/16 v7, 0x3e8

    const/16 v5, 0xfa5

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageDelayed(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;J)V

    goto :goto_27

    :catchall_23
    move-exception v0

    move-object p1, v0

    goto :goto_42

    :cond_26
    move-object v3, p1

    .line 5
    :goto_27
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_23

    const-string v0, "message"

    .line 6
    :try_start_2e
    iget-object v2, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v0, 0xfa7

    .line 7
    invoke-static {v3, v0, p1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/engagelab/privates/common/u;->h:Ljava/util/List;

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_23

    return-void

    .line 9
    :goto_42
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "handleCancelMessage  throwable="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .registers 5

    const-string v0, "MTInAppManager"

    :try_start_2
    const-string v1, "handleShowFailed "

    .line 25
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/engagelab/privates/common/u;->h(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->f(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->g(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception p1

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleShowFailed  throwable="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V
    .registers 11

    const-string v0, "inapp inflate start"

    .line 1
    const-string v1, "MTInAppManager"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    if-nez p2, :cond_e

    :cond_b
    move-object v2, p1

    goto/16 :goto_86

    .line 2
    :cond_e
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification()Z

    move-result v0

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/engagelab/privates/common/u;->a(ZLjava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 4
    :try_start_1b
    invoke-virtual {p0}, Lcom/engagelab/privates/common/u;->b()Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_6b

    if-eqz v0, :cond_2b

    :try_start_21
    const-string p2, "inapp is showing now, return "

    .line 5
    invoke-static {v1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    move-object p2, v0

    move-object v2, p1

    goto :goto_78

    .line 6
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/z;->a(Lcom/engagelab/privates/push/api/InAppMessage;I)Lcom/engagelab/privates/common/d0;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_6b

    if-nez v0, :cond_40

    .line 7
    :try_start_37
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->d(Landroid/content/Context;)V

    const-string p2, "inapp inflate failed, layout config is null"

    .line 8
    invoke-static {v1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_27

    return-void

    .line 9
    :cond_40
    :try_start_40
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/InAppMessage;->getType()I

    move-result v2

    invoke-static {p1, v0, p2, v2}, Lcom/engagelab/privates/common/f0;->a(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)Lcom/engagelab/privates/common/f0;

    move-result-object p2

    iput-object p2, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    .line 10
    invoke-virtual {p2}, Lcom/engagelab/privates/common/f0;->f()Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 11
    iget-object p2, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    invoke-virtual {p2, p0}, Lcom/engagelab/privates/common/f0;->a(Lcom/engagelab/privates/common/f0$d;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/u;->b(Landroid/content/Context;)J

    move-result-wide v6

    .line 13
    sget-object v3, Lcom/engagelab/privates/inapp/MTInApp;->a:Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_40 .. :try_end_5b} :catchall_6b

    const/16 v4, 0xfa2

    const/4 v5, 0x0

    move-object v2, p1

    :try_start_5f
    invoke-static/range {v2 .. v7}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageDelayed(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;J)V

    const-string p1, "inapp inflate succeed"

    .line 14
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_68
    move-exception v0

    :goto_69
    move-object p2, v0

    goto :goto_78

    :catchall_6b
    move-exception v0

    move-object v2, p1

    goto :goto_69

    :cond_6e
    move-object v2, p1

    .line 15
    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/u;->d(Landroid/content/Context;)V

    const-string p1, "inapp inflate failed"

    .line 16
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_5f .. :try_end_77} :catchall_68

    return-void

    .line 17
    :goto_78
    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/u;->d(Landroid/content/Context;)V

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "inflate InApp failed, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {p2, p1, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    .line 20
    :goto_86
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "inapp inflate failed, param is null, context: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/engagelab/privates/common/u;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    goto :goto_b

    .line 6
    :cond_5
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->isMainProcess(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_c

    .line 11
    .line 12
    :goto_b
    return-void

    .line 13
    :cond_c
    new-instance v0, Landroid/content/IntentFilter;

    .line 14
    .line 15
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/engagelab/privates/common/u$a;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/engagelab/privates/common/u$a;-><init>(Lcom/engagelab/privates/common/u;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/engagelab/privates/common/u;->f:Z

    .line 30
    .line 31
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_33

    .line 15
    .line 16
    sget-object v0, Lcom/engagelab/privates/inapp/MTInApp;->a:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v1, 0xfa5

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->removeMessages(Landroid/content/Context;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x1386

    .line 24
    .line 25
    invoke-static {p1, v0, v2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->b:Lcom/engagelab/privates/common/a0;

    .line 29
    .line 30
    if-eqz v0, :cond_29

    .line 31
    .line 32
    iget-object v1, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    .line 33
    .line 34
    if-eqz v1, :cond_29

    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Lcom/engagelab/privates/common/a0;->a(Landroid/content/Context;Lcom/engagelab/privates/common/f0;)V

    .line 37
    .line 38
    .line 39
    goto :goto_29

    .line 40
    :catchall_27
    move-exception p1

    .line 41
    goto :goto_39

    .line 42
    :cond_29
    :goto_29
    iget-object p1, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    .line 43
    .line 44
    if-eqz p1, :cond_32

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Lcom/engagelab/privates/common/f0;->a(Lcom/engagelab/privates/common/f0$d;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    .line 50
    .line 51
    :cond_32
    return-void

    .line 52
    :cond_33
    const/16 v0, 0xfa3

    .line 53
    .line 54
    invoke-static {p1, v0, v2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_27

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :goto_39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, "inapp dismiss failed, "

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "MTInAppManager"

    .line 66
    .line 67
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final g(Landroid/content/Context;)V
    .registers 3

    .line 1
    const v0, 0x9a9e14

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public i(Landroid/content/Context;)V
    .registers 10

    .line 1
    const-string v1, "MTInAppManager"

    .line 2
    .line 3
    const-string v0, "inapp not display, param is null, context: "

    .line 4
    .line 5
    :try_start_4
    const-string v2, "showMessageOnMainProcess"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_f

    .line 11
    .line 12
    iget-object v2, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 13
    .line 14
    if-nez v2, :cond_12

    .line 15
    .line 16
    :cond_f
    move-object v3, p1

    .line 17
    goto/16 :goto_c0

    .line 18
    .line 19
    :cond_12
    iget-boolean v0, p0, Lcom/engagelab/privates/common/u;->d:Z

    .line 20
    .line 21
    if-nez v0, :cond_20

    .line 22
    .line 23
    const-string v0, "inapp not display in background"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_1c
    move-exception v0

    .line 30
    move-object v3, p1

    .line 31
    goto/16 :goto_d3

    .line 32
    .line 33
    :cond_20
    invoke-static {}, Lcom/engagelab/privates/common/q0;->b()Lcom/engagelab/privates/common/q0;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const-string v6, ""
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_1c

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    move-object v3, p1

    .line 48
    :try_start_2f
    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;BLjava/lang/String;Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_43

    .line 53
    .line 54
    const-string p1, "inapp is canceled already, not to show"

    .line 55
    .line 56
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 60
    .line 61
    invoke-virtual {p0, v3, p1}, Lcom/engagelab/privates/common/u;->b(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_40
    move-exception v0

    .line 66
    goto/16 :goto_d3

    .line 67
    .line 68
    :cond_43
    iget-object p1, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/InAppMessage;->getTarget()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result p1
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_40

    .line 78
    const/4 v0, 0x1

    .line 79
    if-nez p1, :cond_8d

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    :try_start_51
    new-instance v2, Lorg/json/JSONArray;

    .line 83
    .line 84
    iget-object v4, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/engagelab/privates/push/api/InAppMessage;->getTarget()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move v4, p1

    .line 94
    :goto_5d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-ge v4, v5, :cond_77

    .line 99
    .line 100
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    iget-object v6, p0, Lcom/engagelab/privates/common/u;->e:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v5
    :try_end_71
    .catchall {:try_start_51 .. :try_end_71} :catchall_77

    .line 114
    if-eqz v5, :cond_74

    .line 115
    .line 116
    goto :goto_78

    .line 117
    :cond_74
    add-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    goto :goto_5d

    .line 120
    :catchall_77
    :cond_77
    move v0, p1

    .line 121
    :goto_78
    :try_start_78
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "inapp message isMatch target="

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_92

    .line 142
    :cond_8d
    const-string p1, "inapp message no target,match all activity"

    .line 143
    .line 144
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :goto_92
    if-nez v0, :cond_9b

    .line 148
    .line 149
    invoke-virtual {p0, v3}, Lcom/engagelab/privates/common/u;->f(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v3}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    goto :goto_e0

    .line 156
    :cond_9b
    iget-object p1, p0, Lcom/engagelab/privates/common/u;->b:Lcom/engagelab/privates/common/a0;

    .line 157
    .line 158
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->e:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v2, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    .line 161
    .line 162
    invoke-virtual {p1, v3, v0, v2}, Lcom/engagelab/privates/common/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/common/f0;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_b7

    .line 167
    .line 168
    iget-object p1, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/engagelab/privates/common/f0;->a()V

    .line 171
    .line 172
    .line 173
    const-string p1, "inapp message display success"

    .line 174
    .line 175
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/engagelab/privates/common/u;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 179
    .line 180
    invoke-virtual {p0, v3, p1}, Lcom/engagelab/privates/common/u;->c(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V

    .line 181
    .line 182
    .line 183
    goto :goto_e0

    .line 184
    :cond_b7
    const-string p1, "inapp message display failed"

    .line 185
    .line 186
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v3}, Lcom/engagelab/privates/common/u;->d(Landroid/content/Context;)V

    .line 190
    .line 191
    .line 192
    goto :goto_e0

    .line 193
    :goto_c0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v3}, Lcom/engagelab/privates/common/u;->d(Landroid/content/Context;)V
    :try_end_d2
    .catchall {:try_start_78 .. :try_end_d2} :catchall_40

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :goto_d3
    invoke-virtual {p0, v3}, Lcom/engagelab/privates/common/u;->d(Landroid/content/Context;)V

    .line 213
    .line 214
    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v2, "inapp show failed"

    .line 218
    .line 219
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-static {v0, p1, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :goto_e0
    return-void
.end method

.method public j(Landroid/content/Context;)V
    .registers 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/engagelab/privates/common/u;->a:Lcom/engagelab/privates/common/f0;

    .line 2
    .line 3
    if-eqz v0, :cond_16

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/engagelab/privates/common/f0;->j()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/engagelab/privates/inapp/MTInApp;->a:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const-wide/16 v5, 0x3e8

    .line 12
    .line 13
    const/16 v3, 0xfa5

    .line 14
    .line 15
    move-object v1, p1

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageDelayed(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;J)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_13
    move-exception v0

    .line 21
    move-object p1, v0

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    return-void

    .line 24
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "handleCancelMessage  throwable="

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "MTInAppManager"

    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

###### Class com.engagelab.privates.common.u.a (com.engagelab.privates.common.u$a)
.class public Lcom/engagelab/privates/common/u$a;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/u;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/u;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/u;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/u$a;->a:Lcom/engagelab/privates/common/u;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_3b

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 22
    .line 23
    iget-object p2, p0, Lcom/engagelab/privates/common/u$a;->a:Lcom/engagelab/privates/common/u;

    .line 24
    .line 25
    invoke-static {p2}, Lcom/engagelab/privates/common/u;->a(Lcom/engagelab/privates/common/u;)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eq p1, p2, :cond_3b

    .line 30
    .line 31
    iget-object p2, p0, Lcom/engagelab/privates/common/u$a;->a:Lcom/engagelab/privates/common/u;

    .line 32
    .line 33
    invoke-static {p2}, Lcom/engagelab/privates/common/u;->b(Lcom/engagelab/privates/common/u;)Lcom/engagelab/privates/common/f0;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-eqz p2, :cond_36

    .line 38
    .line 39
    const-string p2, "MTInAppManager"

    .line 40
    .line 41
    const-string v0, "orientation change refresh view"

    .line 42
    .line 43
    invoke-static {p2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/engagelab/privates/common/u$a;->a:Lcom/engagelab/privates/common/u;

    .line 47
    .line 48
    invoke-static {p2}, Lcom/engagelab/privates/common/u;->b(Lcom/engagelab/privates/common/u;)Lcom/engagelab/privates/common/f0;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lcom/engagelab/privates/common/f0;->g()V

    .line 53
    .line 54
    .line 55
    :cond_36
    iget-object p2, p0, Lcom/engagelab/privates/common/u$a;->a:Lcom/engagelab/privates/common/u;

    .line 56
    .line 57
    invoke-static {p2, p1}, Lcom/engagelab/privates/common/u;->a(Lcom/engagelab/privates/common/u;I)I

    .line 58
    .line 59
    .line 60
    :cond_3b
    return-void
.end method
