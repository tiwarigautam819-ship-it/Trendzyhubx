###### Class y1.i (y1.i)
.class public abstract Ly1/i;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile a:Ly2/p;

.field public static final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public static c:Ljava/util/concurrent/ScheduledFuture;

.field public static final d:Li2/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ly2/p;

    .line 2
    .line 3
    invoke-direct {v0}, Ly2/p;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly1/i;->a:Ly2/p;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Ly1/i;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
    new-instance v0, Li2/c;

    .line 15
    .line 16
    const/16 v1, 0xc

    .line 17
    .line 18
    invoke-direct {v0, v1}, Li2/c;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Ly1/i;->d:Li2/c;

    .line 22
    .line 23
    return-void
.end method

.method public static final a(Ly1/b;Ly1/s;ZLg/j;)Lx1/z;
    .registers 16

    .line 1
    const-class v0, Ly1/i;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    goto :goto_64

    .line 11
    :cond_a
    :try_start_a
    iget-object v0, p0, Ly1/b;->a:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v2}, Lq2/w;->k(Ljava/lang/String;Z)Lq2/t;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    sget-object v4, Lx1/z;->j:Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "%s/activities"

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    new-array v6, v5, [Ljava/lang/Object;

    .line 24
    .line 25
    aput-object v0, v6, v2

    .line 26
    .line 27
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v1, v0, v1, v1}, Lx1/w;->v(Lx1/a;Ljava/lang/String;Lorg/json/JSONObject;Lx1/v;)Lx1/z;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iput-boolean v5, v8, Lx1/z;->i:Z

    .line 40
    .line 41
    iget-object v0, v8, Lx1/z;->d:Landroid/os/Bundle;

    .line 42
    .line 43
    if-nez v0, :cond_35

    .line 44
    .line 45
    new-instance v0, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    goto :goto_35

    .line 51
    :catchall_32
    move-exception v0

    .line 52
    move-object p0, v0

    .line 53
    goto :goto_7b

    .line 54
    :cond_35
    :goto_35
    const-string v4, "access_token"

    .line 55
    .line 56
    iget-object v5, p0, Ly1/b;->b:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ly1/k;->c()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    monitor-enter v4
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_32

    .line 66
    :try_start_41
    const-class v5, Ly1/k;

    .line 67
    .line 68
    invoke-static {v5}, Lv2/a;->b(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_77

    .line 69
    .line 70
    .line 71
    :try_start_46
    monitor-exit v4

    .line 72
    sget-object v4, Ly1/k;->c:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {}, Lx1/w;->o()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-eqz v4, :cond_54

    .line 79
    .line 80
    const-string v5, "install_referrer"

    .line 81
    .line 82
    invoke-virtual {v0, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_54
    iput-object v0, v8, Lx1/z;->d:Landroid/os/Bundle;

    .line 86
    .line 87
    if-eqz v3, :cond_5a

    .line 88
    .line 89
    iget-boolean v2, v3, Lq2/t;->a:Z

    .line 90
    .line 91
    :cond_5a
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v8, v0, v2, p2}, Ly1/s;->e(Lx1/z;Landroid/content/Context;ZZ)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-nez p2, :cond_65

    .line 100
    .line 101
    :goto_64
    return-object v1

    .line 102
    :cond_65
    iget v0, p3, Lg/j;->a:I

    .line 103
    .line 104
    add-int/2addr v0, p2

    .line 105
    iput v0, p3, Lg/j;->a:I

    .line 106
    .line 107
    new-instance v6, Lx1/c;

    .line 108
    .line 109
    const/4 v11, 0x1

    .line 110
    move-object v7, p0

    .line 111
    move-object v9, p1

    .line 112
    move-object v10, p3

    .line 113
    invoke-direct/range {v6 .. v11}, Lx1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v6}, Lx1/z;->j(Lx1/v;)V

    .line 117
    .line 118
    .line 119
    return-object v8

    .line 120
    :catchall_77
    move-exception v0

    .line 121
    move-object p0, v0

    .line 122
    monitor-exit v4

    .line 123
    throw p0
    :try_end_7b
    .catchall {:try_start_46 .. :try_end_7b} :catchall_32

    .line 124
    :goto_7b
    const-class p1, Ly1/i;

    .line 125
    .line 126
    invoke-static {p0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-object v1
.end method

.method public static final b(Ly2/p;Lg/j;)Ljava/util/ArrayList;
    .registers 10

    .line 1
    const-class v0, Ly1/i;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "appEventCollection"

    .line 12
    .line 13
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lx1/r;->f(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ly2/p;->e()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_59

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ly1/b;

    .line 48
    .line 49
    invoke-virtual {p0, v5}, Ly2/p;->b(Ly1/b;)Ly1/s;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    if-eqz v6, :cond_51

    .line 54
    .line 55
    invoke-static {v5, v6, v1, p1}, Ly1/i;->a(Ly1/b;Ly1/s;ZLg/j;)Lx1/z;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-eqz v5, :cond_24

    .line 60
    .line 61
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    sget-boolean v6, La2/c;->a:Z

    .line 65
    .line 66
    if-eqz v6, :cond_24

    .line 67
    .line 68
    sget-object v6, La2/j;->a:Ljava/util/HashSet;

    .line 69
    .line 70
    new-instance v6, La2/g;

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    invoke-direct {v6, v7, v5}, La2/g;-><init>(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v6}, Lq2/g0;->K(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    goto :goto_24

    .line 80
    :catchall_4f
    move-exception p0

    .line 81
    goto :goto_5a

    .line 82
    :cond_51
    const-string p0, "Required value was null."

    .line 83
    .line 84
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1
    :try_end_59
    .catchall {:try_start_a .. :try_end_59} :catchall_4f

    .line 90
    :cond_59
    return-object v3

    .line 91
    :goto_5a
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-object v2
.end method

.method public static final c(I)V
    .registers 4

    .line 1
    const-class v0, Ly1/i;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "reason"

    .line 11
    .line 12
    invoke-static {p0, v1}, La1/a;->n(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Ly1/i;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    new-instance v2, Ly1/h;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Ly1/h;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_19
    move-exception p0

    .line 27
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static final d(I)V
    .registers 5

    .line 1
    const-class v0, Ly1/i;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_4c

    .line 10
    :cond_9
    :try_start_9
    const-string v1, "reason"

    .line 11
    .line 12
    invoke-static {p0, v1}, La1/a;->n(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ly1/g;->u()Ly1/r;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Ly1/i;->a:Ly2/p;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ly2/p;->a(Ly1/r;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_42

    .line 22
    .line 23
    .line 24
    :try_start_17
    sget-object v1, Ly1/i;->a:Ly2/p;

    .line 25
    .line 26
    invoke-static {p0, v1}, Ly1/i;->f(ILy2/p;)Lg/j;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_44
    .catchall {:try_start_17 .. :try_end_1d} :catchall_42

    .line 30
    if-eqz p0, :cond_4c

    .line 31
    .line 32
    :try_start_1f
    new-instance v1, Landroid/content/Intent;

    .line 33
    .line 34
    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    .line 35
    .line 36
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    .line 40
    .line 41
    iget v3, p0, Lg/j;->a:I

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    .line 47
    .line 48
    iget-object p0, p0, Lg/j;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Ly1/m;

    .line 51
    .line 52
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Ly0/b;->a(Landroid/content/Context;)Ly0/b;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0, v1}, Ly0/b;->c(Landroid/content/Intent;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_42
    move-exception p0

    .line 68
    goto :goto_4d

    .line 69
    :catch_44
    move-exception p0

    .line 70
    const-string v1, "y1.i"

    .line 71
    .line 72
    const-string v2, "Caught unexpected exception while flushing app events: "

    .line 73
    .line 74
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_1f .. :try_end_4c} :catchall_42

    .line 75
    .line 76
    .line 77
    :cond_4c
    :goto_4c
    return-void

    .line 78
    :goto_4d
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static final e(Ly1/b;Lx1/z;Lx1/c0;Ly1/s;Lg/j;)V
    .registers 14

    .line 1
    sget-object p1, Ly1/m;->c:Ly1/m;

    .line 2
    .line 3
    const-class v0, Ly1/i;

    .line 4
    .line 5
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 10
    .line 11
    goto :goto_5d

    .line 12
    :cond_b
    :try_start_b
    iget-object v1, p2, Lx1/c0;->c:Lx1/o;

    .line 13
    .line 14
    sget-object v2, Ly1/m;->a:Ly1/m;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v1, :cond_37

    .line 19
    .line 20
    iget v5, v1, Lx1/o;->b:I

    .line 21
    .line 22
    const/4 v6, -0x1

    .line 23
    if-ne v5, v6, :cond_1a

    .line 24
    .line 25
    move-object p2, p1

    .line 26
    goto :goto_38

    .line 27
    :cond_1a
    const-string v5, "Failed:\n  Response: %s\n  Error %s"

    .line 28
    .line 29
    invoke-virtual {p2}, Lx1/c0;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {v1}, Lx1/o;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const/4 v7, 0x2

    .line 38
    new-array v8, v7, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object p2, v8, v4

    .line 41
    .line 42
    aput-object v6, v8, v3

    .line 43
    .line 44
    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    sget-object p2, Ly1/m;->b:Ly1/m;

    .line 52
    .line 53
    goto :goto_38

    .line 54
    :catchall_35
    move-exception p0

    .line 55
    goto :goto_5e

    .line 56
    :cond_37
    move-object p2, v2

    .line 57
    :goto_38
    sget-object v5, Lx1/r;->b:Ljava/util/HashSet;

    .line 58
    .line 59
    monitor-enter v5

    .line 60
    monitor-exit v5

    .line 61
    if-eqz v1, :cond_3f

    .line 62
    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v3, v4

    .line 65
    :goto_40
    invoke-virtual {p3, v3}, Ly1/s;->b(Z)V

    .line 66
    .line 67
    .line 68
    if-ne p2, p1, :cond_53

    .line 69
    .line 70
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v3, La2/i;

    .line 75
    .line 76
    const/16 v4, 0x17

    .line 77
    .line 78
    invoke-direct {v3, p0, v4, p3}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    :cond_53
    if-eq p2, v2, :cond_5d

    .line 85
    .line 86
    iget-object p0, p4, Lg/j;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Ly1/m;

    .line 89
    .line 90
    if-eq p0, p1, :cond_5d

    .line 91
    .line 92
    iput-object p2, p4, Lg/j;->b:Ljava/lang/Object;
    :try_end_5d
    .catchall {:try_start_b .. :try_end_5d} :catchall_35

    .line 93
    .line 94
    :cond_5d
    :goto_5d
    return-void

    .line 95
    :goto_5e
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public static final f(ILy2/p;)Lg/j;
    .registers 11

    .line 1
    const-class v0, Ly1/i;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    goto :goto_6b

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "reason"

    .line 12
    .line 13
    invoke-static {p0, v1}, La1/a;->n(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "appEventCollection"

    .line 17
    .line 18
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lg/j;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v3, Ly1/m;->a:Ly1/m;

    .line 27
    .line 28
    iput-object v3, v1, Lg/j;->b:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1, v1}, Ly1/i;->b(Ly2/p;Lg/j;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_6b

    .line 39
    .line 40
    sget-object v3, Lq2/z;->c:Lo3/a;

    .line 41
    .line 42
    sget-object v3, Lx1/e0;->d:Lx1/e0;

    .line 43
    .line 44
    const-string v4, "y1.i"

    .line 45
    .line 46
    const-string v5, "Flushing %d events due to %s."

    .line 47
    .line 48
    iget v6, v1, Lg/j;->a:I

    .line 49
    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    packed-switch p0, :pswitch_data_70

    .line 55
    .line 56
    .line 57
    throw v2

    .line 58
    :pswitch_39
    const-string p0, "EAGER_FLUSHING_EVENT"

    .line 59
    .line 60
    goto :goto_4a

    .line 61
    :pswitch_3c
    const-string p0, "EVENT_THRESHOLD"

    .line 62
    .line 63
    goto :goto_4a

    .line 64
    :pswitch_3f
    const-string p0, "PERSISTED_EVENTS"

    .line 65
    .line 66
    goto :goto_4a

    .line 67
    :pswitch_42
    const-string p0, "SESSION_CHANGE"

    .line 68
    .line 69
    goto :goto_4a

    .line 70
    :pswitch_45
    const-string p0, "TIMER"

    .line 71
    .line 72
    goto :goto_4a

    .line 73
    :pswitch_48
    const-string p0, "EXPLICIT"

    .line 74
    .line 75
    :goto_4a
    const/4 v7, 0x2

    .line 76
    new-array v7, v7, [Ljava/lang/Object;

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    aput-object v6, v7, v8

    .line 80
    .line 81
    const/4 v6, 0x1

    .line 82
    aput-object p0, v7, v6

    .line 83
    .line 84
    invoke-static {v3, v4, v5, v7}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    :goto_5a
    if-ge v8, p0, :cond_6a

    .line 92
    .line 93
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    add-int/lit8 v8, v8, 0x1

    .line 98
    .line 99
    check-cast v3, Lx1/z;

    .line 100
    .line 101
    invoke-virtual {v3}, Lx1/z;->c()Lx1/c0;
    :try_end_67
    .catchall {:try_start_a .. :try_end_67} :catchall_68

    .line 102
    .line 103
    .line 104
    goto :goto_5a

    .line 105
    :catchall_68
    move-exception p0

    .line 106
    goto :goto_6c

    .line 107
    :cond_6a
    return-object v1

    .line 108
    :cond_6b
    :goto_6b
    return-object v2

    .line 109
    :goto_6c
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-object v2

    .line 113
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
    .end packed-switch
.end method

###### Class y1.h (y1.h)
.class public final synthetic Ly1/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ly1/h;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Ly1/h;->a:I

    .line 2
    .line 3
    const-class v1, Ly1/i;

    .line 4
    .line 5
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    :try_start_b
    const-string v2, "$reason"

    .line 13
    .line 14
    invoke-static {v0, v2}, La1/a;->n(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ly1/i;->d(I)V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_14

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception v0

    .line 22
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
