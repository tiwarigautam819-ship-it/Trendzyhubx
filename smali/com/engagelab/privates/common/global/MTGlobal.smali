###### Class com.engagelab.privates.common.global.MTGlobal (com.engagelab.privates.common.global.MTGlobal)
.class public Lcom/engagelab/privates/common/global/MTGlobal;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/global/MTGlobal$a;
    }
.end annotation


# static fields
.field private static final APP_CHANNEL:Ljava/lang/String; = "ENGAGELAB_PRIVATES_CHANNEL"

.field private static final APP_KEY:Ljava/lang/String; = "ENGAGELAB_PRIVATES_APPKEY"

.field private static final APP_PROCESS:Ljava/lang/String; = "ENGAGELAB_PRIVATES_PROCESS"

.field public static final APP_SITE_NAME_DEFAULT:Ljava/lang/String; = "Singapore"

.field private static final APP_TRANSFER:Ljava/lang/String; = "ENGAGELAB_PRIVATES_TRANSFER"

.field private static final INTENT_COMMON_RECEIVER:Ljava/lang/String; = "com.engagelab.privates.intent.USER_RECEIVER"

.field private static final INTENT_COMMON_SERVICE:Ljava/lang/String; = "com.engagelab.privates.intent.USER_SERVICE"

.field public static IS_FOR_BINANCE:Z = false

.field public static IS_FOR_CHINALIFE:Z = false

.field public static IS_FOR_ENGAGELAB:Z = true

.field public static IS_FOR_PINGANBANK:Z = false

.field public static IS_FOR_PINGANTECH:Z = false

.field public static IS_FOR_SGM:Z = false

.field public static IS_FOR_SPDBAND:Z = false

.field private static IS_MAIN_PROCESS:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final TAG:Ljava/lang/String; = "MTGlobal"

.field private static appChannel:Ljava/lang/String; = null

.field private static appKey:Ljava/lang/String; = null

.field private static appProcess:Ljava/lang/String; = null

.field private static appSiteName:Ljava/lang/String; = null

.field private static appTransfer:Ljava/lang/String; = null

.field private static appVersionCode:I = 0x0

.field private static appVersionName:Ljava/lang/String; = null

.field private static commonReceiver:Lcom/engagelab/privates/common/component/MTCommonReceiver; = null

.field private static commonService:Lcom/engagelab/privates/common/component/MTCommonService; = null

.field public static context:Landroid/content/Context; = null

.field private static countryCode:Ljava/lang/String; = null

.field private static currentActivityName:Ljava/lang/String; = ""

.field private static encryptType:I = 0x2

.field private static isDebugMode:Z = false

.field public static isNeedRemoteProcess:Z = true

.field private static isRemoteProcess:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static isTcpSSL:Z = false

.field private static isUdpEnable:Z = true

.field private static lifecycleState:Z = false

.field private static networkName:Ljava/lang/String; = "unknown"

.field private static networkRadio:Ljava/lang/String; = ""

.field private static networkState:Z = false

.field private static networkType:I


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

.method public static getAppChannel(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->appChannel:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    const-string v0, "ENGAGELAB_PRIVATES_CHANNEL"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/global/MTGlobal;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appChannel:Ljava/lang/String;

    .line 16
    .line 17
    :cond_10
    sget-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appChannel:Ljava/lang/String;

    .line 18
    .line 19
    return-object p0
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->appKey:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_22

    .line 8
    .line 9
    const-class v0, Lcom/engagelab/privates/common/global/MTGlobal;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_b
    sget-object v1, Lcom/engagelab/privates/common/global/MTGlobal;->appKey:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1e

    .line 19
    .line 20
    const-string v1, "ENGAGELAB_PRIVATES_APPKEY"

    .line 21
    .line 22
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/global/MTGlobal;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appKey:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_1e

    .line 29
    :catchall_1c
    move-exception p0

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    :goto_1e
    monitor-exit v0

    .line 32
    goto :goto_22

    .line 33
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1c

    .line 34
    throw p0

    .line 35
    :cond_22
    :goto_22
    sget-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appKey:Ljava/lang/String;

    .line 36
    .line 37
    return-object p0
.end method

.method public static getAppProcess(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->appProcess:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    const-string v0, "ENGAGELAB_PRIVATES_PROCESS"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/global/MTGlobal;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appProcess:Ljava/lang/String;

    .line 16
    .line 17
    :cond_10
    sget-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appProcess:Ljava/lang/String;

    .line 18
    .line 19
    return-object p0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .registers 4

    .line 1
    sget v0, Lcom/engagelab/privates/common/global/MTGlobal;->appVersionCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return v0

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 20
    .line 21
    sput p0, Lcom/engagelab/privates/common/global/MTGlobal;->appVersionCode:I
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    .line 22
    .line 23
    return p0

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "getAppVersionCode failed: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v2, "MTGlobal"

    .line 33
    .line 34
    invoke-static {p0, v1, v2}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->appVersionName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 8
    .line 9
    sget-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appVersionName:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 26
    .line 27
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appVersionName:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1d

    .line 28
    .line 29
    return-object p0

    .line 30
    :catchall_1d
    move-exception p0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "getAppVersionName failed: "

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "MTGlobal"

    .line 39
    .line 40
    invoke-static {p0, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p0, ""

    .line 44
    .line 45
    return-object p0
.end method

.method public static getCommonReceiver(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonReceiverImpl(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_d

    .line 6
    .line 7
    const-string v0, "MTGlobal"

    .line 8
    .line 9
    const-string v1, "getCommonReceiver is null"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_d
    return-object p0
.end method

.method private static getCommonReceiverImpl(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;
    .registers 4

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->commonReceiver:Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.engagelab.privates.intent.USER_RECEIVER"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_58

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 52
    .line 53
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 54
    .line 55
    if-nez v1, :cond_39

    .line 56
    .line 57
    goto :goto_28

    .line 58
    :cond_39
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_42

    .line 65
    .line 66
    goto :goto_28

    .line 67
    :cond_42
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-class v2, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_28

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_28

    .line 89
    :cond_58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-lez p0, :cond_73

    .line 94
    .line 95
    new-instance p0, Lcom/engagelab/privates/common/global/MTGlobal$a;

    .line 96
    .line 97
    invoke-direct {p0, v0}, Lcom/engagelab/privates/common/global/MTGlobal$a;-><init>(Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->commonReceiver:Lcom/engagelab/privates/common/component/MTCommonReceiver;
    :try_end_65
    .catchall {:try_start_5 .. :try_end_65} :catchall_66

    .line 101
    .line 102
    return-object p0

    .line 103
    :catchall_66
    move-exception p0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v1, "getCommonReceiver failed "

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v1, "MTGlobal"

    .line 112
    .line 113
    invoke-static {p0, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_73
    const/4 p0, 0x0

    .line 117
    return-object p0
.end method

.method public static getCommonService(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonService;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonServiceImpl(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_d

    .line 6
    .line 7
    const-string v0, "MTGlobal"

    .line 8
    .line 9
    const-string v1, "getCommonService is null"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_d
    return-object p0
.end method

.method private static getCommonServiceImpl(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonService;
    .registers 3

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->commonService:Lcom/engagelab/privates/common/component/MTCommonService;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.engagelab.privates.intent.USER_SERVICE"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :cond_23
    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_5f

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 47
    .line 48
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 49
    .line 50
    if-nez v0, :cond_34

    .line 51
    .line 52
    goto :goto_23

    .line 53
    :cond_34
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3d

    .line 60
    .line 61
    goto :goto_23

    .line 62
    :cond_3d
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-class v1, Lcom/engagelab/privates/common/component/MTCommonService;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_23

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lcom/engagelab/privates/common/component/MTCommonService;

    .line 79
    .line 80
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->commonService:Lcom/engagelab/privates/common/component/MTCommonService;
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_52

    .line 81
    .line 82
    return-object p0

    .line 83
    :catchall_52
    move-exception p0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v1, "getCommonService failed "

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "MTGlobal"

    .line 92
    .line 93
    invoke-static {p0, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_5f
    const/4 p0, 0x0

    .line 97
    return-object p0
.end method

.method public static getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 8
    .line 9
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/SystemUtil;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->countryCode:Ljava/lang/String;

    .line 14
    .line 15
    :cond_e
    sget-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->countryCode:Ljava/lang/String;

    .line 16
    .line 17
    return-object p0
.end method

.method public static getCurrentActivityName()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->currentActivityName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 1
    const-string p0, "MTGlobal"

    .line 2
    .line 3
    const-string v0, "getCurrentProcessName failed "

    .line 4
    .line 5
    :try_start_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1c

    .line 8
    .line 9
    if-lt v1, v2, :cond_18

    .line 10
    .line 11
    invoke-static {}, Lh0/a;->n()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    .line 15
    return-object p0

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, p0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_18
    const-string v1, "android.app.ActivityThread"

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    :try_start_1c
    const-class v4, Landroid/app/Application;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v1, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v1
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_3b

    .line 39
    const-string v4, "currentProcessName"

    .line 40
    .line 41
    :try_start_28
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    instance-of v4, v1, Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v4, :cond_44

    .line 56
    .line 57
    check-cast v1, Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_3b

    .line 58
    .line 59
    return-object v1

    .line 60
    :catchall_3b
    move-exception v1

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v4, p0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_44
    const-string v1, "/proc/self/cmdline"

    .line 70
    .line 71
    :try_start_46
    new-instance v4, Ljava/io/FileInputStream;

    .line 72
    .line 73
    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_88

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x100

    .line 77
    .line 78
    :try_start_4d
    new-array v3, v1, [B

    .line 79
    .line 80
    move v5, v2

    .line 81
    :goto_50
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-lez v6, :cond_61

    .line 86
    .line 87
    if-ge v5, v1, :cond_61

    .line 88
    .line 89
    add-int/lit8 v7, v5, 0x1

    .line 90
    .line 91
    int-to-byte v6, v6

    .line 92
    aput-byte v6, v3, v5

    .line 93
    .line 94
    move v5, v7

    .line 95
    goto :goto_50

    .line 96
    :catchall_5f
    move-exception v1

    .line 97
    goto :goto_86

    .line 98
    :cond_61
    if-lez v5, :cond_78

    .line 99
    .line 100
    new-instance v1, Ljava/lang/String;

    .line 101
    .line 102
    const-string v6, "UTF-8"

    .line 103
    .line 104
    invoke-direct {v1, v3, v2, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_4d .. :try_end_6a} :catchall_5f

    .line 105
    .line 106
    .line 107
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    .line 108
    .line 109
    .line 110
    goto :goto_77

    .line 111
    :catchall_6e
    move-exception v2

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v3, p0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_77
    return-object v1

    .line 121
    :cond_78
    :try_start_78
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    .line 122
    .line 123
    .line 124
    goto :goto_ae

    .line 125
    :catchall_7c
    move-exception v1

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v2, p0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_ae

    .line 135
    :goto_86
    move-object v3, v4

    .line 136
    goto :goto_89

    .line 137
    :catchall_88
    move-exception v1

    .line 138
    :goto_89
    :try_start_89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_89 .. :try_end_9f} :catchall_b1

    .line 158
    .line 159
    .line 160
    if-eqz v3, :cond_ae

    .line 161
    .line 162
    :try_start_a1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a5

    .line 163
    .line 164
    .line 165
    goto :goto_ae

    .line 166
    :catchall_a5
    move-exception v1

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v2, p0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_ae
    :goto_ae
    const-string p0, ""

    .line 176
    .line 177
    return-object p0

    .line 178
    :catchall_b1
    move-exception v1

    .line 179
    if-eqz v3, :cond_c1

    .line 180
    .line 181
    :try_start_b4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    .line 182
    .line 183
    .line 184
    goto :goto_c1

    .line 185
    :catchall_b8
    move-exception v2

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v2, v3, p0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_c1
    :goto_c1
    throw v1
.end method

.method public static getDebugMode()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->isDebugMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-static {p0}, Lcom/engagelab/privates/common/cache/MTCommonConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_d

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "android_id"

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, "_"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-wide v3, Landroid/os/Build;->TIME:J

    .line 44
    .line 45
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/StringUtil;->get32MD5String(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0
    :try_end_49
    .catchall {:try_start_d .. :try_end_49} :catchall_4a

    .line 74
    goto :goto_67

    .line 75
    :catchall_4a
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, "  "

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/StringUtil;->get32MD5String(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_67
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/cache/MTCommonConfig;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object v0
.end method

.method public static getEncryptType()I
    .registers 1

    .line 1
    sget v0, Lcom/engagelab/privates/common/global/MTGlobal;->encryptType:I

    .line 2
    .line 3
    return v0
.end method

.method public static getLifecycleState()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->lifecycleState:Z

    .line 2
    .line 3
    return v0
.end method

.method private static getMainProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x80

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    .line 16
    .line 17
    goto :goto_2b

    .line 18
    :catch_11
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "getMainProcessName failed "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, ""

    .line 43
    .line 44
    :goto_2b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_35

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_35
    return-object v0
.end method

.method public static getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/16 v2, 0x80

    .line 12
    .line 13
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_2f

    .line 18
    .line 19
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 20
    .line 21
    if-eqz p0, :cond_2f

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_1d

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1d
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_22

    .line 34
    return-object p0

    .line 35
    :catchall_22
    move-exception p0

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "getMetaData failed "

    .line 39
    .line 40
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "MTGlobal"

    .line 44
    .line 45
    invoke-static {p0, p1, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2f
    return-object v0
.end method

.method public static getNetworkName()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->networkName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getNetworkRadio()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->networkRadio:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getNetworkState()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->networkState:Z

    .line 2
    .line 3
    return v0
.end method

.method public static getNetworkType()I
    .registers 1

    .line 1
    sget v0, Lcom/engagelab/privates/common/global/MTGlobal;->networkType:I

    .line 2
    .line 3
    return v0
.end method

.method private static getRemoteProcessName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/ComponentName;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/16 p0, 0x80

    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 25
    .line 26
    return-object p0

    .line 27
    :catchall_1a
    move-exception p0

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "getRemoteProcessName failed "

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "MTGlobal"

    .line 36
    .line 37
    invoke-static {p0, p1, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string p0, ""

    .line 41
    .line 42
    return-object p0
.end method

.method public static getTcpSSL()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->isTcpSSL:Z

    .line 2
    .line 3
    return v0
.end method

.method public static getTransfer(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->appTransfer:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    const-string v0, "ENGAGELAB_PRIVATES_TRANSFER"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/engagelab/privates/common/global/MTGlobal;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appTransfer:Ljava/lang/String;

    .line 16
    .line 17
    :cond_10
    sget-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appTransfer:Ljava/lang/String;

    .line 18
    .line 19
    return-object p0
.end method

.method public static getUdpEnable()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->isUdpEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 3
    .line 4
    .line 5
    move-result p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    .line 6
    if-nez p0, :cond_9

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :catchall_9
    :cond_9
    return v0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_MAIN_PROCESS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_MAIN_PROCESS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    :try_start_11
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getMainProcessName(Landroid/content/Context;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_33

    .line 31
    .line 32
    sget-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_MAIN_PROCESS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_26

    .line 36
    .line 37
    .line 38
    goto :goto_33

    .line 39
    :catchall_26
    move-exception p0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "isMainProcess failed "

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "MTGlobal"

    .line 48
    .line 49
    invoke-static {p0, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_33
    :goto_33
    sget-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_MAIN_PROCESS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    return p0
.end method

.method public static isRemoteProcess(Landroid/content/Context;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    :try_start_11
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz v1, :cond_21

    .line 28
    .line 29
    sget-object v1, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    .line 33
    .line 34
    :cond_21
    invoke-static {p0}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonService(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonService;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p0, v1}, Lcom/engagelab/privates/common/global/MTGlobal;->getRemoteProcessName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_46

    .line 51
    .line 52
    sget-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_39

    .line 55
    .line 56
    .line 57
    goto :goto_46

    .line 58
    :catchall_39
    move-exception p0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v1, "isRemoteProcess failed "

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "MTGlobal"

    .line 67
    .line 68
    invoke-static {p0, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_46
    :goto_46
    sget-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->isRemoteProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appChannel:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setAppSiteName(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->appSiteName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setCountryCode(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setCountryCode, country:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "MTGlobal"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->countryCode:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public static setCurrentActivityName(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->currentActivityName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setDebugMode(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/engagelab/privates/common/global/MTGlobal;->isDebugMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/cache/MTCommonConfig;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setEncryptType(I)V
    .registers 1

    .line 1
    sput p0, Lcom/engagelab/privates/common/global/MTGlobal;->encryptType:I

    .line 2
    .line 3
    return-void
.end method

.method public static setLifecycleState(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/engagelab/privates/common/global/MTGlobal;->lifecycleState:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setNetworkName(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->networkName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setNetworkRadio(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/engagelab/privates/common/global/MTGlobal;->networkRadio:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setNetworkState(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/engagelab/privates/common/global/MTGlobal;->networkState:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setNetworkType(I)V
    .registers 1

    .line 1
    sput p0, Lcom/engagelab/privates/common/global/MTGlobal;->networkType:I

    .line 2
    .line 3
    return-void
.end method

.method public static setTcpSSL(Z)V
    .registers 2

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_ENGAGELAB:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    sput-boolean p0, Lcom/engagelab/privates/common/global/MTGlobal;->isTcpSSL:Z

    .line 6
    .line 7
    :cond_6
    return-void
.end method

.method public static setUdpEnable(Z)V
    .registers 2

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_ENGAGELAB:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    sput-boolean p0, Lcom/engagelab/privates/common/global/MTGlobal;->isUdpEnable:Z

    .line 6
    .line 7
    :cond_6
    return-void
.end method

###### Class com.engagelab.privates.common.global.MTGlobal.a (com.engagelab.privates.common.global.MTGlobal$a)
.class public Lcom/engagelab/privates/common/global/MTGlobal$a;
.super Lcom/engagelab/privates/common/component/MTCommonReceiver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/global/MTGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/engagelab/privates/common/component/MTCommonReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/engagelab/privates/common/component/MTCommonReceiver;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/component/MTCommonReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 10
    .line 11
    if-nez p1, :cond_d

    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    iput-object p1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onAliasMessage(Landroid/content/Context;Lcom/engagelab/privates/push/api/AliasMessage;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onAliasMessage(Landroid/content/Context;Lcom/engagelab/privates/push/api/AliasMessage;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onAliasMessage:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onConnectStatus(Landroid/content/Context;Z)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onConnectStatus(Landroid/content/Context;Z)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onConnectStatus:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onCustomMessage(Landroid/content/Context;Lcom/engagelab/privates/push/api/CustomMessage;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onCustomMessage(Landroid/content/Context;Lcom/engagelab/privates/push/api/CustomMessage;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onCustomMessage:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onInAppMessageClick(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onInAppMessageClick(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onInAppMessageClick:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onInAppMessageShow(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onInAppMessageShow(Landroid/content/Context;Lcom/engagelab/privates/push/api/InAppMessage;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onInAppMessageShow:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onMobileNumber(Landroid/content/Context;Lcom/engagelab/privates/push/api/MobileNumberMessage;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onMobileNumber(Landroid/content/Context;Lcom/engagelab/privates/push/api/MobileNumberMessage;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onMobileNumber:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onNotificationArrived(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onNotificationArrived(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onNotificationArrived:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onNotificationClicked(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onNotificationClicked(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onNotificationClicked:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onNotificationDeleted(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onNotificationDeleted(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onNotificationDeleted:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onNotificationStatus(Landroid/content/Context;Z)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onNotificationStatus(Landroid/content/Context;Z)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onNotificationStatus:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onNotificationUnShow(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onNotificationUnShow(Landroid/content/Context;Lcom/engagelab/privates/push/api/NotificationMessage;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onNotificationUnShow:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onPlatformToken(Landroid/content/Context;Lcom/engagelab/privates/push/api/PlatformTokenMessage;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onPlatformToken(Landroid/content/Context;Lcom/engagelab/privates/push/api/PlatformTokenMessage;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onPlatformToken:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onTagMessage(Landroid/content/Context;Lcom/engagelab/privates/push/api/TagMessage;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onTagMessage(Landroid/content/Context;Lcom/engagelab/privates/push/api/TagMessage;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onTagMessage:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method

.method public onWake(Landroid/content/Context;Lcom/engagelab/privates/core/api/WakeMessage;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_2c

    .line 9
    .line 10
    :try_start_9
    iget-object v1, p0, Lcom/engagelab/privates/common/global/MTGlobal$a;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/engagelab/privates/common/component/MTCommonReceiver;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onWake(Landroid/content/Context;Lcom/engagelab/privates/core/api/WakeMessage;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    .line 19
    .line 20
    .line 21
    goto :goto_29

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "onWake:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MTGlobal"

    .line 38
    .line 39
    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2c
    return-void
.end method
