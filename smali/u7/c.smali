###### Class u7.c (u7.c)
.class public final Lu7/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lu7/d;

.field public final b:Ljava/lang/String;

.field public c:Z

.field public d:Lu7/a;

.field public final e:Ljava/util/ArrayList;

.field public f:Z


# direct methods
.method public constructor <init>(Lu7/d;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lu7/c;->a:Lu7/d;

    .line 10
    .line 11
    iput-object p2, p0, Lu7/c;->b:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lu7/c;->e:Ljava/util/ArrayList;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    sget-object v0, Ls7/b;->a:[B

    .line 2
    .line 3
    iget-object v0, p0, Lu7/c;->a:Lu7/d;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    invoke-virtual {p0}, Lu7/c;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_13

    .line 11
    .line 12
    iget-object v1, p0, Lu7/c;->a:Lu7/d;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lu7/d;->d(Lu7/c;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    .line 15
    .line 16
    .line 17
    goto :goto_13

    .line 18
    :catchall_11
    move-exception v1

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    :goto_13
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_15
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public final b()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lu7/c;->d:Lu7/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_b

    .line 5
    .line 6
    iget-boolean v0, v0, Lu7/a;->b:Z

    .line 7
    .line 8
    if-eqz v0, :cond_b

    .line 9
    .line 10
    iput-boolean v1, p0, Lu7/c;->f:Z

    .line 11
    .line 12
    :cond_b
    iget-object v0, p0, Lu7/c;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v2, v1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_13
    const/4 v4, -0x1

    .line 21
    if-ge v4, v2, :cond_3e

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lu7/a;

    .line 28
    .line 29
    iget-boolean v4, v4, Lu7/a;->b:Z

    .line 30
    .line 31
    if-eqz v4, :cond_3b

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lu7/a;

    .line 38
    .line 39
    sget-object v4, Lu7/d;->h:Lo3/a;

    .line 40
    .line 41
    sget-object v4, Lu7/d;->j:Ljava/util/logging/Logger;

    .line 42
    .line 43
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_37

    .line 50
    .line 51
    const-string v4, "canceled"

    .line 52
    .line 53
    invoke-static {v3, p0, v4}, Ly1/g;->a(Lu7/a;Lu7/c;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move v3, v1

    .line 60
    :cond_3b
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    goto :goto_13

    .line 63
    :cond_3e
    return v3
.end method

.method public final c(Lu7/a;J)V
    .registers 6

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu7/c;->a:Lu7/d;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-boolean v1, p0, Lu7/c;->c:Z

    .line 10
    .line 11
    if-eqz v1, :cond_3d

    .line 12
    .line 13
    iget-boolean p2, p1, Lu7/a;->b:Z

    .line 14
    .line 15
    if-eqz p2, :cond_26

    .line 16
    .line 17
    sget-object p2, Lu7/d;->h:Lo3/a;

    .line 18
    .line 19
    sget-object p2, Lu7/d;->j:Ljava/util/logging/Logger;

    .line 20
    .line 21
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_24

    .line 28
    .line 29
    const-string p2, "schedule canceled (queue is shutdown)"

    .line 30
    .line 31
    invoke-static {p1, p0, p2}, Ly1/g;->a(Lu7/a;Lu7/c;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_22

    .line 32
    .line 33
    .line 34
    goto :goto_24

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_4b

    .line 37
    :cond_24
    :goto_24
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :cond_26
    :try_start_26
    sget-object p2, Lu7/d;->h:Lo3/a;

    .line 40
    .line 41
    sget-object p2, Lu7/d;->j:Ljava/util/logging/Logger;

    .line 42
    .line 43
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 44
    .line 45
    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_37

    .line 50
    .line 51
    const-string p2, "schedule failed (queue is shutdown)"

    .line 52
    .line 53
    invoke-static {p1, p0, p2}, Ly1/g;->a(Lu7/a;Lu7/c;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_37
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_3d
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, p1, p2, p3, v1}, Lu7/c;->d(Lu7/a;JZ)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_49

    .line 68
    .line 69
    iget-object p1, p0, Lu7/c;->a:Lu7/d;

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Lu7/d;->d(Lu7/c;)V
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_22

    .line 72
    .line 73
    .line 74
    :cond_49
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_4b
    monitor-exit v0

    .line 77
    throw p1
.end method

.method public final d(Lu7/a;JZ)Z
    .registers 15

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lu7/a;->c:Lu7/c;

    .line 7
    .line 8
    if-ne v0, p0, :cond_a

    .line 9
    .line 10
    goto :goto_e

    .line 11
    :cond_a
    if-nez v0, :cond_8d

    .line 12
    .line 13
    iput-object p0, p1, Lu7/a;->c:Lu7/c;

    .line 14
    .line 15
    :goto_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    add-long v2, v0, p2

    .line 20
    .line 21
    iget-object v4, p0, Lu7/c;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, -0x1

    .line 28
    const/4 v7, 0x0

    .line 29
    if-eq v5, v6, :cond_39

    .line 30
    .line 31
    iget-wide v8, p1, Lu7/a;->d:J

    .line 32
    .line 33
    cmp-long v8, v8, v2

    .line 34
    .line 35
    if-gtz v8, :cond_36

    .line 36
    .line 37
    sget-object p2, Lu7/d;->h:Lo3/a;

    .line 38
    .line 39
    sget-object p2, Lu7/d;->j:Ljava/util/logging/Logger;

    .line 40
    .line 41
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_8c

    .line 48
    .line 49
    const-string p2, "already scheduled"

    .line 50
    .line 51
    invoke-static {p1, p0, p2}, Ly1/g;->a(Lu7/a;Lu7/c;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v7

    .line 55
    :cond_36
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_39
    iput-wide v2, p1, Lu7/a;->d:J

    .line 59
    .line 60
    sget-object v5, Lu7/d;->h:Lo3/a;

    .line 61
    .line 62
    sget-object v5, Lu7/d;->j:Ljava/util/logging/Logger;

    .line 63
    .line 64
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 65
    .line 66
    invoke-virtual {v5, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_63

    .line 71
    .line 72
    if-eqz p4, :cond_55

    .line 73
    .line 74
    sub-long/2addr v2, v0

    .line 75
    invoke-static {v2, v3}, Ly1/g;->l(J)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    const-string v2, "run again after "

    .line 80
    .line 81
    invoke-virtual {v2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    goto :goto_60

    .line 86
    :cond_55
    sub-long/2addr v2, v0

    .line 87
    invoke-static {v2, v3}, Ly1/g;->l(J)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    const-string v2, "scheduled after "

    .line 92
    .line 93
    invoke-virtual {v2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    :goto_60
    invoke-static {p1, p0, p4}, Ly1/g;->a(Lu7/a;Lu7/c;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_63
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result p4

    .line 104
    move v2, v7

    .line 105
    move v3, v2

    .line 106
    :goto_69
    if-ge v3, p4, :cond_7e

    .line 107
    .line 108
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    check-cast v5, Lu7/a;

    .line 115
    .line 116
    iget-wide v8, v5, Lu7/a;->d:J

    .line 117
    .line 118
    sub-long/2addr v8, v0

    .line 119
    cmp-long v5, v8, p2

    .line 120
    .line 121
    if-lez v5, :cond_7b

    .line 122
    .line 123
    goto :goto_7f

    .line 124
    :cond_7b
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_69

    .line 127
    :cond_7e
    move v2, v6

    .line 128
    :goto_7f
    if-ne v2, v6, :cond_85

    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    :cond_85
    invoke-virtual {v4, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    if-nez v2, :cond_8c

    .line 138
    .line 139
    const/4 p1, 0x1

    .line 140
    return p1

    .line 141
    :cond_8c
    return v7

    .line 142
    :cond_8d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    const-string p2, "task is in multiple queues"

    .line 145
    .line 146
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
.end method

.method public final e()V
    .registers 3

    .line 1
    sget-object v0, Ls7/b;->a:[B

    .line 2
    .line 3
    iget-object v0, p0, Lu7/c;->a:Lu7/d;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_6
    iput-boolean v1, p0, Lu7/c;->c:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lu7/c;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_16

    .line 14
    .line 15
    iget-object v1, p0, Lu7/c;->a:Lu7/d;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Lu7/d;->d(Lu7/c;)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    .line 18
    .line 19
    .line 20
    goto :goto_16

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    :goto_16
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_18
    monitor-exit v0

    .line 26
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lu7/c;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
