###### Class eventTrack.jpush.EngagelabInitManager (eventTrack.jpush.EngagelabInitManager)
.class public final LeventTrack/jpush/EngagelabInitManager;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LeventTrack/jpush/EngagelabInitManager$TokenCallback;,
        LeventTrack/jpush/EngagelabInitManager$TokenListener;
    }
.end annotation


# static fields
.field private static final MAX_POLL_COUNT:I = 0x1e

.field private static final POLL_INTERVAL:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "EngagelabInit"

.field private static final initTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile lastRegId:Ljava/lang/String;

.field private static final tokenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "LeventTrack/jpush/EngagelabInitManager$TokenListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LeventTrack/jpush/EngagelabInitManager;->tokenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, LeventTrack/jpush/EngagelabInitManager;->initTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-object v0, LeventTrack/jpush/EngagelabInitManager;->lastRegId:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;ILeventTrack/jpush/EngagelabInitManager$TokenCallback;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, LeventTrack/jpush/EngagelabInitManager;->lambda$pollRegistrationId$0(Landroid/content/Context;ILeventTrack/jpush/EngagelabInitManager$TokenCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addTokenListener(LeventTrack/jpush/EngagelabInitManager$TokenListener;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    sget-object v0, LeventTrack/jpush/EngagelabInitManager;->tokenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public static fetchToken(Landroid/content/Context;LeventTrack/jpush/EngagelabInitManager$TokenCallback;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/engagelab/privates/core/api/MTCorePrivatesApi;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "fetchToken: immediate regId=\'"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "\'"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "EngagelabInit"

    .line 29
    .line 30
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    if-eqz v0, :cond_33

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_33

    .line 40
    .line 41
    sput-object v0, LeventTrack/jpush/EngagelabInitManager;->lastRegId:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0}, LeventTrack/jpush/EngagelabInitManager;->notifyTokenUpdate(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_32

    .line 47
    .line 48
    invoke-interface {p1, v0}, LeventTrack/jpush/EngagelabInitManager$TokenCallback;->onToken(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_32
    return-void

    .line 52
    :cond_33
    const-string v0, "Registration ID not ready, polling..."

    .line 53
    .line 54
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-static {p0, p1, v0}, LeventTrack/jpush/EngagelabInitManager;->pollRegistrationId(Landroid/content/Context;LeventTrack/jpush/EngagelabInitManager$TokenCallback;I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static getLastRegId()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, LeventTrack/jpush/EngagelabInitManager;->lastRegId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static initializeFromJson(Landroid/content/Context;Ljava/lang/String;LeventTrack/jpush/EngagelabInitManager$TokenCallback;)V
    .registers 13

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "Already initialized, lastRegId="

    .line 4
    .line 5
    const-string v2, "appKey from H5=\'"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "initializeFromJson called, initTriggered="

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v4, LeventTrack/jpush/EngagelabInitManager;->initTriggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v5, "EngagelabInit"

    .line 28
    .line 29
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    :try_start_20
    new-instance v6, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "debugMode"

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-virtual {v6, p1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const-string v8, "appKey"

    .line 46
    .line 47
    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_41

    .line 56
    .line 57
    const-string v8, "apiKey"

    .line 58
    .line 59
    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    goto :goto_41

    .line 64
    :catch_3f
    move-exception p0

    .line 65
    goto :goto_9f

    .line 66
    :cond_41
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, "\'"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_66

    .line 91
    .line 92
    const-string p0, "appKey is empty, abort init"

    .line 93
    .line 94
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    if-eqz p2, :cond_b9

    .line 98
    .line 99
    invoke-interface {p2, v3}, LeventTrack/jpush/EngagelabInitManager$TokenCallback;->onToken(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const/4 v0, 0x1

    .line 108
    invoke-virtual {v4, v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_8a

    .line 113
    .line 114
    invoke-static {p0, p1}, Lcom/engagelab/privates/core/api/MTCorePrivatesApi;->configDebugMode(Landroid/content/Context;Z)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v8}, Lcom/engagelab/privates/core/api/MTCorePrivatesApi;->configAppKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string p1, "default"

    .line 121
    .line 122
    invoke-static {p0, p1}, Lcom/engagelab/privates/core/api/MTCorePrivatesApi;->configAppChannel(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string p1, "Calling MTPushPrivatesApi.init()..."

    .line 126
    .line 127
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    invoke-static {p0}, Lcom/engagelab/privates/push/api/MTPushPrivatesApi;->init(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    const-string p1, "Engagelab init completed"

    .line 134
    .line 135
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    goto :goto_9b

    .line 139
    :cond_8a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget-object v0, LeventTrack/jpush/EngagelabInitManager;->lastRegId:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    :goto_9b
    invoke-static {p0, p2}, LeventTrack/jpush/EngagelabInitManager;->fetchToken(Landroid/content/Context;LeventTrack/jpush/EngagelabInitManager$TokenCallback;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_9e} :catch_3f

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :goto_9f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v0, "initializeFromJson FAILED: "

    .line 163
    .line 164
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {v5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .line 180
    .line 181
    if-eqz p2, :cond_b9

    .line 182
    .line 183
    invoke-interface {p2, v3}, LeventTrack/jpush/EngagelabInitManager$TokenCallback;->onToken(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_b9
    return-void
.end method

.method private static synthetic lambda$pollRegistrationId$0(Landroid/content/Context;ILeventTrack/jpush/EngagelabInitManager$TokenCallback;)V
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/core/api/MTCorePrivatesApi;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Poll #"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "/30 regId=\'"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "\'"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "EngagelabInit"

    .line 33
    .line 34
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    if-eqz v0, :cond_50

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_50

    .line 44
    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "Got Registration ID at poll #"

    .line 48
    .line 49
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, ": "

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    sput-object v0, LeventTrack/jpush/EngagelabInitManager;->lastRegId:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v0}, LeventTrack/jpush/EngagelabInitManager;->notifyTokenUpdate(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    if-eqz p2, :cond_4f

    .line 76
    .line 77
    invoke-interface {p2, v0}, LeventTrack/jpush/EngagelabInitManager$TokenCallback;->onToken(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_4f
    return-void

    .line 81
    :cond_50
    add-int/lit8 p1, p1, 0x1

    .line 82
    .line 83
    invoke-static {p0, p2, p1}, LeventTrack/jpush/EngagelabInitManager;->pollRegistrationId(Landroid/content/Context;LeventTrack/jpush/EngagelabInitManager$TokenCallback;I)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public static notifyTokenUpdate(Ljava/lang/String;)V
    .registers 5

    .line 1
    sput-object p0, LeventTrack/jpush/EngagelabInitManager;->lastRegId:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, LeventTrack/jpush/EngagelabInitManager;->tokenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_21

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, LeventTrack/jpush/EngagelabInitManager$TokenListener;

    .line 20
    .line 21
    :try_start_14
    invoke-interface {v1, p0}, LeventTrack/jpush/EngagelabInitManager$TokenListener;->onToken(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    .line 22
    .line 23
    .line 24
    goto :goto_8

    .line 25
    :catchall_18
    move-exception v1

    .line 26
    const-string v2, "EngagelabInit"

    .line 27
    .line 28
    const-string v3, "Listener error"

    .line 29
    .line 30
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    goto :goto_8

    .line 34
    :cond_21
    return-void
.end method

.method private static pollRegistrationId(Landroid/content/Context;LeventTrack/jpush/EngagelabInitManager$TokenCallback;I)V
    .registers 6

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    if-lt p2, v0, :cond_12

    .line 4
    .line 5
    const-string p0, "EngagelabInit"

    .line 6
    .line 7
    const-string p2, "Registration ID still empty after 30 polls (15s)"

    .line 8
    .line 9
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_11

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-interface {p1, p0}, LeventTrack/jpush/EngagelabInitManager$TokenCallback;->onToken(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void

    .line 19
    :cond_12
    new-instance v0, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lb/m;

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    invoke-direct {v1, p2, v2, p0, p1}, Lb/m;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 p0, 0x1f4

    .line 35
    .line 36
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static removeTokenListener(LeventTrack/jpush/EngagelabInitManager$TokenListener;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    sget-object v0, LeventTrack/jpush/EngagelabInitManager;->tokenListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_7
    return-void
.end method

###### Class eventTrack.jpush.EngagelabInitManager.TokenCallback (eventTrack.jpush.EngagelabInitManager$TokenCallback)
.class public interface abstract LeventTrack/jpush/EngagelabInitManager$TokenCallback;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LeventTrack/jpush/EngagelabInitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TokenCallback"
.end annotation


# virtual methods
.method public abstract onToken(Ljava/lang/String;)V
.end method

###### Class eventTrack.jpush.EngagelabInitManager.TokenListener (eventTrack.jpush.EngagelabInitManager$TokenListener)
.class public interface abstract LeventTrack/jpush/EngagelabInitManager$TokenListener;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LeventTrack/jpush/EngagelabInitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TokenListener"
.end annotation


# virtual methods
.method public abstract onToken(Ljava/lang/String;)V
.end method
