###### Class u7.d (u7.d)
.class public final Lu7/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final h:Lo3/a;

.field public static final i:Lu7/d;

.field public static final j:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lk1/h;

.field public b:I

.field public c:Z

.field public d:J

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:Landroidx/fragment/app/p;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lo3/a;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lo3/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lu7/d;->h:Lo3/a;

    .line 9
    .line 10
    new-instance v0, Lu7/d;

    .line 11
    .line 12
    new-instance v1, Lk1/h;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v3, Ls7/b;->g:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v3, " TaskRunner"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "name"

    .line 34
    .line 35
    invoke-static {v3, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Ls7/a;

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-direct {v3, v2, v4}, Ls7/a;-><init>(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v3}, Lk1/h;-><init>(Ls7/a;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Lu7/d;-><init>(Lk1/h;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lu7/d;->i:Lu7/d;

    .line 51
    .line 52
    const-class v0, Lu7/d;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "getLogger(TaskRunner::class.java.name)"

    .line 63
    .line 64
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lu7/d;->j:Ljava/util/logging/Logger;

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Lk1/h;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu7/d;->a:Lk1/h;

    .line 5
    .line 6
    const/16 p1, 0x2710

    .line 7
    .line 8
    iput p1, p0, Lu7/d;->b:I

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lu7/d;->e:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lu7/d;->f:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance p1, Landroidx/fragment/app/p;

    .line 25
    .line 26
    const/16 v0, 0xd

    .line 27
    .line 28
    invoke-direct {p1, v0, p0}, Landroidx/fragment/app/p;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lu7/d;->g:Landroidx/fragment/app/p;

    .line 32
    .line 33
    return-void
.end method

.method public static final a(Lu7/d;Lu7/a;)V
    .registers 7

    .line 1
    sget-object v0, Ls7/b;->a:[B

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p1, Lu7/a;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_f
    invoke-virtual {p1}, Lu7/a;->a()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1f

    .line 20
    monitor-enter p0

    .line 21
    :try_start_14
    invoke-virtual {p0, p1, v2, v3}, Lu7/d;->b(Lu7/a;J)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1c

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1

    .line 32
    :catchall_1f
    move-exception v2

    .line 33
    monitor-enter p0

    .line 34
    const-wide/16 v3, -0x1

    .line 35
    .line 36
    :try_start_23
    invoke-virtual {p0, p1, v3, v4}, Lu7/d;->b(Lu7/a;J)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v2

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    monitor-exit p0

    .line 46
    throw p1
.end method


# virtual methods
.method public final b(Lu7/a;J)V
    .registers 8

    .line 1
    sget-object v0, Ls7/b;->a:[B

    .line 2
    .line 3
    iget-object v0, p1, Lu7/a;->c:Lu7/c;

    .line 4
    .line 5
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lu7/c;->d:Lu7/a;

    .line 9
    .line 10
    if-ne v1, p1, :cond_36

    .line 11
    .line 12
    iget-boolean v1, v0, Lu7/c;->f:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-boolean v2, v0, Lu7/c;->f:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, v0, Lu7/c;->d:Lu7/a;

    .line 19
    .line 20
    iget-object v2, p0, Lu7/d;->e:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, -0x1

    .line 26
    .line 27
    cmp-long v2, p2, v2

    .line 28
    .line 29
    if-eqz v2, :cond_28

    .line 30
    .line 31
    if-nez v1, :cond_28

    .line 32
    .line 33
    iget-boolean v1, v0, Lu7/c;->c:Z

    .line 34
    .line 35
    if-nez v1, :cond_28

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, p1, p2, p3, v1}, Lu7/c;->d(Lu7/a;JZ)Z

    .line 39
    .line 40
    .line 41
    :cond_28
    iget-object p1, v0, Lu7/c;->e:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_35

    .line 48
    .line 49
    iget-object p1, p0, Lu7/d;->f:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_35
    return-void

    .line 55
    :cond_36
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "Check failed."

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public final c()Lu7/a;
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Ls7/b;->a:[B

    .line 4
    .line 5
    :goto_4
    iget-object v0, v1, Lu7/d;->f:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_f

    .line 12
    .line 13
    const/4 v15, 0x0

    .line 14
    goto/16 :goto_9c

    .line 15
    .line 16
    :cond_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v6, 0x0

    .line 25
    const-wide v7, 0x7fffffffffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    move v10, v6

    .line 31
    const/4 v9, 0x0

    .line 32
    :goto_1f
    const-wide/16 v11, 0x0

    .line 33
    .line 34
    const/4 v13, 0x1

    .line 35
    if-ge v10, v2, :cond_50

    .line 36
    .line 37
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v14

    .line 41
    add-int/lit8 v10, v10, 0x1

    .line 42
    .line 43
    check-cast v14, Lu7/c;

    .line 44
    .line 45
    iget-object v14, v14, Lu7/c;->e:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v14

    .line 51
    check-cast v14, Lu7/a;

    .line 52
    .line 53
    move-wide/from16 v16, v4

    .line 54
    .line 55
    const/4 v15, 0x0

    .line 56
    iget-wide v3, v14, Lu7/a;->d:J

    .line 57
    .line 58
    sub-long v3, v3, v16

    .line 59
    .line 60
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    cmp-long v5, v3, v11

    .line 65
    .line 66
    if-lez v5, :cond_4a

    .line 67
    .line 68
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    :goto_47
    move-wide/from16 v4, v16

    .line 73
    .line 74
    goto :goto_1f

    .line 75
    :cond_4a
    if-eqz v9, :cond_4e

    .line 76
    .line 77
    move v2, v13

    .line 78
    goto :goto_54

    .line 79
    :cond_4e
    move-object v9, v14

    .line 80
    goto :goto_47

    .line 81
    :cond_50
    move-wide/from16 v16, v4

    .line 82
    .line 83
    const/4 v15, 0x0

    .line 84
    move v2, v6

    .line 85
    :goto_54
    iget-object v3, v1, Lu7/d;->e:Ljava/util/ArrayList;

    .line 86
    .line 87
    if-eqz v9, :cond_8d

    .line 88
    .line 89
    sget-object v4, Ls7/b;->a:[B

    .line 90
    .line 91
    const-wide/16 v4, -0x1

    .line 92
    .line 93
    iput-wide v4, v9, Lu7/a;->d:J

    .line 94
    .line 95
    iget-object v4, v9, Lu7/a;->c:Lu7/c;

    .line 96
    .line 97
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v5, v4, Lu7/c;->e:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iput-object v9, v4, Lu7/c;->d:Lu7/a;

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    if-nez v2, :cond_7c

    .line 114
    .line 115
    iget-boolean v2, v1, Lu7/d;->c:Z

    .line 116
    .line 117
    if-nez v2, :cond_8c

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_8c

    .line 124
    .line 125
    :cond_7c
    const-string v0, "runnable"

    .line 126
    .line 127
    iget-object v2, v1, Lu7/d;->g:Landroidx/fragment/app/p;

    .line 128
    .line 129
    invoke-static {v0, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, v1, Lu7/d;->a:Lk1/h;

    .line 133
    .line 134
    iget-object v0, v0, Lk1/h;->b:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 139
    .line 140
    .line 141
    :cond_8c
    return-object v9

    .line 142
    :cond_8d
    iget-boolean v2, v1, Lu7/d;->c:Z

    .line 143
    .line 144
    if-eqz v2, :cond_9d

    .line 145
    .line 146
    iget-wide v2, v1, Lu7/d;->d:J

    .line 147
    .line 148
    sub-long v2, v2, v16

    .line 149
    .line 150
    cmp-long v0, v7, v2

    .line 151
    .line 152
    if-gez v0, :cond_9c

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 155
    .line 156
    .line 157
    :cond_9c
    :goto_9c
    return-object v15

    .line 158
    :cond_9d
    iput-boolean v13, v1, Lu7/d;->c:Z

    .line 159
    .line 160
    add-long v4, v16, v7

    .line 161
    .line 162
    iput-wide v4, v1, Lu7/d;->d:J

    .line 163
    .line 164
    const-wide/32 v4, 0xf4240

    .line 165
    .line 166
    .line 167
    :try_start_a6
    div-long v9, v7, v4
    :try_end_a8
    .catch Ljava/lang/InterruptedException; {:try_start_a6 .. :try_end_a8} :catch_c0
    .catchall {:try_start_a6 .. :try_end_a8} :catchall_be

    .line 168
    .line 169
    invoke-static {v9, v10}, Ljava/lang/Long;->signum(J)I

    .line 170
    .line 171
    .line 172
    mul-long/2addr v4, v9

    .line 173
    sub-long v4, v7, v4

    .line 174
    .line 175
    cmp-long v2, v9, v11

    .line 176
    .line 177
    if-gtz v2, :cond_b6

    .line 178
    .line 179
    cmp-long v2, v7, v11

    .line 180
    .line 181
    if-lez v2, :cond_ba

    .line 182
    .line 183
    :cond_b6
    long-to-int v2, v4

    .line 184
    :try_start_b7
    invoke-virtual {v1, v9, v10, v2}, Ljava/lang/Object;->wait(JI)V
    :try_end_ba
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_ba} :catch_c0
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_be

    .line 185
    .line 186
    .line 187
    :cond_ba
    iput-boolean v6, v1, Lu7/d;->c:Z

    .line 188
    .line 189
    goto/16 :goto_4

    .line 190
    .line 191
    :catchall_be
    move-exception v0

    .line 192
    goto :goto_f2

    .line 193
    :catch_c0
    :try_start_c0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    sub-int/2addr v2, v13

    .line 198
    :goto_c5
    const/4 v4, -0x1

    .line 199
    if-ge v4, v2, :cond_d4

    .line 200
    .line 201
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    check-cast v4, Lu7/c;

    .line 206
    .line 207
    invoke-virtual {v4}, Lu7/c;->b()Z

    .line 208
    .line 209
    .line 210
    add-int/lit8 v2, v2, -0x1

    .line 211
    .line 212
    goto :goto_c5

    .line 213
    :cond_d4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    sub-int/2addr v2, v13

    .line 218
    :goto_d9
    if-ge v4, v2, :cond_ba

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Lu7/c;

    .line 225
    .line 226
    invoke-virtual {v3}, Lu7/c;->b()Z

    .line 227
    .line 228
    .line 229
    iget-object v3, v3, Lu7/c;->e:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_ef

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_ef
    .catchall {:try_start_c0 .. :try_end_ef} :catchall_be

    .line 238
    .line 239
    .line 240
    :cond_ef
    add-int/lit8 v2, v2, -0x1

    .line 241
    .line 242
    goto :goto_d9

    .line 243
    :goto_f2
    iput-boolean v6, v1, Lu7/d;->c:Z

    .line 244
    .line 245
    throw v0
.end method

.method public final d(Lu7/c;)V
    .registers 4

    .line 1
    const-string v0, "taskQueue"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ls7/b;->a:[B

    .line 7
    .line 8
    iget-object v0, p1, Lu7/c;->d:Lu7/a;

    .line 9
    .line 10
    if-nez v0, :cond_27

    .line 11
    .line 12
    iget-object v0, p1, Lu7/c;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lu7/d;->f:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-nez v0, :cond_24

    .line 21
    .line 22
    const-string v0, "<this>"

    .line 23
    .line 24
    invoke-static {v0, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_27

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_27

    .line 37
    :cond_24
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_27
    :goto_27
    iget-boolean p1, p0, Lu7/d;->c:Z

    .line 41
    .line 42
    if-eqz p1, :cond_2f

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2f
    const-string p1, "runnable"

    .line 49
    .line 50
    iget-object v0, p0, Lu7/d;->g:Landroidx/fragment/app/p;

    .line 51
    .line 52
    invoke-static {p1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lu7/d;->a:Lk1/h;

    .line 56
    .line 57
    iget-object p1, p1, Lk1/h;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final e()Lu7/c;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lu7/d;->b:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    iput v1, p0, Lu7/d;->b:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_14

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    new-instance v1, Lu7/c;

    .line 10
    .line 11
    const-string v2, "Q"

    .line 12
    .line 13
    invoke-static {v0, v2}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, p0, v0}, Lu7/c;-><init>(Lu7/d;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :catchall_14
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method
