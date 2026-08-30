###### Class y7.o (y7.o)
.class public final Ly7/o;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final H:Ly7/a0;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public final D:Ljava/net/Socket;

.field public final E:Ly7/x;

.field public final F:Ly7/k;

.field public final G:Ljava/util/LinkedHashSet;

.field public final a:Ly7/h;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z

.field public final g:Lu7/d;

.field public final h:Lu7/c;

.field public final i:Lu7/c;

.field public final j:Lu7/c;

.field public final k:Ly7/z;

.field public l:J

.field public m:J

.field public v:J

.field public w:J

.field public final x:Ly7/a0;

.field public y:Ly7/a0;

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ly7/a0;

    .line 2
    .line 3
    invoke-direct {v0}, Ly7/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    const v2, 0xffff

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ly7/a0;->c(II)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    const/16 v2, 0x4000

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ly7/a0;->c(II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Ly7/o;->H:Ly7/a0;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/g;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ly7/h;

    .line 7
    .line 8
    iput-object v0, p0, Ly7/o;->a:Ly7/h;

    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Ly7/o;->b:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/google/android/gms/common/internal/g;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_91

    .line 23
    .line 24
    iput-object v0, p0, Ly7/o;->c:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    iput v0, p0, Ly7/o;->e:I

    .line 28
    .line 29
    iget-object v0, p1, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lu7/d;

    .line 32
    .line 33
    iput-object v0, p0, Ly7/o;->g:Lu7/d;

    .line 34
    .line 35
    invoke-virtual {v0}, Lu7/d;->e()Lu7/c;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Ly7/o;->h:Lu7/c;

    .line 40
    .line 41
    invoke-virtual {v0}, Lu7/d;->e()Lu7/c;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iput-object v2, p0, Ly7/o;->i:Lu7/c;

    .line 46
    .line 47
    invoke-virtual {v0}, Lu7/d;->e()Lu7/c;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Ly7/o;->j:Lu7/c;

    .line 52
    .line 53
    sget-object v0, Ly7/z;->a:Ly7/z;

    .line 54
    .line 55
    iput-object v0, p0, Ly7/o;->k:Ly7/z;

    .line 56
    .line 57
    new-instance v0, Ly7/a0;

    .line 58
    .line 59
    invoke-direct {v0}, Ly7/a0;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x7

    .line 63
    const/high16 v3, 0x1000000

    .line 64
    .line 65
    invoke-virtual {v0, v2, v3}, Ly7/a0;->c(II)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Ly7/o;->x:Ly7/a0;

    .line 69
    .line 70
    sget-object v0, Ly7/o;->H:Ly7/a0;

    .line 71
    .line 72
    iput-object v0, p0, Ly7/o;->y:Ly7/a0;

    .line 73
    .line 74
    invoke-virtual {v0}, Ly7/a0;->a()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    int-to-long v2, v0

    .line 79
    iput-wide v2, p0, Ly7/o;->C:J

    .line 80
    .line 81
    iget-object v0, p1, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Ljava/net/Socket;

    .line 84
    .line 85
    if-eqz v0, :cond_8b

    .line 86
    .line 87
    iput-object v0, p0, Ly7/o;->D:Ljava/net/Socket;

    .line 88
    .line 89
    new-instance v0, Ly7/x;

    .line 90
    .line 91
    iget-object v2, p1, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, Le8/p;

    .line 94
    .line 95
    if-eqz v2, :cond_85

    .line 96
    .line 97
    invoke-direct {v0, v2}, Ly7/x;-><init>(Le8/p;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Ly7/o;->E:Ly7/x;

    .line 101
    .line 102
    new-instance v0, Ly7/k;

    .line 103
    .line 104
    new-instance v2, Ly7/s;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/google/android/gms/common/internal/g;->e:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Le8/q;

    .line 109
    .line 110
    if-eqz p1, :cond_7f

    .line 111
    .line 112
    invoke-direct {v2, p1}, Ly7/s;-><init>(Le8/q;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, p0, v2}, Ly7/k;-><init>(Ly7/o;Ly7/s;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Ly7/o;->F:Ly7/k;

    .line 119
    .line 120
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 121
    .line 122
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, Ly7/o;->G:Ljava/util/LinkedHashSet;

    .line 126
    .line 127
    return-void

    .line 128
    :cond_7f
    const-string p1, "source"

    .line 129
    .line 130
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v1

    .line 134
    :cond_85
    const-string p1, "sink"

    .line 135
    .line 136
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v1

    .line 140
    :cond_8b
    const-string p1, "socket"

    .line 141
    .line 142
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v1

    .line 146
    :cond_91
    const-string p1, "connectionName"

    .line 147
    .line 148
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v1
.end method


# virtual methods
.method public final a(IILjava/io/IOException;)V
    .registers 7

    .line 1
    const-string v0, "connectionCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, La1/a;->n(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "streamCode"

    .line 7
    .line 8
    invoke-static {p2, v0}, La1/a;->n(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Ls7/b;->a:[B

    .line 12
    .line 13
    :try_start_c
    invoke-virtual {p0, p1}, Ly7/o;->s(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_f

    .line 14
    .line 15
    .line 16
    :catch_f
    monitor-enter p0

    .line 17
    :try_start_10
    iget-object p1, p0, Ly7/o;->b:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v0, 0x0

    .line 24
    if-nez p1, :cond_2d

    .line 25
    .line 26
    iget-object p1, p0, Ly7/o;->b:Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-array v1, v0, [Ly7/w;

    .line 33
    .line 34
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v1, p0, Ly7/o;->b:Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2b

    .line 41
    .line 42
    .line 43
    goto :goto_2e

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    goto :goto_58

    .line 46
    :cond_2d
    const/4 p1, 0x0

    .line 47
    :goto_2e
    monitor-exit p0

    .line 48
    check-cast p1, [Ly7/w;

    .line 49
    .line 50
    if-eqz p1, :cond_3e

    .line 51
    .line 52
    array-length v1, p1

    .line 53
    :goto_34
    if-ge v0, v1, :cond_3e

    .line 54
    .line 55
    aget-object v2, p1, v0

    .line 56
    .line 57
    :try_start_38
    invoke-virtual {v2, p2, p3}, Ly7/w;->c(ILjava/io/IOException;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3b

    .line 58
    .line 59
    .line 60
    :catch_3b
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    goto :goto_34

    .line 63
    :cond_3e
    :try_start_3e
    iget-object p1, p0, Ly7/o;->E:Ly7/x;

    .line 64
    .line 65
    invoke-virtual {p1}, Ly7/x;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_43

    .line 66
    .line 67
    .line 68
    :catch_43
    :try_start_43
    iget-object p1, p0, Ly7/o;->D:Ljava/net/Socket;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_48} :catch_48

    .line 71
    .line 72
    .line 73
    :catch_48
    iget-object p1, p0, Ly7/o;->h:Lu7/c;

    .line 74
    .line 75
    invoke-virtual {p1}, Lu7/c;->e()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Ly7/o;->i:Lu7/c;

    .line 79
    .line 80
    invoke-virtual {p1}, Lu7/c;->e()V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Ly7/o;->j:Lu7/c;

    .line 84
    .line 85
    invoke-virtual {p1}, Lu7/c;->e()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :goto_58
    monitor-exit p0

    .line 90
    throw p1
.end method

.method public final declared-synchronized c(I)Ly7/w;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ly7/o;->b:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ly7/w;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    .line 18
    throw p1
.end method

.method public final close()V
    .registers 4

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v2, v0, v1}, Ly7/o;->a(IILjava/io/IOException;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final flush()V
    .registers 2

    .line 1
    iget-object v0, p0, Ly7/o;->E:Ly7/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly7/x;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized g(J)Z
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Ly7/o;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_8
    :try_start_8
    iget-wide v2, p0, Ly7/o;->v:J

    .line 10
    .line 11
    iget-wide v4, p0, Ly7/o;->m:J

    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    if-gez v0, :cond_1a

    .line 16
    .line 17
    iget-wide v2, p0, Ly7/o;->w:J
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_18

    .line 18
    .line 19
    cmp-long p1, p1, v2

    .line 20
    .line 21
    if-ltz p1, :cond_1a

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return v1

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    monitor-exit p0

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_18

    .line 31
    throw p1
.end method

.method public final declared-synchronized o(I)Ly7/w;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ly7/o;->b:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ly7/w;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object p1

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    .line 21
    throw p1
.end method

.method public final s(I)V
    .registers 6

    .line 1
    const-string v0, "statusCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, La1/a;->n(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly7/o;->E:Ly7/x;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_10

    .line 10
    :try_start_9
    iget-boolean v1, p0, Ly7/o;->f:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_21

    .line 11
    .line 12
    if-eqz v1, :cond_12

    .line 13
    .line 14
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_10

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    goto :goto_24

    .line 19
    :cond_12
    const/4 v1, 0x1

    .line 20
    :try_start_13
    iput-boolean v1, p0, Ly7/o;->f:Z

    .line 21
    .line 22
    iget v1, p0, Ly7/o;->d:I
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_21

    .line 23
    .line 24
    :try_start_17
    monitor-exit p0

    .line 25
    iget-object v2, p0, Ly7/o;->E:Ly7/x;

    .line 26
    .line 27
    sget-object v3, Ls7/b;->a:[B

    .line 28
    .line 29
    invoke-virtual {v2, v3, v1, p1}, Ly7/x;->o([BII)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_10

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    :try_start_22
    monitor-exit p0

    .line 36
    throw p1
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_10

    .line 37
    :goto_24
    monitor-exit v0

    .line 38
    throw p1
.end method

.method public final declared-synchronized t(J)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-wide v0, p0, Ly7/o;->z:J

    .line 3
    .line 4
    add-long/2addr v0, p1

    .line 5
    iput-wide v0, p0, Ly7/o;->z:J

    .line 6
    .line 7
    iget-wide p1, p0, Ly7/o;->A:J

    .line 8
    .line 9
    sub-long/2addr v0, p1

    .line 10
    iget-object p1, p0, Ly7/o;->x:Ly7/a0;

    .line 11
    .line 12
    invoke-virtual {p1}, Ly7/a0;->a()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    div-int/lit8 p1, p1, 0x2

    .line 17
    .line 18
    int-to-long p1, p1

    .line 19
    cmp-long p1, v0, p1

    .line 20
    .line 21
    if-ltz p1, :cond_22

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1, v0, v1}, Ly7/o;->w(IJ)V

    .line 25
    .line 26
    .line 27
    iget-wide p1, p0, Ly7/o;->A:J

    .line 28
    .line 29
    add-long/2addr p1, v0

    .line 30
    iput-wide p1, p0, Ly7/o;->A:J
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    .line 31
    .line 32
    goto :goto_22

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    :goto_22
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20

    .line 38
    throw p1
.end method

.method public final u(IZLe8/g;J)V
    .registers 14

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p4, v0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v2, :cond_d

    .line 7
    .line 8
    iget-object p4, p0, Ly7/o;->E:Ly7/x;

    .line 9
    .line 10
    invoke-virtual {p4, p2, p1, p3, v3}, Ly7/x;->c(ZILe8/g;I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    :goto_d
    cmp-long v2, p4, v0

    .line 15
    .line 16
    if-lez v2, :cond_68

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :goto_12
    :try_start_12
    iget-wide v4, p0, Ly7/o;->B:J

    .line 20
    .line 21
    iget-wide v6, p0, Ly7/o;->C:J

    .line 22
    .line 23
    cmp-long v2, v4, v6

    .line 24
    .line 25
    if-ltz v2, :cond_34

    .line 26
    .line 27
    iget-object v2, p0, Ly7/o;->b:Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2c

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 40
    .line 41
    .line 42
    goto :goto_12

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    goto :goto_66

    .line 45
    :cond_2c
    new-instance p1, Ljava/io/IOException;

    .line 46
    .line 47
    const-string p2, "stream closed"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_34} :catch_59
    .catchall {:try_start_12 .. :try_end_34} :catchall_2a

    .line 53
    :cond_34
    sub-long/2addr v6, v4

    .line 54
    :try_start_35
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    long-to-int v2, v4

    .line 59
    iget-object v4, p0, Ly7/o;->E:Ly7/x;

    .line 60
    .line 61
    iget v4, v4, Ly7/x;->c:I

    .line 62
    .line 63
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iget-wide v4, p0, Ly7/o;->B:J

    .line 68
    .line 69
    int-to-long v6, v2

    .line 70
    add-long/2addr v4, v6

    .line 71
    iput-wide v4, p0, Ly7/o;->B:J
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_2a

    .line 72
    .line 73
    monitor-exit p0

    .line 74
    sub-long/2addr p4, v6

    .line 75
    iget-object v4, p0, Ly7/o;->E:Ly7/x;

    .line 76
    .line 77
    if-eqz p2, :cond_54

    .line 78
    .line 79
    cmp-long v5, p4, v0

    .line 80
    .line 81
    if-nez v5, :cond_54

    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move v5, v3

    .line 86
    :goto_55
    invoke-virtual {v4, v5, p1, p3, v2}, Ly7/x;->c(ZILe8/g;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_d

    .line 90
    :catch_59
    :try_start_59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 95
    .line 96
    .line 97
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p1
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_2a

    .line 103
    :goto_66
    monitor-exit p0

    .line 104
    throw p1

    .line 105
    :cond_68
    return-void
.end method

.method public final v(II)V
    .registers 11

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p2, v0}, La1/a;->n(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Ly7/o;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x5b

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "] writeSynReset"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v2, Ly7/j;

    .line 34
    .line 35
    const/4 v7, 0x2

    .line 36
    move-object v4, p0

    .line 37
    move v5, p1

    .line 38
    move v6, p2

    .line 39
    invoke-direct/range {v2 .. v7}, Ly7/j;-><init>(Ljava/lang/String;Ly7/o;III)V

    .line 40
    .line 41
    .line 42
    iget-object p1, v4, Ly7/o;->h:Lu7/c;

    .line 43
    .line 44
    const-wide/16 v0, 0x0

    .line 45
    .line 46
    invoke-virtual {p1, v2, v0, v1}, Lu7/c;->c(Lu7/a;J)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final w(IJ)V
    .registers 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ly7/o;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x5b

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "] windowUpdate"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v2, Ly7/n;

    .line 29
    .line 30
    move-object v4, p0

    .line 31
    move v5, p1

    .line 32
    move-wide v6, p2

    .line 33
    invoke-direct/range {v2 .. v7}, Ly7/n;-><init>(Ljava/lang/String;Ly7/o;IJ)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v4, Ly7/o;->h:Lu7/c;

    .line 37
    .line 38
    const-wide/16 p2, 0x0

    .line 39
    .line 40
    invoke-virtual {p1, v2, p2, p3}, Lu7/c;->c(Lu7/a;J)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
