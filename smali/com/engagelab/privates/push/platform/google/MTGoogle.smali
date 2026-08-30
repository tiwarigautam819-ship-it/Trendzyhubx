###### Class com.engagelab.privates.push.platform.google.MTGoogle (com.engagelab.privates.push.platform.google.MTGoogle)
.class public Lcom/engagelab/privates/push/platform/google/MTGoogle;
.super Lcom/engagelab/privates/common/observer/MTObserver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final THREAD_PLATFORM:Ljava/lang/String;

.field public static final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/engagelab/privates/common/constants/MTCommonConstants;->getLogTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "PLATFORM-8"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/engagelab/privates/push/platform/google/MTGoogle;->THREAD_PLATFORM:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/observer/MTObserver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/engagelab/privates/push/platform/google/MTGoogle;->THREAD_PLATFORM:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessage(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getThreadName()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/push/platform/google/MTGoogle;->THREAD_PLATFORM:Ljava/lang/String;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public handleMessage(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    const/16 p3, 0xc1d

    .line 2
    .line 3
    if-eq p2, p3, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->getInstance()Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2, p1}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->init(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public isSupport(I)Z
    .registers 3

    .line 1
    const/16 v0, 0xc1d

    .line 2
    .line 3
    if-eq p1, v0, :cond_6

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_6
    const/4 p1, 0x1

    .line 8
    return p1
.end method
