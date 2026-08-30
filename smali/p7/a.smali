###### Class p7.a (p7.a)
.class public abstract Lp7/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ln6/d;

.field public static final b:Ln6/d;

.field public static final c:Ln6/d;

.field public static final d:Ln6/d;

.field public static final e:Ln6/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ln6/d;

    .line 2
    .line 3
    const-string v1, "NO_DECISION"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Ln6/d;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lp7/a;->a:Ln6/d;

    .line 10
    .line 11
    new-instance v0, Ln6/d;

    .line 12
    .line 13
    const-string v1, "UNDEFINED"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ln6/d;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lp7/a;->b:Ln6/d;

    .line 19
    .line 20
    new-instance v0, Ln6/d;

    .line 21
    .line 22
    const-string v1, "REUSABLE_CLAIMED"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Ln6/d;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lp7/a;->c:Ln6/d;

    .line 28
    .line 29
    new-instance v0, Ln6/d;

    .line 30
    .line 31
    const-string v1, "CONDITION_FALSE"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Ln6/d;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lp7/a;->d:Ln6/d;

    .line 37
    .line 38
    new-instance v0, Ln6/d;

    .line 39
    .line 40
    const-string v1, "NO_THREAD_ELEMENTS"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Ln6/d;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lp7/a;->e:Ln6/d;

    .line 46
    .line 47
    return-void
.end method

.method public static final a(Lu6/k;Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    sget-object v0, Lp7/e;->a:Ljava/util/Collection;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_31

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lm7/b;

    .line 18
    .line 19
    :try_start_12
    invoke-virtual {v1, p1}, Lm7/b;->t(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    .line 20
    .line 21
    .line 22
    goto :goto_6

    .line 23
    :catchall_16
    move-exception v1

    .line 24
    if-ne p1, v1, :cond_1b

    .line 25
    .line 26
    move-object v2, p1

    .line 27
    goto :goto_25

    .line 28
    :cond_1b
    new-instance v2, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    const-string v3, "Exception while trying to handle coroutine exception"

    .line 31
    .line 32
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v2, p1}, Li2/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v3, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    goto :goto_6

    .line 50
    :cond_31
    :try_start_31
    new-instance v0, Lp7/f;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lp7/f;-><init>(Lu6/k;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Li2/t;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    .line 56
    .line 57
    .line 58
    :catchall_39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static final b(Lu6/k;Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Lp7/a;->e:Ln6/d;

    .line 2
    .line 3
    if-ne p1, v0, :cond_5

    .line 4
    .line 5
    goto :goto_13

    .line 6
    :cond_5
    instance-of v0, p1, Lp7/u;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1e

    .line 10
    .line 11
    check-cast p1, Lp7/u;

    .line 12
    .line 13
    iget-object p0, p1, Lp7/u;->b:[Ll7/w0;

    .line 14
    .line 15
    array-length v0, p0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    if-gez v0, :cond_14

    .line 19
    .line 20
    :goto_13
    return-void

    .line 21
    :cond_14
    aget-object p0, p0, v0

    .line 22
    .line 23
    invoke-static {v1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p1, Lp7/u;->a:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object p0, p0, v0

    .line 29
    .line 30
    throw v1

    .line 31
    :cond_1e
    sget-object p1, Lp7/s;->d:Lp7/s;

    .line 32
    .line 33
    invoke-interface {p0, v1, p1}, Lu6/k;->c(Ljava/lang/Object;Lc7/p;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 38
    .line 39
    invoke-static {p1, p0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, La1/a;->o(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method

.method public static final c(Lu6/f;)V
    .registers 12

    .line 1
    instance-of v0, p0, Lp7/g;

    .line 2
    .line 3
    sget-object v1, Lr6/j;->a:Lr6/j;

    .line 4
    .line 5
    if-eqz v0, :cond_ab

    .line 6
    .line 7
    check-cast p0, Lp7/g;

    .line 8
    .line 9
    iget-object v0, p0, Lp7/g;->d:Ll7/n;

    .line 10
    .line 11
    iget-object v2, p0, Lp7/g;->e:Lw6/e;

    .line 12
    .line 13
    invoke-static {v1}, Lr6/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-nez v3, :cond_14

    .line 18
    .line 19
    move-object v4, v1

    .line 20
    goto :goto_19

    .line 21
    :cond_14
    new-instance v4, Ll7/i;

    .line 22
    .line 23
    invoke-direct {v4, v3}, Ll7/i;-><init>(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_19
    invoke-virtual {v2}, Lw6/e;->getContext()Lu6/k;

    .line 27
    .line 28
    .line 29
    iget-object v3, v2, Lw6/e;->b:Lu6/k;

    .line 30
    .line 31
    invoke-virtual {v0}, Ll7/n;->u()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v5, :cond_30

    .line 37
    .line 38
    iput-object v4, p0, Lp7/g;->f:Ljava/lang/Object;

    .line 39
    .line 40
    iput v6, p0, Ll7/w;->c:I

    .line 41
    .line 42
    invoke-static {v3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3, p0}, Ll7/n;->t(Lu6/k;Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    invoke-static {}, Ll7/x0;->a()Ll7/c0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-wide v7, v0, Ll7/c0;->c:J

    .line 54
    .line 55
    const-wide v9, 0x100000000L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmp-long v5, v7, v9

    .line 61
    .line 62
    if-ltz v5, :cond_52

    .line 63
    .line 64
    iput-object v4, p0, Lp7/g;->f:Ljava/lang/Object;

    .line 65
    .line 66
    iput v6, p0, Ll7/w;->c:I

    .line 67
    .line 68
    iget-object v1, v0, Ll7/c0;->e:Ls6/e;

    .line 69
    .line 70
    if-nez v1, :cond_4e

    .line 71
    .line 72
    new-instance v1, Ls6/e;

    .line 73
    .line 74
    invoke-direct {v1}, Ls6/e;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v1, v0, Ll7/c0;->e:Ls6/e;

    .line 78
    .line 79
    :cond_4e
    invoke-virtual {v1, p0}, Ls6/e;->addLast(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_a5

    .line 83
    :cond_52
    invoke-virtual {v0, v6}, Ll7/c0;->x(Z)V

    .line 84
    .line 85
    .line 86
    :try_start_55
    invoke-static {v3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sget-object v5, Ll7/o;->b:Ll7/o;

    .line 90
    .line 91
    invoke-interface {v3, v5}, Lu6/k;->g(Lu6/j;)Lu6/i;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Ll7/k0;

    .line 96
    .line 97
    if-eqz v5, :cond_7b

    .line 98
    .line 99
    invoke-interface {v5}, Ll7/k0;->a()Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_7b

    .line 104
    .line 105
    check-cast v5, Ll7/s0;

    .line 106
    .line 107
    invoke-virtual {v5}, Ll7/s0;->k()Ljava/util/concurrent/CancellationException;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p0, v4, v1}, Lp7/g;->b(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lk2/e;->c(Ljava/lang/Throwable;)Lr6/e;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p0, v1}, Lp7/g;->e(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_91

    .line 122
    :catchall_79
    move-exception v1

    .line 123
    goto :goto_a0

    .line 124
    :cond_7b
    iget-object v4, p0, Lp7/g;->g:Ljava/lang/Object;

    .line 125
    .line 126
    invoke-static {v3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v3, v4}, Lp7/a;->f(Lu6/k;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    sget-object v5, Lp7/a;->e:Ln6/d;

    .line 134
    .line 135
    if-eq v4, v5, :cond_8b

    .line 136
    .line 137
    invoke-static {v2, v3}, Ll7/r;->i(Lu6/f;Lu6/k;)V
    :try_end_8b
    .catchall {:try_start_55 .. :try_end_8b} :catchall_79

    .line 138
    .line 139
    .line 140
    :cond_8b
    :try_start_8b
    invoke-virtual {v2, v1}, Lw6/e;->e(Ljava/lang/Object;)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_9b

    .line 141
    .line 142
    .line 143
    :try_start_8e
    invoke-static {v3, v4}, Lp7/a;->b(Lu6/k;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_91
    :goto_91
    invoke-virtual {v0}, Ll7/c0;->y()Z

    .line 147
    .line 148
    .line 149
    move-result v1
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_79

    .line 150
    if-nez v1, :cond_91

    .line 151
    .line 152
    :goto_97
    invoke-virtual {v0}, Ll7/c0;->v()V

    .line 153
    .line 154
    .line 155
    goto :goto_a5

    .line 156
    :catchall_9b
    move-exception v1

    .line 157
    :try_start_9c
    invoke-static {v3, v4}, Lp7/a;->b(Lu6/k;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    throw v1
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_79

    .line 161
    :goto_a0
    const/4 v2, 0x0

    .line 162
    :try_start_a1
    invoke-virtual {p0, v1, v2}, Ll7/w;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a6

    .line 163
    .line 164
    .line 165
    goto :goto_97

    .line 166
    :goto_a5
    return-void

    .line 167
    :catchall_a6
    move-exception p0

    .line 168
    invoke-virtual {v0}, Ll7/c0;->v()V

    .line 169
    .line 170
    .line 171
    throw p0

    .line 172
    :cond_ab
    invoke-interface {p0, v1}, Lu6/f;->e(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public static final d(Ljava/lang/String;JJJ)J
    .registers 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    move-wide/from16 v3, p5

    .line 6
    .line 7
    sget v5, Lp7/r;->a:I

    .line 8
    .line 9
    :try_start_8
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v6
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_c} :catch_d

    .line 13
    goto :goto_e

    .line 14
    :catch_d
    const/4 v6, 0x0

    .line 15
    :goto_e
    if-nez v6, :cond_11

    .line 16
    .line 17
    return-wide p1

    .line 18
    :cond_11
    const/16 v7, 0xa

    .line 19
    .line 20
    invoke-static {v7}, La2/c;->d(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    if-nez v8, :cond_20

    .line 28
    .line 29
    :cond_1c
    :goto_1c
    move-object/from16 v19, v6

    .line 30
    .line 31
    goto/16 :goto_81

    .line 32
    .line 33
    :cond_20
    const/4 v9, 0x0

    .line 34
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    const/16 v11, 0x30

    .line 39
    .line 40
    invoke-static {v10, v11}, Ld7/g;->g(II)I

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    if-gez v11, :cond_48

    .line 50
    .line 51
    const/4 v11, 0x1

    .line 52
    if-ne v8, v11, :cond_36

    .line 53
    .line 54
    goto :goto_1c

    .line 55
    :cond_36
    const/16 v14, 0x2d

    .line 56
    .line 57
    if-ne v10, v14, :cond_3e

    .line 58
    .line 59
    const-wide/high16 v12, -0x8000000000000000L

    .line 60
    .line 61
    move v9, v11

    .line 62
    goto :goto_49

    .line 63
    :cond_3e
    const/16 v14, 0x2b

    .line 64
    .line 65
    if-ne v10, v14, :cond_1c

    .line 66
    .line 67
    move/from16 v22, v11

    .line 68
    .line 69
    move v11, v9

    .line 70
    move/from16 v9, v22

    .line 71
    .line 72
    goto :goto_49

    .line 73
    :cond_48
    move v11, v9

    .line 74
    :goto_49
    const-wide/16 v16, 0x0

    .line 75
    .line 76
    move-wide/from16 v14, v16

    .line 77
    .line 78
    const-wide p1, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const-wide v16, -0x38e38e38e38e38eL    # -2.772000429909333E291

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    :goto_57
    if-ge v9, v8, :cond_89

    .line 89
    .line 90
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    invoke-static {v10, v7}, Ljava/lang/Character;->digit(II)I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-gez v10, :cond_64

    .line 99
    .line 100
    goto :goto_1c

    .line 101
    :cond_64
    cmp-long v18, v14, v16

    .line 102
    .line 103
    if-gez v18, :cond_76

    .line 104
    .line 105
    cmp-long v16, v16, p1

    .line 106
    .line 107
    if-nez v16, :cond_1c

    .line 108
    .line 109
    move-object/from16 v19, v6

    .line 110
    .line 111
    int-to-long v5, v7

    .line 112
    div-long v16, v12, v5

    .line 113
    .line 114
    cmp-long v5, v14, v16

    .line 115
    .line 116
    if-gez v5, :cond_78

    .line 117
    .line 118
    goto :goto_81

    .line 119
    :cond_76
    move-object/from16 v19, v6

    .line 120
    .line 121
    :cond_78
    int-to-long v5, v7

    .line 122
    mul-long/2addr v14, v5

    .line 123
    int-to-long v5, v10

    .line 124
    add-long v20, v12, v5

    .line 125
    .line 126
    cmp-long v10, v14, v20

    .line 127
    .line 128
    if-gez v10, :cond_83

    .line 129
    .line 130
    :goto_81
    const/4 v5, 0x0

    .line 131
    goto :goto_97

    .line 132
    :cond_83
    sub-long/2addr v14, v5

    .line 133
    add-int/lit8 v9, v9, 0x1

    .line 134
    .line 135
    move-object/from16 v6, v19

    .line 136
    .line 137
    goto :goto_57

    .line 138
    :cond_89
    move-object/from16 v19, v6

    .line 139
    .line 140
    if-eqz v11, :cond_92

    .line 141
    .line 142
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    goto :goto_97

    .line 147
    :cond_92
    neg-long v5, v14

    .line 148
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    :goto_97
    const/16 v6, 0x27

    .line 153
    .line 154
    const-string v7, "System property \'"

    .line 155
    .line 156
    if-eqz v5, :cond_db

    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 159
    .line 160
    .line 161
    move-result-wide v8

    .line 162
    cmp-long v5, v1, v8

    .line 163
    .line 164
    if-gtz v5, :cond_aa

    .line 165
    .line 166
    cmp-long v5, v8, v3

    .line 167
    .line 168
    if-gtz v5, :cond_aa

    .line 169
    .line 170
    return-wide v8

    .line 171
    :cond_aa
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    new-instance v10, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v0, "\' should be in range "

    .line 182
    .line 183
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v0, ".."

    .line 190
    .line 191
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v0, ", but is \'"

    .line 198
    .line 199
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v5

    .line 220
    :cond_db
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 221
    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v0, "\' has unrecognized value \'"

    .line 231
    .line 232
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    move-object/from16 v5, v19

    .line 236
    .line 237
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw v1
.end method

.method public static e(ILjava/lang/String;I)I
    .registers 10

    .line 1
    and-int/lit8 p2, p2, 0x8

    .line 2
    .line 3
    if-eqz p2, :cond_8

    .line 4
    .line 5
    const p2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    goto :goto_b

    .line 9
    :cond_8
    const p2, 0x1ffffe

    .line 10
    .line 11
    .line 12
    :goto_b
    int-to-long v1, p0

    .line 13
    const/4 p0, 0x1

    .line 14
    int-to-long v3, p0

    .line 15
    int-to-long v5, p2

    .line 16
    move-object v0, p1

    .line 17
    invoke-static/range {v0 .. v6}, Lp7/a;->d(Ljava/lang/String;JJJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    long-to-int p0, p0

    .line 22
    return p0
.end method

.method public static final f(Lu6/k;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez p1, :cond_10

    .line 7
    .line 8
    sget-object p1, Lp7/s;->c:Lp7/s;

    .line 9
    .line 10
    invoke-interface {p0, v0, p1}, Lu6/k;->c(Ljava/lang/Object;Lc7/p;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_10
    if-ne p1, v0, :cond_15

    .line 18
    .line 19
    sget-object p0, Lp7/a;->e:Ln6/d;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_15
    instance-of v0, p1, Ljava/lang/Integer;

    .line 23
    .line 24
    if-eqz v0, :cond_2b

    .line 25
    .line 26
    new-instance v0, Lp7/u;

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-direct {v0, p0, p1}, Lp7/u;-><init>(Lu6/k;I)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lp7/s;->e:Lp7/s;

    .line 38
    .line 39
    invoke-interface {p0, v0, p1}, Lu6/k;->c(Ljava/lang/Object;Lc7/p;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_2b
    invoke-static {p1}, La1/a;->o(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    throw p0
.end method
