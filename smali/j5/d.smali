###### Class j5.d (j5.d)
.class public final Lj5/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final d:J

.field public static final e:J


# instance fields
.field public final a:Lh5/k;

.field public b:J

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x18

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lj5/d;->d:J

    .line 10
    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    const-wide/16 v1, 0x1e

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    sput-wide v0, Lj5/d;->e:J

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Le5/e;->b:Le5/e;

    .line 5
    .line 6
    if-nez v0, :cond_12

    .line 7
    .line 8
    sget-object v0, Lh5/k;->c:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    new-instance v0, Le5/e;

    .line 11
    .line 12
    const/16 v1, 0x1b

    .line 13
    .line 14
    invoke-direct {v0, v1}, Le5/e;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Le5/e;->b:Le5/e;

    .line 18
    .line 19
    :cond_12
    sget-object v0, Le5/e;->b:Le5/e;

    .line 20
    .line 21
    sget-object v1, Lh5/k;->d:Lh5/k;

    .line 22
    .line 23
    if-nez v1, :cond_1f

    .line 24
    .line 25
    new-instance v1, Lh5/k;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lh5/k;-><init>(Le5/e;)V

    .line 28
    .line 29
    .line 30
    sput-object v1, Lh5/k;->d:Lh5/k;

    .line 31
    .line 32
    :cond_1f
    sget-object v0, Lh5/k;->d:Lh5/k;

    .line 33
    .line 34
    iput-object v0, p0, Lj5/d;->a:Lh5/k;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)J
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0x1ad

    .line 3
    .line 4
    if-eq p1, v0, :cond_10

    .line 5
    .line 6
    const/16 v0, 0x1f4

    .line 7
    .line 8
    if-lt p1, v0, :cond_e

    .line 9
    .line 10
    const/16 v0, 0x258

    .line 11
    .line 12
    if-ge p1, v0, :cond_e

    .line 13
    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    :goto_10
    const/4 p1, 0x1

    .line 18
    :goto_11
    if-nez p1, :cond_19

    .line 19
    .line 20
    :try_start_13
    sget-wide v0, Lj5/d;->d:J
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_17

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-wide v0

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    goto :goto_3e

    .line 26
    :cond_19
    :try_start_19
    iget p1, p0, Lj5/d;->c:I

    .line 27
    .line 28
    int-to-double v0, p1

    .line 29
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 30
    .line 31
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iget-object p1, p0, Lj5/d;->a:Lh5/k;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    mul-double/2addr v2, v4

    .line 50
    double-to-long v2, v2

    .line 51
    long-to-double v2, v2

    .line 52
    add-double/2addr v0, v2

    .line 53
    sget-wide v2, Lj5/d;->e:J

    .line 54
    .line 55
    long-to-double v2, v2

    .line 56
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 57
    .line 58
    .line 59
    move-result-wide v0
    :try_end_3b
    .catchall {:try_start_19 .. :try_end_3b} :catchall_17

    .line 60
    double-to-long v0, v0

    .line 61
    monitor-exit p0

    .line 62
    return-wide v0

    .line 63
    :goto_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_17

    .line 64
    throw p1
.end method

.method public final declared-synchronized b()Z
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lj5/d;->c:I

    .line 3
    .line 4
    if-eqz v0, :cond_1b

    .line 5
    .line 6
    iget-object v0, p0, Lj5/d;->a:Lh5/k;

    .line 7
    .line 8
    iget-object v0, v0, Lh5/k;->a:Le5/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lj5/d;->b:J
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-lez v0, :cond_17

    .line 22
    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    goto :goto_1c

    .line 26
    :catchall_19
    move-exception v0

    .line 27
    goto :goto_1e

    .line 28
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 29
    :goto_1c
    monitor-exit p0

    .line 30
    return v0

    .line 31
    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_19

    .line 32
    throw v0
.end method

.method public final declared-synchronized c()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_2
    iput v0, p0, Lj5/d;->c:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_6
    move-exception v0

    .line 8
    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    .line 9
    throw v0
.end method

.method public final declared-synchronized d(I)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0xc8

    .line 3
    .line 4
    if-lt p1, v0, :cond_9

    .line 5
    .line 6
    const/16 v0, 0x12c

    .line 7
    .line 8
    if-lt p1, v0, :cond_2e

    .line 9
    .line 10
    :cond_9
    const/16 v0, 0x191

    .line 11
    .line 12
    if-eq p1, v0, :cond_2e

    .line 13
    .line 14
    const/16 v0, 0x194

    .line 15
    .line 16
    if-ne p1, v0, :cond_12

    .line 17
    .line 18
    goto :goto_2e

    .line 19
    :cond_12
    :try_start_12
    iget v0, p0, Lj5/d;->c:I

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iput v0, p0, Lj5/d;->c:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lj5/d;->a(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-object p1, p0, Lj5/d;->a:Lh5/k;

    .line 30
    .line 31
    iget-object p1, p1, Lh5/k;->a:Le5/e;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    add-long/2addr v2, v0

    .line 41
    iput-wide v2, p0, Lj5/d;->b:J
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2c

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_2c
    move-exception p1

    .line 46
    goto :goto_33

    .line 47
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-virtual {p0}, Lj5/d;->c()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2c

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_2c

    .line 53
    throw p1
.end method
