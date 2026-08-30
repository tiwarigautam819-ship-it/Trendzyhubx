###### Class y7.u (y7.u)
.class public final Ly7/u;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Le8/w;


# instance fields
.field public final a:J

.field public b:Z

.field public final c:Le8/g;

.field public final d:Le8/g;

.field public e:Z

.field public final synthetic f:Ly7/w;


# direct methods
.method public constructor <init>(Ly7/w;JZ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly7/u;->f:Ly7/w;

    .line 5
    .line 6
    iput-wide p2, p0, Ly7/u;->a:J

    .line 7
    .line 8
    iput-boolean p4, p0, Ly7/u;->b:Z

    .line 9
    .line 10
    new-instance p1, Le8/g;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Ly7/u;->c:Le8/g;

    .line 16
    .line 17
    new-instance p1, Le8/g;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Ly7/u;->d:Le8/g;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 4

    .line 1
    sget-object v0, Ls7/b;->a:[B

    .line 2
    .line 3
    iget-object v0, p0, Ly7/u;->f:Ly7/w;

    .line 4
    .line 5
    iget-object v0, v0, Ly7/w;->b:Ly7/o;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Ly7/o;->t(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b()Le8/y;
    .registers 2

    .line 1
    iget-object v0, p0, Ly7/u;->f:Ly7/w;

    .line 2
    .line 3
    iget-object v0, v0, Ly7/w;->k:Ly7/v;

    .line 4
    .line 5
    return-object v0
.end method

.method public final close()V
    .registers 5

    .line 1
    iget-object v0, p0, Ly7/u;->f:Ly7/w;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_4
    iput-boolean v1, p0, Ly7/u;->e:Z

    .line 6
    .line 7
    iget-object v1, p0, Ly7/u;->d:Le8/g;

    .line 8
    .line 9
    iget-wide v2, v1, Le8/g;->b:J

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Le8/g;->skip(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_20

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    cmp-long v0, v2, v0

    .line 21
    .line 22
    if-lez v0, :cond_1a

    .line 23
    .line 24
    invoke-virtual {p0, v2, v3}, Ly7/u;->a(J)V

    .line 25
    .line 26
    .line 27
    :cond_1a
    iget-object v0, p0, Ly7/u;->f:Ly7/w;

    .line 28
    .line 29
    invoke-virtual {v0}, Ly7/w;->a()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_20
    move-exception v1

    .line 34
    monitor-exit v0

    .line 35
    throw v1
.end method

.method public final h(JLe8/g;)J
    .registers 13

    .line 1
    const-string p1, "sink"

    .line 2
    .line 3
    invoke-static {p1, p3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :goto_5
    iget-object p1, p0, Ly7/u;->f:Ly7/w;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_8
    iget-object p2, p1, Ly7/w;->k:Ly7/v;

    .line 10
    .line 11
    invoke-virtual {p2}, Le8/e;->h()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_98

    .line 12
    .line 13
    .line 14
    :try_start_d
    invoke-virtual {p1}, Ly7/w;->f()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_2b

    .line 19
    .line 20
    iget-boolean p2, p0, Ly7/u;->b:Z

    .line 21
    .line 22
    if-nez p2, :cond_2b

    .line 23
    .line 24
    iget-object p2, p1, Ly7/w;->n:Ljava/io/IOException;

    .line 25
    .line 26
    if-nez p2, :cond_2c

    .line 27
    .line 28
    new-instance p2, Ly7/b0;

    .line 29
    .line 30
    invoke-virtual {p1}, Ly7/w;->f()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, La1/a;->m(I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, v0}, Ly7/b0;-><init>(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_2c

    .line 41
    :catchall_28
    move-exception p2

    .line 42
    goto/16 :goto_a2

    .line 43
    .line 44
    :cond_2b
    const/4 p2, 0x0

    .line 45
    :cond_2c
    :goto_2c
    iget-boolean v0, p0, Ly7/u;->e:Z

    .line 46
    .line 47
    if-nez v0, :cond_9a

    .line 48
    .line 49
    iget-object v0, p0, Ly7/u;->d:Le8/g;

    .line 50
    .line 51
    iget-wide v1, v0, Le8/g;->b:J

    .line 52
    .line 53
    const-wide/16 v3, 0x0

    .line 54
    .line 55
    cmp-long v3, v1, v3

    .line 56
    .line 57
    const-wide/16 v4, -0x1

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    if-lez v3, :cond_6c

    .line 61
    .line 62
    const-wide/16 v7, 0x2000

    .line 63
    .line 64
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    invoke-virtual {v0, v1, v2, p3}, Le8/g;->h(JLe8/g;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    iget-wide v2, p1, Ly7/w;->c:J

    .line 73
    .line 74
    add-long/2addr v2, v0

    .line 75
    iput-wide v2, p1, Ly7/w;->c:J

    .line 76
    .line 77
    iget-wide v7, p1, Ly7/w;->d:J

    .line 78
    .line 79
    sub-long/2addr v2, v7

    .line 80
    if-nez p2, :cond_85

    .line 81
    .line 82
    iget-object v7, p1, Ly7/w;->b:Ly7/o;

    .line 83
    .line 84
    iget-object v7, v7, Ly7/o;->x:Ly7/a0;

    .line 85
    .line 86
    invoke-virtual {v7}, Ly7/a0;->a()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    div-int/lit8 v7, v7, 0x2

    .line 91
    .line 92
    int-to-long v7, v7

    .line 93
    cmp-long v7, v2, v7

    .line 94
    .line 95
    if-ltz v7, :cond_85

    .line 96
    .line 97
    iget-object v7, p1, Ly7/w;->b:Ly7/o;

    .line 98
    .line 99
    iget v8, p1, Ly7/w;->a:I

    .line 100
    .line 101
    invoke-virtual {v7, v8, v2, v3}, Ly7/o;->w(IJ)V

    .line 102
    .line 103
    .line 104
    iget-wide v2, p1, Ly7/w;->c:J

    .line 105
    .line 106
    iput-wide v2, p1, Ly7/w;->d:J

    .line 107
    .line 108
    goto :goto_85

    .line 109
    :cond_6c
    iget-boolean v0, p0, Ly7/u;->b:Z
    :try_end_6e
    .catchall {:try_start_d .. :try_end_6e} :catchall_28

    .line 110
    .line 111
    if-nez v0, :cond_76

    .line 112
    .line 113
    if-nez p2, :cond_76

    .line 114
    .line 115
    :try_start_72
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_75} :catch_78
    .catchall {:try_start_72 .. :try_end_75} :catchall_28

    .line 116
    .line 117
    .line 118
    const/4 v6, 0x1

    .line 119
    :cond_76
    move-wide v0, v4

    .line 120
    goto :goto_85

    .line 121
    :catch_78
    :try_start_78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 126
    .line 127
    .line 128
    new-instance p2, Ljava/io/InterruptedIOException;

    .line 129
    .line 130
    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 131
    .line 132
    .line 133
    throw p2
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_28

    .line 134
    :cond_85
    :goto_85
    :try_start_85
    iget-object v2, p1, Ly7/w;->k:Ly7/v;

    .line 135
    .line 136
    invoke-virtual {v2}, Ly7/v;->k()V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_98

    .line 137
    .line 138
    .line 139
    monitor-exit p1

    .line 140
    if-eqz v6, :cond_8f

    .line 141
    .line 142
    goto/16 :goto_5

    .line 143
    .line 144
    :cond_8f
    cmp-long p1, v0, v4

    .line 145
    .line 146
    if-eqz p1, :cond_94

    .line 147
    .line 148
    return-wide v0

    .line 149
    :cond_94
    if-nez p2, :cond_97

    .line 150
    .line 151
    return-wide v4

    .line 152
    :cond_97
    throw p2

    .line 153
    :catchall_98
    move-exception p2

    .line 154
    goto :goto_a8

    .line 155
    :cond_9a
    :try_start_9a
    new-instance p2, Ljava/io/IOException;

    .line 156
    .line 157
    const-string p3, "stream closed"

    .line 158
    .line 159
    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p2
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_28

    .line 163
    :goto_a2
    :try_start_a2
    iget-object p3, p1, Ly7/w;->k:Ly7/v;

    .line 164
    .line 165
    invoke-virtual {p3}, Ly7/v;->k()V

    .line 166
    .line 167
    .line 168
    throw p2
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_98

    .line 169
    :goto_a8
    monitor-exit p1

    .line 170
    throw p2
.end method
