###### Class e8.s (e8.s)
.class public abstract Le8/s;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Le8/r;

.field public static final b:I

.field public static final c:[Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Le8/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [B

    .line 5
    .line 6
    invoke-direct {v0, v2, v1, v1, v1}, Le8/r;-><init>([BIIZ)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Le8/s;->a:Le8/r;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    mul-int/lit8 v0, v0, 0x2

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sput v0, Le8/s;->b:I

    .line 28
    .line 29
    new-array v2, v0, [Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    .line 31
    :goto_1e
    if-ge v1, v0, :cond_2a

    .line 32
    .line 33
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 36
    .line 37
    .line 38
    aput-object v3, v2, v1

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_1e

    .line 43
    :cond_2a
    sput-object v2, Le8/s;->c:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    return-void
.end method

.method public static final a(Le8/r;)V
    .registers 7

    .line 1
    const-string v0, "segment"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le8/r;->f:Le8/r;

    .line 7
    .line 8
    if-nez v0, :cond_4c

    .line 9
    .line 10
    iget-object v0, p0, Le8/r;->g:Le8/r;

    .line 11
    .line 12
    if-nez v0, :cond_4c

    .line 13
    .line 14
    iget-boolean v0, p0, Le8/r;->d:Z

    .line 15
    .line 16
    if-eqz v0, :cond_12

    .line 17
    .line 18
    goto :goto_30

    .line 19
    :cond_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    sget v2, Le8/s;->b:I

    .line 28
    .line 29
    int-to-long v2, v2

    .line 30
    const-wide/16 v4, 0x1

    .line 31
    .line 32
    sub-long/2addr v2, v4

    .line 33
    and-long/2addr v0, v2

    .line 34
    long-to-int v0, v0

    .line 35
    sget-object v1, Le8/s;->c:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    aget-object v0, v1, v0

    .line 38
    .line 39
    sget-object v1, Le8/s;->a:Le8/r;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Le8/r;

    .line 46
    .line 47
    if-ne v2, v1, :cond_31

    .line 48
    .line 49
    :goto_30
    return-void

    .line 50
    :cond_31
    const/4 v1, 0x0

    .line 51
    if-eqz v2, :cond_37

    .line 52
    .line 53
    iget v3, v2, Le8/r;->c:I

    .line 54
    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v3, v1

    .line 57
    :goto_38
    const/high16 v4, 0x10000

    .line 58
    .line 59
    if-lt v3, v4, :cond_40

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_40
    iput-object v2, p0, Le8/r;->f:Le8/r;

    .line 66
    .line 67
    iput v1, p0, Le8/r;->b:I

    .line 68
    .line 69
    add-int/lit16 v3, v3, 0x2000

    .line 70
    .line 71
    iput v3, p0, Le8/r;->c:I

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    const-string v0, "Failed requirement."

    .line 80
    .line 81
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public static final b()Le8/r;
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget v2, Le8/s;->b:I

    .line 10
    .line 11
    int-to-long v2, v2

    .line 12
    const-wide/16 v4, 0x1

    .line 13
    .line 14
    sub-long/2addr v2, v4

    .line 15
    and-long/2addr v0, v2

    .line 16
    long-to-int v0, v0

    .line 17
    sget-object v1, Le8/s;->c:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    .line 19
    aget-object v0, v1, v0

    .line 20
    .line 21
    sget-object v1, Le8/s;->a:Le8/r;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Le8/r;

    .line 28
    .line 29
    if-ne v2, v1, :cond_24

    .line 30
    .line 31
    new-instance v0, Le8/r;

    .line 32
    .line 33
    invoke-direct {v0}, Le8/r;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_24
    const/4 v1, 0x0

    .line 38
    if-nez v2, :cond_30

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Le8/r;

    .line 44
    .line 45
    invoke-direct {v0}, Le8/r;-><init>()V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_30
    iget-object v3, v2, Le8/r;->f:Le8/r;

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, v2, Le8/r;->f:Le8/r;

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput v0, v2, Le8/r;->c:I

    .line 58
    .line 59
    return-object v2
.end method
