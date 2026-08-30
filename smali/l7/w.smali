###### Class l7.w (l7.w)
.class public abstract Ll7/w;
.super Lq7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    sget-object v2, Lq7/j;->g:Lf4/j;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, v2}, Lq7/h;-><init>(JLf4/j;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Ll7/w;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract c()Lu6/f;
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 4

    .line 1
    instance-of v0, p1, Ll7/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    check-cast p1, Ll7/i;

    .line 7
    .line 8
    goto :goto_9

    .line 9
    :cond_8
    move-object p1, v1

    .line 10
    :goto_9
    if-eqz p1, :cond_e

    .line 11
    .line 12
    iget-object p1, p1, Ll7/i;->a:Ljava/lang/Throwable;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_e
    return-object v1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    return-object p1
.end method

.method public final g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    if-nez p1, :cond_5

    .line 2
    .line 3
    if-nez p2, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz p1, :cond_c

    .line 7
    .line 8
    if-eqz p2, :cond_c

    .line 9
    .line 10
    invoke-static {p1, p2}, Li2/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_c
    if-nez p1, :cond_f

    .line 14
    .line 15
    move-object p1, p2

    .line 16
    :cond_f
    new-instance p2, Ll7/q;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Fatal exception in coroutines machinery for "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ll7/w;->c()Lu6/f;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Lu6/f;->getContext()Lu6/k;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1, p2}, Ll7/r;->e(Lu6/k;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public final run()V
    .registers 13

    .line 1
    sget-object v0, Lr6/j;->a:Lr6/j;

    .line 2
    .line 3
    iget-object v1, p0, Lq7/h;->b:Lf4/j;

    .line 4
    .line 5
    :try_start_4
    invoke-virtual {p0}, Ll7/w;->c()Lu6/f;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    .line 10
    .line 11
    invoke-static {v3, v2}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    check-cast v2, Lp7/g;

    .line 15
    .line 16
    iget-object v3, v2, Lp7/g;->e:Lw6/e;

    .line 17
    .line 18
    iget-object v2, v2, Lp7/g;->g:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v4, v3, Lw6/e;->b:Lu6/k;

    .line 21
    .line 22
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v4, v2}, Lp7/a;->f(Lu6/k;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v5, Lp7/a;->e:Ln6/d;

    .line 30
    .line 31
    if-eq v2, v5, :cond_27

    .line 32
    .line 33
    invoke-static {v3, v4}, Ll7/r;->i(Lu6/f;Lu6/k;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_24

    .line 34
    .line 35
    .line 36
    goto :goto_27

    .line 37
    :catchall_24
    move-exception v2

    .line 38
    goto/16 :goto_91

    .line 39
    .line 40
    :cond_27
    :goto_27
    :try_start_27
    iget-object v5, v3, Lw6/e;->b:Lu6/k;

    .line 41
    .line 42
    invoke-static {v5}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ll7/w;->h()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {p0, v6}, Ll7/w;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const/4 v8, 0x0

    .line 54
    if-nez v7, :cond_4e

    .line 55
    .line 56
    iget v9, p0, Ll7/w;->c:I

    .line 57
    .line 58
    const/4 v10, 0x1

    .line 59
    if-eq v9, v10, :cond_41

    .line 60
    .line 61
    const/4 v11, 0x2

    .line 62
    if-ne v9, v11, :cond_40

    .line 63
    .line 64
    goto :goto_41

    .line 65
    :cond_40
    const/4 v10, 0x0

    .line 66
    :cond_41
    :goto_41
    if-eqz v10, :cond_4e

    .line 67
    .line 68
    sget-object v9, Ll7/o;->b:Ll7/o;

    .line 69
    .line 70
    invoke-interface {v5, v9}, Lu6/k;->g(Lu6/j;)Lu6/i;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Ll7/k0;

    .line 75
    .line 76
    goto :goto_4f

    .line 77
    :catchall_4c
    move-exception v3

    .line 78
    goto :goto_8d

    .line 79
    :cond_4e
    move-object v5, v8

    .line 80
    :goto_4f
    if-eqz v5, :cond_68

    .line 81
    .line 82
    invoke-interface {v5}, Ll7/k0;->a()Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-nez v9, :cond_68

    .line 87
    .line 88
    check-cast v5, Ll7/s0;

    .line 89
    .line 90
    invoke-virtual {v5}, Ll7/s0;->k()Ljava/util/concurrent/CancellationException;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {p0, v6, v5}, Ll7/w;->b(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v5}, Lk2/e;->c(Ljava/lang/Throwable;)Lr6/e;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v3, v5}, Lw6/e;->e(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_79

    .line 105
    :cond_68
    if-eqz v7, :cond_72

    .line 106
    .line 107
    invoke-static {v7}, Lk2/e;->c(Ljava/lang/Throwable;)Lr6/e;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v3, v5}, Lw6/e;->e(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_79

    .line 115
    :cond_72
    invoke-virtual {p0, v6}, Ll7/w;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v3, v5}, Lw6/e;->e(Ljava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_27 .. :try_end_79} :catchall_4c

    .line 120
    .line 121
    .line 122
    :goto_79
    :try_start_79
    invoke-static {v4, v2}, Lp7/a;->b(Lu6/k;Ljava/lang/Object;)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_24

    .line 123
    .line 124
    .line 125
    :try_start_7c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    .line 126
    .line 127
    .line 128
    goto :goto_85

    .line 129
    :catchall_80
    move-exception v0

    .line 130
    invoke-static {v0}, Lk2/e;->c(Ljava/lang/Throwable;)Lr6/e;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :goto_85
    invoke-static {v0}, Lr6/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p0, v8, v0}, Ll7/w;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    goto :goto_a1

    .line 142
    :goto_8d
    :try_start_8d
    invoke-static {v4, v2}, Lp7/a;->b(Lu6/k;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    throw v3
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_24

    .line 146
    :goto_91
    :try_start_91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    .line 147
    .line 148
    .line 149
    goto :goto_9a

    .line 150
    :catchall_95
    move-exception v0

    .line 151
    invoke-static {v0}, Lk2/e;->c(Ljava/lang/Throwable;)Lr6/e;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    :goto_9a
    invoke-static {v0}, Lr6/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p0, v2, v0}, Ll7/w;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    :goto_a1
    return-void
.end method
