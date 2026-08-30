###### Class com.engagelab.privates.common.f0 (com.engagelab.privates.common.f0)
.class public abstract Lcom/engagelab/privates/common/f0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/engagelab/privates/common/f0$d;
    }
.end annotation


# static fields
.field public static h:Ljava/util/List;


# instance fields
.field public a:Lcom/engagelab/privates/common/f0$d;

.field public b:Lcom/engagelab/privates/common/c0;

.field public c:Lcom/engagelab/privates/push/api/InAppMessage;

.field public d:Lcom/engagelab/privates/common/d0;

.field public e:Landroid/content/Context;

.field public f:I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/engagelab/privates/common/f0;->h:Ljava/util/List;

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/engagelab/privates/common/f0;->h:Ljava/util/List;

    .line 18
    .line 19
    const/16 v1, 0xb

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/engagelab/privates/common/f0;->h:Ljava/util/List;

    .line 29
    .line 30
    const/16 v1, 0x14

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/engagelab/privates/common/f0;->h:Ljava/util/List;

    .line 40
    .line 41
    const/16 v1, 0x15

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    sget-object v0, Lcom/engagelab/privates/common/f0;->h:Ljava/util/List;

    .line 51
    .line 52
    const/16 v1, 0x1e

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    sget-object v0, Lcom/engagelab/privates/common/f0;->h:Ljava/util/List;

    .line 62
    .line 63
    const/16 v1, 0x1f

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/engagelab/privates/common/f0;->h:Ljava/util/List;

    .line 73
    .line 74
    const/16 v1, 0x28

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/engagelab/privates/common/f0;->d:Lcom/engagelab/privates/common/d0;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 9
    .line 10
    iput p4, p0, Lcom/engagelab/privates/common/f0;->g:I

    .line 11
    .line 12
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)Lcom/engagelab/privates/common/f0;
    .registers 5

    const/16 v0, 0xa

    if-eq p3, v0, :cond_30

    const/16 v0, 0xb

    if-eq p3, v0, :cond_30

    const/16 v0, 0x14

    if-eq p3, v0, :cond_2a

    const/16 v0, 0x15

    if-eq p3, v0, :cond_2a

    const/16 v0, 0x1e

    if-eq p3, v0, :cond_24

    const/16 v0, 0x1f

    if-eq p3, v0, :cond_24

    const/16 v0, 0x28

    if-eq p3, v0, :cond_1e

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_1e
    new-instance v0, Lcom/engagelab/privates/common/j0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/engagelab/privates/common/j0;-><init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V

    return-object v0

    .line 2
    :cond_24
    new-instance v0, Lcom/engagelab/privates/common/g0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/engagelab/privates/common/g0;-><init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V

    return-object v0

    .line 3
    :cond_2a
    new-instance v0, Lcom/engagelab/privates/common/h0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/engagelab/privates/common/h0;-><init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V

    return-object v0

    .line 4
    :cond_30
    new-instance v0, Lcom/engagelab/privates/common/e0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/engagelab/privates/common/e0;-><init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V

    return-object v0
.end method

.method public static c(I)Z
    .registers 2

    .line 1
    const/16 v0, 0xa

    if-eq v0, p0, :cond_b

    const/16 v0, 0xb

    if-ne v0, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(I)I
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/utils/Utils;->getHeight(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_29

    .line 31
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_29

    .line 32
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_12
    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    invoke-virtual {p0, p1, v1}, Lcom/engagelab/privates/common/f0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_28
    return-object v0

    :cond_29
    :goto_29
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract a()V
.end method

.method public a(ILjava/lang/String;I)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 p2, 0x4

    if-eq p1, p2, :cond_a

    goto :goto_31

    .line 10
    :cond_a
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f0;->c()V

    goto :goto_31

    .line 11
    :cond_e
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 12
    iget-object p2, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->getExtras()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/engagelab/privates/push/utils/NotificationUtil;->onClickInAppNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_31

    .line 13
    :cond_22
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v1}, Lcom/engagelab/privates/push/api/InAppMessage;->getExtras()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/engagelab/privates/push/utils/NotificationUtil;->jumpDeepLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/f0;->a(IZ)V

    .line 15
    :goto_31
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 16
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    const-string v1, "message"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "ClickType"

    .line 17
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    iget-object p1, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    const/16 v0, 0xfa8

    invoke-static {p1, v0, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 19
    iget-object p1, p0, Lcom/engagelab/privates/common/f0;->a:Lcom/engagelab/privates/common/f0$d;

    if-eqz p1, :cond_58

    .line 20
    iget-object p2, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/engagelab/privates/common/f0;->d()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-interface {p1, p2, v0, v1}, Lcom/engagelab/privates/common/f0$d;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    .line 21
    :cond_58
    invoke-virtual {p0, p3}, Lcom/engagelab/privates/common/f0;->e(I)V

    return-void
.end method

.method public final a(IZ)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 p1, -0x1

    goto :goto_1b

    :cond_8
    if-eqz p2, :cond_e

    const p1, 0x9aa1f2

    goto :goto_1b

    :cond_e
    const p1, 0x9aa1f1

    goto :goto_1b

    :cond_12
    if-eqz p2, :cond_18

    const p1, 0x9aa1f4

    goto :goto_1b

    :cond_18
    const p1, 0x9aa1f3

    .line 41
    :goto_1b
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/f0;->d(I)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 10

    .line 5
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->b:Lcom/engagelab/privates/common/c0;

    if-nez v0, :cond_b

    .line 6
    new-instance v0, Lcom/engagelab/privates/common/c0;

    invoke-direct {v0}, Lcom/engagelab/privates/common/c0;-><init>()V

    iput-object v0, p0, Lcom/engagelab/privates/common/f0;->b:Lcom/engagelab/privates/common/c0;

    .line 7
    :cond_b
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->d:Lcom/engagelab/privates/common/d0;

    invoke-virtual {v0}, Lcom/engagelab/privates/common/d0;->a()F

    move-result v0

    iget-object v1, p0, Lcom/engagelab/privates/common/f0;->d:Lcom/engagelab/privates/common/d0;

    invoke-virtual {v1}, Lcom/engagelab/privates/common/d0;->c()F

    move-result v1

    add-float/2addr v1, v0

    float-to-long v4, v1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configAutoDismiss autoTickTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseInAppWrapper"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/engagelab/privates/common/f0;->b:Lcom/engagelab/privates/common/c0;

    new-instance v3, Lcom/engagelab/privates/common/f0$b;

    invoke-direct {v3, p0, p1}, Lcom/engagelab/privates/common/f0$b;-><init>(Lcom/engagelab/privates/common/f0;Landroid/view/View;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/common/c0;->a(Lcom/engagelab/privates/common/c0$b;JJ)V

    return-void
.end method

.method public a(Lcom/engagelab/privates/common/f0$d;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/engagelab/privates/common/f0;->a:Lcom/engagelab/privates/common/f0$d;

    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .registers 10

    .line 22
    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 23
    :cond_6
    :try_start_6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_16

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_16
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/f0;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_53

    :cond_23
    const-string v2, "android.app.Activity"

    .line 28
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_53

    const-string v3, "requestPermissions"

    const/4 v4, 0x2

    .line 29
    :try_start_2c
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, [Ljava/lang/String;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object v3, v4, v7

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_52} :catch_53

    return v7

    :catch_53
    :cond_53
    :goto_53
    return v1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 36
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_12

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_2b

    .line 38
    :cond_12
    invoke-static {p2}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_19

    goto :goto_2b

    :cond_19
    const-string v1, "appops"

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2d

    if-nez p1, :cond_2d

    :goto_2b
    const/4 p1, 0x1

    return p1

    :catchall_2d
    :cond_2d
    return v0
.end method

.method public b(I)I
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/utils/Utils;->getWidth(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public b()V
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->b:Lcom/engagelab/privates/common/c0;

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {v0}, Lcom/engagelab/privates/common/c0;->a()V

    :cond_7
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    const/16 v1, 0x5e

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/utils/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    .line 2
    new-instance v2, Landroid/graphics/Point;

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 3
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 4
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->d:Lcom/engagelab/privates/common/d0;

    invoke-virtual {v0}, Lcom/engagelab/privates/common/d0;->c()F

    move-result v0

    float-to-long v4, v0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "slideIntoView startPoint: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toShowTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseInAppWrapper"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v6, Lcom/engagelab/privates/common/f0$a;

    invoke-direct {v6, p0, p1}, Lcom/engagelab/privates/common/f0$a;-><init>(Lcom/engagelab/privates/common/f0;Landroid/view/View;)V

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/engagelab/privates/common/y;->a(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;JLcom/engagelab/privates/common/y$c;)V

    return-void
.end method

.method public c()V
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/f0;->a(Landroid/content/Context;)Z

    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkPermission ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseInAppWrapper"

    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_39

    .line 6
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/engagelab/privates/push/utils/NotificationUtil;->getNotificationState(Landroid/content/Context;)Z

    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "notificationState ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_39

    .line 8
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/engagelab/privates/push/utils/NotificationUtil;->goToAppNotificationSettings(Landroid/content/Context;)Z

    :cond_39
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .registers 6

    .line 2
    new-instance v0, Lcom/engagelab/privates/common/b0;

    iget v1, p0, Lcom/engagelab/privates/common/f0;->f:I

    new-instance v2, Lcom/engagelab/privates/common/f0$c;

    invoke-direct {v2, p0}, Lcom/engagelab/privates/common/f0$c;-><init>(Lcom/engagelab/privates/common/f0;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/engagelab/privates/common/b0;-><init>(Lcom/engagelab/privates/common/f0;Ljava/lang/Object;ILcom/engagelab/privates/common/b0$e;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public abstract d()Landroid/view/View;
.end method

.method public d(I)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "report code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseInAppWrapper"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_2a

    .line 2
    invoke-static {}, Lcom/engagelab/privates/common/u;->a()Lcom/engagelab/privates/common/u;

    move-result-object v0

    iget-object v1, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v2}, Lcom/engagelab/privates/push/api/InAppMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/InAppMessage;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/engagelab/privates/common/u;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public e()Lcom/engagelab/privates/common/d0;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->d:Lcom/engagelab/privates/common/d0;

    return-object v0
.end method

.method public final e(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_15

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    const/4 p1, -0x1

    goto :goto_24

    :cond_11
    const p1, 0x9aa1fd

    goto :goto_24

    :cond_15
    const p1, 0x9aa1fe

    goto :goto_24

    :cond_19
    const p1, 0x9aa1fc

    goto :goto_24

    :cond_1d
    const p1, 0x9aa1fb

    goto :goto_24

    :cond_21
    const p1, 0x9aa1f0

    .line 1
    :goto_24
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/f0;->d(I)V

    return-void
.end method

.method public abstract f()Z
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public i()V
    .registers 8

    .line 1
    const-string v0, "BaseInAppWrapper"

    .line 2
    .line 3
    const-string v1, "startViewAnimation param is null, view:"

    .line 4
    .line 5
    :try_start_4
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f0;->d()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p0}, Lcom/engagelab/privates/common/f0;->e()Lcom/engagelab/privates/common/d0;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_3a

    .line 14
    .line 15
    if-nez v2, :cond_11

    .line 16
    .line 17
    goto :goto_3a

    .line 18
    :cond_11
    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/f0;->b(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/engagelab/privates/common/f0;->g:I

    .line 22
    .line 23
    const/16 v3, 0xa

    .line 24
    .line 25
    if-eq v3, v1, :cond_1e

    .line 26
    .line 27
    const/16 v3, 0xb

    .line 28
    .line 29
    if-ne v3, v1, :cond_21

    .line 30
    .line 31
    :cond_1e
    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/f0;->c(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_21
    iget v1, p0, Lcom/engagelab/privates/common/f0;->g:I

    .line 35
    .line 36
    const/16 v3, 0x1e

    .line 37
    .line 38
    if-eq v3, v1, :cond_39

    .line 39
    .line 40
    iget-object v1, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/engagelab/privates/push/api/InAppMessage;->getDuration()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    cmp-long v1, v3, v5

    .line 49
    .line 50
    if-lez v1, :cond_39

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/f0;->a(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_37
    move-exception v1

    .line 57
    goto :goto_52

    .line 58
    :cond_39
    return-void

    .line 59
    :cond_3a
    :goto_3a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, "config:"

    .line 68
    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_4 .. :try_end_51} :catchall_37

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v3, "start in-app with animation error. "

    .line 86
    .line 87
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public abstract j()V
.end method

###### Class com.engagelab.privates.common.f0.a (com.engagelab.privates.common.f0$a)
.class public Lcom/engagelab/privates/common/f0$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/engagelab/privates/common/y$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/f0;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/engagelab/privates/common/f0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/f0;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/f0$a;->b:Lcom/engagelab/privates/common/f0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/engagelab/privates/common/f0$a;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 1
    const-string v0, "BaseInAppWrapper"

    .line 2
    .line 3
    const-string v1, "  inapp show animation end"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/engagelab/privates/common/f0$a;->b:Lcom/engagelab/privates/common/f0;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/engagelab/privates/common/f0;->a:Lcom/engagelab/privates/common/f0$d;

    .line 11
    .line 12
    if-eqz v1, :cond_14

    .line 13
    .line 14
    iget-object v0, v0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/engagelab/privates/common/f0$a;->a:Landroid/view/View;

    .line 17
    .line 18
    invoke-interface {v1, v0, v2}, Lcom/engagelab/privates/common/f0$d;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void
.end method

###### Class com.engagelab.privates.common.f0.b (com.engagelab.privates.common.f0$b)
.class public Lcom/engagelab/privates/common/f0$b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/engagelab/privates/common/c0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/f0;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/engagelab/privates/common/f0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/f0;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/f0$b;->b:Lcom/engagelab/privates/common/f0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/engagelab/privates/common/f0$b;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 1
    const-string v0, "BaseInAppWrapper"

    .line 2
    .line 3
    :try_start_2
    const-string v1, "dismiss timer reach, dismiss   inapp message"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/engagelab/privates/common/f0$b;->b:Lcom/engagelab/privates/common/f0;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 11
    .line 12
    const/16 v2, 0x5e

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/engagelab/privates/common/utils/Utils;->dpToPx(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    new-instance v2, Landroid/graphics/Point;

    .line 19
    .line 20
    neg-int v1, v1

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/engagelab/privates/common/f0$b;->b:Lcom/engagelab/privates/common/f0;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/engagelab/privates/common/f0;->d:Lcom/engagelab/privates/common/d0;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/engagelab/privates/common/d0;->b()F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    float-to-long v3, v1

    .line 34
    iget-object v1, p0, Lcom/engagelab/privates/common/f0$b;->a:Landroid/view/View;

    .line 35
    .line 36
    new-instance v5, Lcom/engagelab/privates/common/f0$b$a;

    .line 37
    .line 38
    invoke-direct {v5, p0}, Lcom/engagelab/privates/common/f0$b$a;-><init>(Lcom/engagelab/privates/common/f0$b;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2, v3, v4, v5}, Lcom/engagelab/privates/common/y;->a(Landroid/view/View;Landroid/graphics/Point;JLcom/engagelab/privates/common/y$c;)V
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2c

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_2c
    move-exception v1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "in-app slide to dismiss error."

    .line 49
    .line 50
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

###### Class com.engagelab.privates.common.f0.b.a (com.engagelab.privates.common.f0$b$a)
.class public Lcom/engagelab/privates/common/f0$b$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/engagelab/privates/common/y$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/f0$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/f0$b;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/f0$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/f0$b$a;->a:Lcom/engagelab/privates/common/f0$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/f0$b$a;->a:Lcom/engagelab/privates/common/f0$b;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/engagelab/privates/common/f0$b;->b:Lcom/engagelab/privates/common/f0;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/engagelab/privates/common/f0;->a:Lcom/engagelab/privates/common/f0$d;

    .line 6
    .line 7
    if-eqz v2, :cond_11

    .line 8
    .line 9
    iget-object v3, v1, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/engagelab/privates/common/f0$b;->a:Landroid/view/View;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 14
    .line 15
    invoke-interface {v2, v3, v0, v1}, Lcom/engagelab/privates/common/f0$d;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

###### Class com.engagelab.privates.common.f0.c (com.engagelab.privates.common.f0$c)
.class public Lcom/engagelab/privates/common/f0$c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/engagelab/privates/common/b0$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/f0;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/f0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/f0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/f0$c;->a:Lcom/engagelab/privates/common/f0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .line 2
    iget-object p2, p0, Lcom/engagelab/privates/common/f0$c;->a:Lcom/engagelab/privates/common/f0;

    iget-object v0, p2, Lcom/engagelab/privates/common/f0;->a:Lcom/engagelab/privates/common/f0$d;

    if-eqz v0, :cond_d

    .line 3
    iget-object v1, p2, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    iget-object p2, p2, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    invoke-interface {v0, v1, p1, p2}, Lcom/engagelab/privates/common/f0$d;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    const/4 p1, 0x1

    return p1
.end method

###### Class com.engagelab.privates.common.f0.d (com.engagelab.privates.common.f0$d)
.class public interface abstract Lcom/engagelab/privates/common/f0$d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/engagelab/privates/common/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/view/View;)V
.end method

.method public abstract a(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;)V
.end method
