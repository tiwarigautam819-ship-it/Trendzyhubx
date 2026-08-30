###### Class l7.b0 (l7.b0)
.class public abstract Ll7/b0;
.super Ll7/c0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ll7/v;


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _delayed:Ljava/lang/Object;

.field private volatile _isCompleted:I

.field private volatile _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "_queue"

    .line 2
    .line 3
    const-class v1, Ll7/b0;

    .line 4
    .line 5
    const-class v2, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Ll7/b0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    const-string v0, "_delayed"

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Ll7/b0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    const-string v0, "_isCompleted"

    .line 22
    .line 23
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Ll7/b0;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ll7/n;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ll7/b0;->_isCompleted:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final A()J
    .registers 10

    .line 1
    iget-object v0, p0, Ll7/c0;->e:Ls6/e;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const-wide v3, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_d

    .line 11
    .line 12
    :goto_b
    move-wide v5, v3

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    invoke-virtual {v0}, Ls6/e;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_14

    .line 19
    .line 20
    goto :goto_b

    .line 21
    :cond_14
    move-wide v5, v1

    .line 22
    :goto_15
    cmp-long v0, v5, v1

    .line 23
    .line 24
    if-nez v0, :cond_1a

    .line 25
    .line 26
    goto :goto_46

    .line 27
    :cond_1a
    sget-object v0, Ll7/b0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_47

    .line 34
    .line 35
    instance-of v5, v0, Lp7/m;

    .line 36
    .line 37
    if-eqz v5, :cond_41

    .line 38
    .line 39
    check-cast v0, Lp7/m;

    .line 40
    .line 41
    sget-object v5, Lp7/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 42
    .line 43
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    const-wide/32 v7, 0x3fffffff

    .line 48
    .line 49
    .line 50
    and-long/2addr v7, v5

    .line 51
    long-to-int v0, v7

    .line 52
    const-wide v7, 0xfffffffc0000000L

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    and-long/2addr v5, v7

    .line 58
    const/16 v7, 0x1e

    .line 59
    .line 60
    shr-long/2addr v5, v7

    .line 61
    long-to-int v5, v5

    .line 62
    if-ne v0, v5, :cond_40

    .line 63
    .line 64
    goto :goto_47

    .line 65
    :cond_40
    return-wide v1

    .line 66
    :cond_41
    sget-object v5, Ll7/r;->a:Ln6/d;

    .line 67
    .line 68
    if-ne v0, v5, :cond_46

    .line 69
    .line 70
    goto :goto_4f

    .line 71
    :cond_46
    :goto_46
    return-wide v1

    .line 72
    :cond_47
    :goto_47
    sget-object v0, Ll7/b0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ll7/a0;

    .line 79
    .line 80
    :goto_4f
    return-wide v3
.end method

.method public final B()Z
    .registers 8

    .line 1
    iget-object v0, p0, Ll7/c0;->e:Ls6/e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    invoke-virtual {v0}, Ls6/e;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v1

    .line 12
    :goto_b
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    goto :goto_44

    .line 16
    :cond_f
    sget-object v0, Ll7/b0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ll7/a0;

    .line 23
    .line 24
    sget-object v0, Ll7/b0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_20

    .line 31
    .line 32
    goto :goto_43

    .line 33
    :cond_20
    instance-of v3, v0, Lp7/m;

    .line 34
    .line 35
    if-eqz v3, :cond_3f

    .line 36
    .line 37
    check-cast v0, Lp7/m;

    .line 38
    .line 39
    sget-object v3, Lp7/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    const-wide/32 v5, 0x3fffffff

    .line 46
    .line 47
    .line 48
    and-long/2addr v5, v3

    .line 49
    long-to-int v0, v5

    .line 50
    const-wide v5, 0xfffffffc0000000L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    and-long/2addr v3, v5

    .line 56
    const/16 v5, 0x1e

    .line 57
    .line 58
    shr-long/2addr v3, v5

    .line 59
    long-to-int v3, v3

    .line 60
    if-ne v0, v3, :cond_3e

    .line 61
    .line 62
    return v1

    .line 63
    :cond_3e
    return v2

    .line 64
    :cond_3f
    sget-object v3, Ll7/r;->a:Ln6/d;

    .line 65
    .line 66
    if-ne v0, v3, :cond_44

    .line 67
    .line 68
    :goto_43
    return v1

    .line 69
    :cond_44
    :goto_44
    return v2
.end method

.method public final C()J
    .registers 8

    .line 1
    invoke-virtual {p0}, Ll7/c0;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_9
    sget-object v0, Ll7/b0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ll7/a0;

    .line 17
    .line 18
    sget-object v0, Ll7/b0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    .line 20
    :goto_13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-nez v3, :cond_1b

    .line 26
    .line 27
    goto :goto_4e

    .line 28
    :cond_1b
    instance-of v5, v3, Lp7/m;

    .line 29
    .line 30
    if-eqz v5, :cond_40

    .line 31
    .line 32
    move-object v4, v3

    .line 33
    check-cast v4, Lp7/m;

    .line 34
    .line 35
    invoke-virtual {v4}, Lp7/m;->d()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    sget-object v6, Lp7/m;->g:Ln6/d;

    .line 40
    .line 41
    if-eq v5, v6, :cond_2e

    .line 42
    .line 43
    move-object v4, v5

    .line 44
    check-cast v4, Ljava/lang/Runnable;

    .line 45
    .line 46
    goto :goto_4e

    .line 47
    :cond_2e
    invoke-virtual {v4}, Lp7/m;->c()Lp7/m;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    :cond_32
    invoke-virtual {v0, p0, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_39

    .line 56
    .line 57
    goto :goto_13

    .line 58
    :cond_39
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eq v4, v3, :cond_32

    .line 63
    .line 64
    goto :goto_13

    .line 65
    :cond_40
    sget-object v5, Ll7/r;->a:Ln6/d;

    .line 66
    .line 67
    if-ne v3, v5, :cond_45

    .line 68
    .line 69
    goto :goto_4e

    .line 70
    :cond_45
    invoke-virtual {v0, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_59

    .line 75
    .line 76
    move-object v4, v3

    .line 77
    check-cast v4, Ljava/lang/Runnable;

    .line 78
    .line 79
    :goto_4e
    if-eqz v4, :cond_54

    .line 80
    .line 81
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 82
    .line 83
    .line 84
    return-wide v1

    .line 85
    :cond_54
    invoke-virtual {p0}, Ll7/b0;->A()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    return-wide v0

    .line 90
    :cond_59
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    if-eq v5, v3, :cond_45

    .line 95
    .line 96
    goto :goto_13
.end method

.method public shutdown()V
    .registers 8

    .line 1
    sget-object v0, Ll7/x0;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Ll7/b0;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Ll7/r;->a:Ln6/d;

    .line 14
    .line 15
    sget-object v3, Ll7/b0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    :goto_10
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-nez v4, :cond_24

    .line 22
    .line 23
    :cond_16
    invoke-virtual {v3, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1d

    .line 28
    .line 29
    goto :goto_44

    .line 30
    :cond_1d
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_16

    .line 35
    .line 36
    goto :goto_10

    .line 37
    :cond_24
    instance-of v5, v4, Lp7/m;

    .line 38
    .line 39
    if-eqz v5, :cond_2e

    .line 40
    .line 41
    check-cast v4, Lp7/m;

    .line 42
    .line 43
    invoke-virtual {v4}, Lp7/m;->b()Z

    .line 44
    .line 45
    .line 46
    goto :goto_44

    .line 47
    :cond_2e
    if-ne v4, v0, :cond_31

    .line 48
    .line 49
    goto :goto_44

    .line 50
    :cond_31
    new-instance v5, Lp7/m;

    .line 51
    .line 52
    const/16 v6, 0x8

    .line 53
    .line 54
    invoke-direct {v5, v6, v2}, Lp7/m;-><init>(IZ)V

    .line 55
    .line 56
    .line 57
    move-object v6, v4

    .line 58
    check-cast v6, Ljava/lang/Runnable;

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Lp7/m;->a(Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    :cond_3e
    invoke-virtual {v3, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_5a

    .line 68
    .line 69
    :cond_44
    :goto_44
    invoke-virtual {p0}, Ll7/b0;->C()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    const-wide/16 v2, 0x0

    .line 74
    .line 75
    cmp-long v0, v0, v2

    .line 76
    .line 77
    if-lez v0, :cond_44

    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 80
    .line 81
    .line 82
    sget-object v0, Ll7/b0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 83
    .line 84
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ll7/a0;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_5a
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    if-eq v6, v4, :cond_3e

    .line 96
    .line 97
    goto :goto_10
.end method

.method public final t(Lu6/k;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p2}, Ll7/b0;->z(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public z(Ljava/lang/Runnable;)V
    .registers 7

    .line 1
    :goto_0
    sget-object v0, Ll7/b0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Ll7/b0;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_f

    .line 14
    .line 15
    goto :goto_4a

    .line 16
    :cond_f
    if-nez v1, :cond_20

    .line 17
    .line 18
    :cond_11
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_19

    .line 24
    .line 25
    goto :goto_66

    .line 26
    :cond_19
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_11

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_20
    instance-of v2, v1, Lp7/m;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v2, :cond_46

    .line 37
    .line 38
    move-object v2, v1

    .line 39
    check-cast v2, Lp7/m;

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lp7/m;->a(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_66

    .line 46
    .line 47
    if-eq v4, v3, :cond_34

    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    if-eq v4, v0, :cond_4a

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_34
    invoke-virtual {v2}, Lp7/m;->c()Lp7/m;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :cond_38
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3f

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3f
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eq v3, v1, :cond_38

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_46
    sget-object v2, Ll7/r;->a:Ln6/d;

    .line 72
    .line 73
    if-ne v1, v2, :cond_50

    .line 74
    .line 75
    :cond_4a
    :goto_4a
    sget-object v0, Ll7/s;->i:Ll7/s;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ll7/s;->z(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_50
    new-instance v2, Lp7/m;

    .line 82
    .line 83
    const/16 v4, 0x8

    .line 84
    .line 85
    invoke-direct {v2, v4, v3}, Lp7/m;-><init>(IZ)V

    .line 86
    .line 87
    .line 88
    move-object v3, v1

    .line 89
    check-cast v3, Ljava/lang/Runnable;

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Lp7/m;->a(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, p1}, Lp7/m;->a(Ljava/lang/Object;)I

    .line 95
    .line 96
    .line 97
    :cond_60
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_74

    .line 102
    .line 103
    :cond_66
    :goto_66
    invoke-virtual {p0}, Ll7/c0;->w()Ljava/lang/Thread;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eq v0, p1, :cond_73

    .line 112
    .line 113
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 114
    .line 115
    .line 116
    :cond_73
    return-void

    .line 117
    :cond_74
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-eq v3, v1, :cond_60

    .line 122
    .line 123
    goto :goto_0
.end method
