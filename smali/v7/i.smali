###### Class v7.i (v7.i)
.class public final Lv7/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final a:Lr7/r;

.field public final b:Lcom/google/android/gms/common/internal/g;

.field public final c:Lv7/m;

.field public final d:Lv7/h;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Ljava/lang/Object;

.field public g:Lv7/e;

.field public h:Lv7/l;

.field public i:Lcom/google/firebase/messaging/p;

.field public j:Z

.field public k:Z

.field public l:Z

.field public volatile m:Z

.field public volatile v:Lcom/google/firebase/messaging/p;

.field public volatile w:Lv7/l;


# direct methods
.method public constructor <init>(Lr7/r;Lcom/google/android/gms/common/internal/g;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv7/i;->a:Lr7/r;

    .line 5
    .line 6
    iput-object p2, p0, Lv7/i;->b:Lcom/google/android/gms/common/internal/g;

    .line 7
    .line 8
    iget-object p2, p1, Lr7/r;->b:Lk1/h;

    .line 9
    .line 10
    iget-object p2, p2, Lk1/h;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p2, Lv7/m;

    .line 13
    .line 14
    iput-object p2, p0, Lv7/i;->c:Lv7/m;

    .line 15
    .line 16
    iget-object p1, p1, Lr7/r;->e:Lcom/getcapacitor/n;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance p1, Lv7/h;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lv7/h;-><init>(Lv7/i;)V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    int-to-long v0, p2

    .line 28
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Le8/y;->g(J)Le8/y;

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lv7/i;->d:Lv7/h;

    .line 34
    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lv7/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lv7/i;->l:Z

    .line 44
    .line 45
    return-void
.end method

.method public static final a(Lv7/i;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lv7/i;->m:Z

    .line 7
    .line 8
    if-eqz v1, :cond_c

    .line 9
    .line 10
    const-string v1, "canceled "

    .line 11
    .line 12
    goto :goto_e

    .line 13
    :cond_c
    const-string v1, ""

    .line 14
    .line 15
    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "call"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " to "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lv7/i;->b:Lcom/google/android/gms/common/internal/g;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lr7/m;

    .line 33
    .line 34
    invoke-virtual {p0}, Lr7/m;->f()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final b(Lv7/l;)V
    .registers 4

    .line 1
    sget-object v0, Ls7/b;->a:[B

    .line 2
    .line 3
    iget-object v0, p0, Lv7/i;->h:Lv7/l;

    .line 4
    .line 5
    if-nez v0, :cond_15

    .line 6
    .line 7
    iput-object p1, p0, Lv7/i;->h:Lv7/l;

    .line 8
    .line 9
    iget-object p1, p1, Lv7/l;->p:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lv7/g;

    .line 12
    .line 13
    iget-object v1, p0, Lv7/i;->f:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lv7/g;-><init>(Lv7/i;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "Check failed."

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public final c(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .line 1
    sget-object v0, Ls7/b;->a:[B

    .line 2
    .line 3
    iget-object v0, p0, Lv7/i;->h:Lv7/l;

    .line 4
    .line 5
    if-eqz v0, :cond_24

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    invoke-virtual {p0}, Lv7/i;->k()Ljava/net/Socket;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_21

    .line 12
    monitor-exit v0

    .line 13
    iget-object v0, p0, Lv7/i;->h:Lv7/l;

    .line 14
    .line 15
    if-nez v0, :cond_16

    .line 16
    .line 17
    if-eqz v1, :cond_24

    .line 18
    .line 19
    invoke-static {v1}, Ls7/b;->e(Ljava/net/Socket;)V

    .line 20
    .line 21
    .line 22
    goto :goto_24

    .line 23
    :cond_16
    if-nez v1, :cond_19

    .line 24
    .line 25
    goto :goto_24

    .line 26
    :cond_19
    const-string p1, "Check failed."

    .line 27
    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    monitor-exit v0

    .line 36
    throw p1

    .line 37
    :cond_24
    :goto_24
    iget-object v0, p0, Lv7/i;->d:Lv7/h;

    .line 38
    .line 39
    invoke-virtual {v0}, Le8/e;->i()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2e

    .line 44
    .line 45
    move-object v0, p1

    .line 46
    goto :goto_3a

    .line 47
    :cond_2e
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 48
    .line 49
    const-string v1, "timeout"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    if-eqz p1, :cond_3a

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 57
    .line 58
    .line 59
    :cond_3a
    :goto_3a
    if-eqz p1, :cond_3f

    .line 60
    .line 61
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3f
    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lv7/i;

    .line 2
    .line 3
    iget-object v1, p0, Lv7/i;->a:Lr7/r;

    .line 4
    .line 5
    iget-object v2, p0, Lv7/i;->b:Lcom/google/android/gms/common/internal/g;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lv7/i;-><init>(Lr7/r;Lcom/google/android/gms/common/internal/g;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final d()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lv7/i;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lv7/i;->m:Z

    .line 8
    .line 9
    iget-object v0, p0, Lv7/i;->v:Lcom/google/firebase/messaging/p;

    .line 10
    .line 11
    if-eqz v0, :cond_13

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lw7/d;

    .line 16
    .line 17
    invoke-interface {v0}, Lw7/d;->cancel()V

    .line 18
    .line 19
    .line 20
    :cond_13
    iget-object v0, p0, Lv7/i;->w:Lv7/l;

    .line 21
    .line 22
    if-eqz v0, :cond_1e

    .line 23
    .line 24
    iget-object v0, v0, Lv7/l;->c:Ljava/net/Socket;

    .line 25
    .line 26
    if-eqz v0, :cond_1e

    .line 27
    .line 28
    invoke-static {v0}, Ls7/b;->e(Ljava/net/Socket;)V

    .line 29
    .line 30
    .line 31
    :cond_1e
    return-void
.end method

.method public final e(Ln6/d;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lv7/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_89

    .line 10
    .line 11
    sget-object v0, Lz7/n;->a:Lz7/n;

    .line 12
    .line 13
    sget-object v0, Lz7/n;->a:Lz7/n;

    .line 14
    .line 15
    invoke-virtual {v0}, Lz7/n;->g()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lv7/i;->f:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, p0, Lv7/i;->a:Lr7/r;

    .line 22
    .line 23
    iget-object v0, v0, Lr7/r;->a:Lcom/google/firebase/messaging/y;

    .line 24
    .line 25
    new-instance v1, Lv7/f;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lv7/f;-><init>(Lv7/i;Ln6/d;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_21
    iget-object p1, v0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Ljava/util/ArrayDeque;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lv7/i;->b:Lcom/google/android/gms/common/internal/g;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lr7/m;

    .line 46
    .line 47
    iget-object p1, p1, Lr7/m;->d:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Ljava/util/ArrayDeque;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :cond_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_55

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lv7/f;

    .line 68
    .line 69
    iget-object v4, v3, Lv7/f;->c:Lv7/i;

    .line 70
    .line 71
    iget-object v4, v4, Lv7/i;->b:Lcom/google/android/gms/common/internal/g;

    .line 72
    .line 73
    iget-object v4, v4, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, Lr7/m;

    .line 76
    .line 77
    iget-object v4, v4, Lr7/m;->d:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v4, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_38

    .line 84
    .line 85
    goto :goto_7b

    .line 86
    :cond_55
    iget-object v2, v0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Ljava/util/ArrayDeque;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :cond_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_7a

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lv7/f;

    .line 105
    .line 106
    iget-object v4, v3, Lv7/f;->c:Lv7/i;

    .line 107
    .line 108
    iget-object v4, v4, Lv7/i;->b:Lcom/google/android/gms/common/internal/g;

    .line 109
    .line 110
    iget-object v4, v4, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v4, Lr7/m;

    .line 113
    .line 114
    iget-object v4, v4, Lr7/m;->d:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v4, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_5d

    .line 121
    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    const/4 v3, 0x0

    .line 124
    :goto_7b
    if-eqz v3, :cond_81

    .line 125
    .line 126
    iget-object p1, v3, Lv7/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 127
    .line 128
    iput-object p1, v1, Lv7/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_81
    .catchall {:try_start_21 .. :try_end_81} :catchall_86

    .line 129
    .line 130
    :cond_81
    monitor-exit v0

    .line 131
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->z()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :catchall_86
    move-exception p1

    .line 136
    monitor-exit v0

    .line 137
    throw p1

    .line 138
    :cond_89
    const-string p1, "Already Executed"

    .line 139
    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0
.end method

.method public final f()Lr7/u;
    .registers 4

    .line 1
    iget-object v0, p0, Lv7/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_47

    .line 10
    .line 11
    iget-object v0, p0, Lv7/i;->d:Lv7/h;

    .line 12
    .line 13
    invoke-virtual {v0}, Le8/e;->h()V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lz7/n;->a:Lz7/n;

    .line 17
    .line 18
    sget-object v0, Lz7/n;->a:Lz7/n;

    .line 19
    .line 20
    invoke-virtual {v0}, Lz7/n;->g()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lv7/i;->f:Ljava/lang/Object;

    .line 25
    .line 26
    :try_start_19
    iget-object v0, p0, Lv7/i;->a:Lr7/r;

    .line 27
    .line 28
    iget-object v0, v0, Lr7/r;->a:Lcom/google/firebase/messaging/y;

    .line 29
    .line 30
    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_36

    .line 31
    :try_start_1e
    iget-object v1, v0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/util/ArrayDeque;

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_38

    .line 36
    .line 37
    .line 38
    :try_start_25
    monitor-exit v0

    .line 39
    invoke-virtual {p0}, Lv7/i;->h()Lr7/u;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_36

    .line 43
    iget-object v1, p0, Lv7/i;->a:Lr7/r;

    .line 44
    .line 45
    iget-object v1, v1, Lr7/r;->a:Lcom/google/firebase/messaging/y;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Ljava/util/ArrayDeque;

    .line 50
    .line 51
    invoke-virtual {v1, v2, p0}, Lcom/google/firebase/messaging/y;->o(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :catchall_36
    move-exception v0

    .line 56
    goto :goto_3b

    .line 57
    :catchall_38
    move-exception v1

    .line 58
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .line 59
    :try_start_3a
    throw v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_36

    .line 60
    :goto_3b
    iget-object v1, p0, Lv7/i;->a:Lr7/r;

    .line 61
    .line 62
    iget-object v1, v1, Lr7/r;->a:Lcom/google/firebase/messaging/y;

    .line 63
    .line 64
    iget-object v2, v1, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Ljava/util/ArrayDeque;

    .line 67
    .line 68
    invoke-virtual {v1, v2, p0}, Lcom/google/firebase/messaging/y;->o(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_47
    const-string v0, "Already Executed"

    .line 73
    .line 74
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1
.end method

.method public final g(Z)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lv7/i;->l:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_27

    .line 3
    .line 4
    if-eqz v0, :cond_1f

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1c

    .line 9
    .line 10
    iget-object p1, p0, Lv7/i;->v:Lcom/google/firebase/messaging/p;

    .line 11
    .line 12
    if-eqz p1, :cond_1c

    .line 13
    .line 14
    iget-object v1, p1, Lcom/google/firebase/messaging/p;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lw7/d;

    .line 17
    .line 18
    invoke-interface {v1}, Lw7/d;->cancel()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p1, Lcom/google/firebase/messaging/p;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lv7/i;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, p1, v2, v2, v0}, Lv7/i;->i(Lcom/google/firebase/messaging/p;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 27
    .line 28
    .line 29
    :cond_1c
    iput-object v0, p0, Lv7/i;->i:Lcom/google/firebase/messaging/p;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    :try_start_1f
    const-string p1, "released"

    .line 33
    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    .line 40
    :catchall_27
    move-exception p1

    .line 41
    monitor-exit p0

    .line 42
    throw p1
.end method

.method public final h()Lr7/u;
    .registers 10

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv7/i;->a:Lr7/r;

    .line 7
    .line 8
    iget-object v0, v0, Lr7/r;->c:Ljava/util/List;

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-static {v2, v0}, Ls6/m;->o(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lw7/a;

    .line 16
    .line 17
    iget-object v1, p0, Lv7/i;->a:Lr7/r;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lw7/a;-><init>(Lr7/r;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    new-instance v0, Lw7/a;

    .line 26
    .line 27
    iget-object v1, p0, Lv7/i;->a:Lr7/r;

    .line 28
    .line 29
    iget-object v1, v1, Lr7/r;->j:Lr7/b;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lw7/a;-><init>(Lr7/b;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    new-instance v0, Lt7/b;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    sget-object v0, Lv7/a;->a:Lv7/a;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lv7/i;->a:Lr7/r;

    .line 51
    .line 52
    iget-object v0, v0, Lr7/r;->d:Ljava/util/List;

    .line 53
    .line 54
    check-cast v0, Ljava/lang/Iterable;

    .line 55
    .line 56
    invoke-static {v2, v0}, Ls6/m;->o(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lw7/b;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance v0, Lw7/f;

    .line 68
    .line 69
    iget-object v5, p0, Lv7/i;->b:Lcom/google/android/gms/common/internal/g;

    .line 70
    .line 71
    iget-object v1, p0, Lv7/i;->a:Lr7/r;

    .line 72
    .line 73
    iget v6, v1, Lr7/r;->D:I

    .line 74
    .line 75
    iget v7, v1, Lr7/r;->E:I

    .line 76
    .line 77
    iget v8, v1, Lr7/r;->F:I

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    move-object v1, p0

    .line 82
    invoke-direct/range {v0 .. v8}, Lw7/f;-><init>(Lv7/i;Ljava/util/ArrayList;ILcom/google/firebase/messaging/p;Lcom/google/android/gms/common/internal/g;III)V

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    const/4 v3, 0x0

    .line 87
    :try_start_56
    invoke-virtual {v0, v5}, Lw7/f;->b(Lcom/google/android/gms/common/internal/g;)Lr7/u;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-boolean v4, v1, Lv7/i;->m:Z
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5c} :catch_6f
    .catchall {:try_start_56 .. :try_end_5c} :catchall_6d

    .line 92
    .line 93
    if-nez v4, :cond_62

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lv7/i;->j(Ljava/io/IOException;)Ljava/io/IOException;

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_62
    :try_start_62
    invoke-static {v0}, Ls7/b;->d(Ljava/io/Closeable;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Ljava/io/IOException;

    .line 103
    .line 104
    const-string v4, "Canceled"

    .line 105
    .line 106
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6d} :catch_6f
    .catchall {:try_start_62 .. :try_end_6d} :catchall_6d

    .line 110
    :catchall_6d
    move-exception v0

    .line 111
    goto :goto_7b

    .line 112
    :catch_6f
    move-exception v0

    .line 113
    const/4 v3, 0x1

    .line 114
    :try_start_71
    invoke-virtual {p0, v0}, Lv7/i;->j(Ljava/io/IOException;)Ljava/io/IOException;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v4, "null cannot be cast to non-null type kotlin.Throwable"

    .line 119
    .line 120
    invoke-static {v4, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    throw v0
    :try_end_7b
    .catchall {:try_start_71 .. :try_end_7b} :catchall_6d

    .line 124
    :goto_7b
    if-nez v3, :cond_80

    .line 125
    .line 126
    invoke-virtual {p0, v2}, Lv7/i;->j(Ljava/io/IOException;)Ljava/io/IOException;

    .line 127
    .line 128
    .line 129
    :cond_80
    throw v0
.end method

.method public final i(Lcom/google/firebase/messaging/p;ZZLjava/io/IOException;)Ljava/io/IOException;
    .registers 6

    .line 1
    const-string v0, "exchange"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv7/i;->v:Lcom/google/firebase/messaging/p;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_e

    .line 13
    .line 14
    goto :goto_58

    .line 15
    :cond_e
    monitor-enter p0

    .line 16
    const/4 p1, 0x0

    .line 17
    if-eqz p2, :cond_19

    .line 18
    .line 19
    :try_start_12
    iget-boolean v0, p0, Lv7/i;->j:Z

    .line 20
    .line 21
    if-nez v0, :cond_1f

    .line 22
    .line 23
    goto :goto_19

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    goto :goto_41

    .line 26
    :cond_19
    :goto_19
    if-eqz p3, :cond_43

    .line 27
    .line 28
    iget-boolean v0, p0, Lv7/i;->k:Z

    .line 29
    .line 30
    if-eqz v0, :cond_43

    .line 31
    .line 32
    :cond_1f
    if-eqz p2, :cond_23

    .line 33
    .line 34
    iput-boolean p1, p0, Lv7/i;->j:Z

    .line 35
    .line 36
    :cond_23
    if-eqz p3, :cond_27

    .line 37
    .line 38
    iput-boolean p1, p0, Lv7/i;->k:Z

    .line 39
    .line 40
    :cond_27
    iget-boolean p2, p0, Lv7/i;->j:Z

    .line 41
    .line 42
    const/4 p3, 0x1

    .line 43
    if-nez p2, :cond_32

    .line 44
    .line 45
    iget-boolean v0, p0, Lv7/i;->k:Z

    .line 46
    .line 47
    if-nez v0, :cond_32

    .line 48
    .line 49
    move v0, p3

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v0, p1

    .line 52
    :goto_33
    if-nez p2, :cond_3e

    .line 53
    .line 54
    iget-boolean p2, p0, Lv7/i;->k:Z

    .line 55
    .line 56
    if-nez p2, :cond_3e

    .line 57
    .line 58
    iget-boolean p2, p0, Lv7/i;->l:Z
    :try_end_3b
    .catchall {:try_start_12 .. :try_end_3b} :catchall_17

    .line 59
    .line 60
    if-nez p2, :cond_3e

    .line 61
    .line 62
    move p1, p3

    .line 63
    :cond_3e
    move p2, p1

    .line 64
    move p1, v0

    .line 65
    goto :goto_44

    .line 66
    :goto_41
    monitor-exit p0

    .line 67
    throw p1

    .line 68
    :cond_43
    move p2, p1

    .line 69
    :goto_44
    monitor-exit p0

    .line 70
    if-eqz p1, :cond_51

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lv7/i;->v:Lcom/google/firebase/messaging/p;

    .line 74
    .line 75
    iget-object p1, p0, Lv7/i;->h:Lv7/l;

    .line 76
    .line 77
    if-eqz p1, :cond_51

    .line 78
    .line 79
    invoke-virtual {p1}, Lv7/l;->h()V

    .line 80
    .line 81
    .line 82
    :cond_51
    if-eqz p2, :cond_58

    .line 83
    .line 84
    invoke-virtual {p0, p4}, Lv7/i;->c(Ljava/io/IOException;)Ljava/io/IOException;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_58
    :goto_58
    return-object p4
.end method

.method public final j(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lv7/i;->l:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_14

    .line 6
    .line 7
    iput-boolean v1, p0, Lv7/i;->l:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lv7/i;->j:Z

    .line 10
    .line 11
    if-nez v0, :cond_14

    .line 12
    .line 13
    iget-boolean v0, p0, Lv7/i;->k:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    .line 14
    .line 15
    if-nez v0, :cond_14

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_14

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    goto :goto_1c

    .line 21
    :cond_14
    :goto_14
    monitor-exit p0

    .line 22
    if-eqz v1, :cond_1b

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lv7/i;->c(Ljava/io/IOException;)Ljava/io/IOException;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_1b
    return-object p1

    .line 29
    :goto_1c
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public final k()Ljava/net/Socket;
    .registers 8

    .line 1
    iget-object v0, p0, Lv7/i;->h:Lv7/l;

    .line 2
    .line 3
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ls7/b;->a:[B

    .line 7
    .line 8
    iget-object v1, v0, Lv7/l;->p:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_f
    const/4 v5, -0x1

    .line 17
    if-ge v4, v2, :cond_28

    .line 18
    .line 19
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    check-cast v6, Ljava/lang/ref/Reference;

    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v6, p0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_25

    .line 36
    .line 37
    goto :goto_29

    .line 38
    :cond_25
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_f

    .line 41
    :cond_28
    move v3, v5

    .line 42
    :goto_29
    if-eq v3, v5, :cond_6c

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    iput-object v2, p0, Lv7/i;->h:Lv7/l;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_6b

    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    iput-wide v3, v0, Lv7/l;->q:J

    .line 61
    .line 62
    iget-object v1, p0, Lv7/i;->c:Lv7/m;

    .line 63
    .line 64
    iget-object v3, v1, Lv7/m;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 65
    .line 66
    iget-object v4, v1, Lv7/m;->c:Lu7/c;

    .line 67
    .line 68
    sget-object v5, Ls7/b;->a:[B

    .line 69
    .line 70
    iget-boolean v5, v0, Lv7/l;->j:Z

    .line 71
    .line 72
    if-nez v5, :cond_56

    .line 73
    .line 74
    iget v5, v1, Lv7/m;->a:I

    .line 75
    .line 76
    if-nez v5, :cond_4e

    .line 77
    .line 78
    goto :goto_56

    .line 79
    :cond_4e
    iget-object v0, v1, Lv7/m;->d:Lu7/b;

    .line 80
    .line 81
    const-wide/16 v5, 0x0

    .line 82
    .line 83
    invoke-virtual {v4, v0, v5, v6}, Lu7/c;->c(Lu7/a;J)V

    .line 84
    .line 85
    .line 86
    return-object v2

    .line 87
    :cond_56
    :goto_56
    const/4 v1, 0x1

    .line 88
    iput-boolean v1, v0, Lv7/l;->j:Z

    .line 89
    .line 90
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_65

    .line 98
    .line 99
    invoke-virtual {v4}, Lu7/c;->a()V

    .line 100
    .line 101
    .line 102
    :cond_65
    iget-object v0, v0, Lv7/l;->d:Ljava/net/Socket;

    .line 103
    .line 104
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_6b
    return-object v2

    .line 109
    :cond_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v1, "Check failed."

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0
.end method
