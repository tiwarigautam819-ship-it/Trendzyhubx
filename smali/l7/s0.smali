###### Class l7.s0 (l7.s0)
.class public Ll7/s0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ll7/k0;
.implements Ll7/v0;


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "_state"

    .line 2
    .line 3
    const-class v1, Ll7/s0;

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
    sput-object v0, Ll7/s0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    const-string v0, "_parentHandle"

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Ll7/s0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_8

    .line 5
    .line 6
    sget-object p1, Ll7/r;->h:Ll7/z;

    .line 7
    .line 8
    goto :goto_a

    .line 9
    :cond_8
    sget-object p1, Ll7/r;->g:Ll7/z;

    .line 10
    .line 11
    :goto_a
    iput-object p1, p0, Ll7/s0;->_state:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public static t(Lp7/j;)Ll7/g;
    .registers 3

    .line 1
    :goto_0
    invoke-virtual {p0}, Lp7/j;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_24

    .line 6
    .line 7
    sget-object v0, Lp7/j;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {p0}, Lp7/j;->i()Lp7/j;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_22

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lp7/j;

    .line 20
    .line 21
    :goto_14
    invoke-virtual {p0}, Lp7/j;->m()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1b

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1b
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lp7/j;

    .line 33
    .line 34
    goto :goto_14

    .line 35
    :cond_22
    move-object p0, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_24
    invoke-virtual {p0}, Lp7/j;->l()Lp7/j;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lp7/j;->m()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_24

    .line 46
    .line 47
    instance-of v0, p0, Ll7/g;

    .line 48
    .line 49
    if-eqz v0, :cond_35

    .line 50
    .line 51
    check-cast p0, Ll7/g;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_35
    instance-of v0, p0, Ll7/t0;

    .line 55
    .line 56
    if-eqz v0, :cond_24

    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method public static y(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    instance-of v0, p0, Ll7/q0;

    .line 2
    .line 3
    if-eqz v0, :cond_18

    .line 4
    .line 5
    check-cast p0, Ll7/q0;

    .line 6
    .line 7
    invoke-virtual {p0}, Ll7/q0;->d()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 12
    .line 13
    const-string p0, "Cancelling"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_f
    invoke-virtual {p0}, Ll7/q0;->e()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_24

    .line 21
    .line 22
    const-string p0, "Completing"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_18
    instance-of v0, p0, Ll7/g0;

    .line 26
    .line 27
    if-eqz v0, :cond_2a

    .line 28
    .line 29
    check-cast p0, Ll7/g0;

    .line 30
    .line 31
    invoke-interface {p0}, Ll7/g0;->a()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_27

    .line 36
    .line 37
    :cond_24
    const-string p0, "Active"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_27
    const-string p0, "New"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2a
    instance-of p0, p0, Ll7/i;

    .line 44
    .line 45
    if-eqz p0, :cond_31

    .line 46
    .line 47
    const-string p0, "Cancelled"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_31
    const-string p0, "Completed"

    .line 51
    .line 52
    return-object p0
.end method


# virtual methods
.method public a()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ll7/s0;->n()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ll7/g0;

    .line 6
    .line 7
    if-eqz v1, :cond_12

    .line 8
    .line 9
    check-cast v0, Ll7/g0;

    .line 10
    .line 11
    invoke-interface {v0}, Ll7/g0;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final b(Ll7/g0;Ll7/t0;Ll7/o0;)Z
    .registers 7

    .line 1
    new-instance v0, Ll7/r0;

    .line 2
    .line 3
    invoke-direct {v0, p3, p0, p1}, Ll7/r0;-><init>(Ll7/o0;Ll7/s0;Ll7/g0;)V

    .line 4
    .line 5
    .line 6
    :goto_5
    sget-object p1, Lp7/j;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    invoke-virtual {p2}, Lp7/j;->i()Lp7/j;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_21

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lp7/j;

    .line 19
    .line 20
    :goto_13
    invoke-virtual {v1}, Lp7/j;->m()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1a

    .line 25
    .line 26
    goto :goto_21

    .line 27
    :cond_1a
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lp7/j;

    .line 32
    .line 33
    goto :goto_13

    .line 34
    :cond_21
    :goto_21
    sget-object p1, Lp7/j;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 35
    .line 36
    invoke-virtual {p1, p3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lp7/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 40
    .line 41
    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, v0, Ll7/r0;->c:Ll7/t0;

    .line 45
    .line 46
    :cond_2d
    invoke-virtual {p1, v1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3d

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lp7/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_3b

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    return p1

    .line 60
    :cond_3b
    const/4 p1, 0x0

    .line 61
    return p1

    .line 62
    :cond_3d
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eq v2, p2, :cond_2d

    .line 67
    .line 68
    goto :goto_5
.end method

.method public final c(Ljava/lang/Object;Lc7/p;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-interface {p2, p1, p0}, Lc7/p;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Z
    .registers 11

    .line 1
    sget-object v0, Ll7/r;->b:Ln6/d;

    .line 2
    .line 3
    instance-of v1, p0, Ll7/n0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_37

    .line 7
    .line 8
    :cond_7
    invoke-virtual {p0}, Ll7/s0;->n()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Ll7/g0;

    .line 13
    .line 14
    if-eqz v1, :cond_2f

    .line 15
    .line 16
    instance-of v1, v0, Ll7/q0;

    .line 17
    .line 18
    if-eqz v1, :cond_1d

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Ll7/q0;

    .line 22
    .line 23
    invoke-virtual {v1}, Ll7/q0;->e()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1d

    .line 28
    .line 29
    goto :goto_2f

    .line 30
    :cond_1d
    new-instance v1, Ll7/i;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ll7/s0;->i(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {v1, v3}, Ll7/i;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Ll7/s0;->z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Ll7/r;->d:Ln6/d;

    .line 44
    .line 45
    if-eq v0, v1, :cond_7

    .line 46
    .line 47
    goto :goto_31

    .line 48
    :cond_2f
    :goto_2f
    sget-object v0, Ll7/r;->b:Ln6/d;

    .line 49
    .line 50
    :goto_31
    sget-object v1, Ll7/r;->c:Ln6/d;

    .line 51
    .line 52
    if-ne v0, v1, :cond_37

    .line 53
    .line 54
    goto/16 :goto_100

    .line 55
    .line 56
    :cond_37
    sget-object v1, Ll7/r;->b:Ln6/d;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    if-ne v0, v1, :cond_f1

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    move-object v1, v0

    .line 63
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Ll7/s0;->n()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    instance-of v5, v4, Ll7/q0;

    .line 68
    .line 69
    if-eqz v5, :cond_8d

    .line 70
    .line 71
    monitor-enter v4

    .line 72
    :try_start_47
    move-object v5, v4

    .line 73
    check-cast v5, Ll7/q0;

    .line 74
    .line 75
    sget-object v6, Ll7/q0;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 76
    .line 77
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    sget-object v6, Ll7/r;->f:Ln6/d;

    .line 82
    .line 83
    if-ne v5, v6, :cond_56

    .line 84
    .line 85
    move v5, v2

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move v5, v3

    .line 88
    :goto_57
    if-eqz v5, :cond_61

    .line 89
    .line 90
    sget-object p1, Ll7/r;->e:Ln6/d;
    :try_end_5b
    .catchall {:try_start_47 .. :try_end_5b} :catchall_5f

    .line 91
    .line 92
    monitor-exit v4

    .line 93
    :goto_5c
    move-object v0, p1

    .line 94
    goto/16 :goto_f1

    .line 95
    .line 96
    :catchall_5f
    move-exception p1

    .line 97
    goto :goto_8b

    .line 98
    :cond_61
    :try_start_61
    move-object v5, v4

    .line 99
    check-cast v5, Ll7/q0;

    .line 100
    .line 101
    invoke-virtual {v5}, Ll7/q0;->d()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-nez v1, :cond_6e

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ll7/s0;->i(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :cond_6e
    move-object p1, v4

    .line 112
    check-cast p1, Ll7/q0;

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Ll7/q0;->b(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    move-object p1, v4

    .line 118
    check-cast p1, Ll7/q0;

    .line 119
    .line 120
    invoke-virtual {p1}, Ll7/q0;->c()Ljava/lang/Throwable;

    .line 121
    .line 122
    .line 123
    move-result-object p1
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_5f

    .line 124
    if-nez v5, :cond_7e

    .line 125
    .line 126
    move-object v0, p1

    .line 127
    :cond_7e
    monitor-exit v4

    .line 128
    if-eqz v0, :cond_88

    .line 129
    .line 130
    check-cast v4, Ll7/q0;

    .line 131
    .line 132
    iget-object p1, v4, Ll7/q0;->a:Ll7/t0;

    .line 133
    .line 134
    invoke-virtual {p0, p1, v0}, Ll7/s0;->u(Ll7/t0;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    :cond_88
    sget-object p1, Ll7/r;->b:Ln6/d;

    .line 138
    .line 139
    goto :goto_5c

    .line 140
    :goto_8b
    monitor-exit v4

    .line 141
    throw p1

    .line 142
    :cond_8d
    instance-of v5, v4, Ll7/g0;

    .line 143
    .line 144
    if-eqz v5, :cond_ed

    .line 145
    .line 146
    if-nez v1, :cond_97

    .line 147
    .line 148
    invoke-virtual {p0, p1}, Ll7/s0;->i(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    :cond_97
    move-object v5, v4

    .line 153
    check-cast v5, Ll7/g0;

    .line 154
    .line 155
    invoke-interface {v5}, Ll7/g0;->a()Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_c2

    .line 160
    .line 161
    invoke-virtual {p0, v5}, Ll7/s0;->m(Ll7/g0;)Ll7/t0;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    if-nez v6, :cond_a7

    .line 166
    .line 167
    goto :goto_3e

    .line 168
    :cond_a7
    new-instance v7, Ll7/q0;

    .line 169
    .line 170
    invoke-direct {v7, v6, v1}, Ll7/q0;-><init>(Ll7/t0;Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    sget-object v8, Ll7/s0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 174
    .line 175
    :cond_ae
    invoke-virtual {v8, p0, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_ba

    .line 180
    .line 181
    invoke-virtual {p0, v6, v1}, Ll7/s0;->u(Ll7/t0;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    sget-object p1, Ll7/r;->b:Ln6/d;

    .line 185
    .line 186
    goto :goto_5c

    .line 187
    :cond_ba
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    if-eq v4, v5, :cond_ae

    .line 192
    .line 193
    goto/16 :goto_3e

    .line 194
    .line 195
    :cond_c2
    new-instance v5, Ll7/i;

    .line 196
    .line 197
    invoke-direct {v5, v1}, Ll7/i;-><init>(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v4, v5}, Ll7/s0;->z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    sget-object v6, Ll7/r;->b:Ln6/d;

    .line 205
    .line 206
    if-eq v5, v6, :cond_d5

    .line 207
    .line 208
    sget-object v4, Ll7/r;->d:Ln6/d;

    .line 209
    .line 210
    if-eq v5, v4, :cond_3e

    .line 211
    .line 212
    move-object v0, v5

    .line 213
    goto :goto_f1

    .line 214
    :cond_d5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 215
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v1, "Cannot happen in "

    .line 219
    .line 220
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p1

    .line 238
    :cond_ed
    sget-object p1, Ll7/r;->e:Ln6/d;

    .line 239
    .line 240
    goto/16 :goto_5c

    .line 241
    .line 242
    :cond_f1
    :goto_f1
    sget-object p1, Ll7/r;->b:Ln6/d;

    .line 243
    .line 244
    if-ne v0, p1, :cond_f6

    .line 245
    .line 246
    goto :goto_100

    .line 247
    :cond_f6
    sget-object p1, Ll7/r;->c:Ln6/d;

    .line 248
    .line 249
    if-ne v0, p1, :cond_fb

    .line 250
    .line 251
    goto :goto_100

    .line 252
    :cond_fb
    sget-object p1, Ll7/r;->e:Ln6/d;

    .line 253
    .line 254
    if-ne v0, p1, :cond_100

    .line 255
    .line 256
    return v3

    .line 257
    :cond_100
    :goto_100
    return v2
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Job was cancelled"

    .line 2
    .line 3
    return-object v0
.end method

.method public final g(Lu6/j;)Lu6/i;
    .registers 3

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ll7/o;->b:Ll7/o;

    .line 7
    .line 8
    invoke-static {v0, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_e

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method public final getKey()Lu6/j;
    .registers 2

    .line 1
    sget-object v0, Ll7/o;->b:Ll7/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Ll7/g0;Ljava/lang/Object;)V
    .registers 10

    .line 1
    sget-object v0, Ll7/s0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ll7/f;

    .line 8
    .line 9
    if-eqz v1, :cond_12

    .line 10
    .line 11
    invoke-interface {v1}, Ll7/y;->c()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Ll7/u0;->a:Ll7/u0;

    .line 15
    .line 16
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_12
    instance-of v0, p2, Ll7/i;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_1a

    .line 23
    .line 24
    check-cast p2, Ll7/i;

    .line 25
    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move-object p2, v1

    .line 28
    :goto_1b
    if-eqz p2, :cond_20

    .line 29
    .line 30
    iget-object p2, p2, Ll7/i;->a:Ljava/lang/Throwable;

    .line 31
    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move-object p2, v1

    .line 34
    :goto_21
    instance-of v0, p1, Ll7/o0;

    .line 35
    .line 36
    const-string v2, " for "

    .line 37
    .line 38
    const-string v3, "Exception in completion handler "

    .line 39
    .line 40
    if-eqz v0, :cond_4c

    .line 41
    .line 42
    :try_start_29
    move-object v0, p1

    .line 43
    check-cast v0, Ll7/o0;

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Ll7/o0;->o(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_30

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_30
    move-exception p2

    .line 50
    new-instance v0, Landroidx/fragment/app/a0;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Ll7/s0;->p(Landroidx/fragment/app/a0;)V

    .line 74
    .line 75
    .line 76
    goto :goto_96

    .line 77
    :cond_4c
    invoke-interface {p1}, Ll7/g0;->h()Ll7/t0;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_96

    .line 82
    .line 83
    invoke-virtual {p1}, Lp7/j;->k()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 88
    .line 89
    invoke-static {v4, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    check-cast v0, Lp7/j;

    .line 93
    .line 94
    :goto_5d
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_91

    .line 99
    .line 100
    instance-of v4, v0, Ll7/o0;

    .line 101
    .line 102
    if-eqz v4, :cond_8c

    .line 103
    .line 104
    move-object v4, v0

    .line 105
    check-cast v4, Ll7/o0;

    .line 106
    .line 107
    :try_start_6a
    invoke-virtual {v4, p2}, Ll7/o0;->o(Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    .line 108
    .line 109
    .line 110
    goto :goto_8c

    .line 111
    :catchall_6e
    move-exception v5

    .line 112
    if-eqz v1, :cond_75

    .line 113
    .line 114
    invoke-static {v1, v5}, Li2/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    goto :goto_8c

    .line 118
    :cond_75
    new-instance v1, Landroidx/fragment/app/a0;

    .line 119
    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-direct {v1, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    :cond_8c
    :goto_8c
    invoke-virtual {v0}, Lp7/j;->l()Lp7/j;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    goto :goto_5d

    .line 146
    :cond_91
    if-eqz v1, :cond_96

    .line 147
    .line 148
    invoke-virtual {p0, v1}, Ll7/s0;->p(Landroidx/fragment/app/a0;)V

    .line 149
    .line 150
    .line 151
    :cond_96
    :goto_96
    return-void
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 6

    .line 1
    instance-of v0, p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Throwable;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_7
    check-cast p1, Ll7/v0;

    .line 9
    .line 10
    check-cast p1, Ll7/s0;

    .line 11
    .line 12
    invoke-virtual {p1}, Ll7/s0;->n()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Ll7/q0;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_1c

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    check-cast v1, Ll7/q0;

    .line 23
    .line 24
    invoke-virtual {v1}, Ll7/q0;->c()Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_2b

    .line 29
    :cond_1c
    instance-of v1, v0, Ll7/i;

    .line 30
    .line 31
    if-eqz v1, :cond_26

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    check-cast v1, Ll7/i;

    .line 35
    .line 36
    iget-object v1, v1, Ll7/i;->a:Ljava/lang/Throwable;

    .line 37
    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    instance-of v1, v0, Ll7/g0;

    .line 40
    .line 41
    if-nez v1, :cond_44

    .line 42
    .line 43
    move-object v1, v2

    .line 44
    :goto_2b
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    .line 45
    .line 46
    if-eqz v3, :cond_32

    .line 47
    .line 48
    move-object v2, v1

    .line 49
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .line 50
    .line 51
    :cond_32
    if-nez v2, :cond_43

    .line 52
    .line 53
    new-instance v2, Ll7/l0;

    .line 54
    .line 55
    invoke-static {v0}, Ll7/s0;->y(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v3, "Parent job is "

    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {v2, v0, v1, p1}, Ll7/l0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ll7/s0;)V

    .line 66
    .line 67
    .line 68
    :cond_43
    return-object v2

    .line 69
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "Cannot be cancelling child in this state: "

    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public final j(Ll7/q0;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .line 1
    instance-of v0, p2, Ll7/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    move-object v0, p2

    .line 7
    check-cast v0, Ll7/i;

    .line 8
    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move-object v0, v1

    .line 11
    :goto_a
    if-eqz v0, :cond_f

    .line 12
    .line 13
    iget-object v0, v0, Ll7/i;->a:Ljava/lang/Throwable;

    .line 14
    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move-object v0, v1

    .line 17
    :goto_10
    monitor-enter p1

    .line 18
    :try_start_11
    invoke-virtual {p1}, Ll7/q0;->d()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ll7/q0;->f(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v3, :cond_30

    .line 31
    .line 32
    invoke-virtual {p1}, Ll7/q0;->d()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_50

    .line 37
    .line 38
    new-instance v3, Ll7/l0;

    .line 39
    .line 40
    invoke-virtual {p0}, Ll7/s0;->f()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-direct {v3, v5, v1, p0}, Ll7/l0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ll7/s0;)V

    .line 45
    .line 46
    .line 47
    move-object v1, v3

    .line 48
    goto :goto_50

    .line 49
    :cond_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    move v5, v4

    .line 54
    :cond_35
    if-ge v5, v3, :cond_45

    .line 55
    .line 56
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    move-object v7, v6

    .line 63
    check-cast v7, Ljava/lang/Throwable;

    .line 64
    .line 65
    instance-of v7, v7, Ljava/util/concurrent/CancellationException;

    .line 66
    .line 67
    if-nez v7, :cond_35

    .line 68
    .line 69
    move-object v1, v6

    .line 70
    :cond_45
    check-cast v1, Ljava/lang/Throwable;

    .line 71
    .line 72
    if-eqz v1, :cond_4a

    .line 73
    .line 74
    goto :goto_50

    .line 75
    :cond_4a
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/lang/Throwable;

    .line 80
    .line 81
    :cond_50
    :goto_50
    const/4 v3, 0x1

    .line 82
    if-eqz v1, :cond_88

    .line 83
    .line 84
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-gt v5, v3, :cond_5a

    .line 89
    .line 90
    goto :goto_88

    .line 91
    :cond_5a
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    new-instance v6, Ljava/util/IdentityHashMap;

    .line 96
    .line 97
    invoke-direct {v6, v5}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    move v7, v4

    .line 109
    :cond_6c
    :goto_6c
    if-ge v7, v6, :cond_88

    .line 110
    .line 111
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    add-int/lit8 v7, v7, 0x1

    .line 116
    .line 117
    check-cast v8, Ljava/lang/Throwable;

    .line 118
    .line 119
    if-eq v8, v1, :cond_6c

    .line 120
    .line 121
    if-eq v8, v1, :cond_6c

    .line 122
    .line 123
    instance-of v9, v8, Ljava/util/concurrent/CancellationException;

    .line 124
    .line 125
    if-nez v9, :cond_6c

    .line 126
    .line 127
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-eqz v9, :cond_6c

    .line 132
    .line 133
    invoke-static {v1, v8}, Li2/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_87
    .catchall {:try_start_11 .. :try_end_87} :catchall_e7

    .line 134
    .line 135
    .line 136
    goto :goto_6c

    .line 137
    :cond_88
    :goto_88
    monitor-exit p1

    .line 138
    if-nez v1, :cond_8c

    .line 139
    .line 140
    goto :goto_94

    .line 141
    :cond_8c
    if-ne v1, v0, :cond_8f

    .line 142
    .line 143
    goto :goto_94

    .line 144
    :cond_8f
    new-instance p2, Ll7/i;

    .line 145
    .line 146
    invoke-direct {p2, v1}, Ll7/i;-><init>(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :goto_94
    if-eqz v1, :cond_c3

    .line 150
    .line 151
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    .line 152
    .line 153
    sget-object v2, Ll7/s0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 154
    .line 155
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Ll7/f;

    .line 160
    .line 161
    if-eqz v2, :cond_b3

    .line 162
    .line 163
    sget-object v5, Ll7/u0;->a:Ll7/u0;

    .line 164
    .line 165
    if-ne v2, v5, :cond_a7

    .line 166
    .line 167
    goto :goto_b3

    .line 168
    :cond_a7
    invoke-interface {v2, v1}, Ll7/f;->e(Ljava/lang/Throwable;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_b2

    .line 173
    .line 174
    if-eqz v0, :cond_b0

    .line 175
    .line 176
    goto :goto_b2

    .line 177
    :cond_b0
    move v0, v4

    .line 178
    goto :goto_b3

    .line 179
    :cond_b2
    :goto_b2
    move v0, v3

    .line 180
    :cond_b3
    :goto_b3
    if-nez v0, :cond_b6

    .line 181
    .line 182
    goto :goto_c3

    .line 183
    :cond_b6
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 184
    .line 185
    invoke-static {v0, p2}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    move-object v0, p2

    .line 189
    check-cast v0, Ll7/i;

    .line 190
    .line 191
    sget-object v1, Ll7/i;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 192
    .line 193
    invoke-virtual {v1, v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 194
    .line 195
    .line 196
    :cond_c3
    :goto_c3
    invoke-virtual {p0, p2}, Ll7/s0;->v(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    sget-object v0, Ll7/s0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 200
    .line 201
    instance-of v1, p2, Ll7/g0;

    .line 202
    .line 203
    if-eqz v1, :cond_d5

    .line 204
    .line 205
    new-instance v1, Ll7/h0;

    .line 206
    .line 207
    move-object v2, p2

    .line 208
    check-cast v2, Ll7/g0;

    .line 209
    .line 210
    invoke-direct {v1, v2}, Ll7/h0;-><init>(Ll7/g0;)V

    .line 211
    .line 212
    .line 213
    goto :goto_d6

    .line 214
    :cond_d5
    move-object v1, p2

    .line 215
    :cond_d6
    :goto_d6
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_dd

    .line 220
    .line 221
    goto :goto_e3

    .line 222
    :cond_dd
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    if-eq v2, p1, :cond_d6

    .line 227
    .line 228
    :goto_e3
    invoke-virtual {p0, p1, p2}, Ll7/s0;->h(Ll7/g0;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    return-object p2

    .line 232
    :catchall_e7
    move-exception p2

    .line 233
    monitor-exit p1

    .line 234
    throw p2
.end method

.method public final k()Ljava/util/concurrent/CancellationException;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ll7/s0;->n()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ll7/q0;

    .line 6
    .line 7
    const-string v2, "Job is still new or active: "

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_4d

    .line 11
    .line 12
    check-cast v0, Ll7/q0;

    .line 13
    .line 14
    invoke-virtual {v0}, Ll7/q0;->c()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_37

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, " is cancelling"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    .line 35
    .line 36
    if-eqz v2, :cond_28

    .line 37
    .line 38
    move-object v3, v0

    .line 39
    check-cast v3, Ljava/util/concurrent/CancellationException;

    .line 40
    .line 41
    :cond_28
    if-nez v3, :cond_36

    .line 42
    .line 43
    new-instance v2, Ll7/l0;

    .line 44
    .line 45
    if-nez v1, :cond_32

    .line 46
    .line 47
    invoke-virtual {p0}, Ll7/s0;->f()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_32
    invoke-direct {v2, v1, v0, p0}, Ll7/l0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ll7/s0;)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :cond_36
    return-object v3

    .line 56
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_4d
    instance-of v1, v0, Ll7/g0;

    .line 79
    .line 80
    if-nez v1, :cond_81

    .line 81
    .line 82
    instance-of v1, v0, Ll7/i;

    .line 83
    .line 84
    if-eqz v1, :cond_6d

    .line 85
    .line 86
    check-cast v0, Ll7/i;

    .line 87
    .line 88
    iget-object v0, v0, Ll7/i;->a:Ljava/lang/Throwable;

    .line 89
    .line 90
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    .line 91
    .line 92
    if-eqz v1, :cond_60

    .line 93
    .line 94
    move-object v3, v0

    .line 95
    check-cast v3, Ljava/util/concurrent/CancellationException;

    .line 96
    .line 97
    :cond_60
    if-nez v3, :cond_6c

    .line 98
    .line 99
    new-instance v1, Ll7/l0;

    .line 100
    .line 101
    invoke-virtual {p0}, Ll7/s0;->f()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-direct {v1, v2, v0, p0}, Ll7/l0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ll7/s0;)V

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_6c
    return-object v3

    .line 110
    :cond_6d
    new-instance v0, Ll7/l0;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, " has completed normally"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {v0, v1, v3, p0}, Ll7/l0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ll7/s0;)V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_81
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0
.end method

.method public l()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final m(Ll7/g0;)Ll7/t0;
    .registers 5

    .line 1
    invoke-interface {p1}, Ll7/g0;->h()Ll7/t0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_33

    .line 6
    .line 7
    instance-of v0, p1, Ll7/z;

    .line 8
    .line 9
    if-eqz v0, :cond_10

    .line 10
    .line 11
    new-instance p1, Ll7/t0;

    .line 12
    .line 13
    invoke-direct {p1}, Lp7/j;-><init>()V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_10
    instance-of v0, p1, Ll7/o0;

    .line 18
    .line 19
    if-eqz v0, :cond_1b

    .line 20
    .line 21
    check-cast p1, Ll7/o0;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ll7/s0;->x(Ll7/o0;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "State should have list: "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_33
    return-object v0
.end method

.method public final n()Ljava/lang/Object;
    .registers 3

    .line 1
    :goto_0
    sget-object v0, Ll7/s0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lp7/o;

    .line 8
    .line 9
    if-nez v1, :cond_b

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_b
    check-cast v0, Lp7/o;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lp7/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_0
.end method

.method public final o(Lu6/j;)Lu6/k;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lx2/a;->j(Lu6/i;Lu6/j;)Lu6/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p(Landroidx/fragment/app/a0;)V
    .registers 2

    .line 1
    throw p1
.end method

.method public final q(Ll7/k0;)V
    .registers 8

    .line 1
    sget-object v0, Ll7/s0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    sget-object v1, Ll7/u0;->a:Ll7/u0;

    .line 4
    .line 5
    if-nez p1, :cond_a

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    check-cast p1, Ll7/s0;

    .line 12
    .line 13
    :goto_c
    invoke-virtual {p1}, Ll7/s0;->n()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v3, v2, Ll7/z;

    .line 18
    .line 19
    sget-object v4, Ll7/s0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    if-eqz v3, :cond_31

    .line 22
    .line 23
    move-object v3, v2

    .line 24
    check-cast v3, Ll7/z;

    .line 25
    .line 26
    iget-boolean v3, v3, Ll7/z;->a:Z

    .line 27
    .line 28
    if-eqz v3, :cond_1e

    .line 29
    .line 30
    goto :goto_4b

    .line 31
    :cond_1e
    sget-object v3, Ll7/r;->h:Ll7/z;

    .line 32
    .line 33
    :cond_20
    invoke-virtual {v4, p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_2a

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    goto :goto_4b

    .line 43
    :cond_2a
    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eq v5, v2, :cond_20

    .line 48
    .line 49
    goto :goto_c

    .line 50
    :cond_31
    instance-of v3, v2, Ll7/f0;

    .line 51
    .line 52
    if-eqz v3, :cond_4b

    .line 53
    .line 54
    move-object v3, v2

    .line 55
    check-cast v3, Ll7/f0;

    .line 56
    .line 57
    iget-object v3, v3, Ll7/f0;->a:Ll7/t0;

    .line 58
    .line 59
    :cond_3a
    invoke-virtual {v4, p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_44

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    goto :goto_4b

    .line 69
    :cond_44
    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-eq v5, v2, :cond_3a

    .line 74
    .line 75
    goto :goto_c

    .line 76
    :cond_4b
    :goto_4b
    new-instance v2, Ll7/g;

    .line 77
    .line 78
    invoke-direct {v2, p0}, Ll7/g;-><init>(Ll7/s0;)V

    .line 79
    .line 80
    .line 81
    const/4 v3, 0x2

    .line 82
    invoke-static {p1, v2, v3}, Ll7/r;->f(Ll7/k0;Ll7/o0;I)Ll7/y;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Ll7/f;

    .line 87
    .line 88
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ll7/s0;->n()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    instance-of v2, v2, Ll7/g0;

    .line 96
    .line 97
    if-nez v2, :cond_68

    .line 98
    .line 99
    invoke-interface {p1}, Ll7/y;->c()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_68
    return-void
.end method

.method public final r(ZZLc7/l;)Ll7/y;
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_14

    .line 3
    .line 4
    instance-of v1, p3, Ll7/m0;

    .line 5
    .line 6
    if-eqz v1, :cond_b

    .line 7
    .line 8
    move-object v1, p3

    .line 9
    check-cast v1, Ll7/m0;

    .line 10
    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move-object v1, v0

    .line 13
    :goto_c
    if-nez v1, :cond_25

    .line 14
    .line 15
    new-instance v1, Ll7/i0;

    .line 16
    .line 17
    invoke-direct {v1, p3}, Ll7/i0;-><init>(Lc7/l;)V

    .line 18
    .line 19
    .line 20
    goto :goto_25

    .line 21
    :cond_14
    instance-of v1, p3, Ll7/o0;

    .line 22
    .line 23
    if-eqz v1, :cond_1c

    .line 24
    .line 25
    move-object v1, p3

    .line 26
    check-cast v1, Ll7/o0;

    .line 27
    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move-object v1, v0

    .line 30
    :goto_1d
    if-eqz v1, :cond_20

    .line 31
    .line 32
    goto :goto_25

    .line 33
    :cond_20
    new-instance v1, Ll7/j0;

    .line 34
    .line 35
    invoke-direct {v1, p3}, Ll7/j0;-><init>(Lc7/l;)V

    .line 36
    .line 37
    .line 38
    :cond_25
    :goto_25
    iput-object p0, v1, Ll7/o0;->d:Ll7/s0;

    .line 39
    .line 40
    :cond_27
    :goto_27
    invoke-virtual {p0}, Ll7/s0;->n()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    instance-of v3, v2, Ll7/z;

    .line 45
    .line 46
    if-eqz v3, :cond_67

    .line 47
    .line 48
    move-object v3, v2

    .line 49
    check-cast v3, Ll7/z;

    .line 50
    .line 51
    iget-boolean v4, v3, Ll7/z;->a:Z

    .line 52
    .line 53
    if-eqz v4, :cond_47

    .line 54
    .line 55
    sget-object v4, Ll7/s0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 56
    .line 57
    :cond_38
    invoke-virtual {v4, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_40

    .line 62
    .line 63
    goto/16 :goto_bf

    .line 64
    .line 65
    :cond_40
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eq v3, v2, :cond_38

    .line 70
    .line 71
    goto :goto_27

    .line 72
    :cond_47
    new-instance v2, Ll7/t0;

    .line 73
    .line 74
    invoke-direct {v2}, Lp7/j;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-boolean v4, v3, Ll7/z;->a:Z

    .line 78
    .line 79
    if-eqz v4, :cond_52

    .line 80
    .line 81
    move-object v4, v2

    .line 82
    goto :goto_57

    .line 83
    :cond_52
    new-instance v4, Ll7/f0;

    .line 84
    .line 85
    invoke-direct {v4, v2}, Ll7/f0;-><init>(Ll7/t0;)V

    .line 86
    .line 87
    .line 88
    :goto_57
    sget-object v5, Ll7/s0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 89
    .line 90
    :cond_59
    invoke-virtual {v5, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_60

    .line 95
    .line 96
    goto :goto_27

    .line 97
    :cond_60
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-eq v2, v3, :cond_59

    .line 102
    .line 103
    goto :goto_27

    .line 104
    :cond_67
    instance-of v3, v2, Ll7/g0;

    .line 105
    .line 106
    if-eqz v3, :cond_c0

    .line 107
    .line 108
    move-object v3, v2

    .line 109
    check-cast v3, Ll7/g0;

    .line 110
    .line 111
    invoke-interface {v3}, Ll7/g0;->h()Ll7/t0;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    if-nez v4, :cond_7a

    .line 116
    .line 117
    check-cast v2, Ll7/o0;

    .line 118
    .line 119
    invoke-virtual {p0, v2}, Ll7/s0;->x(Ll7/o0;)V

    .line 120
    .line 121
    .line 122
    goto :goto_27

    .line 123
    :cond_7a
    sget-object v5, Ll7/u0;->a:Ll7/u0;

    .line 124
    .line 125
    if-eqz p1, :cond_b0

    .line 126
    .line 127
    instance-of v6, v2, Ll7/q0;

    .line 128
    .line 129
    if-eqz v6, :cond_b0

    .line 130
    .line 131
    monitor-enter v2

    .line 132
    :try_start_83
    move-object v6, v2

    .line 133
    check-cast v6, Ll7/q0;

    .line 134
    .line 135
    invoke-virtual {v6}, Ll7/q0;->c()Ljava/lang/Throwable;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    if-eqz v6, :cond_9c

    .line 140
    .line 141
    instance-of v7, p3, Ll7/g;

    .line 142
    .line 143
    if-eqz v7, :cond_ac

    .line 144
    .line 145
    move-object v7, v2

    .line 146
    check-cast v7, Ll7/q0;

    .line 147
    .line 148
    invoke-virtual {v7}, Ll7/q0;->e()Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-nez v7, :cond_ac

    .line 153
    .line 154
    goto :goto_9c

    .line 155
    :catchall_9a
    move-exception p1

    .line 156
    goto :goto_ae

    .line 157
    :cond_9c
    :goto_9c
    move-object v5, v2

    .line 158
    check-cast v5, Ll7/g0;

    .line 159
    .line 160
    invoke-virtual {p0, v5, v4, v1}, Ll7/s0;->b(Ll7/g0;Ll7/t0;Ll7/o0;)Z

    .line 161
    .line 162
    .line 163
    move-result v5
    :try_end_a3
    .catchall {:try_start_83 .. :try_end_a3} :catchall_9a

    .line 164
    if-nez v5, :cond_a7

    .line 165
    .line 166
    monitor-exit v2

    .line 167
    goto :goto_27

    .line 168
    :cond_a7
    if-nez v6, :cond_ab

    .line 169
    .line 170
    monitor-exit v2

    .line 171
    return-object v1

    .line 172
    :cond_ab
    move-object v5, v1

    .line 173
    :cond_ac
    monitor-exit v2

    .line 174
    goto :goto_b1

    .line 175
    :goto_ae
    monitor-exit v2

    .line 176
    throw p1

    .line 177
    :cond_b0
    move-object v6, v0

    .line 178
    :goto_b1
    if-eqz v6, :cond_b9

    .line 179
    .line 180
    if-eqz p2, :cond_b8

    .line 181
    .line 182
    invoke-interface {p3, v6}, Lc7/l;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    :cond_b8
    return-object v5

    .line 186
    :cond_b9
    invoke-virtual {p0, v3, v4, v1}, Ll7/s0;->b(Ll7/g0;Ll7/t0;Ll7/o0;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_27

    .line 191
    .line 192
    :goto_bf
    return-object v1

    .line 193
    :cond_c0
    if-eqz p2, :cond_d1

    .line 194
    .line 195
    instance-of p1, v2, Ll7/i;

    .line 196
    .line 197
    if-eqz p1, :cond_c9

    .line 198
    .line 199
    check-cast v2, Ll7/i;

    .line 200
    .line 201
    goto :goto_ca

    .line 202
    :cond_c9
    move-object v2, v0

    .line 203
    :goto_ca
    if-eqz v2, :cond_ce

    .line 204
    .line 205
    iget-object v0, v2, Ll7/i;->a:Ljava/lang/Throwable;

    .line 206
    .line 207
    :cond_ce
    invoke-interface {p3, v0}, Lc7/l;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    :cond_d1
    sget-object p1, Ll7/u0;->a:Ll7/u0;

    .line 211
    .line 212
    return-object p1
.end method

.method public final s(Lu6/k;)Lu6/k;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lx2/a;->m(Lu6/i;Lu6/k;)Lu6/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x7b

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ll7/s0;->n()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Ll7/s0;->y(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x7d

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v1, 0x40

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Ll7/r;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

.method public final u(Ll7/t0;Ljava/lang/Throwable;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Lp7/j;->k()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 6
    .line 7
    invoke-static {v1, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lp7/j;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_c
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_44

    .line 18
    .line 19
    instance-of v2, v0, Ll7/m0;

    .line 20
    .line 21
    if-eqz v2, :cond_3f

    .line 22
    .line 23
    move-object v2, v0

    .line 24
    check-cast v2, Ll7/o0;

    .line 25
    .line 26
    :try_start_19
    invoke-virtual {v2, p2}, Ll7/o0;->o(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    .line 27
    .line 28
    .line 29
    goto :goto_3f

    .line 30
    :catchall_1d
    move-exception v3

    .line 31
    if-eqz v1, :cond_24

    .line 32
    .line 33
    invoke-static {v1, v3}, Li2/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    goto :goto_3f

    .line 37
    :cond_24
    new-instance v1, Landroidx/fragment/app/a0;

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v5, "Exception in completion handler "

    .line 42
    .line 43
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " for "

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Lp7/j;->l()Lp7/j;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_c

    .line 69
    :cond_44
    if-eqz v1, :cond_49

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Ll7/s0;->p(Landroidx/fragment/app/a0;)V

    .line 72
    .line 73
    .line 74
    :cond_49
    sget-object p1, Ll7/s0;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 75
    .line 76
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Ll7/f;

    .line 81
    .line 82
    if-eqz p1, :cond_5b

    .line 83
    .line 84
    sget-object v0, Ll7/u0;->a:Ll7/u0;

    .line 85
    .line 86
    if-ne p1, v0, :cond_58

    .line 87
    .line 88
    goto :goto_5b

    .line 89
    :cond_58
    invoke-interface {p1, p2}, Ll7/f;->e(Ljava/lang/Throwable;)Z

    .line 90
    .line 91
    .line 92
    :cond_5b
    :goto_5b
    return-void
.end method

.method public v(Ljava/lang/Object;)V
    .registers 2

    .line 1
    return-void
.end method

.method public w()V
    .registers 1

    .line 1
    return-void
.end method

.method public final x(Ll7/o0;)V
    .registers 5

    .line 1
    new-instance v0, Ll7/t0;

    .line 2
    .line 3
    invoke-direct {v0}, Lp7/j;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object v1, Lp7/j;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    .line 11
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lp7/j;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :goto_12
    invoke-virtual {p1}, Lp7/j;->k()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eq v2, p1, :cond_19

    .line 24
    .line 25
    goto :goto_22

    .line 26
    :cond_19
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_36

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lp7/j;->j(Lp7/j;)V

    .line 33
    .line 34
    .line 35
    :goto_22
    invoke-virtual {p1}, Lp7/j;->l()Lp7/j;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_26
    sget-object v0, Ll7/s0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 40
    .line 41
    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2f

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2f
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eq v0, p1, :cond_26

    .line 53
    .line 54
    return-void

    .line 55
    :cond_36
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eq v2, p1, :cond_19

    .line 60
    .line 61
    goto :goto_12
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Ll7/g0;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    sget-object p1, Ll7/r;->b:Ln6/d;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_7
    instance-of v0, p1, Ll7/z;

    .line 9
    .line 10
    if-nez v0, :cond_f

    .line 11
    .line 12
    instance-of v0, p1, Ll7/o0;

    .line 13
    .line 14
    if-eqz v0, :cond_41

    .line 15
    .line 16
    :cond_f
    instance-of v0, p1, Ll7/g;

    .line 17
    .line 18
    if-nez v0, :cond_41

    .line 19
    .line 20
    instance-of v0, p2, Ll7/i;

    .line 21
    .line 22
    if-nez v0, :cond_41

    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Ll7/g0;

    .line 26
    .line 27
    sget-object v1, Ll7/s0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    instance-of p1, p2, Ll7/g0;

    .line 30
    .line 31
    if-eqz p1, :cond_2a

    .line 32
    .line 33
    new-instance p1, Ll7/h0;

    .line 34
    .line 35
    move-object v2, p2

    .line 36
    check-cast v2, Ll7/g0;

    .line 37
    .line 38
    invoke-direct {p1, v2}, Ll7/h0;-><init>(Ll7/g0;)V

    .line 39
    .line 40
    .line 41
    move-object v2, p1

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move-object v2, p2

    .line 44
    :cond_2b
    :goto_2b
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_38

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Ll7/s0;->v(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, p2}, Ll7/s0;->h(Ll7/g0;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object p2

    .line 57
    :cond_38
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eq p1, v0, :cond_2b

    .line 62
    .line 63
    sget-object p1, Ll7/r;->d:Ln6/d;

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_41
    check-cast p1, Ll7/g0;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ll7/s0;->m(Ll7/g0;)Ll7/t0;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-nez v0, :cond_4c

    .line 73
    .line 74
    sget-object p1, Ll7/r;->d:Ln6/d;

    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_4c
    instance-of v1, p1, Ll7/q0;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    if-eqz v1, :cond_55

    .line 81
    .line 82
    move-object v1, p1

    .line 83
    check-cast v1, Ll7/q0;

    .line 84
    .line 85
    goto :goto_56

    .line 86
    :cond_55
    move-object v1, v2

    .line 87
    :goto_56
    if-nez v1, :cond_5d

    .line 88
    .line 89
    new-instance v1, Ll7/q0;

    .line 90
    .line 91
    invoke-direct {v1, v0, v2}, Ll7/q0;-><init>(Ll7/t0;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :cond_5d
    monitor-enter v1

    .line 95
    :try_start_5e
    invoke-virtual {v1}, Ll7/q0;->e()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_6b

    .line 100
    .line 101
    sget-object p1, Ll7/r;->b:Ln6/d;
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_68

    .line 102
    .line 103
    monitor-exit v1

    .line 104
    return-object p1

    .line 105
    :catchall_68
    move-exception p1

    .line 106
    goto/16 :goto_de

    .line 107
    .line 108
    :cond_6b
    :try_start_6b
    sget-object v3, Ll7/q0;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 109
    .line 110
    const/4 v4, 0x1

    .line 111
    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 112
    .line 113
    .line 114
    if-eq v1, p1, :cond_86

    .line 115
    .line 116
    sget-object v3, Ll7/s0;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 117
    .line 118
    :cond_75
    invoke-virtual {v3, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_7c

    .line 123
    .line 124
    goto :goto_86

    .line 125
    :cond_7c
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    if-eq v5, p1, :cond_75

    .line 130
    .line 131
    sget-object p1, Ll7/r;->d:Ln6/d;
    :try_end_84
    .catchall {:try_start_6b .. :try_end_84} :catchall_68

    .line 132
    .line 133
    monitor-exit v1

    .line 134
    return-object p1

    .line 135
    :cond_86
    :goto_86
    :try_start_86
    invoke-virtual {v1}, Ll7/q0;->d()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    instance-of v5, p2, Ll7/i;

    .line 140
    .line 141
    if-eqz v5, :cond_92

    .line 142
    .line 143
    move-object v5, p2

    .line 144
    check-cast v5, Ll7/i;

    .line 145
    .line 146
    goto :goto_93

    .line 147
    :cond_92
    move-object v5, v2

    .line 148
    :goto_93
    if-eqz v5, :cond_9a

    .line 149
    .line 150
    iget-object v5, v5, Ll7/i;->a:Ljava/lang/Throwable;

    .line 151
    .line 152
    invoke-virtual {v1, v5}, Ll7/q0;->b(Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    :cond_9a
    invoke-virtual {v1}, Ll7/q0;->c()Ljava/lang/Throwable;

    .line 156
    .line 157
    .line 158
    move-result-object v5
    :try_end_9e
    .catchall {:try_start_86 .. :try_end_9e} :catchall_68

    .line 159
    if-nez v3, :cond_a1

    .line 160
    .line 161
    goto :goto_a2

    .line 162
    :cond_a1
    move-object v5, v2

    .line 163
    :goto_a2
    monitor-exit v1

    .line 164
    if-eqz v5, :cond_a8

    .line 165
    .line 166
    invoke-virtual {p0, v0, v5}, Ll7/s0;->u(Ll7/t0;Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    :cond_a8
    instance-of v0, p1, Ll7/g;

    .line 170
    .line 171
    if-eqz v0, :cond_b0

    .line 172
    .line 173
    move-object v0, p1

    .line 174
    check-cast v0, Ll7/g;

    .line 175
    .line 176
    goto :goto_b1

    .line 177
    :cond_b0
    move-object v0, v2

    .line 178
    :goto_b1
    if-nez v0, :cond_be

    .line 179
    .line 180
    invoke-interface {p1}, Ll7/g0;->h()Ll7/t0;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_bf

    .line 185
    .line 186
    invoke-static {p1}, Ll7/s0;->t(Lp7/j;)Ll7/g;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    goto :goto_bf

    .line 191
    :cond_be
    move-object v2, v0

    .line 192
    :cond_bf
    :goto_bf
    if-eqz v2, :cond_d9

    .line 193
    .line 194
    :cond_c1
    iget-object p1, v2, Ll7/g;->e:Ll7/s0;

    .line 195
    .line 196
    new-instance v0, Ll7/p0;

    .line 197
    .line 198
    invoke-direct {v0, p0, v1, v2, p2}, Ll7/p0;-><init>(Ll7/s0;Ll7/q0;Ll7/g;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-static {p1, v0, v4}, Ll7/r;->f(Ll7/k0;Ll7/o0;I)Ll7/y;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    sget-object v0, Ll7/u0;->a:Ll7/u0;

    .line 206
    .line 207
    if-eq p1, v0, :cond_d3

    .line 208
    .line 209
    sget-object p1, Ll7/r;->c:Ln6/d;

    .line 210
    .line 211
    return-object p1

    .line 212
    :cond_d3
    invoke-static {v2}, Ll7/s0;->t(Lp7/j;)Ll7/g;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    if-nez v2, :cond_c1

    .line 217
    .line 218
    :cond_d9
    invoke-virtual {p0, v1, p2}, Ll7/s0;->j(Ll7/q0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    return-object p1

    .line 223
    :goto_de
    monitor-exit v1

    .line 224
    throw p1
.end method
