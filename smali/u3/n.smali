###### Class u3.n (u3.n)
.class public final Lu3/n;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static e:Lu3/n;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Lu3/l;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu3/l;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lu3/l;-><init>(Lu3/n;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu3/n;->c:Lu3/l;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lu3/n;->d:I

    .line 13
    .line 14
    iput-object p2, p0, Lu3/n;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lu3/n;->a:Landroid/content/Context;

    .line 21
    .line 22
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu3/n;
    .registers 5

    .line 1
    const-class v0, Lu3/n;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lu3/n;->e:Lu3/n;

    .line 5
    .line 6
    if-nez v1, :cond_21

    .line 7
    .line 8
    new-instance v1, Lu3/n;

    .line 9
    .line 10
    new-instance v2, Lc4/a;

    .line 11
    .line 12
    const-string v3, "MessengerIpcClient"

    .line 13
    .line 14
    invoke-direct {v2, v3}, Lc4/a;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, p0, v2}, Lu3/n;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lu3/n;->e:Lu3/n;

    .line 30
    .line 31
    goto :goto_21

    .line 32
    :catchall_1f
    move-exception p0

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    :goto_21
    sget-object p0, Lu3/n;->e:Lu3/n;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1f

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-object p0

    .line 38
    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_1f

    .line 39
    throw p0
.end method


# virtual methods
.method public final declared-synchronized b(Lu3/m;)Lp4/q;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "MessengerIpcClient"

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1c

    .line 10
    .line 11
    invoke-virtual {p1}, Lu3/m;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Queueing "

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "MessengerIpcClient"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_1c

    .line 27
    :catchall_1a
    move-exception p1

    .line 28
    goto :goto_34

    .line 29
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lu3/n;->c:Lu3/l;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lu3/l;->d(Lu3/m;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2e

    .line 36
    .line 37
    new-instance v0, Lu3/l;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lu3/l;-><init>(Lu3/n;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lu3/n;->c:Lu3/l;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lu3/l;->d(Lu3/m;)Z

    .line 45
    .line 46
    .line 47
    :cond_2e
    iget-object p1, p1, Lu3/m;->b:Lp4/j;

    .line 48
    .line 49
    iget-object p1, p1, Lp4/j;->a:Lp4/q;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_1a

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-object p1

    .line 53
    :goto_34
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_1a

    .line 54
    throw p1
.end method
