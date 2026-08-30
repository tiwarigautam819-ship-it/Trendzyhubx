###### Class com.engagelab.privates.common.q0 (com.engagelab.privates.common.q0)
.class public Lcom/engagelab/privates/common/q0;
.super Lcom/engagelab/privates/common/o0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile c:Lcom/engagelab/privates/common/q0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/common/q0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/engagelab/privates/common/q0;->c:Lcom/engagelab/privates/common/q0;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/o0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b()Lcom/engagelab/privates/common/q0;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/q0;->c:Lcom/engagelab/privates/common/q0;

    if-nez v0, :cond_13

    .line 2
    const-class v0, Lcom/engagelab/privates/common/q0;

    monitor-enter v0

    .line 3
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/q0;

    invoke-direct {v1}, Lcom/engagelab/privates/common/q0;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/q0;->c:Lcom/engagelab/privates/common/q0;

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
    sget-object v0, Lcom/engagelab/privates/common/q0;->c:Lcom/engagelab/privates/common/q0;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    .line 319
    sget-object v0, Lcom/engagelab/privates/common/q0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 320
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 321
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 322
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove group summary record from groupMap, group: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationId: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MTNotificationBusiness"

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_4a
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 5

    .line 100
    const-string v0, "MTNotificationBusiness"

    :try_start_2
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getLifecycleState()Z

    move-result v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_21

    const-string v2, "pushSdkVersionName:"

    if-eqz v1, :cond_23

    .line 101
    :try_start_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->SDK_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isForeground, no need launch"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_21
    move-exception p1

    goto :goto_4b

    .line 102
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->SDK_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isBackground, need launch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/engagelab/privates/common/global/MTGlobal;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 105
    invoke-virtual {p0, p1, v1}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_47
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/q0;->b(Landroid/content/Context;)V
    :try_end_4a
    .catchall {:try_start_a .. :try_end_4a} :catchall_21

    return-void

    .line 107
    :goto_4b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launch failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-static {p1, v1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;BLjava/lang/String;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "B",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p4, :cond_f

    .line 229
    new-instance p4, Ljava/util/LinkedHashSet;

    invoke-direct {p4}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_31

    .line 230
    :cond_f
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_31

    .line 231
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 232
    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 234
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v2, v1, :cond_1b

    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    .line 236
    :cond_31
    :goto_31
    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addMessageId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MTNotificationBusiness"

    invoke-static {v0, p3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {p1, p2, p4}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;BLjava/util/Set;)V

    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .registers 5

    const-string v0, "notification"

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancel notificationId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTNotificationBusiness"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    const v0, 0xf4240

    add-int/2addr v0, p2

    .line 196
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 197
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/q0;->c(I)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/q0;->b(I)V

    return-void
.end method

.method public a(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 10

    const-string v0, "MTNotificationBusiness"

    const-string v1, "prevent transfer to "

    const-string v2, "allow transfer to "

    .line 143
    :try_start_6
    const-class v3, Lcom/engagelab/privates/push/api/NotificationMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v3, "message"

    .line 144
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/engagelab/privates/push/api/NotificationMessage;

    if-nez v3, :cond_1a

    goto :goto_28

    .line 145
    :cond_1a
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonReceiver(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;

    move-result-object v4

    if-nez v4, :cond_21

    goto :goto_28

    :cond_21
    const/16 v5, 0xce7

    if-eq p2, v5, :cond_a0

    packed-switch p2, :pswitch_data_b0

    :goto_28
    return-void

    :pswitch_29
    const/16 p2, 0xf9b

    .line 146
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :catchall_2f
    move-exception p1

    goto :goto_a4

    .line 147
    :pswitch_31
    invoke-virtual {v4, p1, v3}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onNotificationDeleted(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V

    const/16 p2, 0xf9c

    .line 148
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    :pswitch_3a
    const-string p2, "on_notification_clicked"

    .line 149
    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getIntentUri()Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getIntentSsl()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2, v5}, Lcom/engagelab/privates/common/component/TransferCheck;->isAllowTransfer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object p2, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->SDK_VERSION_NAME:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7b

    .line 154
    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPlatform()B

    move-result p2

    if-nez p2, :cond_6f

    .line 155
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;)V

    .line 156
    :cond_6f
    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPlatform()B

    move-result p2

    const/16 v1, 0x8

    if-ne p2, v1, :cond_8e

    .line 157
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V

    goto :goto_8e

    .line 158
    :cond_7b
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V

    goto :goto_8e

    .line 159
    :cond_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_8e
    :goto_8e
    invoke-virtual {v4, p1, v3}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onNotificationClicked(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V

    const/16 p2, 0xf9d

    .line 161
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    .line 162
    :pswitch_97
    invoke-virtual {v4, p1, v3}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onNotificationArrived(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V

    const/16 p2, 0xf9e

    .line 163
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    .line 164
    :cond_a0
    invoke-virtual {v4, p1, v3}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onNotificationUnShow(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    :try_end_a3
    .catchall {:try_start_6 .. :try_end_a3} :catchall_2f

    return-void

    .line 165
    :goto_a4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "processMainMessage failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_b0
    .packed-switch 0xbba
        :pswitch_97
        :pswitch_3a
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    .registers 12

    .line 270
    const-string v0, "MTNotificationBusiness"

    const-string v1, "created group summary notification, group: "

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 271
    :try_start_6
    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getGroupId()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-static {}, Lcom/engagelab/privates/common/k0;->a()Lcom/engagelab/privates/common/k0;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/engagelab/privates/common/k0;->d(Landroid/content/Context;)Z

    move-result v4

    const/16 v5, 0x1a

    if-lt v2, v5, :cond_24

    .line 273
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-static {p1, v4, p3}, Lcom/engagelab/privates/push/utils/NotificationChannelUtil;->getChannel(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/getcapacitor/plugin/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    goto :goto_29

    :catchall_21
    move-exception p1

    goto/16 :goto_fb

    .line 274
    :cond_24
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_29
    const/4 v5, 0x1

    .line 275
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 277
    invoke-static {p1, p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getTitle(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    move-result-object v6

    .line 278
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 279
    invoke-virtual {p3, v6}, Lcom/engagelab/privates/push/api/NotificationMessage;->setTitle(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 280
    invoke-static {p1, p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getContent(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-static {p1, p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getContent(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 282
    invoke-virtual {p3, v6}, Lcom/engagelab/privates/push/api/NotificationMessage;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 283
    invoke-static {p1, v4, p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getDefaults(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I

    move-result v6

    .line 284
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 285
    invoke-virtual {p3, v6}, Lcom/engagelab/privates/push/api/NotificationMessage;->setDefaults(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 286
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 287
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    const/16 v3, 0xbbb

    .line 288
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/16 v3, 0xbbc

    .line 289
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 290
    invoke-static {p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getSmallIcon(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_7f

    .line 291
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 292
    :cond_7f
    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getLargeIcon()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getLargeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_8c

    .line 293
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 294
    :cond_8c
    invoke-static {p1, v4, p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getSoundUri(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_95

    .line 295
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 296
    :cond_95
    invoke-static {p1, p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationLayout(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/widget/RemoteViews;

    move-result-object v3

    if-eqz v3, :cond_9e

    .line 297
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 298
    :cond_9e
    invoke-static {p1, v4, p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getPriority(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I

    move-result v3

    .line 299
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 300
    invoke-static {p1, p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getStyle(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/app/Notification$Style;

    move-result-object v3

    .line 301
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 302
    invoke-static {p1, v4, p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getVisibility(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I

    move-result v3

    .line 303
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 304
    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c4

    .line 305
    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 306
    :cond_c4
    invoke-static {p1, p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getSmallIcon(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-eqz p1, :cond_cd

    .line 307
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 308
    :cond_cd
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 309
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 310
    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getNotificationId()I

    move-result v2

    const v3, 0xf4240

    add-int/2addr v2, v3

    .line 311
    invoke-virtual {p2, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getGroupId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", groupNotificationId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fa
    .catchall {:try_start_6 .. :try_end_fa} :catchall_21

    return-void

    .line 313
    :goto_fb
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "createGroupSummaryNotification failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "MTNotificationBusiness"

    const-string v1, "message"

    .line 1
    :try_start_4
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationMessage(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    move-result-object v2

    if-nez v2, :cond_16

    const-string p1, "notificationMessage  is null, can\'t show this notification"

    .line 3
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_14
    move-exception p1

    goto :goto_38

    :cond_16
    const-string v3, "message_type"

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 5
    invoke-virtual {v2, v3}, Lcom/engagelab/privates/push/api/NotificationMessage;->setMessageType(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    const-string v3, "message_limit"

    const/4 v4, 0x1

    .line 6
    invoke-virtual {p2, v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 7
    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;ZLandroid/os/Bundle;)V

    .line 8
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 9
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0xbba

    .line 10
    invoke-static {p1, v1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_14

    return-void

    .line 11
    :goto_38
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onMessage failed "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    .registers 7

    const-string v0, "MTNotificationBusiness"

    .line 113
    :try_start_2
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getIntentUri()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_28

    const-string v3, "pushSdkVersionName:"

    if-eqz v2, :cond_2a

    .line 115
    :try_start_e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->SDK_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", there is no intentUri, no need transfer"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;)V

    return-void

    :catchall_28
    move-exception p1

    goto :goto_6f

    .line 117
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->SDK_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", there is intentUri, need transfer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->parseUri(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x14000000

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_4e
    .catchall {:try_start_e .. :try_end_4e} :catchall_28

    const-string v3, "message_json"

    .line 121
    :try_start_50
    invoke-static {p2}, Lcom/engagelab/privates/push/utils/MsgToJson;->notificationMessageToJson(Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    :cond_6b
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6e
    .catchall {:try_start_50 .. :try_end_6e} :catchall_28

    return-void

    .line 127
    :goto_6f
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "transfer failed "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;ZLandroid/os/Bundle;)V
    .registers 14

    .line 12
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getDisplayForeground()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "message"

    const-string v2, "MTNotificationBusiness"

    if-eqz v0, :cond_2d

    .line 13
    invoke-static {}, Lcom/engagelab/privates/common/l0;->a()Lcom/engagelab/privates/common/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/engagelab/privates/common/l0;->b()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string p3, "displayForeground..."

    .line 14
    invoke-static {v2, p3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0xce7

    .line 17
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void

    .line 18
    :cond_2d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showNotification "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showNotification messageId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getMessageType()I

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_8b

    .line 22
    invoke-static {p1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationState(Landroid/content/Context;)Z

    move-result v3

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notificationState:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_8b

    .line 24
    invoke-static {p2, p4}, Lcom/engagelab/privates/push/utils/NotificationUtil;->notificationMessageToInApp(Lcom/engagelab/privates/push/api/NotificationMessage;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    if-eqz p4, :cond_86

    .line 25
    invoke-static {}, Lcom/engagelab/privates/common/m0;->a()Lcom/engagelab/privates/common/m0;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Lcom/engagelab/privates/common/m0;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :cond_86
    const-string p4, "TYPE_ENHANC_MESSAGE_NOTIFICATION messageBundle is null"

    .line 26
    invoke-static {v2, p4}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_8b
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPlatform()B

    move-result v5

    .line 28
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    .line 29
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getOverrideMessageId()Ljava/lang/String;

    move-result-object v7

    if-eqz p3, :cond_a4

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    .line 30
    invoke-virtual/range {v3 .. v8}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;BLjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_a6

    goto/16 :goto_295

    :cond_a4
    move-object v3, p0

    move-object v4, p1

    .line 31
    :cond_a6
    invoke-static {}, Lcom/engagelab/privates/common/k0;->a()Lcom/engagelab/privates/common/k0;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/engagelab/privates/common/k0;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_c6

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "is not notificationShowTime, notificationShowTime:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/engagelab/privates/common/a1;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_c6
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_fb

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "notificationMessage\'s content is null, can\'t show this notification "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "notificationMessage\'s content is null, can\'t show this notification: messageId: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getMessageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_fb
    invoke-static {}, Lcom/engagelab/privates/common/k0;->a()Lcom/engagelab/privates/common/k0;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/engagelab/privates/common/k0;->d(Landroid/content/Context;)Z

    move-result p1

    const/16 p3, 0x1a

    if-lt v0, p3, :cond_110

    .line 37
    invoke-static {v4, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationChannelUtil;->getChannel(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    move-result-object p3

    .line 38
    invoke-static {v4, p3}, Lcom/getcapacitor/plugin/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p3

    goto :goto_115

    .line 39
    :cond_110
    new-instance p3, Landroid/app/Notification$Builder;

    invoke-direct {p3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    :goto_115
    invoke-static {v4, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getGroup(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    move-result-object p4

    .line 41
    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 42
    invoke-virtual {p2, p4}, Lcom/engagelab/privates/push/api/NotificationMessage;->setGroupId(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "noti group "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p4, 0x1

    .line 44
    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p3, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 46
    invoke-static {v4, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getTitle(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 48
    invoke-virtual {p2, v0}, Lcom/engagelab/privates/push/api/NotificationMessage;->setTitle(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 49
    invoke-static {v4, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getContent(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v4, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getContent(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 51
    invoke-virtual {p2, v0}, Lcom/engagelab/privates/push/api/NotificationMessage;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 52
    invoke-static {v4, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getDefaults(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I

    move-result v0

    .line 53
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 54
    invoke-virtual {p2, v0}, Lcom/engagelab/privates/push/api/NotificationMessage;->setDefaults(I)Lcom/engagelab/privates/push/api/NotificationMessage;

    const/16 v0, 0xbbb

    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/16 v0, 0xbbc

    .line 56
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 57
    invoke-static {v4}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getSmallIcon(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_191

    .line 58
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getSmallIcon from xml smallIconId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_191
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getLargeIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getLargeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_19e

    .line 61
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 62
    :cond_19e
    invoke-static {v4, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getSoundUri(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1a7

    .line 63
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 64
    :cond_1a7
    invoke-static {v4, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationLayout(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1b0

    .line 65
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 66
    :cond_1b0
    invoke-static {v4, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getPriority(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I

    move-result v0

    .line 67
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 68
    invoke-static {v4, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getStyle(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/app/Notification$Style;

    move-result-object v0

    .line 69
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 70
    invoke-static {v4, p1, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getVisibility(Landroid/content/Context;ZLcom/engagelab/privates/push/api/NotificationMessage;)I

    move-result p1

    .line 71
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 72
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d6

    .line 73
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getCategory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 74
    :cond_1d6
    invoke-static {v4, p2}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getSmallIcon(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-eqz p1, :cond_1df

    .line 75
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 76
    :cond_1df
    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 77
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getColor()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1f3

    .line 79
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 80
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_1f3
    const-string p1, "notification"

    .line 81
    invoke-virtual {v4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 82
    invoke-virtual {p0, v4, p1, p2}, Lcom/engagelab/privates/common/q0;->b(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/engagelab/privates/push/api/NotificationMessage;)V

    .line 83
    invoke-static {}, Lcom/engagelab/privates/common/k0;->a()Lcom/engagelab/privates/common/k0;

    move-result-object p4

    invoke-virtual {p4, v4}, Lcom/engagelab/privates/common/k0;->b(Landroid/content/Context;)I

    move-result p4

    .line 84
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getNotificationId()I

    move-result v0

    invoke-static {v0}, Lcom/engagelab/privates/common/r0;->b(I)Z

    .line 85
    invoke-static {}, Lcom/engagelab/privates/common/r0;->c()I

    move-result v0

    if-le v0, p4, :cond_246

    .line 86
    invoke-static {}, Lcom/engagelab/privates/common/r0;->a()Z

    move-result v5

    if-nez v5, :cond_246

    .line 87
    invoke-static {}, Lcom/engagelab/privates/common/r0;->b()I

    move-result v5

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currentNotificationCount is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", limit notificationCount ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "], need remove notificationId["

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 90
    :cond_246
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "after offer current queue size "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/engagelab/privates/common/r0;->c()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    .line 92
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getBadge()I

    move-result p4

    .line 93
    invoke-static {v4, p3, p4}, Lcom/engagelab/privates/push/utils/NotificationUtil;->setNotificationBadge(Landroid/content/Context;Landroid/app/Notification;I)V

    .line 94
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getNotificationId()I

    move-result p4

    invoke-virtual {p1, p4, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "showNotification notificationId:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/NotificationMessage;->getNotificationId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {v4}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationState(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_295

    .line 97
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 98
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0xdac

    .line 99
    invoke-static {v4, p2, p1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    :cond_295
    :goto_295
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 133
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x34000000

    .line 135
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception p1

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "launchCurrentActivity failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MTNotificationBusiness"

    .line 138
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;BLjava/lang/String;)V
    .registers 7

    .line 250
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msg_id"

    .line 251
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "sdk_type"

    .line 252
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "tmsg_id"

    .line 253
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "result"

    const/16 p3, 0x42d

    .line 254
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 255
    new-instance p2, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-direct {p2}, Lcom/engagelab/privates/core/api/MTReporter;-><init>()V

    const-string p3, "third_msg_status"

    .line 256
    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTReporter;->setType(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p2

    .line 257
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTReporter;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p2

    .line 258
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "protocol"

    .line 259
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0x8b9

    .line 260
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 261
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_51

    const-string p3, "json"

    .line 262
    :try_start_44
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0xc82

    .line 263
    invoke-static {p1, p3, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_51

    return-void

    :catchall_51
    move-exception p1

    .line 264
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "reportRevokeMessage failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "MTNotificationBusiness"

    .line 265
    invoke-static {p1, p2, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "revokeNotification reportMessageId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",revokeMessageId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTNotificationBusiness"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {p1}, Lcom/engagelab/privates/common/a1;->j(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 173
    invoke-virtual {p0, p1, p3, v0}, Lcom/engagelab/privates/common/q0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    .line 174
    invoke-static {p3}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationId(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    .line 175
    invoke-static {p1, v2}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;B)Ljava/util/Set;

    move-result-object v2

    const-string v3, "] is not showing"

    const-string v4, "the message ["

    const/4 v5, 0x1

    if-eqz v2, :cond_58

    .line 176
    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 177
    invoke-virtual {p0, p1, v0, v5}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;IZ)Z

    move-result v2

    if-nez v2, :cond_51

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_51
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;I)V

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/q0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 181
    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "there are no messageId ["

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] in cache messageIdSet"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 182
    invoke-static {p1, v2}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;B)Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_9e

    .line 183
    invoke-interface {v7, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 184
    invoke-virtual {p0, p1, v0, v5}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;IZ)Z

    move-result v5

    if-nez v5, :cond_95

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_95
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;I)V

    const-string p3, ""

    .line 187
    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Ljava/lang/String;BLjava/lang/String;)V

    return-void

    .line 188
    :cond_9e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] in cache googleMessageIdSet"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "revoke third message "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "notification_id"

    .line 191
    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 p3, 0xc20

    .line 192
    invoke-static {p1, p3, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p3, :cond_f

    .line 240
    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_31

    .line 241
    :cond_f
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_31

    .line 242
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 243
    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v2, v1, :cond_1b

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    .line 247
    :cond_31
    :goto_31
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addOverrideMessageId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MTNotificationBusiness"

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {p1, p3}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method public a(Landroid/content/Context;BLjava/lang/String;Ljava/lang/String;Z)Z
    .registers 14

    .line 205
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;B)Ljava/util/Set;

    move-result-object v0

    const-string v1, "] had been show"

    const-string v2, "the message ["

    const/4 v3, 0x0

    const-string v4, "MTNotificationBusiness"

    if-eqz p5, :cond_34

    if-eqz v0, :cond_34

    .line 206
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_34

    .line 207
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 209
    :cond_34
    invoke-static {p1}, Lcom/engagelab/privates/common/a1;->i(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_61

    .line 210
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_61

    .line 211
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_61

    invoke-virtual {p4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] had been override"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 213
    :cond_61
    invoke-static {p1}, Lcom/engagelab/privates/common/a1;->j(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_91

    .line 214
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_91

    .line 215
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_91

    invoke-interface {v6, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 216
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "] had been revoke"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, p1, p3}, Lcom/engagelab/privates/common/q0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return v3

    :cond_91
    const/4 v2, 0x1

    if-eqz p5, :cond_e8

    if-eqz v0, :cond_e2

    .line 218
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_e2

    .line 219
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_e2

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_e2

    .line 220
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v6, "the overrideMessage ["

    invoke-direct {p5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v4, p5}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {p4}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationId(Ljava/lang/String;)I

    move-result p5

    .line 222
    invoke-virtual {p0, p1, p5, v2}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;IZ)Z

    move-result p5

    if-eqz p5, :cond_e1

    .line 223
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is showing, need override"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v4, p5}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;BLjava/lang/String;Ljava/util/Set;)V

    .line 225
    invoke-virtual {p0, p1, p4, v5}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    return v2

    :cond_e1
    return v3

    .line 226
    :cond_e2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;BLjava/lang/String;Ljava/util/Set;)V

    .line 227
    invoke-virtual {p0, p1, p4, v5}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    :cond_e8
    return v2
.end method

.method public final a(Landroid/content/Context;IZ)Z
    .registers 9

    .line 199
    const-string p3, "notification"

    .line 200
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 201
    invoke-virtual {p1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 202
    array-length p3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, p3, :cond_35

    aget-object v2, p1, v1

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "statusBarNotification:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MTNotificationBusiness"

    invoke-static {v4, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-ne v2, p2, :cond_32

    const/4 p1, 0x1

    return p1

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_35
    return v0
.end method

.method public final b(I)V
    .registers 5

    .line 116
    invoke-static {}, Lcom/engagelab/privates/common/r0;->a()Z

    move-result v0

    const-string v1, "MTNotificationBusiness"

    if-eqz v0, :cond_e

    const-string p1, "there are no aurora notification"

    .line 117
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_e
    invoke-static {p1}, Lcom/engagelab/privates/common/r0;->a(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "there are no aurora notification "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_26
    invoke-static {p1}, Lcom/engagelab/privates/common/r0;->c(I)Z

    .line 121
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/q0;->a(I)V

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "after remove, current queue size "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/engagelab/privates/common/r0;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .registers 4

    .line 20
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x34000000

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception p1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "launchMainActivity failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MTNotificationBusiness"

    .line 24
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 21

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "MTNotificationBusiness"

    const-string v4, "onNotificationDisplay messageId:"

    const-string v5, "onNotificationDisplay "

    const-string v6, "onNotificationOpened messageId:"

    const-string v7, "onNotificationOpened "

    const-string v8, "onNotificationDeleted messageId:"

    const-string v9, "onNotificationDeleted "

    const-string v10, "onNotificationClicked messageId:"

    const-string v11, "onNotificationClicked "

    const-string v12, "onNotificationArrived messageId: "

    const-string v13, "onNotificationArrived "

    .line 29
    :try_start_1a
    const-class v14, Lcom/engagelab/privates/push/api/NotificationMessage;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v14, "message"

    .line 30
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/engagelab/privates/push/api/NotificationMessage;

    if-nez v2, :cond_2e

    return-void

    .line 31
    :cond_2e
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_5d

    const-string v15, "msg_id"

    move-object/from16 p3, v2

    .line 32
    :try_start_37
    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPlatform()B

    move-result v2
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_5d

    if-eqz v2, :cond_60

    const-string v2, "sdk_type"

    .line 34
    :try_start_46
    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPlatform()B

    move-result v15

    invoke-virtual {v14, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_5d

    const-string v2, "tmsg_id"

    .line 35
    :try_start_4f
    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getPlatformMessageId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_5d

    const-string v2, "third_msg_status"

    const/16 v15, 0xc82

    :goto_5a
    move/from16 v16, v15

    goto :goto_65

    :catchall_5d
    move-exception v0

    goto/16 :goto_18b

    .line 36
    :cond_60
    const-string v2, "msg_status"

    const/16 v15, 0xc81

    goto :goto_5a

    :goto_65
    const/16 v15, 0xdac

    .line 37
    const-string v0, "result"

    if-eq v1, v15, :cond_122

    packed-switch v1, :pswitch_data_196

    goto/16 :goto_14d

    .line 38
    :pswitch_70
    :try_start_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x454

    .line 40
    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_14d

    .line 41
    :pswitch_9d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 43
    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_14d

    .line 44
    :pswitch_ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x40e

    .line 46
    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_14d

    .line 47
    :pswitch_f6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x404

    .line 49
    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_14d

    .line 50
    :cond_122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3fa

    .line 52
    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    :goto_14d
    invoke-virtual/range {p3 .. p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-direct {v1}, Lcom/engagelab/privates/core/api/MTReporter;-><init>()V

    .line 55
    invoke-virtual {v1, v2}, Lcom/engagelab/privates/core/api/MTReporter;->setType(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v1

    .line 56
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/engagelab/privates/core/api/MTReporter;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Lcom/engagelab/privates/core/api/MTReporter;->setAppkey(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object v0

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "protocol"

    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v0, 0x8b9

    move-object/from16 v2, p1

    .line 60
    invoke-static {v2, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_17c
    .catchall {:try_start_70 .. :try_end_17c} :catchall_5d

    const-string v1, "json"

    .line 62
    :try_start_17e
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v15, v16

    .line 63
    invoke-static {v2, v15, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_18a
    .catchall {:try_start_17e .. :try_end_18a} :catchall_5d

    return-void

    .line 64
    :goto_18b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processRemoteMessage failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {v0, v1, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    :pswitch_data_196
    .packed-switch 0xf9b
        :pswitch_f6
        :pswitch_ca
        :pswitch_9d
        :pswitch_70
    .end packed-switch
.end method

.method public final b(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    .registers 13

    const-string v0, ", notificationId: "

    const-string v1, "MTNotificationBusiness"

    const-string v2, "group summary notification no longer exists in notification bar, can create new one, group: "

    const-string v3, "group summary notification still exists in notification bar, group: "

    const-string v4, "group has summary notification, group: "

    const-string v5, "handleGroupNotification group: "

    .line 99
    :try_start_c
    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getGroupId()Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->isGroupSummary()Z

    move-result v7

    .line 101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isGroupSummary: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_a1

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getNotificationId()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v4, Lcom/engagelab/privates/common/q0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_8d

    .line 104
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v5, v7}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;IZ)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_71
    move-exception p1

    goto :goto_a2

    .line 106
    :cond_73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/engagelab/privates/common/q0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_8d
    sget-object v0, Lcom/engagelab/privates/common/q0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Lcom/engagelab/privates/push/api/NotificationMessage;->getNotificationId()I

    move-result v2

    const v3, 0xf4240

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    :try_end_a1
    .catchall {:try_start_c .. :try_end_a1} :catchall_71

    :cond_a1
    return-void

    .line 110
    :goto_a2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "handleGroupNotification failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {p1, p2, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 7

    if-eqz p2, :cond_12

    .line 6
    const-string v0, "notify_id"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 7
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;I)V

    return-void

    .line 9
    :cond_12
    invoke-static {}, Lcom/engagelab/privates/common/r0;->a()Z

    move-result p2

    if-eqz p2, :cond_19

    return-void

    :cond_19
    const-string p2, "notification"

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 11
    :goto_21
    invoke-static {}, Lcom/engagelab/privates/common/r0;->a()Z

    move-result p2

    const-string v0, "MTNotificationBusiness"

    if-nez p2, :cond_42

    .line 12
    invoke-static {}, Lcom/engagelab/privates/common/r0;->b()I

    move-result p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clear notification which notificationId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 15
    :cond_42
    sget-object p2, Lcom/engagelab/privates/common/q0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clear group notification which messageId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", notificationId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 18
    :cond_89
    sget-object p1, Lcom/engagelab/privates/common/q0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "current queue size "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/engagelab/privates/common/r0;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", groupMap size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/engagelab/privates/common/q0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 81
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msg_id"

    .line 82
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "result"

    const/16 v1, 0x42c

    .line 83
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    new-instance p2, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-direct {p2}, Lcom/engagelab/privates/core/api/MTReporter;-><init>()V

    const-string v1, "msg_status"

    .line 85
    invoke-virtual {p2, v1}, Lcom/engagelab/privates/core/api/MTReporter;->setType(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p2

    .line 86
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/engagelab/privates/core/api/MTReporter;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p2

    .line 87
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "protocol"

    .line 88
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0x8b9

    .line 89
    invoke-static {p1, p2, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 90
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_47

    const-string v1, "json"

    .line 91
    :try_start_3a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc81

    .line 92
    invoke-static {p1, v0, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_47

    return-void

    :catchall_47
    move-exception p1

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "reportRevokeMessage failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MTNotificationBusiness"

    .line 94
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p3, :cond_f

    .line 71
    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_31

    .line 72
    :cond_f
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_31

    .line 73
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 74
    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v2, v1, :cond_1b

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    .line 78
    :cond_31
    :goto_31
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addRevokeMessageId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MTNotificationBusiness"

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p1, p3}, Lcom/engagelab/privates/common/a1;->b(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method public c(I)V
    .registers 5

    .line 18
    invoke-static {}, Lcom/engagelab/privates/common/r0;->a()Z

    move-result v0

    const-string v1, "MTNotificationBusiness"

    if-eqz v0, :cond_e

    const-string p1, "there are no aurora notification"

    .line 19
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_e
    invoke-static {p1}, Lcom/engagelab/privates/common/r0;->a(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "there are no aurora notification "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_26
    invoke-static {p1}, Lcom/engagelab/privates/common/r0;->c(I)Z

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "after remove, current queue size "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/engagelab/privates/common/r0;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "MTNotificationBusiness"

    const-string v1, "revokeMessage:"

    :try_start_4
    const-string v2, "protocol"

    .line 1
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_54

    .line 3
    :cond_11
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->toLogString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ids"

    .line 5
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_54

    :cond_36
    const-string v1, ","

    .line 7
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 8
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_49

    .line 9
    aget-object p2, p2, v2

    invoke-virtual {p0, p1, p2, p2}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_47
    move-exception p1

    goto :goto_55

    .line 10
    :cond_49
    array-length v1, p2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_54

    .line 11
    aget-object v1, p2, v2

    aget-object p2, p2, v3

    invoke-virtual {p0, p1, v1, p2}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_47

    :cond_54
    :goto_54
    return-void

    .line 12
    :goto_55
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "revokeMessage failed "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    :try_start_0
    const-class v0, Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "message"

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/engagelab/privates/push/api/NotificationMessage;

    .line 17
    .line 18
    if-nez v0, :cond_14

    .line 19
    .line 20
    return-void

    .line 21
    :cond_14
    const-string v1, "message_limit"

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/engagelab/privates/common/q0;->a(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;ZLandroid/os/Bundle;)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "showNotification failed "

    .line 36
    .line 37
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "MTNotificationBusiness"

    .line 41
    .line 42
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
