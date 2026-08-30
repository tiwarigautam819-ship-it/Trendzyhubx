###### Class com.engagelab.privates.common.ids.IdHelper (com.engagelab.privates.common.ids.IdHelper)
.class public Lcom/engagelab/privates/common/ids/IdHelper;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final TAG:Ljava/lang/String; = "IdHelper"

.field private static gGoogleAdID:Ljava/lang/String; = null

.field private static limitAdTrackingEnabled:Z = false

.field private static mGaid:Ljava/lang/String;


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

.method public static getGaid(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/engagelab/privates/common/helper/CollectControlHelper;->getInstance()Lcom/engagelab/privates/common/helper/CollectControlHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "gaid"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/common/helper/CollectControlHelper;->getCollectControl(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_f
    sget-object v0, Lcom/engagelab/privates/common/ids/IdHelper;->mGaid:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v0, :cond_19

    .line 19
    .line 20
    invoke-static {p0}, Lcom/engagelab/privates/common/ids/IdHelper;->getGoogleAdid(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sput-object p0, Lcom/engagelab/privates/common/ids/IdHelper;->mGaid:Ljava/lang/String;

    .line 25
    .line 26
    :cond_19
    sget-object p0, Lcom/engagelab/privates/common/ids/IdHelper;->mGaid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_22

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_22
    sget-object p0, Lcom/engagelab/privates/common/ids/IdHelper;->mGaid:Ljava/lang/String;

    .line 36
    .line 37
    return-object p0
.end method

.method private static getGoogleAdid(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_2
    sget-object v1, Lcom/engagelab/privates/common/ids/IdHelper;->gGoogleAdID:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_28

    .line 6
    .line 7
    invoke-static {p0}, Lcom/engagelab/privates/common/ids/IdHelper;->getGoogleAdidInternal(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sput-object p0, Lcom/engagelab/privates/common/ids/IdHelper;->gGoogleAdID:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_14

    .line 18
    .line 19
    move-object p0, v0

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    sget-object p0, Lcom/engagelab/privates/common/ids/IdHelper;->gGoogleAdID:Ljava/lang/String;

    .line 22
    .line 23
    :goto_16
    sput-object p0, Lcom/engagelab/privates/common/ids/IdHelper;->gGoogleAdID:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_19

    .line 24
    .line 25
    goto :goto_28

    .line 26
    :catchall_19
    move-exception p0

    .line 27
    sput-object v0, Lcom/engagelab/privates/common/ids/IdHelper;->gGoogleAdID:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "getGoogleAdid failed:"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "IdHelper"

    .line 37
    .line 38
    invoke-static {p0, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_28
    :goto_28
    sget-object p0, Lcom/engagelab/privates/common/ids/IdHelper;->gGoogleAdID:Ljava/lang/String;

    .line 42
    .line 43
    return-object p0
.end method

.method private static getGoogleAdidInternal(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    .line 1
    const-string v0, "get google Ids by service error: "

    .line 2
    .line 3
    const-string v1, "google ad id:"

    .line 4
    .line 5
    invoke-static {}, Lcom/engagelab/privates/common/ids/IdHelper;->isMainThread()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, ""

    .line 10
    .line 11
    const-string v4, "IdHelper"

    .line 12
    .line 13
    if-eqz v2, :cond_14

    .line 14
    .line 15
    const-string p0, "not get id in main thread"

    .line 16
    .line 17
    invoke-static {v4, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v3

    .line 21
    :cond_14
    :try_start_14
    sget-object v2, Lcom/engagelab/privates/common/ids/GuardConstant;->COM_GOOGLE_ANDROID_GMS_ADS_IDENTIFIER_SERVICE_START:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1d

    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_1d
    new-instance v5, Landroid/content/Intent;

    .line 31
    .line 32
    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lcom/engagelab/privates/common/ids/GuardConstant;->COM_GOOGLE_ANDROID_GMS:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_2b

    .line 42
    .line 43
    return-object v3

    .line 44
    :cond_2b
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/engagelab/privates/common/ids/google/GoogleSericeConnection;

    .line 48
    .line 49
    invoke-direct {v2}, Lcom/engagelab/privates/common/ids/google/GoogleSericeConnection;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    invoke-virtual {p0, v5, v2, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 54
    .line 55
    .line 56
    move-result v5
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_47

    .line 57
    if-eqz v5, :cond_a0

    .line 58
    .line 59
    :try_start_3a
    iget-boolean v5, v2, Lcom/engagelab/privates/common/ids/google/GoogleSericeConnection;->connected:Z

    .line 60
    .line 61
    if-eqz v5, :cond_4b

    .line 62
    .line 63
    const-string v1, "google service repeat bind"

    .line 64
    .line 65
    invoke-static {v4, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_49

    .line 66
    .line 67
    .line 68
    :try_start_43
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    .line 69
    .line 70
    .line 71
    return-object v3

    .line 72
    :catchall_47
    move-exception p0

    .line 73
    goto :goto_a6

    .line 74
    :catchall_49
    move-exception v1

    .line 75
    goto :goto_84

    .line 76
    :cond_4b
    :try_start_4b
    new-instance v5, Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;

    .line 77
    .line 78
    iget-object v6, v2, Lcom/engagelab/privates/common/ids/google/GoogleSericeConnection;->linkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 79
    .line 80
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 81
    .line 82
    const-wide/16 v8, 0x2

    .line 83
    .line 84
    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Landroid/os/IBinder;

    .line 89
    .line 90
    invoke-direct {v5, v6}, Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;->getId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    const/4 v7, 0x0

    .line 98
    invoke-virtual {v5, v7}, Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    sput-boolean v5, Lcom/engagelab/privates/common/ids/IdHelper;->limitAdTrackingEnabled:Z

    .line 103
    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, "limitAdTrackingEnabled:"

    .line 113
    .line 114
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    sget-boolean v1, Lcom/engagelab/privates/common/ids/IdHelper;->limitAdTrackingEnabled:Z

    .line 118
    .line 119
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v4, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_4b .. :try_end_80} :catchall_49

    .line 127
    .line 128
    .line 129
    :try_start_80
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_47

    .line 130
    .line 131
    .line 132
    return-object v6

    .line 133
    :goto_84
    :try_start_84
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v4, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_84 .. :try_end_97} :catchall_9b

    .line 150
    .line 151
    .line 152
    :try_start_97
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 153
    .line 154
    .line 155
    goto :goto_bb

    .line 156
    :catchall_9b
    move-exception v0

    .line 157
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_a0
    const-string p0, "google service bind failed"

    .line 162
    .line 163
    invoke-static {v4, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_97 .. :try_end_a5} :catchall_47

    .line 164
    .line 165
    .line 166
    goto :goto_bb

    .line 167
    :goto_a6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v1, "google getAdvertisingIdInfo Exception: "

    .line 170
    .line 171
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {v4, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :goto_bb
    return-object v3
.end method

.method public static hasGAIDPermission(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/ids/google/AdvertisingInterface;->hasGAIDPermission(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isLimitAdTrackingEnabled(Landroid/content/Context;)Z
    .registers 1

    .line 1
    sget-boolean p0, Lcom/engagelab/privates/common/ids/IdHelper;->limitAdTrackingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method private static isMainThread()Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1c

    .line 22
    cmp-long v1, v1, v3

    .line 23
    .line 24
    if-nez v1, :cond_1a

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    return v0

    .line 29
    :catchall_1c
    move-exception v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "[isMainThread] failed:"

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v3, "IdHelper"

    .line 38
    .line 39
    invoke-static {v1, v2, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v0
.end method
