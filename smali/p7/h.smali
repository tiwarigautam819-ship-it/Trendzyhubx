###### Class p7.h (p7.h)
.class public final Lp7/h;
.super Ll7/n;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ll7/v;


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final c:Ll7/n;

.field public final d:I

.field public final e:Lp7/k;

.field public final f:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-class v0, Lp7/h;

    .line 2
    .line 3
    const-string v1, "runningWorkers"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lp7/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ll7/n;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ll7/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp7/h;->c:Ll7/n;

    .line 5
    .line 6
    iput p2, p0, Lp7/h;->d:I

    .line 7
    .line 8
    instance-of p2, p1, Ll7/v;

    .line 9
    .line 10
    if-eqz p2, :cond_e

    .line 11
    .line 12
    check-cast p1, Ll7/v;

    .line 13
    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    if-nez p1, :cond_13

    .line 17
    .line 18
    sget p1, Ll7/t;->a:I

    .line 19
    .line 20
    :cond_13
    new-instance p1, Lp7/k;

    .line 21
    .line 22
    invoke-direct {p1}, Lp7/k;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lp7/h;->e:Lp7/k;

    .line 26
    .line 27
    new-instance p1, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lp7/h;->f:Ljava/lang/Object;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final t(Lu6/k;Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lp7/h;->e:Lp7/k;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lp7/k;->a(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    sget-object p1, Lp7/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget v0, p0, Lp7/h;->d:I

    .line 13
    .line 14
    if-ge p2, v0, :cond_38

    .line 15
    .line 16
    iget-object p2, p0, Lp7/h;->f:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter p2

    .line 19
    :try_start_12
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lp7/h;->d:I
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_35

    .line 24
    .line 25
    if-lt v0, v1, :cond_1c

    .line 26
    .line 27
    monitor-exit p2

    .line 28
    return-void

    .line 29
    :cond_1c
    :try_start_1c
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_35

    .line 30
    .line 31
    .line 32
    monitor-exit p2

    .line 33
    invoke-virtual {p0}, Lp7/h;->v()Ljava/lang/Runnable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_27

    .line 38
    .line 39
    goto :goto_38

    .line 40
    :cond_27
    new-instance p2, Ls4/b;

    .line 41
    .line 42
    const/16 v0, 0xe

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-direct {p2, p0, p1, v0, v1}, Ls4/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lp7/h;->c:Ll7/n;

    .line 49
    .line 50
    invoke-virtual {p1, p0, p2}, Ll7/n;->t(Lu6/k;Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_35
    move-exception p1

    .line 55
    monitor-exit p2

    .line 56
    throw p1

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public final v()Ljava/lang/Runnable;
    .registers 4

    .line 1
    :goto_0
    iget-object v0, p0, Lp7/h;->e:Lp7/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp7/k;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Runnable;

    .line 8
    .line 9
    if-nez v0, :cond_25

    .line 10
    .line 11
    iget-object v0, p0, Lp7/h;->f:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_d
    sget-object v1, Lp7/h;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lp7/h;->e:Lp7/k;

    .line 20
    .line 21
    invoke-virtual {v2}, Lp7/k;->c()I

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_22

    .line 25
    if-nez v2, :cond_1d

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    const/4 v0, 0x0

    .line 29
    return-object v0

    .line 30
    :cond_1d
    :try_start_1d
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_22

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    goto :goto_0

    .line 35
    :catchall_22
    move-exception v1

    .line 36
    monitor-exit v0

    .line 37
    throw v1

    .line 38
    :cond_25
    return-object v0
.end method
