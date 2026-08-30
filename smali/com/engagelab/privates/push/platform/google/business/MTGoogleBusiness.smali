###### Class com.engagelab.privates.push.platform.google.business.MTGoogleBusiness (com.engagelab.privates.push.platform.google.business.MTGoogleBusiness)
.class public Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTGoogleBusiness"

.field private static volatile instance:Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;


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

.method public static getInstance()Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->instance:Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    const-class v0, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->instance:Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    goto :goto_13

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    .line 19
    throw v1

    .line 20
    :cond_13
    :goto_13
    sget-object v0, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->instance:Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;

    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 12

    .line 1
    const-string v1, "MTGoogleBusiness"

    .line 2
    .line 3
    const-string v0, "not support google push, code:"

    .line 4
    .line 5
    :try_start_4
    sget-object v2, Lv3/e;->b:Lv3/e;

    .line 6
    .line 7
    sget v3, Lv3/e;->a:I

    .line 8
    .line 9
    invoke-virtual {v2, p1, v3}, Lv3/e;->b(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result v7

    .line 13
    if-eqz v7, :cond_2b

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/16 v8, 0xf3c

    .line 31
    .line 32
    const/4 v9, 0x1

    .line 33
    const/16 v6, 0xbba

    .line 34
    .line 35
    move-object v4, p0

    .line 36
    move-object v5, p1

    .line 37
    invoke-virtual/range {v4 .. v9}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->onNode(Landroid/content/Context;IIII)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    goto :goto_54

    .line 44
    :cond_2b
    move-object v5, p1

    .line 45
    const-string p1, "support google push"

    .line 46
    .line 47
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v0, Lp4/j;

    .line 58
    .line 59
    invoke-direct {v0}, Lp4/j;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v2, p1, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 63
    .line 64
    new-instance v3, La2/i;

    .line 65
    .line 66
    const/16 v4, 0x8

    .line 67
    .line 68
    invoke-direct {v3, p1, v4, v0}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, v0, Lp4/j;->a:Lp4/q;

    .line 75
    .line 76
    new-instance v0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleListener;

    .line 77
    .line 78
    invoke-direct {v0, v5}, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleListener;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lp4/q;->h(Lp4/d;)Lp4/q;
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_28

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v2, "init failed "

    .line 88
    .line 89
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public onNode(Landroid/content/Context;IIII)V
    .registers 9

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "platform"

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 11
    .line 12
    .line 13
    const-string v1, "code"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string p2, "mCode"

    .line 19
    .line 20
    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    const-string p2, "type"

    .line 24
    .line 25
    invoke-virtual {v0, p2, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    const-string p2, "from"

    .line 29
    .line 30
    invoke-virtual {v0, p2, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const/16 p2, 0xbce

    .line 34
    .line 35
    invoke-static {p1, p2, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onToken(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 11

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 6
    .line 7
    const-string p1, "MTGoogleBusiness"

    .line 8
    .line 9
    const-string p2, "onToken:token is empty"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    new-instance v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;-><init>()V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->setPlatform(B)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->setToken(Ljava/lang/String;)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "message"

    .line 36
    .line 37
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->init(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    const/16 p2, 0xbcd

    .line 44
    .line 45
    invoke-static {p1, p2, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    const/16 v5, 0xf3d

    .line 50
    .line 51
    const/16 v3, 0xbc0

    .line 52
    .line 53
    move-object v1, p0

    .line 54
    move-object v2, p1

    .line 55
    move v6, p3

    .line 56
    invoke-virtual/range {v1 .. v6}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->onNode(Landroid/content/Context;IIII)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
