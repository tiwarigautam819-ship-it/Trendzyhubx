###### Class com.engagelab.privates.core.global.MTCoreGlobal (com.engagelab.privates.core.global.MTCoreGlobal)
.class public Lcom/engagelab/privates/core/global/MTCoreGlobal;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static volatile address:Lcom/engagelab/privates/core/api/Address; = null

.field private static connectRetryCount:I = 0x3

.field private static heartbeatInterval:J = 0x46cd0L

.field private static loginCode:I = 0x0

.field private static onlyBeWakeState:Z = true

.field private static onlyWakeState:Z = true

.field private static password:Ljava/lang/String; = null

.field private static registerCode:I = -0x1

.field private static registrationId:Ljava/lang/String; = null

.field private static resetOnDeviceChangeEnabled:Z = false

.field private static rid:J = 0x0L

.field private static seedId:I = 0x0

.field private static serverTime:J = 0x0L

.field private static serviceNode:Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode; = null

.field private static userId:J = 0x0L

.field private static wakeAndBeWakeState:Z = true


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;->REGION_OVERSEAS:Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 2
    .line 3
    sput-object v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->serviceNode:Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 4
    .line 5
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

.method public static getConnectRetryCount()I
    .registers 1

    .line 1
    sget v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->connectRetryCount:I

    .line 2
    .line 3
    return v0
.end method

.method public static getHeartbeatInterval()J
    .registers 2

    .line 1
    sget-wide v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->heartbeatInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static getHttpAddress(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getHttpAddressSet(Landroid/content/Context;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method private static getHttpAddressSet(Landroid/content/Context;)Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->e(Landroid/content/Context;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getLoginCode(Landroid/content/Context;)I
    .registers 3

    .line 1
    sget v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->loginCode:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_b

    .line 5
    .line 6
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->f(Landroid/content/Context;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    sput p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->loginCode:I

    .line 11
    .line 12
    :cond_b
    sget p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->loginCode:I

    .line 13
    .line 14
    return p0
.end method

.method public static getOnlyBeWakeState()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_BINANCE:Z

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_PINGANBANK:Z

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    sget-boolean v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->onlyBeWakeState:Z

    .line 12
    .line 13
    return v0
.end method

.method public static getOnlyWakeState()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_BINANCE:Z

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_PINGANBANK:Z

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    sget-boolean v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->onlyWakeState:Z

    .line 12
    .line 13
    return v0
.end method

.method public static getPassword(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->password:Ljava/lang/String;

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
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sput-object p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->password:Ljava/lang/String;

    .line 14
    .line 15
    :cond_e
    sget-object p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->password:Ljava/lang/String;

    .line 16
    .line 17
    return-object p0
.end method

.method public static getPlatformState(Landroid/content/Context;)B
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->h(Landroid/content/Context;)B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getRegisterCode(Landroid/content/Context;)I
    .registers 3

    .line 1
    sget v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->registerCode:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_b

    .line 5
    .line 6
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->i(Landroid/content/Context;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    sput p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->registerCode:I

    .line 11
    .line 12
    :cond_b
    sget p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->registerCode:I

    .line 13
    .line 14
    return p0
.end method

.method public static getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->registrationId:Ljava/lang/String;

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
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sput-object p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->registrationId:Ljava/lang/String;

    .line 14
    .line 15
    :cond_e
    sget-object p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->registrationId:Ljava/lang/String;

    .line 16
    .line 17
    return-object p0
.end method

.method public static getResetOnDeviceChangeEnabled()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->resetOnDeviceChangeEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public static getRid()J
    .registers 8

    .line 1
    sget-wide v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->rid:J

    .line 2
    .line 3
    const-wide/16 v2, 0x2

    .line 4
    .line 5
    rem-long v4, v0, v2

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    cmp-long v4, v4, v6

    .line 10
    .line 11
    if-nez v4, :cond_e

    .line 12
    .line 13
    const-wide/16 v2, 0x1

    .line 14
    .line 15
    :cond_e
    add-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x7fff

    .line 17
    .line 18
    rem-long/2addr v0, v2

    .line 19
    sput-wide v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->rid:J

    .line 20
    .line 21
    return-wide v0
.end method

.method public static getSeedId(Landroid/content/Context;)I
    .registers 2

    .line 1
    sget v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->seedId:I

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->k(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sput p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->seedId:I

    .line 10
    .line 11
    :cond_a
    sget p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->seedId:I

    .line 12
    .line 13
    return p0
.end method

.method public static getServerTime(Landroid/content/Context;)J
    .registers 5

    .line 1
    sget-wide v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->serverTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->l(Landroid/content/Context;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sput-wide v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->serverTime:J

    .line 14
    .line 15
    :cond_e
    sget-wide v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->serverTime:J

    .line 16
    .line 17
    return-wide v0
.end method

.method public static getServiceNode()Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;
    .registers 1

    .line 1
    sget-object v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->serviceNode:Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getUserId(Landroid/content/Context;)J
    .registers 5

    .line 1
    sget-wide v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->userId:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    invoke-static {p0}, Lcom/engagelab/privates/common/r;->r(Landroid/content/Context;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sput-wide v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->userId:J

    .line 14
    .line 15
    :cond_e
    sget-wide v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->userId:J

    .line 16
    .line 17
    return-wide v0
.end method

.method public static getWakeAndBeWakeState()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->wakeAndBeWakeState:Z

    .line 2
    .line 3
    return v0
.end method

.method public static setConnectRetryCount(I)V
    .registers 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ge p0, v0, :cond_6

    .line 3
    .line 4
    sput v0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->connectRetryCount:I

    .line 5
    .line 6
    return-void

    .line 7
    :cond_6
    sput p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->connectRetryCount:I

    .line 8
    .line 9
    return-void
.end method

.method public static setHeartbeatInterval(J)V
    .registers 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-gtz v0, :cond_c

    .line 6
    .line 7
    const-wide/32 p0, 0x46cd0

    .line 8
    .line 9
    .line 10
    sput-wide p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->heartbeatInterval:J

    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    sput-wide p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->heartbeatInterval:J

    .line 14
    .line 15
    return-void
.end method

.method public static setLoginCode(I)V
    .registers 1

    .line 1
    sput p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->loginCode:I

    .line 2
    .line 3
    return-void
.end method

.method public static setOnlyBeWakeState(Z)V
    .registers 2

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_BINANCE:Z

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_PINGANBANK:Z

    .line 6
    .line 7
    if-nez v0, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    sput-boolean p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->onlyBeWakeState:Z

    .line 11
    .line 12
    return-void
.end method

.method public static setOnlyWakeState(Z)V
    .registers 2

    .line 1
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_BINANCE:Z

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    sget-boolean v0, Lcom/engagelab/privates/common/global/MTGlobal;->IS_FOR_PINGANBANK:Z

    .line 6
    .line 7
    if-nez v0, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    sput-boolean p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->onlyWakeState:Z

    .line 11
    .line 12
    return-void
.end method

.method public static setPassword(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setPlatformState(Landroid/content/Context;B)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setRegisterCode(I)V
    .registers 1

    .line 1
    sput p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->registerCode:I

    .line 2
    .line 3
    return-void
.end method

.method public static setRegistrationId(Ljava/lang/String;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->registrationId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setResetOnDeviceChangeEnabled(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->resetOnDeviceChangeEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setSeedId(I)V
    .registers 1

    .line 1
    sput p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->seedId:I

    .line 2
    .line 3
    return-void
.end method

.method public static setServerTime(J)V
    .registers 2

    .line 1
    sput-wide p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->serverTime:J

    .line 2
    .line 3
    return-void
.end method

.method public static setServiceNode(Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->serviceNode:Lcom/engagelab/privates/core/constants/MTCoreConstants$ServiceNode;

    .line 2
    .line 3
    return-void
.end method

.method public static setUserId(J)V
    .registers 2

    .line 1
    sput-wide p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->userId:J

    .line 2
    .line 3
    return-void
.end method

.method public static setWakeAndBeWakeState(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/engagelab/privates/core/global/MTCoreGlobal;->wakeAndBeWakeState:Z

    .line 2
    .line 3
    return-void
.end method
