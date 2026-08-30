###### Class com.engagelab.privates.common.b (com.engagelab.privates.common.b)
.class public Lcom/engagelab/privates/common/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile c:Lcom/engagelab/privates/common/b;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/engagelab/privates/common/b;->a:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/engagelab/privates/common/b;->b:J

    .line 9
    .line 10
    return-void
.end method

.method public static a()Lcom/engagelab/privates/common/b;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/b;->c:Lcom/engagelab/privates/common/b;

    if-nez v0, :cond_13

    .line 2
    const-class v0, Lcom/engagelab/privates/common/b;

    monitor-enter v0

    .line 3
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/b;

    invoke-direct {v1}, Lcom/engagelab/privates/common/b;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/b;->c:Lcom/engagelab/privates/common/b;

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
    sget-object v0, Lcom/engagelab/privates/common/b;->c:Lcom/engagelab/privates/common/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    .line 6
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 7
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/engagelab/privates/common/b;->b:J

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 10

    .line 1
    invoke-static {p1}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_3c

    .line 8
    :cond_7
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/engagelab/privates/common/d;->b()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "MTActiveBusiness"

    .line 17
    .line 18
    if-nez v0, :cond_1f

    .line 19
    .line 20
    const-string v0, "re connect toForeground"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0xbb2

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    iget-wide v2, p0, Lcom/engagelab/privates/common/b;->b:J

    .line 33
    .line 34
    const-wide/16 v4, 0x0

    .line 35
    .line 36
    cmp-long v0, v2, v4

    .line 37
    .line 38
    if-nez v0, :cond_28

    .line 39
    .line 40
    goto :goto_3c

    .line 41
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    iput-wide v2, p0, Lcom/engagelab/privates/common/b;->a:J

    .line 46
    .line 47
    iget-wide v4, p0, Lcom/engagelab/privates/common/b;->b:J

    .line 48
    .line 49
    sub-long/2addr v2, v4

    .line 50
    invoke-static {}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getHeartbeatInterval()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    const-wide/16 v6, 0x2

    .line 55
    .line 56
    div-long/2addr v4, v6

    .line 57
    cmp-long v0, v2, v4

    .line 58
    .line 59
    if-gez v0, :cond_3d

    .line 60
    .line 61
    :goto_3c
    return-void

    .line 62
    :cond_3d
    const-string v0, "re heartbeat"

    .line 63
    .line 64
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/common/d;->g(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/engagelab/privates/common/d;->a()Lcom/engagelab/privates/common/d;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Lcom/engagelab/privates/common/d;->e(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
