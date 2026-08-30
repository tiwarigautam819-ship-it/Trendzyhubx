###### Class com.engagelab.privates.common.n0 (com.engagelab.privates.common.n0)
.class public Lcom/engagelab/privates/common/n0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile b:Lcom/engagelab/privates/common/n0;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/engagelab/privates/common/n0;->a:Z

    .line 6
    .line 7
    return-void
.end method

.method public static a()Lcom/engagelab/privates/common/n0;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/n0;->b:Lcom/engagelab/privates/common/n0;

    if-nez v0, :cond_13

    .line 2
    const-class v0, Lcom/engagelab/privates/common/n0;

    monitor-enter v0

    .line 3
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/n0;

    invoke-direct {v1}, Lcom/engagelab/privates/common/n0;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/n0;->b:Lcom/engagelab/privates/common/n0;

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
    sget-object v0, Lcom/engagelab/privates/common/n0;->b:Lcom/engagelab/privates/common/n0;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    const-string v0, "addObserver:"

    monitor-enter p0

    .line 6
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/engagelab/privates/common/n0;->a:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTMABusiness"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p0, Lcom/engagelab/privates/common/n0;->a:Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_24

    if-eqz v0, :cond_1c

    monitor-exit p0

    return-void

    .line 8
    :cond_1c
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/n0;->b(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/engagelab/privates/common/n0;->a:Z
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public final b(Landroid/content/Context;)V
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "com.engagelab.privates.push.oth.ma.OTHMa"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_10
    const-string p1, "MTMABusiness"

    .line 18
    .line 19
    const-string v0, "not integrated OTHMa.aar"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
