###### Class s.i (s.i)
.class public Ls/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final lock:Lt/b;

.field private final map:Lt/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt/c;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ls/i;->maxSize:I

    .line 5
    .line 6
    if-lez p1, :cond_16

    .line 7
    .line 8
    new-instance p1, Lt/c;

    .line 9
    .line 10
    invoke-direct {p1}, Lt/c;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Ls/i;->map:Lt/c;

    .line 14
    .line 15
    new-instance p1, Lt/b;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Ls/i;->lock:Lt/b;

    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v0, "maxSize <= 0"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2}, Ls/i;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_7

    .line 6
    .line 7
    return v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Negative size: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 p1, 0x3d

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p2
.end method

.method public create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final createCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Ls/i;->lock:Lt/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ls/i;->createCount:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_7
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p1, "key"

    .line 2
    .line 3
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "oldValue"

    .line 7
    .line 8
    invoke-static {p1, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final evictAll()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Ls/i;->trimToSize(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final evictionCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Ls/i;->lock:Lt/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ls/i;->evictionCount:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_7
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls/i;->lock:Lt/b;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Ls/i;->map:Lt/c;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, v1, Lt/c;->a:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1f

    .line 21
    .line 22
    iget p1, p0, Ls/i;->hitCount:I

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    iput p1, p0, Ls/i;->hitCount:I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1d

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    goto :goto_64

    .line 32
    :cond_1f
    :try_start_1f
    iget v1, p0, Ls/i;->missCount:I

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    iput v1, p0, Ls/i;->missCount:I
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_1d

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    invoke-virtual {p0, p1}, Ls/i;->create(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_2e

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    return-object p1

    .line 47
    :cond_2e
    iget-object v1, p0, Ls/i;->lock:Lt/b;

    .line 48
    .line 49
    monitor-enter v1

    .line 50
    :try_start_31
    iget v2, p0, Ls/i;->createCount:I

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    iput v2, p0, Ls/i;->createCount:I

    .line 55
    .line 56
    iget-object v2, p0, Ls/i;->map:Lt/c;

    .line 57
    .line 58
    iget-object v2, v2, Lt/c;->a:Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-virtual {v2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_4b

    .line 65
    .line 66
    iget-object v3, p0, Ls/i;->map:Lt/c;

    .line 67
    .line 68
    iget-object v3, v3, Lt/c;->a:Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    invoke-virtual {v3, p1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_54

    .line 74
    :catchall_49
    move-exception p1

    .line 75
    goto :goto_62

    .line 76
    :cond_4b
    iget v3, p0, Ls/i;->size:I

    .line 77
    .line 78
    invoke-virtual {p0, p1, v0}, Ls/i;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    add-int/2addr v3, v4

    .line 83
    iput v3, p0, Ls/i;->size:I
    :try_end_54
    .catchall {:try_start_31 .. :try_end_54} :catchall_49

    .line 84
    .line 85
    :goto_54
    monitor-exit v1

    .line 86
    if-eqz v2, :cond_5c

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v1, p1, v0, v2}, Ls/i;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-object v2

    .line 93
    :cond_5c
    iget p1, p0, Ls/i;->maxSize:I

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ls/i;->trimToSize(I)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :goto_62
    monitor-exit v1

    .line 100
    throw p1

    .line 101
    :goto_64
    monitor-exit v0

    .line 102
    throw p1
.end method

.method public final hitCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Ls/i;->lock:Lt/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ls/i;->hitCount:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_7
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public final maxSize()I
    .registers 3

    .line 1
    iget-object v0, p0, Ls/i;->lock:Lt/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ls/i;->maxSize:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_7
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public final missCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Ls/i;->lock:Lt/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ls/i;->missCount:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_7
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ls/i;->lock:Lt/b;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_d
    iget v1, p0, Ls/i;->putCount:I

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iput v1, p0, Ls/i;->putCount:I

    .line 19
    .line 20
    iget v1, p0, Ls/i;->size:I

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Ls/i;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/2addr v1, v2

    .line 27
    iput v1, p0, Ls/i;->size:I

    .line 28
    .line 29
    iget-object v1, p0, Ls/i;->map:Lt/c;

    .line 30
    .line 31
    iget-object v1, v1, Lt/c;->a:Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-virtual {v1, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_32

    .line 38
    .line 39
    iget v2, p0, Ls/i;->size:I

    .line 40
    .line 41
    invoke-virtual {p0, p1, v1}, Ls/i;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sub-int/2addr v2, v3

    .line 46
    iput v2, p0, Ls/i;->size:I
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_30

    .line 47
    .line 48
    goto :goto_32

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    goto :goto_3f

    .line 51
    :cond_32
    :goto_32
    monitor-exit v0

    .line 52
    if-eqz v1, :cond_39

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0, p1, v1, p2}, Ls/i;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_39
    iget p1, p0, Ls/i;->maxSize:I

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ls/i;->trimToSize(I)V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :goto_3f
    monitor-exit v0

    .line 65
    throw p1
.end method

.method public final putCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Ls/i;->lock:Lt/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ls/i;->putCount:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_7
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls/i;->lock:Lt/b;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Ls/i;->map:Lt/c;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, v1, Lt/c;->a:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_21

    .line 21
    .line 22
    iget v2, p0, Ls/i;->size:I

    .line 23
    .line 24
    invoke-virtual {p0, p1, v1}, Ls/i;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    sub-int/2addr v2, v3

    .line 29
    iput v2, p0, Ls/i;->size:I
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1f

    .line 30
    .line 31
    goto :goto_21

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    goto :goto_2a

    .line 34
    :cond_21
    :goto_21
    monitor-exit v0

    .line 35
    if-eqz v1, :cond_29

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0, v0, p1, v1, v2}, Ls/i;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_29
    return-object v1

    .line 43
    :goto_2a
    monitor-exit v0

    .line 44
    throw p1
.end method

.method public resize(I)V
    .registers 3

    .line 1
    if-lez p1, :cond_f

    .line 2
    .line 3
    iget-object v0, p0, Ls/i;->lock:Lt/b;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iput p1, p0, Ls/i;->maxSize:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_c

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    invoke-virtual {p0, p1}, Ls/i;->trimToSize(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    monitor-exit v0

    .line 15
    throw p1

    .line 16
    :cond_f
    const-string p1, "maxSize <= 0"

    .line 17
    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final size()I
    .registers 3

    .line 1
    iget-object v0, p0, Ls/i;->lock:Lt/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ls/i;->size:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_7
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "value"

    .line 7
    .line 8
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public final snapshot()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ls/i;->lock:Lt/b;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_8
    iget-object v2, p0, Ls/i;->map:Lt/c;

    .line 10
    .line 11
    iget-object v2, v2, Lt/c;->a:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "map.entries"

    .line 18
    .line 19
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    check-cast v2, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_35

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_33

    .line 49
    .line 50
    .line 51
    goto :goto_1b

    .line 52
    :catchall_33
    move-exception v0

    .line 53
    goto :goto_37

    .line 54
    :cond_35
    monitor-exit v1

    .line 55
    return-object v0

    .line 56
    :goto_37
    monitor-exit v1

    .line 57
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "LruCache[maxSize="

    .line 2
    .line 3
    iget-object v1, p0, Ls/i;->lock:Lt/b;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_5
    iget v2, p0, Ls/i;->hitCount:I

    .line 7
    .line 8
    iget v3, p0, Ls/i;->missCount:I

    .line 9
    .line 10
    add-int/2addr v3, v2

    .line 11
    if-eqz v3, :cond_12

    .line 12
    .line 13
    mul-int/lit8 v2, v2, 0x64

    .line 14
    .line 15
    div-int/2addr v2, v3

    .line 16
    goto :goto_13

    .line 17
    :catchall_10
    move-exception v0

    .line 18
    goto :goto_44

    .line 19
    :cond_12
    const/4 v2, 0x0

    .line 20
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Ls/i;->maxSize:I

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ",hits="

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v0, p0, Ls/i;->hitCount:I

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ",misses="

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v0, p0, Ls/i;->missCount:I

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ",hitRate="

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, "%]"

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_10

    .line 67
    monitor-exit v1

    .line 68
    return-object v0

    .line 69
    :goto_44
    monitor-exit v1

    .line 70
    throw v0
.end method

.method public trimToSize(I)V
    .registers 8

    .line 1
    :goto_0
    iget-object v0, p0, Ls/i;->lock:Lt/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Ls/i;->size:I

    .line 5
    .line 6
    if-ltz v1, :cond_8f

    .line 7
    .line 8
    iget-object v1, p0, Ls/i;->map:Lt/c;

    .line 9
    .line 10
    iget-object v1, v1, Lt/c;->a:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_19

    .line 17
    .line 18
    iget v1, p0, Ls/i;->size:I

    .line 19
    .line 20
    if-nez v1, :cond_8f

    .line 21
    .line 22
    goto :goto_19

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    goto/16 :goto_97

    .line 25
    .line 26
    :cond_19
    :goto_19
    iget v1, p0, Ls/i;->size:I

    .line 27
    .line 28
    if-le v1, p1, :cond_8d

    .line 29
    .line 30
    iget-object v1, p0, Ls/i;->map:Lt/c;

    .line 31
    .line 32
    iget-object v1, v1, Lt/c;->a:Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_28

    .line 39
    .line 40
    goto :goto_8d

    .line 41
    :cond_28
    iget-object v1, p0, Ls/i;->map:Lt/c;

    .line 42
    .line 43
    iget-object v1, v1, Lt/c;->a:Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "map.entries"

    .line 50
    .line 51
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    check-cast v1, Ljava/lang/Iterable;

    .line 55
    .line 56
    instance-of v2, v1, Ljava/util/List;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    if-eqz v2, :cond_4c

    .line 60
    .line 61
    check-cast v1, Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_46

    .line 68
    .line 69
    :goto_44
    move-object v1, v3

    .line 70
    goto :goto_5b

    .line 71
    :cond_46
    const/4 v2, 0x0

    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_5b

    .line 77
    :cond_4c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_57

    .line 86
    .line 87
    goto :goto_44

    .line 88
    :cond_57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :goto_5b
    check-cast v1, Ljava/util/Map$Entry;
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_16

    .line 93
    .line 94
    if-nez v1, :cond_61

    .line 95
    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :cond_61
    :try_start_61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget-object v4, p0, Ls/i;->map:Lt/c;

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    const-string v5, "key"

    .line 112
    .line 113
    invoke-static {v5, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v4, v4, Lt/c;->a:Ljava/util/LinkedHashMap;

    .line 117
    .line 118
    invoke-virtual {v4, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    iget v4, p0, Ls/i;->size:I

    .line 122
    .line 123
    invoke-virtual {p0, v2, v1}, Ls/i;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    sub-int/2addr v4, v5

    .line 128
    iput v4, p0, Ls/i;->size:I

    .line 129
    .line 130
    iget v4, p0, Ls/i;->evictionCount:I

    .line 131
    .line 132
    const/4 v5, 0x1

    .line 133
    add-int/2addr v4, v5

    .line 134
    iput v4, p0, Ls/i;->evictionCount:I
    :try_end_87
    .catchall {:try_start_61 .. :try_end_87} :catchall_16

    .line 135
    .line 136
    monitor-exit v0

    .line 137
    invoke-virtual {p0, v5, v2, v1, v3}, Ls/i;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_8d
    :goto_8d
    monitor-exit v0

    .line 143
    return-void

    .line 144
    :cond_8f
    :try_start_8f
    const-string p1, "LruCache.sizeOf() is reporting inconsistent results!"

    .line 145
    .line 146
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 147
    .line 148
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v1
    :try_end_97
    .catchall {:try_start_8f .. :try_end_97} :catchall_16

    .line 152
    :goto_97
    monitor-exit v0

    .line 153
    throw p1
.end method
